#include <stdlib.h>

#include <stdint.h>

#include <cortos.h>

#include <device_addresses.h>

#include <ajit_access_routines.h>

#include <structs.h>

#include <engine.h>



HpcMachineState hms;

#define MAT_DIM 32 // Change this to match your APARA test size (8, 16, 64, etc.)

#define M 32
#define K 128
#define N 32

#define A_SIZE (M * K)
#define B_SIZE (K * N)
#define C_SIZE (M * N)

#define ENGINE_DMEM_BASE_POINTER  0x1000000

#define NTHREADS_MIN   0

#define NTHREADS_MAX   3

#define MAX_NTHREADS   4

#define NBYTES         (1300 * 8)



volatile uint64_t processor_ticks;

volatile uint64_t accel_ticks;



void setup ()

{

	__ajit_serial_configure__(1,0,0);

	__ajit_serial_set_baudrate__ (115200, CLK_FREQUENCY);

	__ajit_serial_set_uart_reset__ (0);



	cortos_printf("Info: finished setup\n");

}



void set_args ()

{

	while(writeThreadDataRegister (&hms, 0, 0, 0, 7, ENGINE_DMEM_BASE_POINTER  ));
	while(writeThreadDataRegister (&hms, 0, 0, 1, 7, ENGINE_DMEM_BASE_POINTER + 16*1024 ));
	while(writeThreadDataRegister (&hms, 0, 0, 2, 7, ENGINE_DMEM_BASE_POINTER + 2*16*1024 ));
	while(writeThreadDataRegister (&hms, 0, 0, 3, 7, ENGINE_DMEM_BASE_POINTER + 3*16*1024 ));
//	while(writeThreadDataRegister (&hms, 0, 0, TID, 31, ENGINE_DMEM_BASE_POINTER + 1088));
//	while(writeThreadDataRegister (&hms, 0, 0, TID, 27, ENGINE_DMEM_BASE_POINTER + 2112));

//	while(writeThreadDataRegister (&hms, 0, 0, TID, 4, ENGINE_DMEM_BASE_POINTER));

}



void dump_registers(uint32_t TID)

{

	uint32_t I;

	uint64_t rval;



	for(I = 0; I < 32; I++)

	{

		while(readThreadDataRegister (&hms, 0,0,TID, I, &rval));

		cortos_printf("0x%llx = REG[%d] TID=%d\n",  rval, I, TID);

	}

}



void ptr_check ()

{

	// initialize memory.

	uint8_t* ptr0 = (uint8_t*) ENGINE_DMEM_BASE_POINTER;

	uint8_t* ptr1 = (uint8_t*) (ENGINE_DMEM_BASE_POINTER  + NBYTES);

	uint32_t I;



	for(I = 0; I < NBYTES; I++)

	{

		if(ptr0[I] != 2)

			cortos_printf ("ptr0[%d] = %d, expected 2\n", I, ptr0[I]);

		if(ptr1[I] != 2)

			cortos_printf ("ptr1[%d] = %d, expected 2\n", I, ptr0[I]);

	}

}



uint32_t wait_on_thread_init(uint8_t TID)

{

	uint32_t cr = 0;

	while(1)

	{

		cr = readFromConfigRegister (&hms, 

				0,

				0,

				0, 

				TID,

				0);

		if((cr >> 7) & 0x1)

		{

			break;

		}



		__ajit_sleep__ (1024);

	}	

	return(cr);

}



void clear_registers(uint32_t TID)

{

	uint64_t R, VAL;

	for(R=0; R < 32; R++)

	{

		while(writeThreadDataRegister (&hms, 0, 0, TID, R, 0));

		while(readThreadDataRegister  (&hms, 0,0,TID, R, &VAL));



		if(VAL != 0)

		{

			cortos_printf("Error: init reg-val of r%d is 0x%llx\n", (uint32_t) R, VAL);

		}

	}

}



void clear_all_registers()

{

	uint32_t TID;

	for(TID = NTHREADS_MIN; TID <= NTHREADS_MAX; TID++)

	{

		clear_registers(TID);

	}

}



void get_blob_info(uint32_t* ptr);

volatile uint32_t volatile blob_info[4];



