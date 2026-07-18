CWD=$(pwd)
echo "make macros"
cd macros
# convert dotp.mcode to a macro.
./make_macros.sh
cd $CWD
cd utils
echo "compile data generation utility"
gcc -o make_data_map make_data_map.c
cd $CWD
# expand mmu.symbolic.mcode by substituting macros.
echo "expand macros"
expand_macros.sh  "-I ./macros"  src/mmul.symbolic.mcode  mmul.aligned.mcode
# assemble the expanded, aligned mcode.
echo "assemble expanded mcode"
mcode_assemble mmul.aligned.mcode  > mmul.obj
# disassemble to be sure.
echo "disassemble mcode to confirm"
mcode_disassemble mmul.obj > mmul.disassemble.mcode
# make data, registers, results files.
./utils/make_data_map 0x1004000 0x1008000 0x100c000 0x1000000
# run.
#mcode_run -p 0x0 -i mmul.obj -a registers.txt -d data.mmap -r results.txt $1
mcode_run -p 0x0 -p 0x0 -p 0x0 -p 0x0 -i mmul.obj -a registers.txt -d data.mmap -r results.txt $1
