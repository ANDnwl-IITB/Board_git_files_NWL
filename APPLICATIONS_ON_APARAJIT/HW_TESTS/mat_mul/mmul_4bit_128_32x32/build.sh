CWD=$(pwd)
cd mcode
./run.sh loop_opt_128_32x32_v1
cp loop_opt_128_32x32_v1.obj ../data/
cd $CWD
cd blobs
imem_to_blob 4096 ../data/loop_opt_128_32x32_v1.obj > imem_blob.s
dmem_to_blob ../data/data.map > dmem_blob.s
cd $CWD
