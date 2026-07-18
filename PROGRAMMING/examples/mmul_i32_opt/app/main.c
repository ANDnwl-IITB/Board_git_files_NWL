#include <stdlib.h>
#include <stdint.h>
#include <cortos.h>
#include <device_addresses.h>
#include <ajit_access_routines.h>
#include <structs.h>
#include <engine.h>
#include "dma.h"
#include "utils.h"
#include "defines.h"

HpcMachineState hms;

volatile int32_t volatile A[ORDER][ORDER] __attribute__((aligned(64)));
volatile int32_t volatile B[ORDER][ORDER] __attribute__((aligned(64)));

volatile int32_t volatile TRESULT[ORDER][ORDER] __attribute__((aligned(64)));
volatile int32_t volatile PRESULT[ORDER][ORDER] __attribute__((aligned(64)));

volatile uint64_t processor_ticks = 0;
volatile uint64_t engine_ticks = 0;
volatile uint64_t setup_ticks = 0;

volatile uint64_t computation_ticks = 0;
volatile uint64_t dma_ticks         = 0;

volatile uint32_t exceptions [NTHREADS][NSTRIPES][NSTRIPES];
volatile uint32_t stop_pcs   [NTHREADS][NSTRIPES][NSTRIPES];

void setup ()
{
	__ajit_serial_configure__(1,0,0);
	__ajit_serial_set_baudrate__ (115200, CLK_FREQUENCY);
	__ajit_serial_set_uart_reset__ (0);

	cortos_printf("Info: finished setup\n");
}

void set_args (uint32_t TID, 
		uint64_t AADDR, 
		uint64_t BADDR, 
		uint64_t NBYTES,
		uint64_t RADDR,
		uint64_t NMASK,
		uint64_t N2MASK,
		uint64_t BUFFER
	      )
{
	CORTOS_DEBUG("Info: setting arguments for thread %d\n", TID);

	while(writeThreadDataRegister (&hms, 0, 0, TID, 1, AADDR));
	CORTOS_DEBUG("Info: for thread %d, REG1=0x%llx\n", TID, AADDR);

	while(writeThreadDataRegister (&hms, 0, 0, TID, 2, BADDR));
	CORTOS_DEBUG("Info: for thread %d, REG2=0x%llx\n", TID, BADDR);

	while(writeThreadDataRegister (&hms, 0, 0, TID, 3, NBYTES));
	CORTOS_DEBUG("Info: for thread %d, REG3=0x%llx\n", TID, NBYTES);

	while(writeThreadDataRegister (&hms, 0, 0, TID, 4, RADDR));
	CORTOS_DEBUG("Info: for thread %d, REG4=0x%llx\n", TID,  RADDR);

	while(writeThreadDataRegister (&hms, 0, 0, TID, 5, NMASK));
	CORTOS_DEBUG("Info: for thread %d, REG5=0x%llx\n", TID,  NMASK);

	while(writeThreadDataRegister (&hms, 0, 0, TID, 6, N2MASK));
	CORTOS_DEBUG("Info: for thread %d, REG6=0x%llx\n", TID, N2MASK);

	while(writeThreadDataRegister (&hms, 0, 0, TID, 7, BUFFER));
	CORTOS_DEBUG("Info: for thread %d, REG7=0x%llx\n", TID, BUFFER);

	CORTOS_DEBUG("Info: done setting argments for thread %d\n", TID);
}


void init_processor_matrices()
{
	uint32_t I,J,K;

	uint32_t bptrA = (uint32_t) &(A[0][0]);
	uint32_t bptrB = (uint32_t) &(B[0][0]);

	cortos_printf("base pointers of matrices in processor memory 0x%x, 0x%x\n", bptrA, bptrB);

	// initialize memory.
	int32_t V = 0;
	int32_t non_zeros = 0;
	for(I = 0; I < ORDER; I++)
	{
		for(J = 0; J < ORDER; J++)
		{
#ifndef USE_UNIT_ENTRIES
			A[I][J] = V;
			B[J][I] = V; 
			V = (V + 1); 
			non_zeros += (V ? 1 : 0);
#else
			A[I][J] = 1;
			B[J][I] = 1; 
			non_zeros++;
#endif 
		}
	}

	cortos_printf ("Info: on_processor: initialized matrices (non-zeros %d)\n", non_zeros);
}


