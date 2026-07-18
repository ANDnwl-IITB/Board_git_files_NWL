#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <inttypes.h>

uint64_t data_memory  [ 64 * 1024 ];
uint32_t data_indices [ 64 * 1024 ];

// return number of bytes in blob
uint32_t process_data(FILE* ifile)
{

	int I, fI;
	for(I = 0, fI  = I < (64*1024); I < fI; I++)
	{
		data_memory[I] = 0x0;
		data_indices[I] = 0x0;
	}

	int line_number = 0;
	uint32_t number_of_dwords = 0;
	char current_line[4096];

	while(fgets(current_line, 1024, ifile) != NULL)
	{
		line_number++;
		if(current_line[0] != '!')
		{

			char* addr_str = strtok (current_line," :");
			char* data_str = strtok (NULL, " \n");

			uint64_t dword_index;
			uint64_t data;

			if((addr_str != NULL) && (data_str != NULL))
			{
				sscanf (addr_str, "%"PRIx64, &dword_index);
				sscanf (data_str, "%"PRIx64, &data);
			}

			data_memory [number_of_dwords] = data;
			data_indices[number_of_dwords] = dword_index;

			number_of_dwords++;
		}
	}

	for(I = 0; I < number_of_dwords; I++)
	{
		uint32_t idx = data_indices[I];

		uint64_t w = data_memory[I];
		uint64_t wh = (w >> 32);
		uint64_t wl = (w & 0xffffffff);

		fprintf(stdout,".word 0x%x\n", idx);
		fprintf(stdout,".word 0x%x\n", (uint32_t) wh);
		fprintf(stdout,".word 0x%x\n", (uint32_t) wl);
	}

	return(number_of_dwords * 3 * 4);
}

int main (int argc, char* argv[])
{
	if(argc < 2)
	{
		fprintf(stderr,"Usage: %s  data-mem-file  > blob-file\n", argv[0]);
		return(1);
	}

	FILE* ifile = fopen (argv[1],"r");
	if(ifile == NULL)
	{
		fprintf(stderr,"Error: file %s could not be opened\n", argv[1]);
		return(1);
	}


	fprintf (stdout,"/* Each entry in this blob is 3 words:\n");
	fprintf (stdout," *   dword_index \n");
	fprintf (stdout," *   high_word   \n");
	fprintf (stdout," *   low_word    \n");
	fprintf (stdout," * memory is written into using \n");
	fprintf (stdout," * address = (dword_index << 3)   \n");
	fprintf (stdout," * wdata   = high_word concat low_word \n");
	fprintf (stdout," * The number of entries is nbytes/12. \n");
	fprintf (stdout," */\n");
	fprintf (stdout,".align 256\n");
	fprintf (stdout,".global dmem_blob\n");
	fprintf (stdout,"dmem_blob:\n");
	uint32_t blob_size = process_data (ifile);

	fprintf (stdout,"/* Size of the dmem blob in bytes. */\n");
	fprintf (stdout,".align 8\n");
	fprintf (stdout,".global dmem_blob_size\n");
	fprintf (stdout,"dmem_blob_size:\n");
	fprintf (stdout,".word 0x%x\n", blob_size);

	fclose(ifile);
}
