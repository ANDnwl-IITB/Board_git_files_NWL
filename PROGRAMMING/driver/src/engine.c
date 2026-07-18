#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>
#include <assert.h>
#include "structs.h"
#include "engine.h"


//
//    make a control word value to be used as a command-initiator on an
//    engine thread.
//
//    The control-word format is
//
//    sequence-id thread-id unused  opcode  flags
//       16          2       2         4       8
//
//    This call sets flags[0] to 1, and sends the opcode to the thread.
//
uint32_t __make_thread_control_reg__ (uint8_t opcode, uint32_t control_reg, 
						uint8_t thread_id, uint32_t sequence_id, uint32_t start_flag)
{
	// get the existing flags.
	uint32_t existing_flags = (control_reg & 0xff);
	
#ifndef HW_DRIVER
	if ((existing_flags & 0x7) != 0)
	{
		assert(0);
	}
#endif

	// we will set bit [0] to '0'.
	uint32_t mask = 0x1;
	uint32_t new_flags = (existing_flags & (~mask)) | start_flag;
	
	uint32_t ctrl_reg = ((sequence_id & 0xffff) << 16) |
				( ((uint32_t) thread_id) << 14) |
				( ((uint32_t) (opcode & 0xf)) << 8) | new_flags;

#ifndef HW_DRIVER
	fprintf(stderr,"Info:__make_thread_control_reg__  cr=0x%x\n", ctrl_reg);
#endif
	return(ctrl_reg);
}

//
// See comment for function __make_thread_control_reg__
//
// opcode   id top-4-bits-of-src-base-addr  top-4-bits-of-dest-base-addr sequence_number  flags
//  8                4				4			   8		   8
uint32_t __make_dma_control_reg__ (uint8_t opcode, uint32_t control_reg, 
						uint32_t top_4bits_of_src_addr, 
						uint32_t top_4bits_of_dest_addr, uint32_t sequence_id, 
						uint32_t start_flag)
{
	// get the existing flags.
	uint32_t existing_flags = (control_reg & 0xff);

#ifndef HW_DRIVER
	if ((existing_flags & 0x7) != 0)
	{
		assert(0);
	}
#endif

	// set schedule bit.
	uint32_t new_flags = (existing_flags  & (~ 0x1)) | start_flag; 

	// construct control register.
	uint32_t ctrl_reg = (opcode << 24) | 
					(top_4bits_of_src_addr << 20) |
					(top_4bits_of_dest_addr << 16) |
					((sequence_id & 0xff) << 8) |
					new_flags;

#ifndef HW_DRIVER
	fprintf(stderr,"Info:__make_dma_control_reg__  cr=0x%x\n", ctrl_reg);
#endif
	return(ctrl_reg);

}

// to set flags, provide a mask.
void __set_thread_flags__ (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id, uint32_t mask)
{
	uint32_t control_reg = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0);
	uint32_t u_ctrl_reg =  control_reg | mask;

#ifndef HW_DRIVER
	fprintf(stderr,"Info:__set_thread_flags__  cr=0x%x\n", u_ctrl_reg);
#endif
	writeToEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0, u_ctrl_reg);

}

void __clear_thread_flags__ (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id, uint32_t mask)
{
	uint32_t control_reg = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0);
	uint32_t u_ctrl_reg =  control_reg & (~mask);

	writeToEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0, u_ctrl_reg);
}

void __set_dma_flags__    (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id,  uint32_t mask)
{
	uint32_t control_reg = readFromDmaConfigRegister (hms, cluster_id, engine_id, dma_channel_id, 0);
	uint32_t u_ctrl_reg = control_reg | mask;
	writeToDmaConfigRegister (hms, cluster_id, engine_id, dma_channel_id, 0, u_ctrl_reg);
}

void __clear_dma_flags__    (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id,  uint32_t mask)
{
	uint32_t control_reg = readFromDmaConfigRegister (hms, cluster_id, engine_id, dma_channel_id, 0);
	uint32_t u_ctrl_reg = control_reg & (~mask);
	writeToDmaConfigRegister (hms, cluster_id, engine_id, dma_channel_id, 0, u_ctrl_reg);
}

void initHpcMachineState (HpcMachineState* hms)
{
	int I, J, K;
	for(I = 0; I < MAX_NCLUSTERS; I++)
	{
		for(J = 0; J < MAX_NENGINES_PER_CLUSTER; J++)
		{
			for(K = 0; K < MAX_NTHREADS_PER_ENGINE; K++)
			{
				hms->per_thread_sequence_numbers[I][J][K] = 0;
			}
		}
	}
#ifndef HW_DRIVER
	fprintf(stderr,"Info: initialized HpcMachineState\n");
#endif
}


uint32_t __pre_increment_engine_sequence_number__ (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id)
{
	uint32_t ret_val = hms->per_thread_sequence_numbers[cluster_id][engine_id][thread_id];
 	hms->per_thread_sequence_numbers[cluster_id][engine_id][thread_id] = (ret_val + 1);
	return(ret_val);
}

uint32_t __pre_increment_dma_sequence_number__ (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id)
{
	uint32_t ret_val = hms->per_thread_sequence_numbers[cluster_id][engine_id][dma_channel_id];
 	hms->per_thread_sequence_numbers[cluster_id][engine_id][dma_channel_id] = (ret_val + 1);
	return(ret_val);
}

HpcMachineState* allocateHpcMachineState (uint8_t number_of_clusters, 
						uint8_t number_of_engines_per_cluster,
							uint8_t number_of_threads_per_engine)
{
	//TODO
}

void initEngineThreadLocks (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id)
{
	//TODO
}

void initDmaChannelLocks   (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id)
{
	//TODO
}

// returns 0 on success..
uint32_t  acquireEngineThreadLock  (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id)
{
	//TODO
	return(0);
}

void      releaseEngineThreadLock  (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id)
{
	//TODO
}

uint32_t  acquireDmaChannelLock  (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id)
{
	//TODO
	return(0);
}

