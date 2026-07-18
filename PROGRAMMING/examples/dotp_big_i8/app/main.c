#include <stdlib.h>
#include <stdint.h>
#include <cortos.h>
#include <device_addresses.h>
#include <ajit_access_routines.h>
#include <structs.h>
#include <engine.h>

HpcMachineState hms;

#define ENGINE_DMEM_BASE_POINTER  0x1000000
#define NTHREADS_MIN   0
#define NTHREADS_MAX   3
#define MAX_NTHREADS   4
#define NBYTES         (4*8192)

volatile uint64_t processor_ticks;
volatile uint64_t accel_ticks;

void setup ()
{
	__ajit_serial_configure__(1,0,0);
	__ajit_serial_set_baudrate__ (115200, CLK_FREQUENCY);
	__ajit_serial_set_uart_reset__ (0);

	cortos_printf("Info: finished setup\n");
}

void set_args (uint32_t TID)
{
	while(writeThreadDataRegister (&hms, 0, 0, TID, 1, ENGINE_DMEM_BASE_POINTER));
	while(writeThreadDataRegister (&hms, 0, 0, TID, 2, ENGINE_DMEM_BASE_POINTER + NBYTES));
	while(writeThreadDataRegister (&hms, 0, 0, TID, 3, NBYTES/8));
	while(writeThreadDataRegister (&hms, 0, 0, TID, 4, ENGINE_DMEM_BASE_POINTER));
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


void dotp_across_all_threads ()
{

	cortos_printf("Starting dotp on engine threads\n");
	uint64_t t0, t1, t2;

	int TID;
	uint32_t exceptions[MAX_NTHREADS], bundle_word_index[MAX_NTHREADS];
	for(TID = NTHREADS_MIN;  TID <= NTHREADS_MAX; TID++)
	{
		cortos_printf("Starting dotp on engine thread %d\n", TID);
		clear_registers(TID);
		set_args (TID);
	}

	t0 = __ajit_get_clock_time (); // all started.
	for(TID = NTHREADS_MIN;  TID <= NTHREADS_MAX; TID++)
	{
		while(runEngineThreadAndPoll (&hms, 0,0,TID,0x0));
	}

	// cortos_printf ("started all threads\n");
	t1 = __ajit_get_clock_time (); // all started.
	

	for(TID = NTHREADS_MIN; TID <= NTHREADS_MAX; TID++)
	{
		uint32_t *exc = &(exceptions[TID]);
		uint32_t *spc = &(bundle_word_index[TID]);

		pollAndCompleteEngineThread(&hms, 0, 0, TID, exc,spc);

	}
	t2 = __ajit_get_clock_time (); // all finished.

	accel_ticks = (t2 - t1);

	for(TID = NTHREADS_MIN; TID <= NTHREADS_MAX; TID++)
	{
		cortos_printf("Thread %d:  exceptions=0x%x, stop_pc=0x%x\n", TID, exceptions[TID], bundle_word_index[TID]);
	}

	cortos_printf("Completed dotp on engine threads\n");
	cortos_printf ("Ticks.  t0 = 0x%llx, t1=0x%llx, delta=%lld,%lld\n", t0, t1, t1 - t0, t2 - t1);
	cortos_printf ("Speedup relative to processor = %d\n", (uint32_t) (processor_ticks/accel_ticks));
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
		set_args(TID);
	}

	// initialize memory.
	uint8_t* ptr0 = (uint8_t*) ENGINE_DMEM_BASE_POINTER;
	uint8_t* ptr1 = (uint8_t*) (ENGINE_DMEM_BASE_POINTER  + NBYTES);

	for(I = 0; I < NBYTES; I++)
	{
		ptr0[I] = 2;
		ptr1[I] = 2;
	}
	cortos_printf ("Initialized pointer memory\n");

	for(I = 0; I < NBYTES; I++)
	{
		uint32_t rv = ptr0[I];
		if(rv != 2)
			cortos_printf ("ptr0[%d] error %d\n", I, rv);
		rv = ptr1[I];
		if(rv != 2)
			cortos_printf ("ptr1[%d] error %d\n", I, rv);
	}

	cortos_printf("calling dotp\n");
	dotp_on_processor();
	dotp_across_all_threads();
	cortos_printf("done with dotp\n");


#ifdef RUN_SIMULTANEOUSLY
	for(TID = NTHREADS_MIN; TID <= NTHREADS_MAX; TID++)
	{
		dump_registers (TID);
	}
#endif

	// read data mem location into which r7 was written.
	// uint64_t m_rval = *((uint64_t*) ENGINE_DMEM_BASE_POINTER);
	// cortos_printf("Info: m_r7-val=0x%llx\n", m_rval);

	cortos_printf ("All done.\n");
	return;
}

