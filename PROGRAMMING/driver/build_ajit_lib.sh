rm -rf obj_temp
rm -rf obj_assembly
mkdir  obj_temp
mkdir  obj_assembly
DEFS="-D HW_DRIVER"

echo $DEFS
#
#
#
sparc-linux-gcc $DEFS -c  -S -m32 -mcpu=v8 -nostdlib -ffreestanding  -O2  -I include src/engine.c -o obj_assembly/engine.s 
sparc-linux-as -Av8 obj_assembly/engine.s -o obj_temp/engine.o 
sparc-linux-gcc $DEFS -c  -S -m32 -mcpu=v8 -nostdlib -ffreestanding  -O2  -I include -I $AJIT_HPC_ACCEL_HOME/PARAMETERS  utils/util.c -o obj_assembly/util.s 
sparc-linux-as -Av8 obj_assembly/util.s -o obj_temp/util.o 
sparc-linux-ar -cr ajit_lib/libengine.a obj_temp/*.o
echo "created library lib/libengine.a"
# remove the temporaries.
#rm -rf obj_temp
#rm -rf obj_assembly
#mkdir  obj_temp
#mkdir  obj_assembly