void      releaseDmaChannelLock  (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id)
{
}


// return control register value.
uint32_t  engineThreadStatus (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id)
{
	uint32_t cr = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0);

#ifndef HW_DRIVER
	fprintf(stderr,"Info: engine-thread-status (c=%d, e=%d, t=%d) is 0x%x\n", cluster_id, engine_id, thread_id, cr);
#endif
	return(cr);
}

// dma channel control word.
uint32_t  dmaChannelStatus   (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id)
{
	uint32_t cr = readFromDmaConfigRegister (hms, cluster_id, engine_id, dma_channel_id, 0);
#ifndef HW_DRIVER
	fprintf(stderr,"Info: dma-channel-status (c=%d, e=%d, t=%d) is 0x%x\n", cluster_id, engine_id, dma_channel_id, cr);
#endif
	return(cr);
}

//
// wait until engine has completed... this means all flags[2:0] are all set.
//
void waitOnEngineThreadCompletion (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id)
{
	uint32_t cr;
	while(1)
	{
		cr = engineThreadStatus (hms, cluster_id, engine_id, thread_id);

		// all 3 bits are set!
		uint32_t complete_status = ((cr & 0x7) == 7);

		if(complete_status == 1)
			break;
	}
#ifndef HW_DRIVER
	fprintf(stderr,"Info: engine thread completed (c=%d, e=%d, t=%d), cr=0x%x\n", 
			cluster_id, engine_id, thread_id, cr);
#endif
}

// wait on flags[2:0] to become 0x7.
void waitOnDmaChannelCompletion (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id)
{
	uint32_t cr;
	while(1)
	{
		cr = dmaChannelStatus (hms, cluster_id, engine_id, dma_channel_id);
		uint32_t complete_status = ((cr & 0x7) == 0x7);

		if(complete_status)
			break;
	}

#ifndef HW_DRIVER
	fprintf(stderr,"Info: dma channel completed (c=%d, e=%d, t=%d), cr=0x%x\n", 
			cluster_id, engine_id, dma_channel_id, cr);
#endif
}

//
// 
// First check if flags[2:0] = 0.  If yes, return 0 on success.
// Else return non-zero value.
//
// return 0 on success, ERR_ENGINE_THREAD_LOCK_NOT_AVAILABLE, ERR_ENGINE_THREAD_STILL_RUNNING on failure.
//
uint32_t acquireEngineThread(HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id)
{
	uint32_t ret_val = 0;
	if(acquireEngineThreadLock(hms, cluster_id,engine_id, thread_id))
	{
#ifndef HW_DRIVER
		fprintf(stderr,"Info: engine thread locked.. c=%d, e=%d, t=%d\n", cluster_id, engine_id, thread_id);
#endif
		return(ERR_ENGINE_THREAD_LOCK_NOT_AVAILABLE);
	}

	uint32_t cr = engineThreadStatus (hms, cluster_id, engine_id, thread_id);
	uint32_t still_busy = !__engine_thread_is_ready__(cr);

	if(still_busy)
	{
		releaseEngineThreadLock (hms, cluster_id, engine_id, thread_id);
#ifndef HW_DRIVER
		fprintf(stderr,"Info: engine thread NOT acquired.. c=%d, e=%d, t=%d, cr=0x%x\n", cluster_id, engine_id, thread_id, cr);
#endif

		return (ERR_ENGINE_THREAD_STILL_RUNNING);
	}
	else
	{
#ifndef HW_DRIVER
		fprintf(stderr,"Info: engine thread acquired.. c=%d, e=%d, t=%d, cr=0x%x\n", cluster_id, engine_id, thread_id, cr);
#endif
		return (0);
	}
}



// First, clear flags[0].
//
// Then check flags[2:0].  If all are 0, then return 0 as success
// else return non-zero.
//
// return value is 0 on success, ERR_ENGINE_THREAD_STILL_RUNNING on failure.
uint32_t releaseEngineThread (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id)
{
	// deassert thread start flag
	__clear_thread_flags__ (hms, cluster_id, engine_id, thread_id, ENGINE_THREAD_SCHEDULED_MASK);

	uint32_t  cr = engineThreadStatus (hms, cluster_id, engine_id, thread_id);
	uint32_t still_running = !__engine_thread_is_ready__(cr);

	if(still_running)
	{
#ifndef HW_DRIVER
		fprintf(stderr,"Info: releaseEngineThread failed... still running c=%d, e=%d, t=%d, cr=0x%x\n",
					cluster_id, engine_id, thread_id, cr);
#endif
		return (ERR_ENGINE_THREAD_STILL_RUNNING);
	}
	else
	{
#ifndef HW_DRIVER
		fprintf(stderr,"Info: releaseEngineThread succeeded... completed c=%d, e=%d, t=%d, cr=0x%x\n",
					cluster_id, engine_id, thread_id, cr);
#endif
		releaseEngineThreadLock (hms, cluster_id, engine_id, thread_id);
		return (0);
	}
}

void writeToEngineConfigRegister (HpcMachineState* hms, 
						uint8_t cluster_id, 
						uint8_t engine_id, 
						uint8_t thread_id, 
						uint8_t reg_id,
						uint32_t reg_val)
{
	writeToConfigRegister (hms, 0, cluster_id, engine_id, thread_id, reg_id, reg_val);
					
}

uint32_t readFromEngineConfigRegister (HpcMachineState* hms,
							uint8_t cluster_id, 
							uint8_t engine_id, 
							uint8_t thread_id, 
							uint8_t reg_id)
{
	uint32_t rval = readFromConfigRegister (hms, 0, cluster_id, engine_id, thread_id, reg_id);
	return(rval);
}

void writeToDmaConfigRegister (HpcMachineState* hms, 
						uint8_t cluster_id, 
						uint8_t engine_id, 
						uint8_t thread_id, 
						uint8_t reg_id,
						uint32_t reg_val)
{
	writeToConfigRegister (hms, 1, cluster_id, engine_id, thread_id, reg_id, reg_val);
					
}

