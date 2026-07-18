#include <stdlib.h>
#include <stdint.h>
#include <cortos.h>
#include <device_addresses.h>
#include <ajit_access_routines.h>
#include <parameters.h>
#include <structs.h>
#include <engine.h>

extern HpcMachineState hms;
extern uint64_t     ping_data[1024];
extern uint64_t     pong_data[1024];
extern uint64_t*    dmem_ptr;

extern uint64_t  dma_load_ticks;
extern uint64_t  dma_store_ticks;

void do_load_dma(uint8_t TID)
{
	int I, J;
	uint64_t t0, t1, t2;

	enableDmaCommandDaemon (&hms, 0,0, TID);
	cortos_printf("Info: dma %d command daemon enabled\n", TID);
		
	t0 = __ajit_get_clock_time ();

#ifdef CHECK_HW_TIMER
	uint64_t hw_t1;
	while(1)
	{
		hw_t1 = readGlobalTickTimer (&hms, 0,0, TID);
		if(hw_t1 != 0)
			break;
	}
#endif

	uint32_t sched_ok =  scheduleDmaTaskOnEngine (&hms,
                                                0,			      //cluster
                                                0,		      	      // engine
                                                TID,			      // dma-channel.
                                                1,    			      // load from mem.
                                                (uint64_t) &(ping_data[0]),   // source byte address.
						(uint64_t)  dmem_ptr,  	      // destination_byte_address,
                                                1024*8,			      // burst_length_in_bytes,
                                                1024*8,			      // inter_burst_gap_in_bytes,
                                                1                             // number_of_bursts
                                    );
	t1 = __ajit_get_clock_time ();

	uint64_t hw_t2;
	while(1) 
	{
		uint32_t creg;
		//  unused completed started   scheduled
		//    5        1         1       1
		uint8_t status = readDmaChannelTaskStatus(&hms, 0,0,TID, &creg);
		if (status & 0x4)
		{
#ifdef CHECK_HW_TIMER
			while(1)
			{
				hw_t2 = readGlobalTickTimer (&hms, 0,0, TID);
				if(hw_t2 != 0)
					break;
			}
#endif

			t2 = __ajit_get_clock_time ();
			cortos_printf("Dma task %d completed (creg=0x%x)\n", TID, creg);
			break;
		}
	}

	dma_load_ticks += (t2 - t1);

	closeDmaChannelTask (&hms, 0, 0, TID);
	cortos_printf ("do_dma_load %d:  t0=0x%llx, t1=0x%llx, t2=0x%llx, delta=%lld\n", 
				TID, t0, t1, t2, t2 - t1);
#ifdef CHECK_HW_TIMER
	cortos_printf ("do_dma_load %d:  hw_t1=0x%llx, hw_t2=0x%llx, delta=%lld\n", 
				TID, hw_t1, hw_t2, hw_t2 - hw_t1);
#endif

}

void do_store_dma (uint8_t TID)
{
	int I;
	uint64_t t0, t1, t2;

	cortos_printf("7.  Schedule store DMA [%d].\n", TID);
		
	t0 = __ajit_get_clock_time ();
	uint32_t sched_ok =  scheduleDmaTaskOnEngine (&hms,
				0,			      //cluster
				0,		      	      // engine
				TID,			      // dma-channel.
				0,    			      // load from mem.
				(uint64_t) dmem_ptr,          // source byte address,
				(uint64_t) &(pong_data[0]),   // dest byte address.
				1024*8,			      // burst_length_in_bytes,
				1024*8, 		      // inter_burst_gap_in_bytes,
				1                             // number_of_bursts
				);

	t1 = __ajit_get_clock_time ();

#ifdef CHECK_HW_TIMER
	uint64_t hw_t1;
	while(1)
	{
		hw_t1 = readGlobalTickTimer (&hms, 0,0, TID);
		if(hw_t1 != 0)
			break;
	}
	uint64_t hw_t2;

#endif

	while(1) 
	{
		uint32_t creg;
		//  unused completed	started scheduled
		//    5        1         1       1
		uint8_t status = readDmaChannelTaskStatus(&hms, 0,0,TID, &creg);
		if (status & 0x4)
		{
#ifdef CHECK_HW_TIMER
			while(1)
			{
				hw_t2 = readGlobalTickTimer (&hms, 0,0, TID);
				if(hw_t2 != 0)
					break;
			}
#endif

			/*
			uint32_t h = readFromEngineConfigRegister (&hms, 0,0, TID, 3);	
			uint32_t l = readFromEngineConfigRegister (&hms, 0,0, TID, 4);	
			cortos_printf("h=0x%x,l=0x%x\n", h,l);
			*/


			t2 = __ajit_get_clock_time ();

			cortos_printf("9.  Dma task %d completed (creg=0x%x)\n", TID,creg);
			break;
		}
	}


	dma_store_ticks += (t2 - t1);

	closeDmaChannelTask (&hms, 0, 0, TID);
	cortos_printf ("do_dma_store %d:  t0=0x%llx, t1=0x%llx, t2=0x%llx, delta=%lld\n", 
					TID, t0, t1, t2, t2-t1);
#ifdef CHECK_HW_TIMER
	cortos_printf ("do_dma_store %d:  hw_t1=0x%llx, hw_t2=0x%llx, hw_delta=%lld\n", 
					TID, hw_t1, hw_t2, hw_t2-hw_t1);
#endif

}

