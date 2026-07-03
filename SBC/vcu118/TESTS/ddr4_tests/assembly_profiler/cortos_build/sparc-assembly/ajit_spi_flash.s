	.file	"ajit_spi_flash.c"
	.section	".text"
	.align 4
	.global ajit_spi_transfer_is_in_progress
	.type	ajit_spi_transfer_is_in_progress, #function
	.proc	016
ajit_spi_transfer_is_in_progress:
	add	%o0, 8, %o0
#APP
! 17 "/home/ajit/ajit-toolchain/AjitPublicResources/tools/ajit_access_routines_mt/src/ajit_spi_flash.c" 1
	lda [%o0] 32, %o0
	
! 0 "" 2
#NO_APP
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	ajit_spi_transfer_is_in_progress, .-ajit_spi_transfer_is_in_progress
	.align 4
	.global ajit_spi_flash_send_byte
	.type	ajit_spi_flash_send_byte, #function
	.proc	020
ajit_spi_flash_send_byte:
	save	%sp, -96, %sp
#APP
! 33 "/home/ajit/ajit-toolchain/AjitPublicResources/tools/ajit_access_routines_mt/src/ajit_spi_flash.c" 1
	sta %i2, [%i0] 32
	
! 0 "" 2
#NO_APP
	and	%i1, 7, %i1
	and	%i3, 1, %i3
	sll	%i1, 4, %i1
	add	%i3, %i3, %i3
	or	%i1, 1, %i1
	add	%i0, 8, %i0
	or	%i1, %i3, %i3
#APP
! 41 "/home/ajit/ajit-toolchain/AjitPublicResources/tools/ajit_access_routines_mt/src/ajit_spi_flash.c" 1
	sta %i3, [%i0] 32
	
! 0 "" 2
! 17 "/home/ajit/ajit-toolchain/AjitPublicResources/tools/ajit_access_routines_mt/src/ajit_spi_flash.c" 1
	lda [%i0] 32, %g1
	
! 0 "" 2
#NO_APP
	andcc	%g1, 1, %g0
	be	.L8
	 nop
.L5:
	call	__ajit_sleep__, 0
	 mov	64, %o0
#APP
! 17 "/home/ajit/ajit-toolchain/AjitPublicResources/tools/ajit_access_routines_mt/src/ajit_spi_flash.c" 1
	lda [%i0] 32, %g1
	
! 0 "" 2
#NO_APP
	andcc	%g1, 1, %g0
	bne	.L5
	 nop
.L8:
	jmp	%i7+8
	 restore
	.size	ajit_spi_flash_send_byte, .-ajit_spi_flash_send_byte
	.align 4
	.global ajit_spi_flash_receive_byte
	.type	ajit_spi_flash_receive_byte, #function
	.proc	014
ajit_spi_flash_receive_byte:
	save	%sp, -96, %sp
	mov	0, %g1
#APP
! 58 "/home/ajit/ajit-toolchain/AjitPublicResources/tools/ajit_access_routines_mt/src/ajit_spi_flash.c" 1
	sta %g1, [%i0] 32
	
! 0 "" 2
#NO_APP
	and	%i1, 7, %i1
	and	%i2, 1, %i2
	sll	%i1, 4, %i1
	add	%i2, %i2, %i2
	or	%i1, 1, %i1
	add	%i0, 8, %i5
	or	%i1, %i2, %i2
#APP
! 66 "/home/ajit/ajit-toolchain/AjitPublicResources/tools/ajit_access_routines_mt/src/ajit_spi_flash.c" 1
	sta %i2, [%i5] 32
	
! 0 "" 2
! 75 "/home/ajit/ajit-toolchain/AjitPublicResources/tools/ajit_access_routines_mt/src/ajit_spi_flash.c" 1
	sta %g1, [%i5] 32
	
! 0 "" 2
#NO_APP
	cmp	%g1, 0
	be	.L10
	 nop
.L12:
	call	__ajit_sleep__, 0
	 mov	64, %o0
	mov	0, %g1
#APP
! 75 "/home/ajit/ajit-toolchain/AjitPublicResources/tools/ajit_access_routines_mt/src/ajit_spi_flash.c" 1
	sta %g1, [%i5] 32
	
! 0 "" 2
#NO_APP
	b,a	.L12
.L10:
#APP
! 88 "/home/ajit/ajit-toolchain/AjitPublicResources/tools/ajit_access_routines_mt/src/ajit_spi_flash.c" 1
	lda [%i0] 32, %i0
	
