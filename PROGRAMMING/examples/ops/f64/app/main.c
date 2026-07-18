#include <stdlib.h>
#include <stdint.h>
#include <cortos.h>
#include <device_addresses.h>
#include <ajit_access_routines.h>
#include <structs.h>
#include <engine.h>

HpcMachineState hms;

#define ENGINE_DMEM_BASE_POINTER  0x1000000

void setup ()
{
	__ajit_serial_configure__(1,0,0);
	__ajit_serial_set_baudrate__ (115200, CLK_FREQUENCY);
	__ajit_serial_set_uart_reset__ (0);

	cortos_printf("Info: finished setup\n");
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

void set_args(double a, double b)
{
	uint64_t ia = *((int64_t*) &a);
	uint64_t ib = *((int64_t*) &b);

	while(writeThreadDataRegister (&hms, 0, 0, 0,1, ia));
	while(writeThreadDataRegister (&hms, 0, 0, 0,2, ib));
}

int print_status = 1;
int  check_ops (double a, double b)
{

	set_args (a,b);

	uint32_t exceptions, bundle_word_index;

	while(runEngineThreadAndPoll (&hms, 0,0,0,0x0));
	while(pollAndCompleteEngineThread(&hms, 0, 0, 0x0, &exceptions, &bundle_word_index));

	if(print_status)
	{
		cortos_printf ("thread completed (pc=0x%x, exceptions=0x%x)\n", bundle_word_index, exceptions);
		parseEngineThreadExceptions(exceptions);
	}
	print_status = 0;

	int64_t rval;
	while(readThreadDataRegister(&hms, 0,0,0,3, &rval));

	//-----------------------  mul --------------------------------------------------------//
	double ev = a*b;

	if(*((int64_t*) &ev) != rval)
	{
		cortos_printf("Error: %F * %F =  %F, expected %F\n", a,b,*((double*) &rval),ev);
		return(1);
	}

	while(readThreadDataRegister(&hms, 0,0,0,4, &rval));

	//-----------------------  add --------------------------------------------------------//
	ev = a + b;
	if(*((int64_t*) &ev) != rval)
	{
		cortos_printf("Error: %F + %F =  %F, expected %F\n", a,b,*((double*) &rval),ev);
		return(1);
	}
	
	//-----------------------  sub --------------------------------------------------------//
	while(readThreadDataRegister(&hms, 0,0,0,5, &rval));
	ev = (a - b);

	if(*((int64_t*) &ev) != rval)
	{
		cortos_printf("Error: %F - %F =  %F, expected %F\n", a,b,*((double*) &rval),ev);
		return(1);
	}
	
	//-----------------------  div --------------------------------------------------------//
	if(b != 0)
	{
		while(readThreadDataRegister(&hms, 0,0,0,6, &rval));

		ev = (a / b);

		if(*((int64_t*) &ev) != rval)
		{
			cortos_printf("Error: %F / %F =  %F, expected %F\n", a,b,*((double*) &rval),ev);
			return(1);
		}

	}
	return(0);
}


void main_00 () 
{
	int I,J;
	uint8_t TID;

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

	cortos_printf("waiting on thread-init.. (%d)\n", 0);
	wait_on_thread_init (0);
	cortos_printf("thread-init (%d) completed.\n", 0);

	cortos_printf("enabling thread(%d)..\n", 0);
	enableThreadCommandDaemon (&hms, 0,0, 0);
	cortos_printf("thread(%d) enabled.\n", 0);

	// load imem
	cortos_printf("loading imem (%d bytes from 0x%x)\n", blob_info[0], blob_info[1]);
	load_imem (blob_info[0]/4, blob_info[1]);
	cortos_printf("finished loading imem (%d bytes from 0x%x)\n", blob_info[0], blob_info[1]);


	double a, b;
	int status = 0;

	for (a = 1; a < 1000; a = 2*a)
	{
		for (b = 1; b < 1000; b = 2*b)
		{
			status = check_ops (a,b) || status;
			status = check_ops (-a,b) || status;
			status = check_ops (a,-b) || status;
			status = check_ops (-a,-b) || status;
		}
	}

	cortos_printf("done!\n");

	if(status == 0)
		cortos_printf ("SUCCESS!\n");
	else
		cortos_printf ("FAILURE...\n");
}

