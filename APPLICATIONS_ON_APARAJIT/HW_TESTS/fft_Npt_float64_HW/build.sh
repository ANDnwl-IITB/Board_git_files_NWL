CWD=$(pwd)
cd mcode
./run.sh fftN_new
cp fftN_new.obj ../data/
cd $CWD
cd blobs
imem_to_blob 1024 ../data/fftN_new.obj > imem_blob.s
dmem_to_blob ../data/data.map > dmem_blob.s
cd $CWD
