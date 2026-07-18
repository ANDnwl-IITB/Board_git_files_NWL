#ifndef __engine_h____
#define __engine_h____

#define ENGINE_THREAD_RUN_INTERPRETER_MASK 	0x10
#define ENGINE_THREAD_INTERRUPT_ENABLE_MASK	0x20 
#define ENGINE_THREAD_INTERRUPT_VALUE_MASK	0x8 
#define ENGINE_THREAD_CPU_MODE_MASK             0x60 // 2-bits

#define ENGINE_THREAD_SCHEDULED_MASK  		0x1
#define ENGINE_THREAD_STARTED_MASK    		0x2
#define ENGINE_THREAD_COMPLETED_MASK  		0x4

#define ENGINE_THREAD_INIT_DONE_MASK  		0x80 

#define RUN_FLAGS_MASK				0x7

#define DMA_CHANNEL_SCHEDULED_MASK  		0x1
#define DMA_CHANNEL_STARTED_MASK    		0x2
#define DMA_CHANNEL_COMPLETED_MASK  		0x4

#define DMA_CHANNEL_INTERRUPT_ENABLE_MASK	0x20
#define DMA_CHANNEL_INTERRUPT_VALUE_MASK	0x8

// Error codes
#define    ERR_ENGINE_THREAD_STILL_RUNNING		1
#define    ERR_ENGINE_THREAD_LOCK_NOT_AVAILABLE		2
#define    ERR_DMA_CHANNEL_STILL_RUNNING		1
#define    ERR_DMA_CHANNEL_LOCK_NOT_AVAILABLE		2

// engine commands 
#define    READ_IMEM            1
#define    WRITE_IMEM           2
#define    RESET_ENGINE         3
#define    RUN_ENGINE           4
#define    READ_ENGINE_REG      5
#define    WRITE_ENGINE_REG     6
#define    COMPLETE_ENGINE      7
#define    READ_TIMER      	10

// engine config register ids.
#define    PC_REG_ID		    1
#define    IMEM_ADDRESS_REG_ID      2 
#define    IMEM_WDATA_REG_ID        3 
#define    IMEM_RDATA_REG_ID        4 
#define    ENGINE_EXCEPTION_REG_ID  5
#define    ENGINE_BUNDLE_IDX_REG_ID 6
#define    ENGINE_DREG_ID_REG_ID    2
#define    ENGINE_DREG_HIGH_REG_ID  6
#define    ENGINE_DREG_LOW_REG_ID   7
#define    RAS_STATE_HIGH_REG_ID    6
#define    RAS_STATE_LOW_REG_ID     7
#define    BUNDLE_WORD_INDEX_REG_ID 6
#define    GLOBAL_TICK_TIMER_HIGH_REG_ID        3 
#define    GLOBAL_TICK_TIMER_LOW_REG_ID         4 

// dma commands
#define LOAD_FROM_MEM      1    // from main memory to engine data memory.
#define STORE_TO_MEM       2	 // from engine data memory to main memory
				 
// dma regs
// argument 1: register contents: source base byte address
//
// argument 2: register contents: destination base byte address.
//
// argument 3: total number of bytes to be transferred.
//
// argument 4: register contents:  number of bursts to be transferred
//
// argument 5: the inter-burst byte gap.
//                This is the difference between the start address
//                of successive bursts.
//                  addr-of-second-burst = address-of-first-burst + gap.
//
// argument 6: the number of bytes in each burst.
// burst.
#define DMA_CONTROL_REG_ID			0
#define DMA_SOURCE_BYTE_ADDR_REG_ID		1
#define DMA_DEST_BYTE_ADDR_REG_ID		2
#define DMA_NBYTES_REG_ID			3
#define DMA_NBURSTS_REG_ID			4
#define DMA_INTERBURST_GAP_REG_ID		5
#define DMA_NBYTES_IN_BURST_REG_ID		6


//---------------------------------------------   address maps ------------------------------------------------------------------------------//
// address of word with offset a in data memory of cluter c, engine e
//-------------------------------------------------------------------------------------------------------------------------------------------//
#define __engine_data_mem_address__(c,e,a) 	(DATA_MEM_BASE_ADDRESS + (c*CLUSTER_DATA_MEM_SIZE) + (e*ENGINE_DATA_MEM_SIZE) + (a & 0xffff))
								