uint32_t readFromDmaConfigRegister (HpcMachineState* hms,
							uint8_t cluster_id, 
							uint8_t engine_id, 
							uint8_t thread_id, 
							uint8_t reg_id)
{
	uint32_t rval = readFromConfigRegister (hms, 1, cluster_id, engine_id, thread_id, reg_id);
	return(rval);
}



// This is an instruction
// 	1. acquire thread (return non-zero if not free)
// 	2. write argument values
// 	3. make command word.
// 	4. write command word to control-reg
// 	5. Wait to complete and release.
// return 0 on success. 
uint32_t writeInstructionToEngineInstrMemory (HpcMachineState* hms,
							uint8_t cluster_id, 
							uint8_t engine_id, 
							uint32_t instr_word_index,
							uint32_t instruction)
{
#ifndef HW_DRIVER
	fprintf(stderr,"Info: entered writeInstructionToEngineInstrMemory (c=%d, e=%d) imem[%d]=0x%x\n", 
				cluster_id, engine_id, instr_word_index, instruction);
#endif

	uint8_t thread_id = 0;
	uint32_t status = acquireEngineThread(hms, cluster_id, engine_id, thread_id);
	if(status)
		return(status);

#ifndef HW_DRIVER
	fprintf(stderr,"Info: writeInstructionToEngineInstrMemory (c=%d, e=%d) imem[%d]=0x%x, acquired engine.\n", 
				cluster_id, engine_id, instr_word_index, instruction);
#endif

	// arguments
	writeToEngineConfigRegister  (hms,cluster_id, engine_id, thread_id, IMEM_ADDRESS_REG_ID, instr_word_index);
	writeToEngineConfigRegister  (hms,cluster_id, engine_id, thread_id, IMEM_WDATA_REG_ID, instruction);



	uint32_t control_reg = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0);
	control_reg = __make_thread_control_reg__ (WRITE_IMEM, 
						control_reg, thread_id,
		       				__pre_increment_engine_sequence_number__ (hms, cluster_id, engine_id, 0),
						1);
	writeToConfigRegister (hms, 0, cluster_id, engine_id, 0, 0, control_reg);
#ifndef HW_DRIVER
	fprintf(stderr,"Info: writeInstructionToEngineInstrMemory (c=%d, e=%d) imem[%d]=0x%x, wrote command 0x%x.\n", 
							cluster_id, engine_id, instr_word_index, instruction, control_reg);
#endif

	waitOnEngineThreadCompletion (hms, cluster_id, engine_id, thread_id);

	while(1)
	{
		// try to release 
		status = releaseEngineThread (hms, cluster_id, engine_id, 0);
		if(status == 0) 
			break;
	}
	return(0);
}	

// This is an instruction
// 	1. acquire thread (return non-zero if not free)
// 	2. write argument values
// 	3. make command word.
// 	4. write command word to control-reg
// 	5. Wait to complete and release.
// return 0 on success, result in *instruction.
uint32_t readInstructionFromEngineInstrMemory (HpcMachineState* hms,
							uint8_t cluster_id, 
							uint8_t engine_id, 
							uint32_t instr_word_index,
							uint32_t* instruction)
{
#ifndef HW_DRIVER
	fprintf(stderr,"Info: entered readInstructionFromEngineInstrMemory (c=%d, e=%d) imem[%d]\n", 
				cluster_id, engine_id, instr_word_index);
#endif

	uint8_t thread_id = 0;
	uint32_t ret_val = acquireEngineThread (hms, cluster_id, engine_id, thread_id);
	if(ret_val) return(ret_val);

	uint32_t control_reg = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0);
	control_reg = __make_thread_control_reg__ (READ_IMEM, control_reg, thread_id,
		       			__pre_increment_engine_sequence_number__ (hms, cluster_id, engine_id, thread_id),1);

	// arguments
	writeToEngineConfigRegister  (hms, cluster_id, engine_id, thread_id, IMEM_ADDRESS_REG_ID, instr_word_index);

	// command.
	writeToEngineConfigRegister  (hms, cluster_id, engine_id, thread_id, 0, control_reg);

	waitOnEngineThreadCompletion (hms, cluster_id, engine_id, thread_id);
	
	// read the instruction
	*instruction = readFromEngineConfigRegister (hms, cluster_id, engine_id, 0, IMEM_RDATA_REG_ID);

	// release the lock.
	while(1)
	{
		uint32_t status = releaseEngineThread (hms, cluster_id, engine_id, 0);
		if(status == 0) break;
	}

	return(0);
}	

// This is an instruction
// 	1. acquire thread (return non-zero if not free)
// 	2. write argument values
// 	3. make command word.
// 	4. write command word to control-reg
// 	5. Wait to complete and release.
// return 0 on success, result in *instruction.
uint32_t resetEngineThread(HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id)
{
	uint32_t status =  acquireEngineThread(hms, cluster_id, engine_id, thread_id);
	if(status != 0)
		return(status);
	
	uint32_t control_reg = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0);
	control_reg = __make_thread_control_reg__ (RESET_ENGINE, control_reg, thread_id,
		       				__pre_increment_engine_sequence_number__ (hms, cluster_id, engine_id, thread_id),
						1);
	writeToEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0, control_reg);

	waitOnEngineThreadCompletion (hms, cluster_id, engine_id, thread_id);

	while(1)
	{
		status = releaseEngineThread(hms, cluster_id, engine_id, thread_id);
		if(status == 0)
			break;
	}

	return(0);
}