void mmul_on_processor()
{
	uint32_t I,J,K;


	uint64_t t0, t1;

	t0 = __ajit_get_clock_time ();
	for(I = 0; I < ORDER; I++)
	{
		for(J = 0; J < ORDER; J++)
		{
			int32_t SUM = 0;
			for(K = 0; K < ORDER; K++)
			{
				SUM += A[I][K]*B[J][K];
			}
			PRESULT[I][J] = SUM;
		}
	}
	t1 = __ajit_get_clock_time ();

	processor_ticks = (t1 - t0);
	cortos_printf("mmul_on_processor: ticks=%lld [0][0] is 0x%x\n",  processor_ticks, PRESULT[0][0]);
	return;
}


//
// assumption: the a,b matrix are already
// loaded into the dmem.
// 
//  A is [M][K]
//  B is [N][K]  (actually [K][N], but column major)
//  R is [M][N]
//
void mmul_start_across_threads	 
			( uint32_t a_matrix_ptr,			//address in dmem
				uint32_t b_matrix_ptr,			//address in dmem
				uint32_t result_matrix_ptr,		//address in main memory.
				uint32_t M, 
				uint32_t N, 
				uint32_t K,
				uint32_t element_size_in_bytes)
{
#ifdef USE_DEBUG_MODE
	cortos_printf ("mmul_start_across_threads M=%d, N=%d, K=%d\n", M, N, K);
#endif

	// cortos_printf("Entered mmul_start_across_threads\n");

	uint32_t TID;

	// Each thread gets an equal share.
	uint32_t rows_per_thread = M/NTHREADS;
	uint32_t nbytes_per_row_col = K * element_size_in_bytes;



	// number of columns in the B matrix.
	uint64_t nmask	     	     = N - 1;

	// number of dot-products executed by each thread.
	uint64_t n2mask	    	     = (rows_per_thread * N) - 1;

	uint64_t t0 = __ajit_get_clock_time ();
	for(TID=0; TID < NTHREADS; TID++)
	{
		uint32_t start_row = (TID*rows_per_thread);

		// starting address for A matrix
		uint64_t aaddr               = a_matrix_ptr + (start_row * nbytes_per_row_col);
		uint64_t baddr               = b_matrix_ptr;
		uint64_t result_addr 	     = result_matrix_ptr   + (start_row * N * element_size_in_bytes);
		uint64_t buffer_addr         = ENGINE_DMEM_BASE_POINTER + (TID*0x100);

		set_args (TID, aaddr, baddr, nbytes_per_row_col, 
				result_addr, nmask, n2mask, buffer_addr);
	}

	for(TID = 0; TID < NTHREADS; TID++)
	{
		while(runEngineThreadAndPoll (&hms, 0,0,TID,0x0));
	}
	uint64_t t1 = __ajit_get_clock_time ();
	setup_ticks = (t1 - t0);

	// cortos_printf("Leaving mmul_start_across_threads\n");
}

// There is a race condition...
void mmul_complete_across_threads (uint32_t RSTRIPE_ID, uint32_t CSTRIPE_ID)
{
	cortos_printf("Entered mmul_complete_across_threads\n");
	uint32_t TID;
	for(TID = 0; TID < NTHREADS; TID++)
	{
		uint32_t* exc = &(exceptions[TID][RSTRIPE_ID][CSTRIPE_ID]);
		uint32_t* spc = &(stop_pcs[TID][RSTRIPE_ID][CSTRIPE_ID]);

		pollAndCompleteEngineThread (&hms, 0,0, TID, exc, spc);
	}
#ifdef USE_DEBUG_MODE
	cortos_printf ("Info: complete mmul across threads (%d,%d)\n", RSTRIPE_ID, CSTRIPE_ID);
#endif
}

