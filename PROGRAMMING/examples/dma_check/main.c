#include <stdlib.h>
#include <stdint.h>
#include <cortos.h>
#include <device_addresses.h>
#include <ajit_access_routines.h>
#include <structs.h>
#include <engine.h>

HpcMachineState hms;
	
#define  IMEM_BIAS  0x12345678
#define  DMEM_BIAS  0xfedcba0123456789
#define  E_BIAS     0x87654321
#define  DMA_BIAS   0x18273645
#define  TREG_BIAS  0xaaaabbbb

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


uint64_t     ping_data[16][16];
uint64_t     pong_data[16][16];
uint64_t*    dmem_ptr[4];

void do_load_dma_actions();
void do_store_dma_actions();


void main_00 () 
{
	uint32_t cr;
	int I,J;
	uint8_t TID;
	int status = 0;

	cortos_printf("1.  Initialize ping and pong data\n");
	cortos_printf("ping-ptr =0x%x, pong-ptr=0x%x\n", (uint32_t) &ping_data, (uint32_t) &pong_data);

	uint64_t V = 0;
	for(I = 0; I < 16; I++)
	{
		for(J=0; J < 16; J++)
		{
		       ping_data[I][J] = V;
			V++;

		       pong_data[I][J] = 0;
		}
	}

	
	do_load_dma_actions();
	do_store_dma_actions();
}