// This is an instruction
// 	1. acquire thread (return non-zero if not free)
// 	2. write argument values
// 	3. make command word.
// 	4. write command word to control-reg
// 	5. Wait to complete and release.
// 	return 0 on success.
uint32_t writeThreadDataRegister(HpcMachineState* hms,
						uint8_t cluster_id, uint8_t engine_id, 
						uint8_t thread_id,
						uint8_t reg_id, 
						uint64_t write_value)
{
	uint32_t l_val = (write_value & 0xffffffff);
	uint32_t h_val = (write_value >> 32);

	uint32_t status =  acquireEngineThread(hms, cluster_id, engine_id, thread_id);
	if(status)
		return(status);

	uint32_t control_reg = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0);
	control_reg = __make_thread_control_reg__ (WRITE_ENGINE_REG, control_reg, thread_id,
		       				__pre_increment_engine_sequence_number__ (hms, cluster_id, engine_id, thread_id),
						1);

	writeToEngineConfigRegister (hms, cluster_id, engine_id, thread_id, ENGINE_DREG_ID_REG_ID, reg_id);
	writeToEngineConfigRegister (hms, cluster_id, engine_id, thread_id, ENGINE_DREG_HIGH_REG_ID, h_val);
	writeToEngineConfigRegister (hms, cluster_id, engine_id, thread_id, ENGINE_DREG_LOW_REG_ID, l_val);

	writeToEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0, control_reg);

	waitOnEngineThreadCompletion (hms, cluster_id, engine_id, thread_id);
	
	while(1)
	{
		status = releaseEngineThread(hms, cluster_id, engine_id, thread_id);
		if(status == 0)
			break;
	}

	return(0);
}

// This is an instruction
// 	1. acquire thread (return non-zero if not free)
// 	2. write argument values
// 	3. make command word.
// 	4. write command word to control-reg
// 	5. Wait to complete and release.
// 	return 0 on success.
uint32_t readThreadDataRegister (HpcMachineState* hms,
						uint8_t cluster_id, 
						uint8_t engine_id,  
						uint8_t thread_id,
						uint8_t reg_id,
						uint64_t* read_value)
{
#ifndef HW_DRIVER
	fprintf(stderr,"Info: readThreadDataRegister (c=%d, e=%d, t=%d) regid=%d: started.\n",
				cluster_id, engine_id, thread_id, reg_id);
#endif
	uint32_t status = acquireEngineThread (hms, cluster_id, engine_id, thread_id);

	if(status)
		return(status);

	uint32_t control_reg = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0);
	control_reg = __make_thread_control_reg__ (READ_ENGINE_REG,  control_reg, thread_id,
						__pre_increment_engine_sequence_number__ (hms, cluster_id, engine_id, thread_id),
						1);

	writeToEngineConfigRegister (hms, cluster_id, engine_id, thread_id, ENGINE_DREG_ID_REG_ID, reg_id);
	writeToEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0, control_reg);


	// wait..
#ifndef HW_DRIVER
	fprintf(stderr,"Info: readThreadDataRegister: wait for completion.\n");
#endif
	waitOnEngineThreadCompletion (hms, cluster_id, engine_id, thread_id);
#ifndef HW_DRIVER
	fprintf(stderr,"Info: readThreadDataRegister: completed..\n");
#endif
	
	uint64_t l_val = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, ENGINE_DREG_LOW_REG_ID);
	uint64_t h_val = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, ENGINE_DREG_HIGH_REG_ID);


	*read_value = ((h_val << 32) | l_val);
	while(1)
	{
		status = releaseEngineThread(hms, cluster_id, engine_id, thread_id);
		if(status == 0)
			break;
	}

#ifndef HW_DRIVER
	fprintf(stderr,"Info: readThreadDataRegister (c=%d, e=%d, t=%d): finished..\n",
					cluster_id, engine_id,thread_id);
#endif

	return(0);
}


// This is an instruction
// 	1. acquire thread (return non-zero if not free)
// 	2. write argument values
// 	3. make command word.
// 	4. write command word to control-reg
// 	5. Wait to complete and release.
// 	6. NOTE: this command can be called only
// 	         if the thread interrupt is not enabled!
// 	return 0
uint32_t runEngineThreadAndPoll (HpcMachineState* hms,
					uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id,  uint32_t pc)
{
#ifndef HW_DRIVER
	fprintf(stderr,"Info: runEngineThreadAndPoll called (c=%d, e=%d, t=%d, pc=0x%x)\n",
					cluster_id, engine_id, thread_id, pc);
#endif

	if(threadInterruptIsEnabled(hms, cluster_id, engine_id, thread_id))
	{
		return (1);
	}

	// this also acquires a lock.
	uint32_t status =  acquireEngineThread(hms, cluster_id, engine_id, thread_id);

	if(status)
	{
		return(status);
	}

	uint32_t control_reg = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0);
	control_reg = __make_thread_control_reg__ (RUN_ENGINE,  control_reg, thread_id,
						__pre_increment_engine_sequence_number__ (hms, cluster_id, engine_id, thread_id),
						1);

	writeToEngineConfigRegister  (hms, cluster_id, engine_id, thread_id, PC_REG_ID, pc);
	writeToEngineConfigRegister  (hms, cluster_id, engine_id, thread_id, 0, control_reg);

	waitOnEngineThreadCompletion (hms, cluster_id, engine_id, thread_id);


	// engine release does not mean that interrupt is
	// deasserted..
	while(1)
	{
		status = releaseEngineThread(hms, cluster_id, engine_id, thread_id);
		if(status == 0)
			break;
	}

#ifndef HW_DRIVER
	fprintf(stderr,"Info: runEngineThread done (c=%d, e=%d, t=%d, pc=0x%x)\n",
					cluster_id, engine_id, thread_id, pc);
#endif

	releaseEngineThreadLock (hms, cluster_id, engine_id, thread_id);
	return(0);
}