void load_B_stripe ( uint32_t stripe_index,  
				 uint32_t b_ping, 
				 uint32_t rows_per_stripe,
				 uint32_t bytes_per_row)
{

#ifdef USE_DEBUG_MODE
	cortos_printf ("Info: starting load B (%s) for stripe %d\n", (b_ping ? "ping" : "pong"), stripe_index);
#endif

	uint64_t t0 = __ajit_get_clock_time();
	uint32_t dma_id = BDMA;

	uint32_t start_row = stripe_index * rows_per_stripe;
	uint32_t b_src_ptr  = (uint32_t) &(B[start_row][0]);
	uint32_t bytes_per_stripe  = rows_per_stripe * bytes_per_row;	
	uint32_t b_dest_ptr = (b_ping ?
		       			DMEM_B_PING_MATRIX_BASE_ADDRESS : 
		       			DMEM_B_PONG_MATRIX_BASE_ADDRESS);
	dma_start_load_stripe (dma_id, b_src_ptr, b_dest_ptr, bytes_per_stripe);
	dma_complete(BDMA);

	uint64_t t1 = __ajit_get_clock_time();
	dma_ticks += (t1 - t0);
}

void load_A_stripe ( uint32_t stripe_index,  
				 uint32_t a_ping, 
				 uint32_t rows_per_stripe,
				 uint32_t bytes_per_row)
{

#ifdef USE_DEBUG_MODE
	cortos_printf ("Info: starting load A (%s) for stripe %d\n", (a_ping ? "ping" : "pong"), stripe_index);
#endif
	uint64_t t0 = __ajit_get_clock_time();
	uint32_t dma_id = ADMA;

	uint32_t start_row = stripe_index * rows_per_stripe;
	uint32_t a_src_ptr  = (uint32_t) &(A[start_row][0]);
	uint32_t bytes_per_stripe  = rows_per_stripe * bytes_per_row;	

	uint32_t a_dest_ptr = (a_ping ?
		       			DMEM_A_PING_MATRIX_BASE_ADDRESS : 
		       			DMEM_A_PONG_MATRIX_BASE_ADDRESS);

	dma_start_load_stripe (dma_id, a_src_ptr, a_dest_ptr, bytes_per_stripe);
	dma_complete(ADMA);
	uint64_t t1 = __ajit_get_clock_time();
	dma_ticks += (t1 - t0);
}

void print_A_stripe_in_datamem (uint32_t stripe_index, 
				uint32_t a_ping,
				uint32_t rows_per_stripe,
				uint32_t bytes_per_row
		    )
{
	uint32_t* a_dest_ptr = (uint32_t*) 
				 (a_ping ?
		       			DMEM_A_PING_MATRIX_BASE_ADDRESS : 
		       			DMEM_A_PONG_MATRIX_BASE_ADDRESS);
	int I;

	// print the first row of A
	for(I = 0; I < bytes_per_row/4; I++)
	{
		uint32_t v = a_dest_ptr[I];
		CORTOS_DEBUG ("A_stripe (ping=%d): 0x%x\n", a_ping, v);
	}
}

void print_B_stripe_in_datamem (uint32_t stripe_index, 
				uint32_t b_ping,
				uint32_t rows_per_stripe,
				uint32_t bytes_per_row
		    )
{
	uint32_t* b_dest_ptr = (uint32_t*) 
				 (b_ping ?
		       			DMEM_B_PING_MATRIX_BASE_ADDRESS : 
		       			DMEM_B_PONG_MATRIX_BASE_ADDRESS);
	int I;

	// print the first row of A
	for(I = 0; I < bytes_per_row/4; I++)
	{
		uint32_t v = b_dest_ptr[I];
		CORTOS_DEBUG ("B_stripe (ping=%d): 0x%x\n", b_ping, v);
	}
}