void load_imem (uint32_t number_of_words, uint32_t base_address)

{

	cortos_printf("load_imem: number_of_words = %d, base_addr = 0x%x\n", 

			number_of_words,

			base_address);

	// load the instruction memory..

	uint32_t I;

	for(I = 0; I < number_of_words; I++)

	{

		uint32_t instr = *(((uint32_t*) base_address) + I);

		while(writeInstructionToEngineInstrMemory (&hms, 0,0, I, instr));

		uint32_t instr_rb = 0;

		while(readInstructionFromEngineInstrMemory (&hms, 0,0, I, &instr_rb));

		if(instr != instr_rb)

		{

			cortos_printf("Error: load_imem [%d] mismatch  0x%x != 0x%x\n", 

					I, instr, instr_rb);

		}

	}

}



// number of entries  = nbytes/12.

// Each entry has 

//          dword-index

//          high-word

//          low-word.

void load_dmem (uint32_t nbytes, uint32_t source_ptr)

{



	uint32_t I,J, fI;

	uint32_t* src_array = ((uint32_t*) source_ptr);



	J = 0;



	for(I = 0, fI = nbytes/4; I < fI; I = I + 3)

	{

		// particulars of double word location

		// and values..

		uint32_t addr = src_array[I] <<  3;



		uint32_t valh = src_array[I+1];

		uint32_t vall = src_array[I+2];



		uint64_t wval = valh;

		wval = (wval << 32) | vall;



		*((uint64_t*) addr) = wval;

		cortos_printf("Info: dmem [0x%x] = 0x%llx \n", addr, wval);

	}

}



uint8_t byte_array [2*NBYTES];


void dotp_on_processor()

{

	uint32_t I;

	// initialize memory.

	uint8_t* ptr0 = (uint8_t*) &(byte_array[0]);

	uint8_t* ptr1 = (uint8_t*) &(byte_array[NBYTES]);



	for(I = 0; I < NBYTES; I++)

	{

		ptr0[I] = 2;

		ptr1[I] = 2;

	}



	uint64_t t0, t1;



	t0 = __ajit_get_clock_time ();

	uint32_t result = 0;

	for(I = 0; I < NBYTES; I++)

	{

		result += (uint32_t) (ptr0[I] * ptr1[I]);

	}

	t1 = __ajit_get_clock_time ();



	processor_ticks = (4* (t1 - t0));

	cortos_printf("dotp_on_processor: result=%d, ticks=%lld\n", result, processor_ticks);

	return(result);

}

void matmul_on_processor()
{
    uint32_t i, j, k;

    uint8_t* A = (uint8_t*)&byte_array[0];
    uint8_t* B = (uint8_t*)&byte_array[A_SIZE];
    uint32_t* C = (uint32_t*)&byte_array[A_SIZE + B_SIZE];

    for(i = 0; i < A_SIZE; i++)
        A[i] = 2;

    for(i = 0; i < B_SIZE; i++)
        B[i] = 2;

    for(i = 0; i < C_SIZE; i++)
        C[i] = 0;

    uint64_t t0 = __ajit_get_clock_time();

    for(i = 0; i < M; i++)
    {
        for(j = 0; j < N; j++)
        {
            uint32_t sum = 0;

            for(k = 0; k < K; k++)
            {
                sum += (uint32_t)(
                    A[i * K + k] *
                    B[k * N + j]
                );
            }

            C[i * N + j] = sum;
        }
    }

    uint64_t t1 = __ajit_get_clock_time();

    processor_ticks =  (t1 - t0);

    cortos_printf("matmul_on_processor: ticks=%lld\n", processor_ticks);
}




void fft_across_all_threads ()

