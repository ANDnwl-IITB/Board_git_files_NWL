#include <stdlib.h>
#include <stdint.h>
#include <cortos.h>
#include <device_addresses.h>
#include <ajit_access_routines.h>
#include <parameters.h>
#include <structs.h>
#include <engine.h>

extern HpcMachineState hms;
extern uint64_t     ping_data[16][16];
extern uint64_t     pong_data[16][16];
extern uint64_t*    dmem_ptr[4];

void do_load_dma_actions()
{
	uint8_t TID;
	int I, J;

	// confirm that the threads are initialized.
	cortos_printf("2.  Enable thread and dma command daemons.\n");
	for(TID = 0; TID < 4; TID++)
	{
		dmem_ptr[TID] = DATA_MEM_BASE_ADDRESS + (TID*0x1000);
		cortos_printf("dmem_ptr[%d] = 0x%llx\n", TID, (uint64_t) dmem_ptr[TID]);
		cortos_printf("0-entry 0x%llx\n", *(dmem_ptr[0]));

		enableThreadCommandDaemon (&hms, 0,0, TID);
		cortos_printf("Info: thread %d command daemon enabled\n", TID);

		enableDmaCommandDaemon (&hms, 0,0, TID);
		cortos_printf("Info: dma %d command daemon enabled\n", TID);


	}


	cortos_printf("2.  Schedule load DMA actions.\n");
	for(TID = 0; TID < 4; TID++)
	{
		cortos_printf("3.  Schedule load DMA [%d].\n", TID);

		uint32_t R, C;
		if(TID == 0)
		{
			R = 0; C = 0;
		}
		else if(TID == 1)
		{
			R = 0; C = 1;
		}
		else if(TID == 2)
		{
			R = 1; C = 0;
		}
		else if(TID == 3)
		{
			R = 1; C = 1;
		}

		uint32_t sched_ok =  scheduleDmaTaskOnEngine (&hms,
                                                0,			      //cluster
                                                0,		      	      // engine
                                                TID,			      // dma-channel.
                                                1,    			      // load from mem.
                                                (uint64_t) &(ping_data[R*8][C*8]), // source byte address.
						dmem_ptr[TID],  	      // destination_byte_address,
                                                64,			      // burst_length_in_bytes,
                                                128, 			      // inter_burst_gap_in_bytes,
                                                8                             // number_of_bursts
                                    );
		if(sched_ok != 0)
		{
			cortos_printf("Error: schedule task (channel %d) returned failure.\n" , TID);
		}
		else
		{
			cortos_printf("4.  Successfully scheduled load DMA [%d].\n", TID);
			while(1) 
			{
				uint32_t creg;
				//  unused completed started   scheduled
				//    5        1         1       1
				uint8_t status = readDmaChannelTaskStatus(&hms, 0,0,TID, &creg);
				if (status & 0x4)
				{
					cortos_printf("5.  Dma task %d completed (creg=0x%x)\n", TID, creg);
					break;
				}
				else
					cortos_printf("5.1 creg=0x%x\n", creg);
				__ajit_sleep__ (1024);
			}
			closeDmaChannelTask (&hms, 0, 0, TID);
		}
	
		cortos_printf("6.  Local mem values [%d]\n", TID);
		for(I = 0; I < 64; I++)
		{
			if((I > 0) && ((I%8) == 0))
				cortos_printf("\n");

			cortos_printf("0x%llx  ", dmem_ptr[TID][I]);
		}
		cortos_printf("\n");
	}
}

void do_store_dma_actions()
{
	uint8_t TID;
	int I, J;


	for(TID = 0; TID < 4; TID++)
	{
		cortos_printf("7.  Schedule store DMA [%d].\n", TID);

		uint32_t R, C;
		if(TID == 0)
		{
			R = 0; C = 0;
		}
		else if(TID == 1)
		{
			R = 0; C = 1;
		}
		else if(TID == 2)
		{
			R = 1; C = 0;
		}
		else if(TID == 3)
		{
			R = 1; C = 1;
		}

		uint32_t sched_ok =  scheduleDmaTaskOnEngine (&hms,
                                                0,			      //cluster
                                                0,		      	      // engine
                                                TID,			      // dma-channel.
                                                0,    			      // load from mem.
						(uint64_t) dmem_ptr[TID],  	   // source byte address,
                                                (uint64_t) &(pong_data[R*8][C*8]), // dest byte address.
                                                64,			      // burst_length_in_bytes,
                                                128, 			      // inter_burst_gap_in_bytes,
                                                8                             // number_of_bursts
                                    );
		if(sched_ok != 0)
		{
			cortos_printf("Error: schedule task (channel %d) returned failure.\n" , TID);
		}
		else
		{
			cortos_printf("8.  Successfully scheduled store DMA [%d].\n", TID);
			while(1) 
			{
				uint32_t creg;
				//  unused completed	started scheduled
				//    5        1         1       1
				uint8_t status = readDmaChannelTaskStatus(&hms, 0,0,TID, &creg);
				if (status & 0x4)
				{
					cortos_printf("9.  Dma task %d completed (creg=0x%x)\n", TID, creg);
					break;
				}
				__ajit_sleep__ (1024);
			}
			closeDmaChannelTask (&hms, 0, 0, TID);
		}
		
		cortos_printf("10.  Global mem values [%d]\n", TID);

		__ajit_flush_dcache__ ();		
		for(I = 0; I < 16; I++)
		{
			for (J = 0; J <16; J++)
			{
				cortos_printf("0x%llx  ", pong_data[I][J]);
			}
			cortos_printf("\n");
		}
	}
}
