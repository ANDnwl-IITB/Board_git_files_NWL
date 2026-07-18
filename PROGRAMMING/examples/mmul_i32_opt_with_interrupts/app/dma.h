#include <stdlib.h>
#include <stdint.h>

void enable_dma_channel (uint32_t dma_id);
void dma_start_store_stripe (uint8_t TID, uint32_t src_ptr, uint32_t dest_ptr,
					uint32_t burst_length_in_bytes,
					uint32_t inter_burst_gap_in_bytes,
					uint32_t number_of_bursts);
void dma_start_load_stripe (uint32_t dma_id, uint32_t src_ptr, uint32_t dest_ptr, uint32_t nbytes);
void dma_complete (uint32_t dma_id);
void dma_store_burst (uint32_t dma_id, uint32_t src_ptr, uint32_t dest_ptr, uint32_t nbytes);
