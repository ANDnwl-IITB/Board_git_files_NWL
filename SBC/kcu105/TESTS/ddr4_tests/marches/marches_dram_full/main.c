#include <math.h>
#include "core_portme.h"
#include "ajit_access_routines.h"
#include "cortos.h"
#include "__bget.h"
#include "cortos_bget.h"

void setup()
{
    __ajit_serial_configure__(1, 0, 0);
    __ajit_serial_set_baudrate__ (115200, CLK_FREQUENCY);
    __ajit_serial_set_uart_reset__ (0);
}

// 2GB Range setup
#define RAM_START    0x40200000UL
#define RAM_END      0xC0000000UL  // End of 2GB range (start + 0x7FFFFFFF)
#define WORD_SIZE    4             // Increment by 4 bytes to check EVERY word

int main_00()
{
    uint32_t addr;
    volatile uint32_t *mem; // Use 32-bit pointer for word-by-word access
    uint32_t mismatch_count = 0;
    uint32_t write_count = 0;
    uint32_t verify_count = 0;

    cortos_printf("==== FULL 2GB VOLUME SCAN START ====\n");
    cortos_printf("Range: 0x%lx to 0x%lx\n", RAM_START, RAM_END);

    /* ---- Loop 1: WRITE PHASE (Every Word) ---- */
    cortos_printf("==== WRITE START (Touching every word) ====\n");
    
    for (addr = RAM_START; addr < RAM_END; addr += WORD_SIZE)
    {
        mem = (volatile uint32_t *)addr;
        
        // Use the address itself as the unique pattern
        *mem = addr;
        write_count++;

        // Progress Heartbeat: Print every 1MB so you see it's running
        if ((addr & 0x000FFFFF) == 0) {
            cortos_printf("  Writing... Addr: 0x%lx\n", addr);
        }
    }
    cortos_printf("==== WRITE DONE: %lu words written ====\n", write_count);

    /* ---- Loop 2: VERIFY PHASE ---- */
    cortos_printf("==== READ BACK START ====\n");

    for (addr = RAM_START; addr < RAM_END; addr += WORD_SIZE)
    {
        mem = (volatile uint32_t *)addr;

        if (*mem != addr)
        {
            cortos_printf("MISMATCH at 0x%lx — expected 0x%lx, got 0x%lx\n",
                          addr, addr, *mem);
            mismatch_count++;
            
            // Safety: Stop if flooded with errors
            if(mismatch_count > 20) {
                cortos_printf("FATAL: Too many mismatches. Aborting.\n");
                break;
            }
        }
        verify_count++;

        if ((addr & 0x000FFFFF) == 0) {
            cortos_printf("  Verifying... Addr: 0x%lx\n", addr);
        }
    }

    if (mismatch_count == 0)
        cortos_printf("==== SUCCESS: All %lu words OK ====\n", verify_count);
    else
        cortos_printf("==== FAIL: %lu mismatches in %lu words ====\n", mismatch_count, verify_count);

    cortos_printf("==== MEMORY SCAN DONE ====\n");


}
