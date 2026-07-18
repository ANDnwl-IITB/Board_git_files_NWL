#include <stdlib.h>
#include <stdint.h>
#include <cortos.h>
#include <device_addresses.h>
#include <ajit_access_routines.h>
#include <parameters.h>
#include <structs.h>
#include <engine.h>

extern HpcMachineState hms;
extern volatile uint64_t dma_ticks;

void enable_dma_channel (uint32_t dma_id)
{
	enableDmaCommandDaemon (&hms, 0,0, dma_id);
	cortos_printf("Info: dma %d command daemon enabled\n", dma_id);
}

void dma_start_store_stripe (uint8_t dma_id, uint32_t src_ptr, uint32_t dest_ptr,
					uint32_t burst_length_in_bytes,
					uint32_t inter_burst_gap_in_bytes,
					uint32_t number_of_bursts)
{
	int I;
	uint64_t t0, t1, t2;

		
	t0 = __ajit_get_clock_time ();
	while(1)
	{
		uint32_t sched_not_ok =  scheduleDmaTaskOnEngine (&hms,
				0,			      //cluster
				0,		      	      // engine
				dma_id,			      // dma-channel.
				0,    			      // load from mem = 0, means store.
				(uint64_t) src_ptr,           // source byte address,
				(uint64_t) dest_ptr,   	      // dest byte address.
				burst_length_in_bytes,	      // burst_length_in_bytes,
				inter_burst_gap_in_bytes,     // inter_burst_gap_in_bytes,
				number_of_bursts              // number_of_bursts
				);
		if(!sched_not_ok)
			break;
	}
}

void dma_start_load_stripe (uint32_t dma_id, uint32_t src_ptr, uint32_t dest_ptr, uint32_t nbytes)
{
	while(1)
	{
		uint32_t sched_ok =  scheduleDmaTaskOnEngine (&hms,
                                                0,			      //cluster
                                                0,		      	      // engine
                                                dma_id,			      // dma-channel.
                                                1,    			      // load from mem.
                                                src_ptr, 		      // source byte address.
						dest_ptr,  	      	      // destination_byte_address,
                                                nbytes,			      // burst_length_in_bytes,
                                                nbytes, 		      // inter_burst_gap_in_bytes,
                                                1                             // number_of_bursts
                                    );
		if(!sched_ok)
			break;
	}
}

void dma_complete (uint32_t dma_id)
{
	while(1) 
	{
		uint32_t creg;
		//  unused completed started   scheduled
		//    5        1         1       1
		uint8_t status = readDmaChannelTaskStatus(&hms, 0, 0, dma_id, &creg);
		if ((status  & 0x7) == 7)
		{
			break;
		}

	}
	closeDmaChannelTask (&hms, 0, 0, dma_id);

}

void dma_load_stripe (uint32_t dma_id, uint32_t src_ptr, uint32_t dest_ptr, uint32_t nbytes)
{
	uint64_t t0 = __ajit_get_clock_time();

	dma_start_load_stripe (dma_id,src_ptr, dest_ptr,nbytes);
	dma_complete(dma_id);

	uint64_t t1 = __ajit_get_clock_time();
	dma_ticks += t1-t0;
}

void dma_store_burst (uint32_t dma_id, uint32_t src_ptr, uint32_t dest_ptr, uint32_t nbytes)
{
	while(1)
	{
		uint32_t sched_ok =  scheduleDmaTaskOnEngine (&hms,
                                                0,			      //cluster
                                                0,		      	      // engine
                                                dma_id,			      // dma-channel.
                                                0,    			      // load from mem.
                                                src_ptr, 		      // source byte address.
						dest_ptr,  	      	      // destination_byte_address,
                                                nbytes,			      // burst_length_in_bytes,
                                                nbytes, 		      // inter_burst_gap_in_bytes,
                                                1                             // number_of_bursts
                                    );
		if(!sched_ok)
			break;
	}
}


