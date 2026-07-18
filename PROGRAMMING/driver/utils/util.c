#include <unistd.h>
#include <signal.h>
#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <stdint.h>
#include <inttypes.h>
#include <unistd.h>
#include <time.h>
#include <pthread.h>
#include <string.h>
#include "parameters.h"
#include "structs.h"
#include "engine.h"

// the following function must be provided
void writeToConfigRegister (HpcMachineState* hms,
					uint8_t is_dma_access,
					uint8_t cluster_id, 
					uint8_t engine_id, 
					uint8_t dma_or_thread_id, 
					uint8_t reg_id, 
					uint32_t reg_val)
{
	uint32_t addr = (!is_dma_access ?
			__engine_config_mem_address__(cluster_id, engine_id, dma_or_thread_id, (reg_id << 2)) :
			__dma_config_mem_address__(cluster_id, engine_id, dma_or_thread_id, (reg_id << 2))); 

	*((uint32_t*) addr) = reg_val;
}

uint32_t readFromConfigRegister (HpcMachineState* hms,
					uint8_t is_dma_access,
					uint8_t cluster_id, 
					uint8_t engine_id, 
					uint8_t dma_or_thread_id, 
					uint8_t reg_id)
{
	uint32_t addr = (!is_dma_access ?
			__engine_config_mem_address__(cluster_id, engine_id, dma_or_thread_id, (reg_id << 2)) :
			__dma_config_mem_address__(cluster_id, engine_id, dma_or_thread_id, (reg_id << 2))); 
	uint32_t reg_val = *((uint32_t*) addr);
	return(reg_val);
}

void writeDwordToDataMem (HpcMachineState* hms, 
				uint8_t   cluster_id, 
				uint8_t   engine_id, 
				uint8_t   thread_id, 
				uint32_t  dword_index, 
				uint64_t  wdata)
{
	uint32_t address = __engine_data_mem_address__(cluster_id, engine_id, dword_index << 3);
	*((uint64_t*) address) = wdata;

	return;
}

uint64_t readDwordFromDataMem (HpcMachineState* hms,
				uint8_t   cluster_id, 
				uint8_t   engine_id, 
				uint8_t   thread_id, 
				uint32_t  dword_index)
{
	uint32_t address = __engine_data_mem_address__(cluster_id, engine_id, dword_index << 3);
	uint64_t ret_val =  *((uint64_t*) address);

	return(ret_val);
}

