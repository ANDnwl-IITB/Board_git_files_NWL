#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>


int process_instructions(int blob_size_in_bytes, FILE* ifile)
{
	uint32_t* instruction_memory = (uint32_t*) malloc ((blob_size_in_bytes/4)*sizeof(uint32_t));

	int I, fI;
	for(I = 0, fI  = (blob_size_in_bytes/4); I < fI; I++)
	{
		instruction_memory[I] = 0x0;
	}

	int line_number = 0;
	int number_of_instructions = 0;
	char current_line[4096];

	uint32_t pc, hex_instr;

	while(fgets(current_line, 1024, ifile) != NULL)
	{
		line_number++;
		if(current_line[0] != '!')
		{
			number_of_instructions++;

			char* pc_str = strtok (current_line,":");
			char* instr_str = strtok (NULL, " \n");

			uint32_t hex_instr;
			uint32_t pc;
			if((pc_str != NULL) && (instr_str != NULL))
			{
				sscanf (pc_str, "%x", &pc);
				sscanf (instr_str, "%x", &hex_instr);
			}

			if(pc < (blob_size_in_bytes/4))
			{
				instruction_memory[pc] = hex_instr;
			}
			else
			{
				fprintf(stderr, "Error: initialization: pc = 0x%x is beyond the blob-size (0x%x)\n", 
							pc, blob_size_in_bytes/4);
			}
		}
	}

	for(I = 0; I < blob_size_in_bytes/4; I++)
	{
		fprintf(stdout,".word 0x%x\n", instruction_memory[I]);
	}


	return(number_of_instructions);
}

int main (int argc, char* argv[])
{
	if(argc < 3)
	{
		fprintf(stderr,"Usage: %s  blob-size-in-bytes imem-obj-file  > blob-file\n", argv[0]);
		return(1);
	}

	int blob_size = atoi(argv[1]);
	fprintf(stderr,"Info: blob_size = %d\n", blob_size);

	FILE* ifile = fopen (argv[2],"r");
	if(ifile == NULL)
	{
		fprintf(stderr,"Error: file %s could not be opened\n", argv[2]);
		return(1);
	}

	fprintf (stdout,".align 8\n");
	fprintf (stdout,".global imem_blob_size\n");
	fprintf (stdout,"imem_blob_size: \n");
	fprintf (stdout,".word 0x%x\n", blob_size);

	fprintf (stdout,".align 256\n");
	fprintf (stdout,".global imem_blob\n");
	fprintf (stdout,"imem_blob: \n");
	process_instructions (blob_size, ifile);


	fclose(ifile);
}