! 0 "" 2
#NO_APP
	and	%i0, 0xff, %i0
	jmp	%i7+8
	 restore
	.size	ajit_spi_flash_receive_byte, .-ajit_spi_flash_receive_byte
	.align 4
	.global ajit_spi_flash_reset
	.type	ajit_spi_flash_reset, #function
	.proc	020
ajit_spi_flash_reset:
	mov	102, %o2
	mov	1, %o3
	or	%o7, %g0, %g1
	call	ajit_spi_flash_send_byte, 0
	 or	%g1, %g0, %o7
	.size	ajit_spi_flash_reset, .-ajit_spi_flash_reset
	.align 4
	.global ajit_spi_flash_memory_reset
	.type	ajit_spi_flash_memory_reset, #function
	.proc	020
ajit_spi_flash_memory_reset:
	mov	153, %o2
	mov	1, %o3
	or	%o7, %g0, %g1
	call	ajit_spi_flash_send_byte, 0
	 or	%g1, %g0, %o7
	.size	ajit_spi_flash_memory_reset, .-ajit_spi_flash_memory_reset
	.align 4
	.global ajit_spi_configure
	.type	ajit_spi_configure, #function
	.proc	020
ajit_spi_configure:
	sll	%o2, 4, %o2
	sll	%o1, 6, %o1
	add	%o0, 12, %o0
	and	%o1, 255, %o1
	or	%o2, %o1, %o2
	or	%o2, %o3, %o3
#APP
! 140 "/home/ajit/ajit-toolchain/AjitPublicResources/tools/ajit_access_routines_mt/src/ajit_spi_flash.c" 1
	sta %o3, [%o0] 32
	
! 0 "" 2
#NO_APP
	jmp	%o7+8
	 nop
	.size	ajit_spi_configure, .-ajit_spi_configure
	.align 4
	.global ajit_spi_flash_is_busy
	.type	ajit_spi_flash_is_busy, #function
	.proc	016
ajit_spi_flash_is_busy:
	save	%sp, -96, %sp
	mov	0, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	call	ajit_spi_flash_send_byte, 0
	 mov	5, %o2
	mov	%i0, %o0
	mov	%i1, %o1
	call	ajit_spi_flash_receive_byte, 0
	 mov	1, %o2
	and	%o0, 1, %i0
	jmp	%i7+8
	 restore
	.size	ajit_spi_flash_is_busy, .-ajit_spi_flash_is_busy
	.align 4
	.global ajit_spi_flash_generic_erase
	.type	ajit_spi_flash_generic_erase, #function
	.proc	020
ajit_spi_flash_generic_erase:
	save	%sp, -96, %sp
	mov	1, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	call	ajit_spi_flash_send_byte, 0
	 mov	6, %o2
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	ajit_spi_flash_send_byte, 0
	 mov	0, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	srl	%i3, 16, %o2
	mov	0, %o3
	call	ajit_spi_flash_send_byte, 0
	 and	%o2, 0xff, %o2
	mov	%i0, %o0
	mov	%i1, %o1
	srl	%i3, 8, %o2
	mov	0, %o3
	call	ajit_spi_flash_send_byte, 0
	 and	%o2, 0xff, %o2
	mov	%i0, %o0
	mov	%i1, %o1
	and	%i3, 0xff, %o2
	call	ajit_spi_flash_send_byte, 0
	 mov	1, %o3
	b	.L20
	 mov	0, %o1
.L19:
	call	__ajit_sleep__, 0
	 mov	256, %o0
	mov	0, %o1
.L20:
	call	ajit_spi_flash_is_busy, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L19
	 mov	4, %i2
	call	ajit_spi_flash_send_byte, 0
	 restore %g0, 1, %o3
	.size	ajit_spi_flash_generic_erase, .-ajit_spi_flash_generic_erase
	.align 4
	.global ajit_spi_flash_sector_erase
	.type	ajit_spi_flash_sector_erase, #function
	.proc	020
ajit_spi_flash_sector_erase:
	mov	%o2, %o3
	mov	216, %o2
	or	%o7, %g0, %g1
	call	ajit_spi_flash_generic_erase, 0
	 or	%g1, %g0, %o7
	.size	ajit_spi_flash_sector_erase, .-ajit_spi_flash_sector_erase
	.align 4
	.global ajit_spi_flash_read
	.type	ajit_spi_flash_read, #function
	.proc	020
