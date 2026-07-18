#include <stdlib.h>
#include <stdint.h>

void dump_registers(uint32_t TID);
uint32_t wait_on_thread_init(uint8_t TID);
void clear_registers(uint32_t TID);
void clear_all_registers();
void load_imem (uint32_t number_of_words, uint32_t base_address);
