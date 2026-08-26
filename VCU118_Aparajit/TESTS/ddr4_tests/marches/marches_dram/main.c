#include <stdlib.h>
#include <stdint.h>
#include <cortos.h>
#include <device_addresses.h>
#include <ajit_access_routines.h>


volatile int start_1 = 0;
uint32_t sram_array[1024*256];


int march_test (int core_id, uint32_t start_addr, uint32_t stop_addr)
{
	int ret_val = 0;
	uint32_t I;

	cortos_printf("Core %d: started march(0x%x, 0x%x)\n", core_id, start_addr, stop_addr);
	for(I = start_addr; I < stop_addr; I += 4)
	{
		*((uint32_t*) I) = I;
	}
	for(I = start_addr; I < stop_addr; I += 4)
	{
		uint32_t R = *((uint32_t*) I);
		if(R != I)
		{
			cortos_printf ("Error:Core %d: march at addr 0x%x, received 0x%x, expected 0x%x\n",
						core_id, I, R, I);
			ret_val = 1;
			break;
		}
	}
	cortos_printf("Core %d: finished march(0x%x, 0x%x)\n", core_id, start_addr, stop_addr);
	return(ret_val);
}


void setup ()
{
	__ajit_serial_configure__(1,0,0);
	__ajit_serial_set_baudrate__ (115200, CLK_FREQUENCY);
	__ajit_serial_set_uart_reset__ (0);

	cortos_printf("Info: finished setup\n");
}

void main_00 () 
{


	int status = 0;

	start_1 = 1;

	cortos_printf("Core 0: running march test on SRAM region\n");
	status = march_test (0, (uint32_t) sram_array, ((uint32_t) sram_array) + 1024*256);

//	cortos_printf("Core 0: running march test on SRAM0 region\n");
//	status = march_test (0, 0x40100000, 0x4013ffff) || status;//

//	cortos_printf("Core 0: running march test on MIL1553-0 region\n");
//	status = march_test (0, 0x80000D00, 0x80000E00) || status;

	cortos_printf("Goodbye from core 0 (status = %d)\n", status);
}
/*
void main_10 () 
{
	int status = 0;
	while (!start_1);

	cortos_printf("Start core 1 (status = %d)\n", status);

	cortos_printf("Core 1: running march test on DPRAM1 region\n");
	status = march_test (1, 0x40001001, 0x40002000) || status;

	cortos_printf("Core 1: running march test on GNSS region\n");
	status = march_test (1, 0x40002001, 0x40003000) || status;

//	cortos_printf("Core 1: running march test on MIL1553-1 region\n");
//	status = march_test (1, 0x80000C00, 0x80000D00) || status;

	cortos_printf("Goodbye from core 1 (status = %d)\n", status);
}
*/