// This is an instruction
// 	1. acquire thread (return non-zero if not free)
// 	2. write argument values
// 	3. make command word.
// 	4. write command word to control-reg
// 	5. generate interrupt on completion.
// 	6. NOTE: release must be called in the interrupt handler!
// 	return 0 on success.
uint32_t runEngineThreadAndInterrupt (HpcMachineState* hms,
					uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id,  uint32_t pc)
{
#ifndef HW_DRIVER
	fprintf(stderr,"Info: runEngineThreadAndInterrupt called (c=%d, e=%d, t=%d, pc=0x%x)\n",
					cluster_id, engine_id, thread_id, pc);
#endif

	if(!threadInterruptIsEnabled(hms, cluster_id, engine_id, thread_id))
		return (1);

	// this also acquires a lock.
	uint32_t status =  acquireEngineThread(hms, cluster_id, engine_id, thread_id);

	if(status)
	{
		return(status);
	}

	uint32_t control_reg = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0);
	control_reg = __make_thread_control_reg__ (RUN_ENGINE,  control_reg, thread_id,
						__pre_increment_engine_sequence_number__ (hms, cluster_id, engine_id, thread_id),
						1);

	writeToEngineConfigRegister  (hms, cluster_id, engine_id, thread_id, PC_REG_ID, pc);
	writeToEngineConfigRegister  (hms, cluster_id, engine_id, thread_id, 0, control_reg);



#ifndef HW_DRIVER
	fprintf(stderr,"Info: runEngineThreadAndInterrupt done (c=%d, e=%d, t=%d, pc=0x%x)\n",
					cluster_id, engine_id, thread_id, pc);
#endif

	releaseEngineThreadLock (hms, cluster_id, engine_id, thread_id);
	return(0);
}

// This is an instruction
// 	1. acquire thread (return non-zero if not free)
// 	2. write argument values
// 	3. make command word.
// 	4. write command word to control-reg
// 	5. Wait to complete and release.
// returns exception codes if thread has completed.
// 
//   completed unused ras_error halt_flag exception-flag exception-codes
//      1       4        1         1         1                 24
//  
//   return 0 on successful completion.
uint32_t completeEngineThread (HpcMachineState* hms,
					uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id, 
							uint32_t* exceptions, uint32_t* bundle_word_index)
{
#ifndef HW_DRIVER
	fprintf(stderr,"Info: completeEngineThread called (c=%d, e=%d, t=%d)\n", cluster_id, engine_id, thread_id);
#endif

	// confirm that engine thread is available?
	uint32_t status = acquireEngineThread(hms, cluster_id, engine_id, thread_id);
	if(status) return(status);

	uint32_t control_reg = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0);
	control_reg = __make_thread_control_reg__ (COMPLETE_ENGINE,  control_reg, thread_id, 
						__pre_increment_engine_sequence_number__ (hms, cluster_id, engine_id, thread_id),
						1);

	writeToEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0, control_reg);

	waitOnEngineThreadCompletion (hms, cluster_id, engine_id, thread_id);

	*exceptions  = readFromEngineConfigRegister  (hms, cluster_id, engine_id, thread_id, ENGINE_EXCEPTION_REG_ID);
	*bundle_word_index = readFromEngineConfigRegister  (hms, cluster_id, engine_id, thread_id, ENGINE_BUNDLE_IDX_REG_ID);


	// interrupt is not cleared..
	while(1)
	{
		status = releaseEngineThread(hms, cluster_id, engine_id, thread_id);
		if(status == 0)
			break;
	}

	releaseEngineThreadLock(hms, cluster_id, engine_id, thread_id);
#ifndef HW_DRIVER
	fprintf(stderr,"Info: completeEngineThread done (c=%d, e=%d, t=%d, exc=0x%x, bundle-word-index=%d)\n", 
						cluster_id, engine_id, thread_id, *exceptions, *bundle_word_index);
#endif
	return(0);
}

uint32_t pollAndCompleteEngineThread (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id,
						uint32_t* exceptions, uint32_t* bundle_word_index)
{
	while(1)
	{
		uint32_t status = engineThreadStatus(hms, cluster_id, engine_id, thread_id);
		if ((status & 0x7) == 0)
			break;
	}

	while(1)
	{
		uint status = completeEngineThread (hms, cluster_id, engine_id, thread_id, exceptions, bundle_word_index);
		if((status == 0) && ((*exceptions >> 31) & 0x1))
			break;
	}

	return(0);
}


// This calls the completeEngineThread intersection.
// returns exception codes if thread has completed.
// 
//   completed unused ras_error halt_flag exception-flag exception-codes
//      1       4        1         1         1                 24
//  
//   return 0 on successful completion.
//   look at the parse function at the end of this file for details.
uint32_t checkIfThreadHasCompleted (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id,
						uint32_t* exceptions, uint32_t* bundle_word_index)
{
	uint32_t control_reg = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0);
	uint32_t still_working = ((control_reg & 0x7) != 0x7);

	*exceptions = 0;
	*bundle_word_index = 0;

	if(still_working)
		return(1);

	*exceptions  = readFromEngineConfigRegister  (hms, cluster_id, engine_id, thread_id, ENGINE_EXCEPTION_REG_ID);
	*bundle_word_index = readFromEngineConfigRegister  (hms, cluster_id, engine_id, thread_id, ENGINE_BUNDLE_IDX_REG_ID);

	return(0);
}


//-------------------------------------------------------------------------------------------------------------
// dma control commands 
//
//-------------------------------------------------------------------------------------------------------------
//
// 1. acquire lock, if it fails return non-zero
// 2. check if channel is ready, if it fails return non-zero.
// 3. return 0.
uint32_t acquireDmaChannel(HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id)
{
	uint32_t ret_val = 0;
	if(acquireDmaChannelLock(hms, cluster_id,engine_id, dma_channel_id))
	{
		return(ERR_DMA_CHANNEL_LOCK_NOT_AVAILABLE);
	}

	// if this returns 0
	uint32_t cr = dmaChannelStatus (hms, cluster_id, engine_id, dma_channel_id);
	uint32_t still_busy = !__dma_channel_is_ready__(cr);
	if(still_busy)
	{
		releaseDmaChannelLock (hms, cluster_id, engine_id, dma_channel_id);
		return (ERR_DMA_CHANNEL_STILL_RUNNING);
	}
	else
		return (0);
}



