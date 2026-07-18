#include <stdlib.h>
#include <stdint.h>
#include <cortos.h>
#include <device_addresses.h>
#include <ajit_access_routines.h>
#include <structs.h>
#include <engine.h>
#include "dma.h"
#include "defines.h"

extern HpcMachineState hms;
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
	for(TID = 0; TID <= NTHREADS; TID++)
	{
		clear_registers(TID);
	}
}


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
