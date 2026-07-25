// Memory partitioing.
#define  SPI_FLASH_BASE_ADDRESS	#	0x0                  // boot from flash at 0x0
#define  SPI_FLASH_NBYTES		#	0x1000000 	  // 16 MB of flash

// 64 engines, each requires 64KB of address space
// to address the data memory.  Total requirement is
// 4MB.  Each cluster uses 256KB
//
// CLUSTER-ID  ENGINE-ID        BASE-ADDR  (nbytes = 64K)
//    c          e              (0x100000 + (c*0x40000) + (e*0x10000))
#define  DATA_MEM_BASE_ADDRESS	 		0x1000000     // data memory base address.
#define  DATA_MEM_NBYTES                              0x100000  	// 4MB  across 64 engines.
#define  CLUSTER_DATA_MEM_SIZE                         0x40000     // 256KB per cluster
#define  ENGINE_DATA_MEM_SIZE                          0x10000     // 64KB per engine.

#define  RAM_START_ADDRESS		 	        0x1100000     // beyond the engine memory..
#define  RAM_END_ADDRESS                            0xfffdffff     // until the config space starts.

#define   NC_RAM_1_START_ADDRESS	 	      0x100000000     // asi = 0x21
#define   NC_RAM_2_START_ADDRESS	 	      0x200000000     // asi = 0x22
#define   NC_RAM_3_START_ADDRESS	 	      0x300000000     // asi = 0x23
#define   NC_RAM_4_START_ADDRESS	 	      0x400000000     // asi = 0x24
#define   NC_RAM_5_START_ADDRESS	 	      0x500000000     // asi = 0x25
#define   NC_RAM_6_START_ADDRESS	 	      0x600000000     // asi = 0x26
#define   NC_RAM_7_START_ADDRESS	 	      0x700000000     // asi = 0x27
#define   NC_RAM_8_START_ADDRESS	 	      0x800000000     // asi = 0x28
#define   NC_RAM_9_START_ADDRESS	 	      0x900000000     // asi = 0x29
#define   NC_RAM_10_START_ADDRESS	 	      0xa00000000     // asi = 0x2a
#define   NC_RAM_11_START_ADDRESS	 	      0xb00000000     // asi = 0x2b
#define   NC_RAM_12_START_ADDRESS	 	      0xc00000000     // asi = 0x2c
#define   NC_RAM_13_START_ADDRESS	 	      0xd00000000     // asi = 0x2d
#define   NC_RAM_14_START_ADDRESS	 	      0xe00000000     // asi = 0x2e
#define   NC_RAM_15_START_ADDRESS	 	      0xf00000000     // asi = 0x2f


// peripheral addresses for AJIT
#define  AJIT_PERIPH_BASE		 		0xFFFF0000       // peripherals
#define  AJIT_PERIPH_NBYTES		 		0x10000          // 64KB

// Control register space for engines.
// Each engine requires 256B of configuration memory for engine control registers
// Each engine requires 256B of configuration memory for dma control registers
// Each cluster uses 2KB.
// Total requirement for 16 clusters is 32KB.
//
// CLUSTER-ID  ENGINE-ID      engine-control-base    			dma-control-base
//     c           e           0xfffe0000 + (c*0x800) + (e*512)      0xfffe8000 + (c*0x800) + (e*512) + 256
//
#define  ENGINE_CONFIG_BASE_ADDRESS	 	      0xFFFE0000     // configuration space of accelerators.
#define  ENGINE_CONFIG_NBYTES		 		  0x2000     // 8KB   configuration bytes across full accelerator
#define  CLUSTER_CONFIG_MEM_SIZE                        0x200     // 512B  per cluster
#define  ENGINE_CONFIG_MEM_SIZE                         0x80      // 128B  per engine
#define  THREAD_CONFIG_MEM_SIZE                         0x20      // 32B   per thread.

#define  DMA_CONFIG_BASE_ADDRESS	 	      0xFFFE2000      // configuration space of DMA engines.
#define  DMA_CONFIG_NBYTES		 	          0x2000      // 8KB
#define  CLUSTER_DMA_CONFIG_MEM_SIZE	 	           0x200      // 512B
#define  ENGINE_DMA_CONFIG_MEM_SIZE                      0x80      // 128B
#define  DMA_CONFIG_CHANNEL_MEM_SIZE                     0x20      // 32B

// From 0xFFFE0000 to 0xFFFE3FFF  allocated for engine config space etc.
#define  ENGINE_CONFIG_ADDR_MIN	 	      0xFFFE0000      // overall-space  allocated for engine, dma config
#define  ENGINE_CONFIG_ADDR_MAX	 	      0xFFFE3FFF      // overall-space  allocated for engine, dma config

	
#define   SNOOP_CACHE_LOG_MEMORY_SIZE   3  // snoop cache size.

// Thus, the bank index is
// BYTE_ADDR[17:15]
// #define  P_MB_INTERLEAVE_H_INDEX    17
// #define  P_MB_INTERLEAVE_L_INDEX    15
// For other interleaved memory..
//#define  P_LOG_N_MEM_BANKS           2
//#define  P_N_MEM_BANKS               { 2 ** P_LOG_N_MEM_BANKS }
//
// four banks, interleave unit is
// a page.
//#define  P_MEM_INTERLEAVE_H_INDEX    13
//#define  P_MEM_INTERLEAVE_L_INDEX    12