{



	cortos_printf("Starting fft on engine threads\n");
	uint64_t t0, t1, t2;
	int TID;
	uint32_t exceptions[MAX_NTHREADS], bundle_word_index[MAX_NTHREADS];
	for(TID = NTHREADS_MIN;  TID <= NTHREADS_MAX; TID++)
	{
		cortos_printf("Starting fft on engine thread %d\n", TID);
		clear_registers(TID);
		set_args ();
	}

	t0 = __ajit_get_clock_time (); // all started.
	for(TID = NTHREADS_MIN;  TID <= NTHREADS_MAX; TID++)
	{
		while(runEngineThread (&hms, 0,0,TID,0x0));
	}
	t1 = __ajit_get_clock_time (); // all started.
	for(TID = NTHREADS_MIN; TID <= NTHREADS_MAX; TID++)
	{
		while(1)
		{ 
			int status = checkIfThreadHasCompleted (&hms, 0,0,TID, &(exceptions[TID]), &(bundle_word_index[TID]));
			if(status == 0)
				break;
		}
	}
	t2 = __ajit_get_clock_time (); // all finished.
	accel_ticks = (t2 - t1);
	for(TID = NTHREADS_MIN; TID <= NTHREADS_MAX; TID++)
	{
		cortos_printf("Thread %d:  exceptions=0x%x, stop_pc=0x%x\n", TID, exceptions[TID], bundle_word_index[TID]);
	}
	cortos_printf("Completed fft on engine threads\n");
	cortos_printf ("Ticks.  t1 = 0x%llx, t2=0x%llx, net tick count=%lld\n", t1, t2, t2 - t1);
//	cortos_printf ("Speedup relative to processor = %d\n", (uint32_t) (processor_ticks/accel_ticks));

}





void main_00 () 

{

	uint32_t cr;

	uint32_t I,J;

	uint8_t TID;

	int status = 0;



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

	for(TID = NTHREADS_MIN; TID <= NTHREADS_MAX; TID++)

	{

		wait_on_thread_init (TID);

		enableThreadCommandDaemon (&hms, 0,0, TID);

	}



	if(NTHREADS_MIN > 0)

		enableThreadCommandDaemon (&hms, 0,0, 0);

	cortos_printf("threads enabled\n");



	// load imem

	cortos_printf("loading imem (%d bytes from 0x%x)\n", blob_info[0], blob_info[1]);

	load_imem (blob_info[0]/4, blob_info[1]);

	cortos_printf("finished loading imem (%d bytes from 0x%x)\n", blob_info[0], blob_info[1]);

	

	// load dmem

	cortos_printf("loading dmem (%d bytes from 0x%x)\n", blob_info[2], blob_info[3]);

	load_dmem (blob_info[2], blob_info[3]);

	cortos_printf("finished loading imem (%d bytes from 0x%x)\n", blob_info[2], blob_info[3]);

      

	// clear all registers..

	uint64_t rval = 0;

	clear_all_registers();



	// registers.

	//       r1 = 0x1000000 address of first array

	//       r2 = 0x1008000 base address of second array

	//       r3 = 8192 

	//       r4 = destination address..  (keep it 0x1000000)

	//       r5 = 0

	// register 31 points to the arguments in the main memory.
	for(TID = NTHREADS_MIN; TID <= NTHREADS_MAX; TID++)

	{

		set_args();

	}



	cortos_printf("calling dotp\n");

	//dotp_on_processor();
//	matmul_on_processor();
	matmul_on_processor();
	fft_across_all_threads();

	cortos_printf("done with dotp\n");
if(accel_ticks > 0) {
//		cortos_printf("Speedup relative to processor = %d x\n", (uint32_t) (processor_ticks / accel_ticks));
	}
	

	uint8_t *ptr0 = (uint8_t *) ENGINE_DMEM_BASE_POINTER;



    cortos_printf("Dumping output: %d locations, 16 bytes each\n", NBYTES/16);



    for(I = 0; I < NBYTES/8; I++)

    {

        cortos_printf("ptr0[%d] = ", I);



        for(J = 0; J < 8; J++)

        {

            cortos_printf("%02x", (unsigned int) ptr0[(I * 8) + J]);

        }



        cortos_printf("\n");

    }




    cortos_printf("Finished dumping output\n");

	

#ifdef RUN_SIMULTANEOUSLY

	for(TID = NTHREADS_MIN; TID <= NTHREADS_MAX; TID++)

	{

		dump_registers (TID);

	}

#endif



	// read data mem location into which r7 was written.

	// uint64_t m_rval = *((uint64_t*) ENGINE_DMEM_BASE_POINTER);

	// cortos_printf("Info: m_r7-val=0x%llx\n", m_rval);



	return;

}

