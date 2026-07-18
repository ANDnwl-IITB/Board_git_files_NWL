CWD=$(pwd)
cd mcode
./run.sh dotp
cp dotp.obj ../data/
cd $CWD
cd blobs
imem_to_blob 1024 ../data/dotp.obj > imem_blob.s
dmem_to_blob ../data/data.map > dmem_blob.s
cd $CWD
