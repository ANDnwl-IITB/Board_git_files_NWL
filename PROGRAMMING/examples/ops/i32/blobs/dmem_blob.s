/* Each entry in this blob is 3 words:
 *   dword_index 
 *   high_word   
 *   low_word    
 * memory is written into using 
 * address = (dword_index << 3)   
 * wdata   = high_word concat low_word 
 * The number of entries is nbytes/12. 
 */
.align 256
.global dmem_blob
dmem_blob:
/* Size of the dmem blob in bytes. */
.align 8
.global dmem_blob_size
dmem_blob_size:
.word 0x0
