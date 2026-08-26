/*
 * setup.c — UART + timer_read()
 * No MMU bypass needed — assembly uses regular ld/st
 */

#include <stdlib.h>
#include <stdint.h>
#include <cortos.h>
#include <ajit_access_routines.h>

void setup(void)
{
    __ajit_serial_set_uart_reset__(1);
    __ajit_serial_configure__(1, 0, 0);
    __ajit_serial_set_baudrate__(115200, CLK_FREQUENCY);
    __ajit_serial_set_uart_reset__(0);
}

uint32_t timer_read(void)
{
    return (uint32_t) __ajit_get_clock_time();
}

/* Flush entire data cache — call before each test for cold-cache measurement */
void flush_cache(void)
{
    __ajit_flush_dcache__();
}