// clear start bit, check if channel is ready, if yes, return 0 else return non-zero.
// return value is 0 on success.
uint32_t releaseDmaChannel (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id)
{
	// clear bit 0
	__clear_dma_flags__ (hms, cluster_id, engine_id, dma_channel_id, DMA_CHANNEL_SCHEDULED_MASK);

	uint32_t cr = dmaChannelStatus (hms, cluster_id, engine_id, dma_channel_id);
	uint32_t still_busy = !__dma_channel_is_ready__(cr);

	if(still_busy)
	{
		// needs to run more...
		return (ERR_DMA_CHANNEL_STILL_RUNNING);
	}
	else
	{
		releaseDmaChannelLock (hms, cluster_id, engine_id, dma_channel_id);
		return (0);
	}
}

// 1. acquire
// 2. make control word
// 3. write arguments
// 4. write control word.
//       (command started).
uint32_t scheduleDmaTaskOnEngine (HpcMachineState* hms,
					uint8_t cluster_id, 
					uint8_t engine_id,
					uint8_t dma_channel,
					uint8_t  load_from_mem,
					uint64_t source_byte_address,
					uint64_t destination_byte_address,
					uint32_t burst_length_in_bytes,
					uint32_t inter_burst_gap_in_bytes,
					uint32_t number_of_bursts
				    )
{
	uint32_t ret_val = acquireDmaChannel (hms, cluster_id, engine_id, dma_channel);
	if(ret_val) return(ret_val);

	uint8_t opcode = (load_from_mem ? LOAD_FROM_MEM : STORE_TO_MEM);
	uint32_t dma_control_reg = readFromDmaConfigRegister (hms, cluster_id, engine_id, dma_channel, 0);
	uint32_t control_reg = __make_dma_control_reg__ 
				(opcode, dma_control_reg, 
				 	(0xf & (source_byte_address >> 32)),
				 	(0xf & (destination_byte_address >> 32)),
		       			__pre_increment_dma_sequence_number__ (hms, cluster_id, engine_id, dma_channel),
					1);

	writeToDmaConfigRegister (hms, cluster_id, engine_id, dma_channel, DMA_SOURCE_BYTE_ADDR_REG_ID, source_byte_address);
	writeToDmaConfigRegister (hms, cluster_id, engine_id, dma_channel, DMA_DEST_BYTE_ADDR_REG_ID,   destination_byte_address);
	writeToDmaConfigRegister (hms, cluster_id, engine_id, dma_channel, DMA_NBYTES_REG_ID,    (burst_length_in_bytes * number_of_bursts));
	writeToDmaConfigRegister (hms, cluster_id, engine_id, dma_channel, DMA_NBURSTS_REG_ID,    number_of_bursts);
	writeToDmaConfigRegister (hms, cluster_id, engine_id, dma_channel, DMA_INTERBURST_GAP_REG_ID, inter_burst_gap_in_bytes);
	writeToDmaConfigRegister (hms, cluster_id, engine_id, dma_channel, DMA_NBYTES_IN_BURST_REG_ID, burst_length_in_bytes);


	// command has started..  do not release the lock...
	writeToDmaConfigRegister (hms, cluster_id, engine_id, dma_channel, 0, control_reg);

	return(0);
}

// return control register in *creg, and the following flags as a return value.
//   completed started scheduled
//      1         1       1       
uint8_t readDmaChannelTaskStatus  (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel, uint32_t* creg)
{
	uint32_t ctrl_reg  = readFromDmaConfigRegister(hms, cluster_id, engine_id, dma_channel,0);

	if(creg != NULL) *creg = ctrl_reg;
	uint8_t ret_val = ctrl_reg & 0x7;

	return(ret_val);
}

void closeDmaChannelTask (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel)
{
	while (1)
	{
		if (!releaseDmaChannel (hms, cluster_id, engine_id, dma_channel))
		{
			break;
		}
	}
	releaseDmaChannelLock (hms, cluster_id, engine_id, dma_channel);
}


#ifndef HW_DRIVER

// tid reg/mem/pc exp-value check-mask
uint32_t checkEngineThreadPostCondition (HpcMachineState* hms, 
						uint8_t cluster_id, 
						uint8_t engine_id,
						uint8_t thread_id,
						char* post_condition_file_name)
{
	int ret_val = 0;
	char current_line[4096];
	FILE* rf = fopen (post_condition_file_name, "r");

	if(rf == NULL)
	{
#ifndef HW_DRIVER
		fprintf(stderr,"Error:checkPostCondition: could not open file %s\n", post_condition_file_name);
#endif
		return(1);
	}

	while(fgets(current_line, 1024, rf) != NULL)
	{
		if(current_line[0] != '!')
		{
			int rid;
			uint64_t exp_val;

			char* tid_str = strtok (current_line, " \t\n");
			char* reg_or_mem = strtok (NULL, " \t\n");
			char* rid_str    = strtok (NULL, " \t\n");
			char* val_str 	 = strtok (NULL, " \t\n");
			char* mask_str 	 = strtok (NULL, " \t\n");

			if(tid_str == NULL)
				continue;

			int tid = atoi (tid_str);

			if(tid != thread_id)
				continue;
	
			int is_mem = (strcmp (reg_or_mem, "mem") == 0);
			int is_reg = (strcmp (reg_or_mem, "reg") == 0);

			// pc line is ignored.
			if (!is_mem && !is_reg)
			{
				fprintf(stderr, "Warning: pc line in results file ignored\n");
				continue;
			}
		
			if(val_str == NULL)
				continue;

			uint64_t mask_val = (~ ((uint64_t) 0));

			uint32_t rid_or_mem_dword_index;
			sscanf (rid_str, "0x%x", &rid_or_mem_dword_index);

			uint64_t expected_val;
			sscanf (val_str, "0x%" PRIx64 , &expected_val);

			if(mask_str != NULL)
				sscanf (val_str, "0x%" PRIx64 , &mask_val);
			
			uint64_t val = 0;
			if(is_mem) {

				fprintf(stderr,"Info: for thread=%d, check dword with index 0x%x\n", 
								thread_id, rid_or_mem_dword_index);
				val = readDwordFromDataMem (hms, cluster_id, engine_id, 
									thread_id, 
									rid_or_mem_dword_index);
			}
			else
			{
				while(readThreadDataRegister (hms, cluster_id, engine_id, thread_id, rid_or_mem_dword_index, &val));
			}

			uint64_t result = (expected_val ^ val) &  mask_val;
			if(result != 0)
			{
				ret_val = 1;
				if(is_mem)
				{
#ifndef HW_DRIVER
					fprintf(stderr,"Error: (c=%d, e=%d, tid=%d) mem[%d] = 0x%" PRIx64 ", expected 0x%" PRIx64 "\n ",
							cluster_id, engine_id, thread_id,
							rid_or_mem_dword_index, val, expected_val);
#endif

				}
				else
				{
#ifndef HW_DRIVER
					fprintf(stderr,"Error: (c=%d, e=%d, tid=%d) reg[%d] = 0x%" PRIx64 ", expected 0x%" PRIx64 "\n ",
							cluster_id, engine_id, thread_id, rid_or_mem_dword_index,
							val, expected_val);
#endif
				}
			}
			else
			{
				if(is_mem)
				{
#ifndef HW_DRIVER
					fprintf(stderr,"Info: (c=%d, e=%d, tid=%d)  mem[%d] = 0x%" PRIx64 ", expected 0x%" PRIx64 "\n ",
							cluster_id, engine_id, thread_id, rid_or_mem_dword_index,
							val, expected_val);
#endif
				}
				else
				{
#ifndef HW_DRIVER
					fprintf(stderr,"Info: (c=%d, e=%d, tid=%d) reg[%d] = 0x%" PRIx64 ", expected 0x%" PRIx64 "\n ",
							cluster_id, engine_id, thread_id, rid_or_mem_dword_index,
							val, expected_val);
#endif
				}
			}
		}


	}
	return(ret_val);
}
#endif


