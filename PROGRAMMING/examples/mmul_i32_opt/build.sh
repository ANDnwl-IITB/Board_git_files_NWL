CWD=$(pwd)
cd mcode
./run.sh 
cp mmul.obj ../data/
cp mmul.obj ../sim/
cd utils
gcc -o make_data_map make_data_map.c
cd $CWD/mcode
./utils/make_data_map 0x1004000 0x1008000 0x100c000 0x1000000
cp data.mmap ../data/data.mmap
cp data.mmap ../sim/data.mmap
cp registers.txt ../sim/
cp results.txt ../sim/
cd $CWD
imem_to_blob 4096 ./data/mmul.obj > blobs/imem_blob.s
dmem_to_blob ./data/data.mmap > blobs/dmem_blob.s
cd $CWD
