CWD=$(pwd)
cd mcode
./run.sh 
cp mul.obj ../data/
cd $CWD
imem_to_blob 4096 ./data/mul.obj > blobs/imem_blob.s
dmem_to_blob ./data/data.map > blobs/dmem_blob.s
cd $CWD