//
// enable thread command daemon, if not already enabled.
void enableThreadCommandDaemon (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id)
{
	uint32_t cr;
	cr = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0);
	if(!(cr & ENGINE_THREAD_RUN_INTERPRETER_MASK))
	{
		__set_thread_flags__ (hms, cluster_id, engine_id, thread_id, ENGINE_THREAD_RUN_INTERPRETER_MASK);
	}

#ifndef HW_DRIVER
	fprintf(stderr,"Info: thread init done, engine enabled (cluster=%d, engine=%d, thread=%d).\n", cluster_id, engine_id, thread_id);
#endif

}

void enableThreadInterrupt (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id)
{
	__set_thread_flags__ (hms, cluster_id, engine_id, thread_id, ENGINE_THREAD_INTERRUPT_ENABLE_MASK);
}

void disableThreadInterrupt (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id)
{
	__clear_thread_flags__ (hms, cluster_id, engine_id, thread_id, ENGINE_THREAD_INTERRUPT_ENABLE_MASK);
}

void clearThreadInterrupt (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id)
{
	__clear_thread_flags__ (hms, cluster_id, engine_id, thread_id, ENGINE_THREAD_INTERRUPT_VALUE_MASK);
}

// return 1 if interrupt is set.
uint32_t threadInterruptIsSet (HpcMachineState* hms,uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id)
{
	uint32_t control_reg = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0);
	if((control_reg & ENGINE_THREAD_INTERRUPT_ENABLE_MASK) && 
			(control_reg & ENGINE_THREAD_INTERRUPT_VALUE_MASK))
		return(1);
	else
		return(0);
}

// return 1 if enabled.
uint32_t threadInterruptIsEnabled (HpcMachineState* hms,uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id)
{
	uint32_t control_reg = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0);
	if((control_reg & ENGINE_THREAD_INTERRUPT_ENABLE_MASK))
		return(1);
	else
		return(0);
}

void enableDmaCommandDaemon    (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id)
{
	// always enabled.
	return;
}

// enable the DMA interrupt.
void enableDmaInterrupt (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel)
{
	__set_dma_flags__ (hms, cluster_id, engine_id, dma_channel, DMA_CHANNEL_INTERRUPT_ENABLE_MASK);
}

// clear interrupt and disable it.
void disableDmaInterrupt (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel)
{
	__clear_dma_flags__ (hms, cluster_id, engine_id, dma_channel, DMA_CHANNEL_INTERRUPT_ENABLE_MASK);
}

void clearDmaInterrupt (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_id)
{
	__clear_dma_flags__ (hms, cluster_id, engine_id, dma_id, DMA_CHANNEL_INTERRUPT_VALUE_MASK);
}

// return 1 if interrupt is asserted.
uint32_t dmaInterruptIsSet (HpcMachineState* hms,uint8_t cluster_id, uint8_t engine_id, uint8_t dma_id)
{
	uint32_t control_reg = readFromDmaConfigRegister (hms, cluster_id, engine_id, dma_id, 0);
	if((control_reg & DMA_CHANNEL_INTERRUPT_ENABLE_MASK) &&
			(control_reg & DMA_CHANNEL_INTERRUPT_VALUE_MASK))
		return(1);
	else
		return(0);
}

void decodeRetireMessage (uint32_t retire_message,
				uint8_t* counter,  		    // [31:28]
				uint8_t* executed_the_instruction,  // [26]
				uint8_t* thread_id,		    // [25:24]
				uint8_t* stream_id,		    // [23:16]
				uint16_t* dword_index)		    // [15:0]
{
	*counter = (retire_message >> 28)  & 0xf;
	*executed_the_instruction = (retire_message >> 26) & 0x1;
	*thread_id =(retire_message >> 24) & 0x3;
	*stream_id = (retire_message >> 16) & 0xff;
	*dword_index = retire_message  & 0xffff;
}

