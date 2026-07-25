CWD=$(pwd)
cd utils
./compile.sh
cd $CWD
cd driver
scons
echo "From your toolchain docker window, run ./build_ajit_lib.sh in directory " $(pwd)
cd $CWD

export AJIT_HPC_ACCEL_HOME=$(pwd)
export AJIT_HPC_ACCEL_ENGINE_DRIVER_HOME=$(pwd)/driver

export PATH=$PATH:$(pwd)/utils/bin:
