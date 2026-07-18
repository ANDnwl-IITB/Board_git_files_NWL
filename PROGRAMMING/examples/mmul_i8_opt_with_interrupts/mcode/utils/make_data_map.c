#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <inttypes.h>

#define N 32		
#define M 128			
#define NTHREADS 4		
#define ROWS_PER_THREAD (N/NTHREADS) 
				//
int32_t A[N][M];		// at most 16KB
int32_t B[N][M];		// at most 16KB
int32_t C[N][N];		// at most 16KB.

uint64_t to_big_endian (uint64_t v)
{
	uint64_t a = v & 0xffffffff;
	uint64_t b = (v >> 32);

	uint64_t result = (a  << 32) | b;
	return(result);
}

int main (int argc, char* argv[])
{
	if(argc < 5)
	{
		fprintf(stderr,"Usage: %s <base-addr-of-A> <base-addr-of-B> <base-addr-of-result> <base-addr-of-engine> \n", argv[0]);
		return(1);
	}

	uint64_t Abase, Bbase,Cbase, Ebase;

	sscanf (argv[1],"0x%" PRIx64 "",&Abase);	//base address of A
	sscanf (argv[2],"0x%" PRIx64 "",&Bbase);	//base address of B
	sscanf (argv[3],"0x%" PRIx64 "",&Cbase);	//base address of C
	sscanf (argv[4],"0x%" PRIx64 "",&Ebase);	//base address of BUFFER
							//

	uint64_t NMASK  =  N-1;  				// number of dot products for a single row.
	uint64_t N2MASK =  (ROWS_PER_THREAD * N) - 1;		// total number of dot-products.

	uint64_t NBYTES = (M*4);

	int I,J;
	int V = 0;
	for(I = 0; I < N; I++)
	{
		for(J = 0; J < M; J++)
		{
			A[I][J] = V; // row major form.
			B[I][J] = V; // column major form.
			V++;
		}
	}

	for(I = 0; I < N; I++)
	{
		for(J = 0; J < N; J++)
		{
			int S = 0;
			int K;
			for(K = 0; K < M; K++)
			{
				S = S + (A[I][K] * B[J][K]);
			}
			C[I][J] = S;
		}
	}

	FILE* f_data    = fopen("data.mmap", "w");
	FILE* f_results = fopen("results.txt", "w");
	FILE* f_registers = fopen ("registers.txt", "w");


	uint64_t* aptr 	    = (uint64_t*) &(A[0][0]);
	uint64_t* bptr 	    = (uint64_t*) &(B[0][0]);
	uint64_t* cptr 	    = (uint64_t*) &(C[0][0]);

	uint64_t  TOTAL_NBYTES_PER_INPUT_MATRIX = (N*M*4);
	uint64_t  TOTAL_NBYTES_FOR_OUTPUT_MATRIX = (N*N*4);
	uint64_t  BUFFER_SIZE_IN_BYTES = 256;

	uint64_t K;

	// registers 
	//   0 1f 0x1000000
	fprintf(stderr,"Info: printing registers.txt\n");
	int TID;
	for(TID = 0; TID < 4; TID++)
	{
		fprintf(f_registers,"%d 1 0x%" PRIx64 "\n", TID, Abase + (NBYTES*TID*N/NTHREADS));	// APTR
		fprintf(f_registers,"%d 2 0x%" PRIx64 "\n", TID, Bbase);				// BPTR
		fprintf(f_registers,"%d 3 0x%x\n", TID, (4*M));						// NBYTES_IN
													//
		// two rows per thread, total bytes 2*N*4 = 8*N
		fprintf(f_registers,"%d 4 0x%" PRIx64 "\n", TID, Cbase + (4*TID*ROWS_PER_THREAD*N));		
													// RPTR
													
		fprintf(f_registers,"%d 5 0x%" PRIx64 "\n", TID, NMASK);				// NMASK
		fprintf(f_registers,"%d 6 0x%" PRIx64 "\n", TID, N2MASK);				// N2MASK
		fprintf(f_registers,"%d 7 0x%" PRIx64 "\n", TID, Ebase + (BUFFER_SIZE_IN_BYTES * TID));	// BUFFER  (256 bytes)
	}

	// data
	//   200000: 0x1000000
	fprintf(stderr,"Info: printing data.mmap\n");
	for(K = 0; K < TOTAL_NBYTES_PER_INPUT_MATRIX; K += 8)
	{
		fprintf(f_data, "0x%"  PRIx64 ": 0x%" PRIx64 "\n", ((Abase + K)/8), to_big_endian(*(aptr + (K/8))));
	}
	for(K = 0; K < TOTAL_NBYTES_PER_INPUT_MATRIX; K += 8)
	{
		fprintf(f_data,  "0x%" PRIx64 ": 0x%" PRIx64 "\n", ((Bbase + K)/8), to_big_endian(*(bptr + (K/8))));
	}

	// results (mem)
	//    0 mem 0x200300 0x100
	fprintf(stderr,"Info: printing results.txt\n");
	for(K = 0; K < TOTAL_NBYTES_FOR_OUTPUT_MATRIX; K += 8)
	{
		fprintf(f_results, "0 mem 0x%" PRIx64 " 0x%" PRIx64 "\n", ((Cbase + K)/8), to_big_endian(*(cptr + (K/8))));
	}

	fclose (f_registers);
	fclose (f_results);
	fclose (f_data);

	return(0);
}