uint64_t readGlobalTickTimer (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id)
{
	uint32_t status = acquireEngineThread (hms, cluster_id, engine_id, thread_id);
	if(status)
		return(0);

	uint32_t control_reg = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, 0);
	control_reg = __make_thread_control_reg__ (READ_TIMER,  control_reg, thread_id,
			__pre_increment_engine_sequence_number__ (hms, cluster_id, engine_id, thread_id), 1);

	// write command...
	writeToConfigRegister (hms, 0, cluster_id, engine_id, thread_id, 0, control_reg);

	// wait until completion..
	waitOnEngineThreadCompletion (hms, cluster_id, engine_id, thread_id);

	uint64_t h_val = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, GLOBAL_TICK_TIMER_HIGH_REG_ID);
	uint64_t l_val = readFromEngineConfigRegister (hms, cluster_id, engine_id, thread_id, GLOBAL_TICK_TIMER_LOW_REG_ID);


	uint64_t read_value = ((h_val << 32) | l_val);

	while(1)
	{
		status = releaseEngineThread(hms, cluster_id, engine_id, thread_id);
		if(status == 0)
			break;
	}

#ifndef HW_DRIVER
	fprintf(stderr,"Info: readGlobalTickTimer (c=%d, e=%d, t=%d): finished.. returns 0x%"PRIx64 "\n",
			cluster_id, engine_id,thread_id, read_value);
#endif
	releaseEngineThreadLock (hms, cluster_id, engine_id, thread_id);
	return(read_value);

}

// Given an exception code (3-bits) mark the exceptions that
// occurred in this lane.
void fillLaneException (LaneExceptions* le, uint32_t lane_exception)
{
	le->idiv_by_zero = 0;
	le->fdiv_by_zero = 0;
	le->fnan_operation = 0;
	le->isqrt_of_negative = 0;
	le->fsqrt_of_negative = 0;
	le->unaligned_memory_access = 0;
	le->none = 0;

	switch(lane_exception)
	{
		case 1:
			le->idiv_by_zero = 1;
			break;
		case 2:
			le->fdiv_by_zero = 1;
			break;
		case 3:
			le->fnan_operation = 1;
			break;
		case 4:
			le->isqrt_of_negative = 1;
			break;
		case 5:
			le->fsqrt_of_negative = 1;
			break;
		case 6:
			le->unaligned_memory_access = 1;
			break;
		default:
			le->none = 1;
	}
}

// Given a 32-bit exception status word, fill the information
// encoded in this word into the ThreadExceptions data
// structure.
void fillEngineThreadExceptions (ThreadExceptionSummary* te, uint32_t exception_code)
{
	// thread level exceptions.
	te->ras_error = (exception_code >> 26) & 0x1;
	te->halt_base = (exception_code >> 25) & 0x1;
	te->there_is_an_exception = (exception_code >> 24) & 0x1;

	// 8 lanes.
	fillLaneException (&(te->le[0]), (exception_code >> 21) & 0x7);
	fillLaneException (&(te->le[1]), (exception_code >> 18) & 0x7);
	fillLaneException (&(te->le[2]), (exception_code >> 15) & 0x7);
	fillLaneException (&(te->le[3]), (exception_code >> 12) & 0x7);
	fillLaneException (&(te->le[4]), (exception_code >> 9)  & 0x7);
	fillLaneException (&(te->le[5]), (exception_code >> 6)  & 0x7);
	fillLaneException (&(te->le[6]), (exception_code >> 3)  & 0x7);
	fillLaneException (&(te->le[7]), exception_code  & 0x7);
}

#ifdef HW_DRIVER
int cortos_printf(const char *fmt, ...);

//--------------------------------------------------------------------------------------------------------------
//  parse the return exception code. if the pending teu command is completed, this contains
// complete-valid  unused   ras-err halt-flag exception-flag exception-codes
//     1              4         1        1         1           24

//--------------------------------------------------------------------------------------------------------------
void printExceptionKind(int lane_id, int exc) {
	switch(exc)
	{
		case 1: cortos_printf("      (lane %d) integer-divide-by-zero\n", lane_id); break;
		case 2: cortos_printf("      (lane %d) fp-divide-by-zero\n", lane_id); break;
		case 3: cortos_printf("      (lane %d) fp-nan in alu operation\n", lane_id); break;
		case 4: cortos_printf("      (lane %d) int-sqroot of negative number\n", lane_id); break;
		case 5: cortos_printf("      (lane %d) fp-sqrt of negative number\n", lane_id); break;
		case 6: cortos_printf("      (lane %d) unaligned memory access\n", lane_id); break;
		default: cortos_printf("      (lane %d) none\n", lane_id); break;
	}
}
void parseEngineThreadExceptions (uint32_t exception_code)
{
	uint32_t ras_error = (exception_code >> 26) & 0x1;
	uint32_t halt_base = (exception_code >> 25) & 0x1;
	uint32_t there_is_an_exception = (exception_code >> 24) & 0x1;
	uint32_t e0     = (exception_code >> 21) & 0x7;
	uint32_t e1     = (exception_code >> 18) & 0x7;
	uint32_t e2     = (exception_code >> 15) & 0x7;
	uint32_t e3     = (exception_code >> 12) & 0x7;
	uint32_t e4     = (exception_code >> 9)  & 0x7;
	uint32_t e5     = (exception_code >> 6)  & 0x7;
	uint32_t e6     = (exception_code >> 3)  & 0x7;
	uint32_t e7     = exception_code  & 0x7;

	cortos_printf ("Info: exception summary\n");
	if(halt_base)
		cortos_printf ("      halt\n");
	if(ras_error)
		cortos_printf ("      ras-error\n");
	if(there_is_an_exception)
		cortos_printf ("      execution-exception\n");

	printExceptionKind(0, e0);
	printExceptionKind(1, e1);
	printExceptionKind(2, e2);
	printExceptionKind(3, e3);
	printExceptionKind(4, e4);
	printExceptionKind(5, e5);
	printExceptionKind(6, e6);
	printExceptionKind(7, e7);
}

#endif


