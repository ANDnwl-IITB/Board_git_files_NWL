#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

uint8_t A[8][8];
uint8_t B[8][8];
uint8_t C[8][8];

int main (int argc, char* argv[])
{

	int I, J, K;
	for(I = 0; I < 8; I++)
	{
		for(J = 0; J < 8; J++)
		{
			A[I][J] = I;
			B[I][J] = I;
		}
	}

	for(I = 0; I < 8; I++)
	{
		for(J = 0; J < 8; J++)
		{
			uint8_t sum = 0;
			for(K =  0; K < 8; K++)
			{
				sum += A[I][K]*B[J][K];
			}

			C[I][J] = sum;
		}
	}


	uint32_t* aptr = (uint32_t*) &A[0][0];
	uint32_t* bptr = (uint32_t*) &B[0][0];
	uint32_t* cptr = (uint32_t*) &C[0][0];

	uint32_t counter = 0;
	for(I = 0; I < 16; I++)
	{
		fprintf(stdout, "%x: %x\n", counter, *(aptr+I));
		counter++;
	}	

	for(I = 0; I < 16; I++)
	{
		fprintf(stdout, "%x: %x\n", counter, *(bptr+I));
		counter++;
	}	

	for(I = 0; I < 16; I++)
	{
		fprintf(stdout, "%x: %x\n", counter, *(cptr+I));
		counter++;
	}	

	return(0);
}

