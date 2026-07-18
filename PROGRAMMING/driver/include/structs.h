#ifndef __structs_h____
#define __structs_h____

// 1 MB per queue, there are 16x16 = 256 queues
// These will live in DRAM.
//
//--------------------------------------------------------------------------------------------------------------
//   Inter cluster queues
//--------------------------------------------------------------------------------------------------------------
#define INTER_CLUSTER_QUEUE_DEPTH    (128 * 1024)
typedef struct __HpcInterClusterQueue {
	uint8_t source_cluster;
	uint8_t destination_cluster;
	uint8_t priority;
	uint8_t cluster_queue_lock;

	uint32_t write_pointer;
	uint32_t read_pointer;
	uint32_t size;

	uint64_t queue_array[INTER_CLUSTER_QUEUE_DEPTH];

} HpcInterClusterQueue;

// allocations etc..
void initHpcInterClusterQueue (HpcInterClusterQueue* qptr);

// return number of items pushed into the queue. buffer holds
// the dwords which are to be pushed.
uint32_t pushIntoHpcInterClusterQueue (HpcInterClusterQueue* qptr, 
						uint32_t  number_of_dwords,
						uint64_t* buffer);
// popped queue items are kept in buffer, return value
//  is number of popped items.
uint32_t popFromHpcInterClusterQueue (HpcInterClusterQueue* qptr, 
						uint32_t  number_of_dwords,
						uint64_t* buffer);

// clears the queue.. returns the number of values that
// were in the queue.
uint32_t clearHpcInterClusterQueue (HpcInterClusterQueue* qptr);

// how many items in ths queue?
uint32_t getHpcInterClusterQueueSize (HpcInterClusterQueue* qptr);

#define MAX_NCLUSTERS   	 16
#define MAX_NENGINES_PER_CLUSTER 4
#define MAX_NTHREADS_PER_ENGINE  4
#define MAX_NDMAS_PER_ENGINE  	 4

//--------------------------------------------------------------------------------------------------------------
//   Hpc machine state
//--------------------------------------------------------------------------------------------------------------
// The state will be maintained in non-cacheable memory!
typedef struct __HpcMachineState {
	uint32_t         number_of_clusters;
	uint32_t         number_of_engines_per_cluster;
	uint32_t         number_of_threads_per_engine;

	// one lock per thread, in non-cacheable memory.
	uint8_t*	engine_thread_locks;

	// one lock per dma channel, in non-cacheable memory.
	uint8_t*        dma_channel_locks;

	//
	// one inter-cluster-queue per source->destination
	// cluster pair.  These are allocated in a non-cacheable region
	// with asi = 0x21.
	//
	HpcInterClusterQueue*  *inter_cluster_high_priority_queues;
	HpcInterClusterQueue*  *inter_cluster_low_priority_queues;

	// one sequence number for each thread.
	uint32_t	per_thread_sequence_numbers[MAX_NCLUSTERS][MAX_NENGINES_PER_CLUSTER][MAX_NTHREADS_PER_ENGINE];
	
	// one sequence number for each dma channel..
	uint32_t	per_dma_sequence_numbers[MAX_NCLUSTERS][MAX_NENGINES_PER_CLUSTER][MAX_NDMAS_PER_ENGINE];
} HpcMachineState;
void initHpcMachineState (HpcMachineState* hms);

typedef struct  __LaneExceptions
{
	uint8_t idiv_by_zero;
	uint8_t fdiv_by_zero;
	uint8_t fnan_operation;
	uint8_t isqrt_of_negative;
	uint8_t fsqrt_of_negative;
	uint8_t unaligned_memory_access;
	uint8_t none;
	
} LaneExceptions;

typedef struct __ThreadExceptionSummary 
{
	uint8_t ras_error;
	uint8_t halt_base;
	uint8_t there_is_an_exception;

	LaneExceptions le[8];

} ThreadExceptionSummary;


// allocate locks etc.
HpcMachineState* allocateHpcMachineState (uint8_t number_of_clusters, 
						uint8_t number_of_engines_per_cluster,
							uint8_t number_of_threads_per_engine);
void initEngineThreadLocks (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t thread_id);
void initDmaChannelLocks   (HpcMachineState* hms, uint8_t cluster_id, uint8_t engine_id, uint8_t dma_channel_id);

#endif
