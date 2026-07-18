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
	.asciz	"started do_transfer_using_processor\n"
	.align 8
.LC2:
	.asciz	"completed do_transfer_using_processor\n"
	.section	".text"
	.align 4
	.global do_transfer_using_processor
	.type	do_transfer_using_processor, #function
	.proc	020
do_transfer_using_processor:
	save	%sp, -96, %sp
	sethi	%hi(.LC1), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC1), %o0
	call	__ajit_get_clock_time, 0
	 sethi	%hi(pong_data), %i2
	sethi	%hi(ping_data), %i3
	mov	%o0, %i4
	mov	%o1, %i5
	mov	0, %g1
	or	%i2, %lo(pong_data), %i2
	or	%i3, %lo(ping_data), %i3
	sethi	%hi(8192), %g4
	ldd	[%i3+%g1], %g2
.L10:
	std	%g2, [%i2+%g1]
	add	%g1, 8, %g1
	cmp	%g1, %g4
	bne,a	.L10
	 ldd	[%i3+%g1], %g2
	call	__ajit_get_clock_time, 0
	 nop
	sethi	%hi(processor_ticks), %g1
	ldd	[%g1+%lo(processor_ticks)], %g2
	sethi	%hi(.LC2), %i0
	subcc	%g3, %i5, %i5
	or	%i0, %lo(.LC2), %i0
	subx	%g2, %i4, %i4
	addcc	%i5, %o1, %g3
	addx	%i4, %o0, %g2
	mov	%g3, %o1
	mov	%g2, %o0
	std	%o0, [%g1+%lo(processor_ticks)]
	call	cortos_printf, 0
	 restore
	.size	do_transfer_using_processor, .-do_transfer_using_processor
	.section	.rodata.str1.8
	.align 8
.LC3:
	.asciz	"clear_mem started.\n"
	.align 8
.LC4:
	.asciz	"clear_mem completed.\n"
	.section	".text"
	.align 4
	.global clear_mem
	.type	clear_mem, #function
	.proc	020
clear_mem:
	save	%sp, -96, %sp
	sethi	%hi(.LC3), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC3), %o0
	sethi	%hi(dmem_ptr), %g1
	sethi	%hi(pong_data), %g3
	ld	[%g1+%lo(dmem_ptr)], %g4
	or	%g3, %lo(pong_data), %g3
	mov	0, %g1
	sethi	%hi(8192), %g2
.L12:
	add	%g3, %g1, %i5
	st	%g0, [%i5]
	st	%g0, [%i5+4]
	add	%g4, %g1, %i5
	st	%g0, [%i5]
	add	%g1, 8, %g1
	cmp	%g1, %g2
	bne	.L12
	 st	%g0, [%i5+4]
	sethi	%hi(.LC4), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC4), %o0
	.size	clear_mem, .-clear_mem
	.section	.rodata.str1.8
	.align 8
.LC5:
	.asciz	"set_ping started.\n"
	.align 8
.LC6:
	.asciz	"set_ping completed.\n"
	.section	".text"
	.align 4
	.global set_ping
	.type	set_ping, #function
	.proc	020
set_ping:
	save	%sp, -96, %sp
	sethi	%hi(.LC5), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC5), %o0
	sethi	%hi(ping_data), %g1
	mov	0, %g2
	mov	0, %g3
	or	%g1, %lo(ping_data), %g1
.L18:
	std	%g2, [%g1]
.L19:
	addcc	%g3, 1, %i5
	add	%g1, 8, %g1
	addx	%g2, 0, %i4
	mov	%i5, %g3
	cmp	%i4, 0
	bne	.L18
	 mov	%i4, %g2
	cmp	%i5, 1024
	bne,a	.L19
	 std	%g2, [%g1]
	sethi	%hi(.LC6), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC6), %o0
	.size	set_ping, .-set_ping
	.section	.rodata.str1.8
	.align 8
.LC7:
	.asciz	"check_pong started.\n"
	.align 8
.LC8:
	.asciz	"Error: pong [%d]= %d, expected %d\n"
	.section	".text"
	.align 4
	.global check_pong
	.type	check_pong, #function
	.proc	020
