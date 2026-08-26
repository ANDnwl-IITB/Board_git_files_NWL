#include <math.h>
#include "core_portme.h"
#include "ajit_access_routines.h"
#include "cortos.h"
#include "__bget.h"
#include "cortos_bget.h"
#include "cortos.h"

void setup()
{
    __ajit_serial_configure__(1, 0, 0);
    __ajit_serial_set_baudrate__ (115200, CLK_FREQUENCY);
    __ajit_serial_set_uart_reset__ (0);
}

#define RAM_START   0x40200000UL
//#define RAM_END     0x44000000UL
#define RAM_END       0xFF000000UL   
#define PAGE_SIZE   0x10000UL     
int main_00()
{
    uint32_t addr;
    uint8_t *mem;
    uint32_t i, j;
    uint32_t mismatch_count = 0;
    uint32_t total_pages = (RAM_END - RAM_START) / PAGE_SIZE;

    cortos_printf("==== MEMORY SCAN START ====\n");
    cortos_printf("Range: 0x%lx to 0x%lx, %lu pages of %luKB\n",
                  RAM_START, RAM_END, total_pages, PAGE_SIZE / 1024);

    /* ---- Loop 1: write i to first byte of each page ---- */
    cortos_printf("==== WRITE START ====\n");
    
    uint32_t count=0;
    
    for (i = 0, addr = RAM_START; addr < RAM_END; addr += PAGE_SIZE, i++)
    {
	count++;
	if(addr >= 0x70000000)
		cortos_printf("addr is 0x%lx", addr);
	if(count == 100)
		cortos_printf("count is 100");
        mem    = (uint8_t *)addr;
        mem[0] = (uint8_t)(i & 0xFF);
    }

    cortos_printf("==== WRITE DONE: %lu pages written ====\n", i);

    /* ---- Loop 2: read back and verify against j ---- */
    cortos_printf("==== READ BACK START ====\n");

    for (j = 0, addr = RAM_START; addr < RAM_END; addr += PAGE_SIZE, j++)
    {
        mem = (uint8_t *)addr;

        if (mem[0] != (uint8_t)(j & 0xFF))
        {
            cortos_printf("MISMATCH at 0x%lx — expected %u, got %u\n",
                          addr, (uint8_t)(j & 0xFF), mem[0]);
            mismatch_count++;
        }
    }

    if (mismatch_count == 0)
        cortos_printf("==== READ BACK DONE: all %lu pages OK ====\n", j);
    else
        cortos_printf("==== READ BACK DONE: %lu mismatches out of %lu pages ====\n",
                      mismatch_count, j);

    cortos_printf("==== MEMORY SCAN DONE ====\n");
    return 0;
}