void print_R_stripe_in_datamem (uint32_t stripe_index, 
				uint32_t r_ping,
				uint32_t rows_per_stripe,
				uint32_t bytes_per_row
		    )
{
	uint32_t* r_dest_ptr = (uint32_t*) 
				 (r_ping ?
		       			DMEM_R_PING_MATRIX_BASE_ADDRESS : 
		       			DMEM_R_PONG_MATRIX_BASE_ADDRESS);
	int I;

	// print the first row of A
	for(I = 0; I < bytes_per_row/4; I++)
	{
		uint32_t v = r_dest_ptr[I];
		CORTOS_DEBUG ("R_stripe (ping=%d, ptr=0x%x): 0x%x\n", r_ping, (uint32_t) r_dest_ptr, v);
	}
}

			
void insert_R_into_result (uint32_t S, uint32_t T, uint32_t r_ping, uint32_t rows_per_stripe)
{

#ifdef USE_DEBUG_MODE
	cortos_printf ("Info: started insert_R for %d,%d,%s,%d\n", S, T, (r_ping ? "ping" : "pong"), rows_per_stripe);
#endif
	uint32_t* r_src_ptr = (uint32_t*) 
				   (r_ping ? 
		       			DMEM_R_PING_MATRIX_BASE_ADDRESS : 
		       			DMEM_R_PONG_MATRIX_BASE_ADDRESS);

	uint32_t RBASE = S*rows_per_stripe;
	uint32_t CBASE = T*rows_per_stripe;

	int I, J;
	for(I = 0; I < rows_per_stripe; I++)
	{
		for(J = 0; J < rows_per_stripe; J++)
		{
			int R  = RBASE + I;
			int C  = CBASE + J;
			TRESULT[R][C] = *r_src_ptr;
			r_src_ptr++;
			
			if(TRESULT[R][C] != PRESULT[R][C])
			{
				cortos_printf("Error: insertR[%d][%d]: 0x%x 0x%x\n", R, C, TRESULT[R][C], PRESULT[R][C]);
				break;
			}
		}
	}
}

void dma_insert_R_into_result (uint32_t S, uint32_t T, uint32_t r_ping, uint32_t rows_per_stripe)
{
#ifdef USE_DEBUG_MODE
	cortos_printf ("Info: started insert_R store dma for %d,%d,%s,%d\n", S, T, (r_ping ? "ping" : "pong"), rows_per_stripe);
#endif
	uint64_t t0 = __ajit_get_clock_time();
	uint32_t r_src_ptr = (r_ping ? 
		       			DMEM_R_PING_MATRIX_BASE_ADDRESS : 
		       			DMEM_R_PONG_MATRIX_BASE_ADDRESS);
	uint32_t r_dest_ptr = (uint32_t) &(TRESULT[S*rows_per_stripe][T*rows_per_stripe]);

#ifdef USE_DEBUG_MODE
	cortos_printf("insert R[%d,%d,%d], src=0x%x, dest=0x%x,  val=0x%x\n",
				S,T,r_ping, r_src_ptr, r_dest_ptr, *((uint32_t*) r_src_ptr));	
#endif


	uint32_t burst_size      = rows_per_stripe*ELEMENT_SIZE_IN_BYTES;
	uint32_t inter_burst_gap =  ORDER * ELEMENT_SIZE_IN_BYTES;
	uint32_t burst_count     =  rows_per_stripe;

	dma_start_store_stripe (RDMA, r_src_ptr, r_dest_ptr, burst_size, inter_burst_gap, burst_count);
	dma_complete (RDMA);

	uint64_t t1 = __ajit_get_clock_time();
	dma_ticks += (t1 - t0);
}
	