ajit_spi_flash_read:
	save	%sp, -96, %sp
	mov	3, %o2
	mov	%i0, %o0
	mov	%i1, %o1
	call	ajit_spi_flash_send_byte, 0
	 mov	0, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	mov	0, %o3
	srl	%i2, 16, %o2
	call	ajit_spi_flash_send_byte, 0
	 and	%o2, 0xff, %o2
	mov	0, %o3
	srl	%i2, 8, %o2
	mov	%i0, %o0
	and	%o2, 0xff, %o2
	call	ajit_spi_flash_send_byte, 0
	 mov	%i1, %o1
	and	%i2, 0xff, %o2
	mov	%i0, %o0
	mov	%i1, %o1
	call	ajit_spi_flash_send_byte, 0
	 mov	0, %o3
	add	%i4, -1, %l0
	mov	0, %i2
	cmp	%i4, 0
	be	.L28
	 mov	0, %i5
.L26:
	xor	%i2, %l0, %g1
	subcc	%g0, %g1, %g0
	mov	%i0, %o0
	subx	%g0, -1, %o2
	call	ajit_spi_flash_receive_byte, 0
	 mov	%i1, %o1
	stb	%o0, [%i3+%i2]
	add	%i5, 1, %i5
	cmp	%i5, %i4
	bne	.L26
	 mov	%i5, %i2
.L28:
	jmp	%i7+8
	 restore
	.size	ajit_spi_flash_read, .-ajit_spi_flash_read
	.align 4
	.global ajit_spi_flash_write
	.type	ajit_spi_flash_write, #function
	.proc	020
ajit_spi_flash_write:
	save	%sp, -96, %sp
	mov	6, %o2
	mov	1, %o3
	mov	%i0, %o0
	call	ajit_spi_flash_send_byte, 0
	 mov	%i1, %o1
	mov	%i0, %o0
	mov	%i1, %o1
	mov	2, %o2
	call	ajit_spi_flash_send_byte, 0
	 mov	0, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	mov	0, %o3
	srl	%i2, 16, %o2
	call	ajit_spi_flash_send_byte, 0
	 and	%o2, 0xff, %o2
	mov	0, %o3
	srl	%i2, 8, %o2
	mov	%i0, %o0
	and	%o2, 0xff, %o2
	call	ajit_spi_flash_send_byte, 0
	 mov	%i1, %o1
	and	%i2, 0xff, %o2
	mov	%i0, %o0
	mov	%i1, %o1
	call	ajit_spi_flash_send_byte, 0
	 mov	0, %o3
	add	%i4, -1, %i2
	mov	0, %g1
	cmp	%i4, 0
	be	.L37
	 mov	0, %i5
.L35:
	xor	%g1, %i2, %g2
	subcc	%g0, %g2, %g0
	ldub	[%i3+%g1], %o2
	subx	%g0, -1, %o3
	mov	%i0, %o0
	call	ajit_spi_flash_send_byte, 0
	 mov	%i1, %o1
	add	%i5, 1, %i5
	cmp	%i5, %i4
	bne	.L35
	 mov	%i5, %g1
	mov	0, %o1
	call	ajit_spi_flash_is_busy, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be,a	.L39
	 mov	4, %i2
.L34:
	call	__ajit_sleep__, 0
	 mov	256, %o0
.L37:
	mov	0, %o1
	call	ajit_spi_flash_is_busy, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L34
	 nop
	mov	4, %i2
.L39:
	call	ajit_spi_flash_send_byte, 0
	 restore %g0, 1, %o3
	.size	ajit_spi_flash_write, .-ajit_spi_flash_write
	.align 4
	.global ajit_spi_get_register
	.type	ajit_spi_get_register, #function
	.proc	014
ajit_spi_get_register:
	sll	%o1, 2, %o1
	ld	[%o1+%o0], %o0
	jmp	%o7+8
	 and	%o0, 0xff, %o0
	.size	ajit_spi_get_register, .-ajit_spi_get_register
	.align 4
	.global ajit_spi_set_register
	.type	ajit_spi_set_register, #function
	.proc	020
ajit_spi_set_register:
	sll	%o1, 2, %o1
	jmp	%o7+8
	 st	%o2, [%o1+%o0]
	.size	ajit_spi_set_register, .-ajit_spi_set_register
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