check_pong:
	save	%sp, -96, %sp
	sethi	%hi(.LC7), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC7), %o0
	sethi	%hi(pong_data), %g1
	sethi	%hi(8192), %g4
	or	%g1, %lo(pong_data), %g1
	mov	0, %g2
	mov	0, %g3
	b	.L23
	 add	%g1, %g4, %g4
.L28:
	cmp	%i3, %g3
	bne	.L24
	 addcc	%g3, 1, %i5
	add	%g1, 8, %g1
	addx	%g2, 0, %i4
	mov	%i5, %g3
	cmp	%g1, %g4
	be	.L29
	 mov	%i4, %g2
.L23:
	ldd	[%g1], %i2
	cmp	%i2, %g2
	be	.L28
	 mov	%g3, %i1
.L24:
	sethi	%hi(.LC8), %i0
	mov	%i1, %i4
	call	cortos_printf, 0
	 restore %i0, %lo(.LC8), %o0
.L29:
	jmp	%i7+8
	 restore
	.size	check_pong, .-check_pong
	.section	.rodata.str1.8
	.align 8
.LC9:
	.asciz	"Info: thread %d command daemon enabled\n"
	.align 8
.LC10:
	.asciz	"ticks:  dma_load=%lld, dma_store=%lld, processor=%lld\n"
	.section	".text"
	.align 4
	.global main_00
	.type	main_00, #function
	.proc	020
main_00:
	save	%sp, -112, %sp
	sethi	%hi(16777216), %g2
	sethi	%hi(dmem_ptr), %g1
	sethi	%hi(hms), %i2
	sethi	%hi(.LC9), %i3
	st	%g2, [%g1+%lo(dmem_ptr)]
	mov	0, %i5
	or	%i2, %lo(hms), %i2
	or	%i3, %lo(.LC9), %i3
	mov	0, %o2
.L33:
	and	%i5, 0xff, %i4
	mov	%i2, %o0
	mov	%i4, %o3
	call	enableThreadCommandDaemon, 0
	 mov	0, %o1
	mov	%i5, %o1
	call	cortos_printf, 0
	 mov	%i3, %o0
	call	set_ping, 0
	 add	%i5, 1, %i5
	call	do_load_dma, 0
	 mov	%i4, %o0
	call	do_store_dma, 0
	 mov	%i4, %o0
	call	__ajit_flush_dcache__, 0
	 nop
	call	check_pong, 0
	 nop
	call	clear_mem, 0
	 nop
	cmp	%i5, 4
	bne	.L33
	 mov	0, %o2
	call	do_transfer_using_processor, 0
	 nop
	call	do_transfer_using_processor, 0
	 nop
	call	do_transfer_using_processor, 0
	 nop
	call	do_transfer_using_processor, 0
	 nop
	sethi	%hi(dma_load_ticks), %g1
	ldd	[%g1+%lo(dma_load_ticks)], %i2
	sethi	%hi(dma_store_ticks), %g1
	ldd	[%g1+%lo(dma_store_ticks)], %i4
	sethi	%hi(processor_ticks), %g1
	ldd	[%g1+%lo(processor_ticks)], %g2
	sethi	%hi(.LC10), %o0
	std	%g2, [%fp-8]
	st	%g3, [%sp+92]
	mov	%g2, %o5
	mov	%i2, %o1
	mov	%i3, %o2
	mov	%i4, %o3
	mov	%i5, %o4
	call	cortos_printf, 0
	 or	%o0, %lo(.LC10), %o0
	jmp	%i7+8
	 restore
	.size	main_00, .-main_00
	.global dmem_ptr
	.section	".bss"
	.align 4
	.type	dmem_ptr, #object
	.size	dmem_ptr, 4
dmem_ptr:
	.skip	4
	.common	pong_data,8192,8
	.common	ping_data,8192,8
	.global processor_ticks
	.align 8
	.type	processor_ticks, #object
	.size	processor_ticks, 8
processor_ticks:
	.skip	8
	.global dma_store_ticks
	.align 8
	.type	dma_store_ticks, #object
	.size	dma_store_ticks, 8
dma_store_ticks:
	.skip	8
	.global dma_load_ticks
	.align 8
	.type	dma_load_ticks, #object
	.size	dma_load_ticks, 8
dma_load_ticks:
	.skip	8
	.common	hms,2076,4
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