void mmul_simple_check()
{
	uint32_t sexceptions[NTHREADS];
	uint32_t sstop_pc   [NTHREADS];

	uint64_t t0 = __ajit_get_clock_time ();

	dma_load_stripe(0, (uint32_t)  &(A[0][0]), ENGINE_DMEM_BASE_POINTER + 0x4000, ORDER*ORDER*4 );
	dma_load_stripe(0, (uint32_t)  &(B[0][0]), ENGINE_DMEM_BASE_POINTER + 0x8000, ORDER*ORDER*4 );

	
	uint64_t t1 = __ajit_get_clock_time ();

	uint32_t TID;

	uint32_t NMASK  = ORDER-1;
	uint32_t N2MASK = (ORDER*ORDER/NTHREADS)-1;

	for(TID = 0; TID < NTHREADS; TID++)
	{
		// Each thread gets ORDER/4 rows..
		set_args (TID,
				ENGINE_DMEM_BASE_POINTER + 0x4000 + (TID*ORDER*ORDER*4/NTHREADS),
				ENGINE_DMEM_BASE_POINTER + 0x8000,
				ORDER*4,
				ENGINE_DMEM_BASE_POINTER + 0xc000 + (TID*ORDER*ORDER*4/NTHREADS),
				NMASK,
				N2MASK,
				ENGINE_DMEM_BASE_POINTER + (TID*0x100)
			 );
	}

	for(TID = 0; TID < NTHREADS; TID++)
	{
		while(runEngineThreadAndPoll (&hms, 0,0,TID,0x0));
	}

	for(TID = 0; TID < NTHREADS; TID++)
	{
		uint32_t* exc = &(sexceptions[TID]);
		uint32_t* spc = &(sstop_pc[TID]);
		pollAndCompleteEngineThread (&hms, 0, 0, TID, exc, spc);
	}

	uint64_t t2 = __ajit_get_clock_time ();

	for(TID = 0; TID < NTHREADS; TID++)
	{
		CORTOS_DEBUG("return values for thread %d are  0x%x, 0x%x\n", TID, exceptions[TID], stop_pc[TID]);
	}

	uint64_t t3 = __ajit_get_clock_time ();

	dma_store_burst (0, ENGINE_DMEM_BASE_POINTER + 0xc000, (uint32_t) &(TRESULT[0][0]), ORDER*ORDER*4);
	uint64_t t4 = __ajit_get_clock_time ();


	dma_ticks += (t1 - t0) + (t4 - t3);

	engine_ticks += (t2 - t1);
}


//   
//  
//  complete-thread 				ping		pong		ping
//  complete-R-dma						ping		pong
//  complete-B-dma		ping		pong		ping		pong
//  complete-A-dma		pingA		pong		ping		pong
//  start-thread			ping    	pong		ping
//  start-insert-R-dma					ping		pong
//  start-B-dma		   ping		pong		ping		pong
//  start-A-dma            ping		pong		ping		pong
//   
//
//   We will need to fix the DMA engines to enable this kind of pipelining.
//
//   In the meantime...
void mmul_stripe_and_run_on_threads (uint32_t nstripes, 
						uint32_t rows_per_stripe, 
							uint32_t bytes_per_row)
{
	cortos_printf("Info: entered mmul_stripe_and_run_on_thread %d, %d, %d\n",
						nstripes, rows_per_stripe, bytes_per_row);

	uint64_t start_time = __ajit_get_clock_time();

	uint32_t A_PING = 1;
	uint32_t B_PING = 1;
	uint32_t R_PING = 1;



	uint32_t S, T;

	uint32_t COUNT = 0;

	for (S = 0; S < nstripes; S++)
	{
		// load A stripe 0
		load_A_stripe ( 	S, 
					A_PING,
					rows_per_stripe,
					bytes_per_row
				);
#ifdef USE_DEBUG_MODE
		cortos_printf ("load A (%d) completed.\n", S);
#endif

		for (T = 0; T < nstripes; T++)
		{
			load_B_stripe (T,
					B_PING,
					rows_per_stripe,
					bytes_per_row);

#ifdef USE_DEBUG_MODE
			cortos_printf ("load B (%d) completed.\n", T);
#endif


#ifdef USE_DEBUG_MODE
			// start off four threads in the engine..
			cortos_printf("Info: starting mmul_start_across_threads: %s %s %s, (%d,%d)\n",
						A_PING  ? "ping":"pong",
						B_PING  ? "ping":"pong",
						R_PING  ? "ping":"pong",
						S, T);
#endif
			uint64_t t0 = __ajit_get_clock_time();
			mmul_start_across_threads	 
				( 
				 	(A_PING ? DMEM_A_PING_MATRIX_BASE_ADDRESS : DMEM_A_PONG_MATRIX_BASE_ADDRESS),
				 	(B_PING ? DMEM_B_PING_MATRIX_BASE_ADDRESS : DMEM_B_PONG_MATRIX_BASE_ADDRESS),
				 	(R_PING ? DMEM_R_PING_MATRIX_BASE_ADDRESS : DMEM_R_PONG_MATRIX_BASE_ADDRESS),
				 	rows_per_stripe, 
				 	rows_per_stripe,
				 	ORDER,
				 	ELEMENT_SIZE_IN_BYTES);

			mmul_complete_across_threads (S, T);
			uint64_t t1 = __ajit_get_clock_time();

			computation_ticks += (t1 - t0);

			dma_insert_R_into_result (S, T, R_PING, rows_per_stripe);

			COUNT++;
		}
	}

	uint64_t end_time = __ajit_get_clock_time();
	engine_ticks	 += (end_time - start_time);

	cortos_printf ("finished mmul_stripe_and_run_on_threads (COUNT=%d, engine-ticks=%lld)\n", COUNT, engine_ticks);
}


