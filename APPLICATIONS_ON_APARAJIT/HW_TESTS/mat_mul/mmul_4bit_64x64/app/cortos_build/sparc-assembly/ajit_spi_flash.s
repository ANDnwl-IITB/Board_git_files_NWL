	.file	"ajit_spi_flash.c"
	.section	".text"
	.align 4
	.global ajit_spi_transfer_is_in_progress
	.type	ajit_spi_transfer_is_in_progress, #function
	.proc	016
ajit_spi_transfer_is_in_progress:
	ld	[%o0+8], %o0
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	ajit_spi_transfer_is_in_progress, .-ajit_spi_transfer_is_in_progress
	.align 4
	.global ajit_spi_flash_send_byte
	.type	ajit_spi_flash_send_byte, #function
	.proc	020
ajit_spi_flash_send_byte:
	save	%sp, -96, %sp
	and	%i1, 7, %i1
	and	%i3, 1, %i3
	sll	%i1, 4, %i1
	add	%i3, %i3, %i3
	or	%i1, 1, %i1
	st	%i2, [%i0]
	or	%i1, %i3, %i3
	add	%i0, 8, %i5
	st	%i3, [%i0+8]
.L3:
	call	__ajit_sleep__, 0
	 mov	64, %o0
	ld	[%i5], %g1
	andcc	%g1, 1, %g0
	bne	.L3
	 nop
	jmp	%i7+8
	 restore
	.size	ajit_spi_flash_send_byte, .-ajit_spi_flash_send_byte
	.align 4
	.global ajit_spi_flash_receive_byte
	.type	ajit_spi_flash_receive_byte, #function
	.proc	014
ajit_spi_flash_receive_byte:
	save	%sp, -96, %sp
	and	%i1, 7, %i1
	and	%i2, 1, %i2
	sll	%i1, 4, %i1
	add	%i2, %i2, %i2
	or	%i1, 1, %i1
	st	%g0, [%i0]
	or	%i1, %i2, %i2
	add	%i0, 8, %i5
	st	%i2, [%i0+8]
.L7:
	call	__ajit_sleep__, 0
	 mov	64, %o0
	ld	[%i5], %g1
	andcc	%g1, 1, %g0
	bne	.L7
	 nop
	ldub	[%i0+3], %i0
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
	and	%o1, 255, %o1
	or	%o2, %o1, %o2
	or	%o2, %o3, %o3
	jmp	%o7+8
	 st	%o3, [%o0+12]
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
	b	.L16
	 mov	0, %o1
.L15:
	call	__ajit_sleep__, 0
	 mov	256, %o0
	mov	0, %o1
.L16:
	call	ajit_spi_flash_is_busy, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L15
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
	be	.L24
	 mov	0, %i5
.L22:
	xor	%i2, %l0, %g1
	subcc	%g0, %g1, %g0
	mov	%i0, %o0
	subx	%g0, -1, %o2
	call	ajit_spi_flash_receive_byte, 0
	 mov	%i1, %o1
	stb	%o0, [%i3+%i2]
	add	%i5, 1, %i5
	cmp	%i5, %i4
	bne	.L22
	 mov	%i5, %i2
.L24:
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
	be	.L33
	 mov	0, %i5
.L31:
	xor	%g1, %i2, %g2
	subcc	%g0, %g2, %g0
	ldub	[%i3+%g1], %o2
	subx	%g0, -1, %o3
	mov	%i0, %o0
	call	ajit_spi_flash_send_byte, 0
	 mov	%i1, %o1
	add	%i5, 1, %i5
	cmp	%i5, %i4
	bne	.L31
	 mov	%i5, %g1
	mov	0, %o1
	call	ajit_spi_flash_is_busy, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	be,a	.L35
	 mov	4, %i2
.L30:
	call	__ajit_sleep__, 0
	 mov	256, %o0
.L33:
	mov	0, %o1
	call	ajit_spi_flash_is_busy, 0
	 mov	%i0, %o0
	cmp	%o0, 0
	bne	.L30
	 nop
	mov	4, %i2
.L35:
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
