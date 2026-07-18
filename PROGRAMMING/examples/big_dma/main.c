#include <stdlib.h>
#include <stdint.h>
#include <cortos.h>
#include <device_addresses.h>
#include <ajit_access_routines.h>
#include <parameters.h>
#include <structs.h>
#include <engine.h>

HpcMachineState hms;
	
#define  IMEM_BIAS  0x12345678
#define  DMEM_BIAS  0xfedcba0123456789
#define  E_BIAS     0x87654321
#define  DMA_BIAS   0x18273645
#define  TREG_BIAS  0xaaaabbbb


volatile uint64_t  dma_load_ticks  = 0;
volatile uint64_t  dma_store_ticks  = 0;
volatile uint64_t  processor_ticks = 0;

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


uint64_t     ping_data[1024];
uint64_t     pong_data[1024];
uint64_t*    dmem_ptr = NULL;

void do_transfer_using_processor()
{
	int I;
	cortos_printf ("started do_transfer_using_processor\n");
	
	uint64_t t0 =  __ajit_get_clock_time ();
	for(I = 0; I < 1024; I++)
	{
		pong_data[I] = ping_data[I];
	}
	uint64_t t1 =  __ajit_get_clock_time ();

	processor_ticks += t1 - t0;

	cortos_printf ("completed do_transfer_using_processor\n");
}

void do_load_dma  (uint8_t TID);
void do_store_dma (uint8_t TID);


void clear_mem ()
{
	cortos_printf("clear_mem started.\n");
	int I, J;
	for(I = 0; I < 1024; I++)
	{
			pong_data[I] = 0;
			dmem_ptr[I] = 0;
	}
	cortos_printf("clear_mem completed.\n");
}

void set_ping ()
{
	cortos_printf("set_ping started.\n");
	int I;
	for(I = 0; I < 1024; I++)
	{
		ping_data[I] = I;
	}
	cortos_printf("set_ping completed.\n");
}

void check_pong () 
{
	cortos_printf("check_pong started.\n");
	int I;
	for(I = 0; I < 1024; I++)
	{
		if(pong_data[I] != I)
		{
			cortos_printf ("Error: pong [%d]= %d, expected %d\n",
					I, pong_data[I], I);
			break;
		}
	}
}

void main_00 () 
{
	uint32_t cr;
	int I,J;
	uint8_t TID;
	int status = 0;

	dmem_ptr = (uint64_t*) DATA_MEM_BASE_ADDRESS;

	for(TID = 0; TID < 4; TID++)
	{	
		enableThreadCommandDaemon (&hms, 0,0, TID);
		cortos_printf("Info: thread %d command daemon enabled\n", TID);

		set_ping();

		do_load_dma (TID);
		do_store_dma (TID);

		__ajit_flush_dcache__ ();		

		check_pong ();
		clear_mem ();
	}

	do_transfer_using_processor();
	do_transfer_using_processor();
	do_transfer_using_processor();
	do_transfer_using_processor();


	cortos_printf ("ticks:  dma_load=%lld, dma_store=%lld, processor=%lld\n",
				dma_load_ticks, dma_store_ticks, processor_ticks);

}

