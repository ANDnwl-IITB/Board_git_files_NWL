/*  void get_blob_info (uint32_t* ptr)
 *  returns ptr[0] = imem_blob_size in bytes
 *          ptr[1] = imem_blob_address
 *          ptr[2] = dmem_blob_size in bytes
 *          ptr[3] = dmem_blob_address
 */
.align 8
.global get_blob_info
get_blob_info:
   save %sp, -96, %sp

   /*  imem blob size */
   set imem_blob_size, %l3 
   ld [%l3 + 0], %l4
   st %l4, [%i0 + 0]

   /*  imem blob pointer */
   set imem_blob, %l3 
   st %l3, [%i0 + 4]

   /* dmem blob size */
   set dmem_blob_size, %l3 
   ld [%l3 + 0], %l4
   st %l4, [%i0 + 8]

   /* dmem blob pointer */
   set dmem_blob, %l3 
   st %l3, [%i0 + 12]

   ret
   restore

