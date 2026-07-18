
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <inttypes.h>

#define N 64
int32_t A[N];

uint64_t to_big_endian (uint64_t v)
{
	uint64_t a = v & 0xffffffff;
	uint64_t b = (v >> 32);

	uint64_t result = (a  << 32) | b;
	return(result);
}

int main (int argc, char* argv[])
{
	int I;

	for(I = 0; I < N; I++)
	{
		A[I] = I;
	}

	uint64_t* dw_ptr = (uint64_t*) &(A[0]);
	for(I = 0; I < N/2; I++)
	{
		uint64_t V = *(dw_ptr + I);
		fprintf(stderr, "0x%" PRIx64  " 0x%" PRIx64 "\n", V, to_big_endian(V));
	}
	return(0);
}