int check_result_values()
{
	__ajit_flush_dcache__ ();

	int ret_val = 0;
	cortos_printf("cross-checking accel results with processor results\n");
	int I;
	int32_t* PPTR = &(PRESULT[0][0]);
	int32_t* TPTR = &(TRESULT[0][0]);
	for(I = 0; I < ORDER*ORDER; I++)
	{
		int32_t refV = *(PPTR + I);
		int32_t V    = *(TPTR + I);

		if (V != refV)
		{
			cortos_printf("Error: result[%d] = 0x%x, expected 0x%x\n", I,  V, refV);
			ret_val = 1;
			break;
		}
	}
	if(ret_val == 0)
	{
		cortos_printf("SUCCESS! (dma_ticks=%lld, setup_ticks=%lld, computation_ticks=%lld, engine_ticks=%lld, processor_ticks=%lld)\n",
						dma_ticks, setup_ticks, computation_ticks, engine_ticks, processor_ticks);
		cortos_printf ("Net speedup = %F, computation speedup = %F\n",
				((double) processor_ticks)/engine_ticks, ((double) processor_ticks)/(computation_ticks - setup_ticks));
	}
	else
		cortos_printf("FAILURE...\n");
	return(ret_val);
}

void get_blob_info(uint32_t* ptr);
volatile uint32_t volatile blob_info[4];

void main_00 () 
{
	uint32_t cr;
	uint32_t I,J;
	uint8_t TID;
	int status = 0;

	// initialize the matrices..
	init_processor_matrices();

	// blob-info
	//        imem_blob_size
	//        imem_blob ptr
	//        dmem_blob_size
	//        dme_blob_ptr
	get_blob_info(blob_info);
	cortos_printf ("blob_info = 0x%x, 0x%x, 0x%x, 0x%x\n",
			blob_info[0],  // number of bytes in imem blob
			blob_info[1],  // imem blob pointer
			blob_info[2],  // number of bytes in dmem blob
			blob_info[3]); // dmem blob pointer.

	cortos_printf("enabling threads\n");
	for(TID = 0; TID < NTHREADS; TID++)
	{
		wait_on_thread_init (TID);
		enableThreadCommandDaemon (&hms, 0,0, TID);
		enable_dma_channel (TID);
	}

	cortos_printf("threads enabled\n");

	// load imem
	cortos_printf("loading imem (%d bytes from 0x%x)\n", blob_info[0], blob_info[1]);
	load_imem (blob_info[0]/4, blob_info[1]);
	cortos_printf("finished loading imem (%d bytes from 0x%x)\n", blob_info[0], blob_info[1]);

	// clear all registers..
	clear_all_registers();

	cortos_printf("calling mmul on processor\n");
	mmul_on_processor();
	cortos_printf("calling mmul on threads\n");
	// mmul_simple_check();
	mmul_stripe_and_run_on_threads(NSTRIPES,  ORDER/NSTRIPES, ORDER*ELEMENT_SIZE_IN_BYTES);
	cortos_printf("done with mmul\n");

	int results_not_ok = check_result_values();
	if(results_not_ok)
	{
		cortos_printf("FAILURE...\n");
		/*
		for(TID = 0; TID < NTHREADS; TID++)
		{
			dump_registers (TID);
		}
		*/
	}
	else
	{
		CORTOS_DEBUG("SUCCESS!!!\n");
	}

	return;
}

