#define USE_RDMA
#define NUSE_DEBUG_MODE

// Lets multiply two large i32 matrices  
// with dimensions 128 x 128  (= 64 KB).
#define ENGINE_DMEM_BASE_POINTER  0x1000000

#define ORDER			  128
#define ELEMENT_SIZE_IN_BYTES 	  4
	
// Ping pong buffers are 8KB each,
#define BUFFER_SIZE		(8 * 1024)

// ping pong for stripes of A, B, Result R.
#define DMEM_A_PING_MATRIX_BASE_ADDRESS (ENGINE_DMEM_BASE_POINTER + 0x4000)
#define DMEM_A_PONG_MATRIX_BASE_ADDRESS (ENGINE_DMEM_BASE_POINTER + 0x6000)

#define DMEM_B_PING_MATRIX_BASE_ADDRESS (ENGINE_DMEM_BASE_POINTER + 0x8000)
#define DMEM_B_PONG_MATRIX_BASE_ADDRESS (ENGINE_DMEM_BASE_POINTER + 0xa000)

#define DMEM_R_PING_MATRIX_BASE_ADDRESS (ENGINE_DMEM_BASE_POINTER + 0xc000)
#define DMEM_R_PONG_MATRIX_BASE_ADDRESS (ENGINE_DMEM_BASE_POINTER + 0xe000)

#define NTHREADS		  4
#define NSTRIPES                  4

//
// All mapped to the same channel
// 
#define	ADMA 			  0
#define BDMA			  0
#define RDMA			  0