//-------------------------------------------------------------------------------------------------------------------------------------------//
// address of configuration register with offset (byte count, 32 registers total) a, cluster c, engine e, thread t 
//-------------------------------------------------------------------------------------------------------------------------------------------//
#define __engine_config_mem_address__(c,e,t,a)  (ENGINE_CONFIG_BASE_ADDRESS + (c*CLUSTER_CONFIG_MEM_SIZE) + (e*ENGINE_CONFIG_MEM_SIZE) + (t*THREAD_CONFIG_MEM_SIZE) + (a &  0x1f))

//-------------------------------------------------------------------------------------------------------------------------------------------//
// address of register with offset (byte count) a in cluster c, engine e, channel t
//-------------------------------------------------------------------------------------------------------------------------------------------//
#define __dma_config_mem_address__(c,e,t,a)  (DMA_CONFIG_BASE_ADDRESS + (c*CLUSTER_DMA_CONFIG_MEM_SIZE) + (e*ENGINE_DMA_CONFIG_MEM_SIZE) + (t*DMA_CONFIG_CHANNEL_MEM_SIZE) + (a &  0x1f))

//--------------------------------------------------------------------------------------------------------------------------
// Make command registers for thread, dma 
//--------------------------------------------------------------------------------------------------------------------------
uint32_t __make_thread_control_reg__ (uint8_t opcode, uint32_t ctrl_reg, uint8_t tid,  uint32_t sequence_id, uint32_t start_flag);
uint32_t __make_dma_control_reg__ (uint8_t opcode, uint32_t ctrl_reg, 
	       					uint32_t top_4bits_of_src_addr,
						uint32_t top_4bits_of_dest_addr,
						uint32_t sequence_id,
						uint32_t start_flag);
// set/clear  flags
void __set_thread_flags__ (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id, uint32_t mask);
void __clear_thread_flags__ (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id, uint32_t mask);

// set/clear  flags
void __set_dma_flags__      (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id,  uint32_t mask);
void __clear_dma_flags__    (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id,  uint32_t mask);

// sequence id generation.
uint32_t __pre_increment_engine_sequence_number__ (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id);
uint32_t __pre_increment_dma_sequence_number__ (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id);

// we wait until the thread running on the engine has completed.  This is signaled by the bottom 3-bits
// of the control registers becoming 1.
void waitOnEngineThreadCompletion (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id);
void waitOnDmaChannelCompletion (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id);

// returns 0 on success (for the moment, not implemented, but locks will bein hms).
uint32_t  acquireEngineThreadLock  (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id);   
void      releaseEngineThreadLock  (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id);   

uint32_t  acquireDmaChannelLock  (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id);   
void      releaseDmaChannelLock  (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id);   

// return control register values.
uint32_t  engineThreadStatus (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id);
uint32_t  dmaChannelStatus   (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id);

// evaluate to 1 if thread/channel is ready.
#define __engine_thread_is_ready__(cr)  ((cr & RUN_FLAGS_MASK) == 0)
#define __dma_channel_is_ready__(cr)    ((cr & RUN_FLAGS_MASK) == 0)

//--------------------------------------------------------------------------------------------------------------------------
// enable thread control daemon, dma control daemon.
//--------------------------------------------------------------------------------------------------------------------------
void enableThreadCommandDaemon (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id);
void enableDmaCommandDaemon    (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id);


//--------------------------------------------------------------------------------------------------------------------------
// interrupts.
//--------------------------------------------------------------------------------------------------------------------------
void enableThreadInterrupt  (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id);
void disableThreadInterrupt (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id);
void clearThreadInterrupt (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id);

// return 1 if thread interrupt is set.
uint32_t threadInterruptIsSet (HpcMachineState* hms,uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id); 

// return 1 if thread interrupt is enabled.
uint32_t threadInterruptIsEnabled (HpcMachineState* hms,uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id); 

void enableDmaInterrupt  (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_id);
void disableDmaInterrupt (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_id);
void clearDmaInterrupt (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_id);
// return 1 if dma interrupt is set.
uint32_t dmaInterruptIsSet (HpcMachineState* hms,uint8_t cluster_id, uint8_t engine_id, uint8_t dma_id); 


