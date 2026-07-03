CWD=$(pwd)
cd mcode
./run.sh pack_loop_opt_64x64_v1
cp pack_loop_opt_64x64_v1.obj ../data/
cd $CWD
cd blobs
imem_to_blob 4096 ../data/pack_loop_opt_64x64_v1.obj > imem_blob.s
dmem_to_blob ../data/data.map > dmem_blob.s
cd $CWD
