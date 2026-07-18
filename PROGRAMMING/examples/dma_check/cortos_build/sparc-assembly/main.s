	.file	"main.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"Info: finished setup\n"
	.section	".text"
	.align 4
	.global setup
	.type	setup, #function
	.proc	020
setup:
	save	%sp, -96, %sp
	mov	0, %o2
	mov	1, %o0
	call	__ajit_serial_configure_via_vmap__, 0
	 mov	0, %o1
	sethi	%hi(114688), %o0
	sethi	%hi(34999296), %o1
	or	%o0, 512, %o0
	call	__ajit_serial_set_baudrate_via_vmap__, 0
	 or	%o1, 704, %o1
	mov	0, %o0
	call	__ajit_serial_set_uart_reset_via_vmap__, 0
	 sethi	%hi(.LC0), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC0), %o0
	.size	setup, .-setup
	.align 4
	.global wait_on_thread_init
	.type	wait_on_thread_init, #function
	.proc	016
wait_on_thread_init:
	save	%sp, -96, %sp
	sethi	%hi(hms), %i5
	b	.L4
	 or	%i5, %lo(hms), %i5
.L6:
	call	__ajit_sleep__, 0
	 mov	1024, %o0
.L4:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	%i0, %o4
	mov	0, %o5
	call	readFromConfigRegister, 0
	 mov	%i5, %o0
	andcc	%o0, 128, %g0
	be	.L6
	 nop
	jmp	%i7+8
	 restore %g0, %o0, %o0
	.size	wait_on_thread_init, .-wait_on_thread_init
	.section	.rodata.str1.8
	.align 8
.LC1:
	.asciz	"1.  Initialize ping and pong data\n"
	.align 8
.LC2:
	.asciz	"ping-ptr =0x%x, pong-ptr=0x%x\n"
	.section	".text"
	.align 4
	.global main_00
	.type	main_00, #function
	.proc	020
main_00:
	save	%sp, -96, %sp
	sethi	%hi(.LC1), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC1), %o0
	sethi	%hi(ping_data), %i0
	sethi	%hi(pong_data), %i1
	or	%i0, %lo(ping_data), %i0
	or	%i1, %lo(pong_data), %i1
	mov	%i0, %o1
	sethi	%hi(.LC2), %o0
	mov	%i1, %o2
	or	%o0, %lo(.LC2), %o0
	call	cortos_printf, 0
	 mov	0, %i2
	mov	0, %i4
	mov	0, %i5
.L15:
	mov	%i4, %g2
.L17:
	mov	%i5, %g3
	mov	0, %g1
	add	%i0, %i2, %i3
	add	%i1, %i2, %g4
.L9:
	add	%g4, %g1, %o4
	std	%g2, [%i3+%g1]
	addcc	%g3, 1, %o5
	st	%g0, [%o4]
	st	%g0, [%o4+4]
	add	%g1, 8, %g1
	addx	%g2, 0, %o4
	mov	%o5, %g3
	cmp	%g1, 128
	bne	.L9
	 mov	%o4, %g2
	addcc	%i5, 16, %g3
	add	%i2, 128, %i2
	addx	%i4, 0, %g2
	mov	%g3, %i5
	cmp	%g2, 0
	bne	.L15
	 mov	%g2, %i4
	cmp	%g3, 256
	bne	.L17
	 mov	%i4, %g2
	call	do_load_dma_actions, 0
	 nop
	call	do_store_dma_actions, 0
	 restore
	.size	main_00, .-main_00
	.common	dmem_ptr,16,4
	.common	pong_data,2048,8
	.common	ping_data,2048,8
	.common	hms,2076,4
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