//-------------------------------------------------------------------------------------------------------------
// acquire thread...
//-------------------------------------------------------------------------------------------------------------
// return 0 on success, ERR_ENGINE_THREAD_LOCK_NOT_AVAILABLE, ERR_ENGINE_THREAD_STILL_RUNNING on failure.
uint32_t acquireEngineThread (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id);
// return 0 on success, ERR_DMA_CHANNEL__LOCK_NOT_AVAILABLE, ERR_ENGINE_THREAD_STILL_RUNNING on failure.
uint32_t acquireDmaChannel   (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id);

// return 0 on success, ERR_ENGINE_THREAD_BUSY on failure.
uint32_t releaseEngineThread (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id);
// return 0 on success, ERR_DMA_CHANNEL_BUSY on failure.
uint32_t releaseDmaChannel   (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id);

//-------------------------------------------------------------------------------------------------------------
// engine config register access commands..  these two must be provided by the application
//-------------------------------------------------------------------------------------------------------------
void writeToConfigRegister (HpcMachineState* hms, 
						uint8_t dma_flag,
						uint8_t cluster_id, 
						uint8_t engine_id, 
						uint8_t thread_or_dma_channel_id, 
						uint8_t reg_id, 
						uint32_t reg_val);
uint32_t readFromConfigRegister (HpcMachineState* hms,
							uint8_t dma_flag,
							uint8_t cluster_id, 
							uint8_t engine_id, 
							uint8_t thread_or_dma_channel_id, 
							uint8_t reg_id);
//-------------------------------------------------------------------------------------------------------------
// engine data mem access commands..  these two must be provided by the application
//-------------------------------------------------------------------------------------------------------------
void writeDwordToDataMem (HpcMachineState* hms, 
				uint8_t   cluster_id, 
				uint8_t   engine_id, 
				uint8_t   thread_id, 
				uint32_t  dword_index, 
				uint64_t  wdata);

uint64_t readDwordFromDataMem (HpcMachineState* hms,
				uint8_t   cluster_id, 
				uint8_t   engine_id, 
				uint8_t   thread_id, 
				uint32_t  dword_index);

//-------------------------------------------------------------------------------------------------------------
// engine related commands.
//-------------------------------------------------------------------------------------------------------------
void writeToEngineConfigRegister (HpcMachineState* hms, 
						uint8_t cluster_id, 
						uint8_t engine_id, 
						uint8_t thread_id, 
						uint8_t reg_id,
						uint32_t reg_val);
uint32_t readFromEngineConfigRegister (HpcMachineState* hms,
							uint8_t cluster_id, 
							uint8_t engine_id, 
							uint8_t thread_id, 
							uint8_t reg_id);

// return 0 on success.
uint32_t writeInstructionToEngineInstrMemory (HpcMachineState* hms,
							uint8_t cluster_id, 
							uint8_t engine_id, 
							uint32_t instr_word_index,
							uint32_t instruction);		
// return 0 on success, instruction is kept in *instr_value
uint32_t readInstructionFromEngineInstrMemory (HpcMachineState* hms,
							uint8_t cluster_id, 
							uint8_t engine_id, 
							uint32_t instr_word_index,
							uint32_t* instr_value);		

// return 0 on success.
uint32_t resetEngineThread(HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id);

// return 0 on success.
uint32_t writeThreadDataRegister(HpcMachineState* hms, 
						uint8_t cluster_id, 
						uint8_t engine_id, 
						uint8_t thread_id,
						uint8_t reg_id, 
						uint64_t write_value);
// return 0 on success.
uint32_t readThreadDataRegister(HpcMachineState* hms,
						uint8_t cluster_id, 
						uint8_t engine_id,  
						uint8_t thread_id,
						uint8_t reg_id,
						uint64_t* read_value);

//
// acquires a thread, and start running a program on it.  Returns 0 on success.
// Polls to determine if the command has been executed.  The thread is released
// after completion.
//
uint32_t runEngineThreadAndPoll      (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id,  uint32_t pc);

//
// acquires a thread, and start running a program on it.  Returns 0 on success (and non-zero if thread was not acquired).
// Sets an interrupt when the thread has completed.
//
// Note: interrupts must be enabled on the thread, else a non-zero error is returned.
// Note: the interrupt service routine is responsible for the release of the
//       thread, using the releaseEngineThread command.
//
uint32_t runEngineThreadAndInterrupt (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id,  uint32_t pc);

// complete a running thread.  If the thread has not completed, returns non-zero.  Else returns 0
// and exceptions, stop-pc.  This command is used only when the thread is running in polled mode.
uint32_t completeEngineThread (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id,
						uint32_t* exceptions, uint32_t* bundle_word_index);

// polls whether the preceding command has finished.. If yes, initiates the
// completeEngineThreadCommand..  This is an optimization..
uint32_t pollAndCmpleteEngineThread (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id,
						uint32_t* exceptions, uint32_t* bundle_word_index);

// check if the thread has completed (flags[2:0] are 0x7), return 0 on success.
uint32_t checkIfThreadHasCompleted (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id,
						uint32_t* exceptions, uint32_t* bundle_word_index);

// command acquires the thread and writes a word to instruction memory, returns 0 on success.
uint32_t writeEngineInstruction (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint32_t addr, uint32_t instr_value);

// command acquires the thread and reads a word from instruction memory, returns 0 on success.
uint32_t readEngineInstruction  (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint32_t addr);

//-------------------------------------------------------------------------------------------------------------
// dma specific commands.
//-------------------------------------------------------------------------------------------------------------
void writeToDmaConfigRegister (HpcMachineState* hms, 
						uint8_t cluster_id, 
						uint8_t engine_id, 
						uint8_t dma_channel_id, 
						uint8_t reg_id, 
						uint32_t reg_val);
uint32_t readFromDmaConfigRegister (HpcMachineState* hms,
							uint8_t cluster_id, 
							uint8_t engine_id, 
							uint8_t dma_channel_id, 
							uint8_t reg_id);
// acquires dma channel, starts a dma task, returns 0 on success.
uint32_t scheduleDmaTaskOnEngine (HpcMachineState* hms,
						uint8_t cluster_id, 
						uint8_t engine_id,
						uint8_t dma_channel,
						uint8_t load_from_mem,
						uint64_t source_byte_address,
						uint64_t destination_byte_address,
						uint32_t burst_length_in_bytes,
						uint32_t inter_burst_gap_in_bytes,
						uint32_t number_of_bursts
				    );
// return byte
// intr-enable unused  intr-level scheduled   started completed
//    1        1            1         1       1
uint8_t readDmaChannelCheckTaskStatus  
			(HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel);

// resets the flags, after executing a dma task (using the schedule function)
void closeDmaChannelTask (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel);


//-------------------------------------------------------------------------------------------------------------
// post condition
//-------------------------------------------------------------------------------------------------------------
uint32_t checkEngineThreadPostCondition (HpcMachineState* hms, 
						uint8_t cluster_id, 
						uint8_t engine_id,
						uint8_t thread_id,
						char* post_condition_file_name);

//-------------------------------------------------------------------------------------------------------------
// retire decode
//-------------------------------------------------------------------------------------------------------------
void decodeRetireMessage (uint32_t retire_message,
				uint8_t* counter,		    // [31:28]
				uint8_t* executed_the_instruction,  // [26]
				uint8_t* thread_id,		    // [25:24]
				uint8_t* stream_id,		    // [23:16]
				uint16_t* dword_index);		    // [15:0]

//-------------------------------------------------------------------------------------------------------------
// global tick timer.
//-------------------------------------------------------------------------------------------------------------
// Acquires thread, reads the tick timer, returns 0 on invalid result, non-zero tick count on valid result.
uint64_t readGlobalTickTimer (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id);

//--------------------------------------------------------------------------------------------------------------
//  Analysis of exceptions.
//--------------------------------------------------------------------------------------------------------------

// Given an exception code (3-bits) mark the exceptions that
// occurred in this lane.
void fillLaneException (LaneExceptions* le, uint32_t lane_exception);

// Given a 32-bit exception status word, fill the information
// encoded in this word into the ThreadExceptions data
// structure.
void fillEngineThreadExceptions (ThreadExceptionSummary* te, uint32_t exception_code);

#ifdef HW_DRIVER
//--------------------------------------------------------------------------------------------------------------
//  parse the return exception code.
//--------------------------------------------------------------------------------------------------------------
void parseEngineThreadExceptions (uint32_t exception_code);
#endif


#endif
