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
	.asciz	"load_imem: number_of_words = %d, base_addr = 0x%x\n"
	.align 8
.LC2:
	.asciz	"Error: load_imem [%d] mismatch  0x%x != 0x%x\n"
	.section	".text"
	.align 4
	.global load_imem
	.type	load_imem, #function
	.proc	020
load_imem:
	save	%sp, -104, %sp
	sethi	%hi(.LC1), %o0
	mov	%i0, %o1
	or	%o0, %lo(.LC1), %o0
	call	cortos_printf, 0
	 mov	%i1, %o2
	cmp	%i0, 0
	be	.L20
	 mov	0, %i5
	sethi	%hi(hms), %i4
	sethi	%hi(.LC2), %i2
	or	%i4, %lo(hms), %i4
	or	%i2, %lo(.LC2), %i2
.L14:
	ld	[%i1], %i3
	mov	%i4, %o0
.L18:
	mov	0, %o1
	mov	0, %o2
	mov	%i5, %o3
	call	writeInstructionToEngineInstrMemory, 0
	 mov	%i3, %o4
	cmp	%o0, 0
	bne	.L18
	 mov	%i4, %o0
	st	%g0, [%fp-4]
.L19:
	mov	0, %o1
	mov	0, %o2
	mov	%i5, %o3
	call	readInstructionFromEngineInstrMemory, 0
	 add	%fp, -4, %o4
	cmp	%o0, 0
	bne	.L19
	 mov	%i4, %o0
	ld	[%fp-4], %o3
	cmp	%i3, %o3
	be	.L11
	 mov	%i2, %o0
	mov	%i5, %o1
	call	cortos_printf, 0
	 mov	%i3, %o2
.L11:
	add	%i5, 1, %i5
	cmp	%i5, %i0
	bne	.L14
	 add	%i1, 4, %i1
.L20:
	jmp	%i7+8
	 restore
	.size	load_imem, .-load_imem
	.align 4
	.global set_args
	.type	set_args, #function
	.proc	020
set_args:
	save	%sp, -112, %sp
	sethi	%hi(hms), %i5
	or	%i5, %lo(hms), %i5
	std	%i0, [%fp-8]
.L27:
	st	%i1, [%sp+92]
	mov	%i0, %o5
	mov	%i5, %o0
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	call	writeThreadDataRegister, 0
	 mov	1, %o4
	cmp	%o0, 0
	bne,a	.L27
	 std	%i0, [%fp-8]
	std	%i2, [%fp-8]
.L28:
	st	%i3, [%sp+92]
	mov	%i2, %o5
	mov	%i5, %o0
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	call	writeThreadDataRegister, 0
	 mov	2, %o4
	cmp	%o0, 0
	bne,a	.L28
	 std	%i2, [%fp-8]
	jmp	%i7+8
	 restore
	.size	set_args, .-set_args
	.section	.rodata.str1.8
	.align 8
.LC3:
	.asciz	"thread completed (pc=0x%x, exceptions=0x%x)\n"
	.align 8
.LC4:
	.asciz	"Error: %F * %F =  %F, expected %F\n"
	.align 8
.LC5:
	.asciz	"Error: %F + %F =  %F, expected %F\n"
	.align 8
.LC6:
	.asciz	"Error: %F - %F =  %F, expected %F\n"
	.align 8
.LC8:
	.asciz	"Error: %F / %F =  %F, expected %F\n"
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC7:
	.long	0
	.long	0
	.section	".text"
	.align 4
	.global check_ops
	.type	check_ops, #function
	.proc	04
check_ops:
	save	%sp, -168, %sp
	std	%i2, [%fp-32]
	mov	%i3, %o3
	std	%i0, [%fp-40]
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	set_args, 0
	 sethi	%hi(hms), %i3
	or	%i3, %lo(hms), %i5
	mov	%i5, %o0
.L67:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	call	runEngineThreadAndPoll, 0
	 mov	0, %o4
	cmp	%o0, 0
	bne	.L67
	 mov	%i5, %o0
.L68:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	add	%fp, -16, %o4
	call	pollAndCompleteEngineThread, 0
	 add	%fp, -12, %o5
	cmp	%o0, 0
	bne,a	.L68
	 mov	%i5, %o0
	sethi	%hi(print_status), %i5
	ld	[%i5+%lo(print_status)], %g1
	cmp	%g1, 0
	bne	.L64
	 ld	[%fp-12], %o1
	st	%g0, [%i5+%lo(print_status)]
.L66:
	or	%i3, %lo(hms), %i3
	mov	%i3, %o0
.L69:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	3, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L69
	 mov	%i3, %o0
	ldd	[%fp-40], %f8
	ldd	[%fp-32], %f10
	fmuld	%f8, %f10, %f8
	std	%f8, [%fp-48]
	ldd	[%fp-8], %g2
	ldd	[%fp-48], %i4
	cmp	%i4, %g2
	bne	.L44
	 cmp	%i5, %g3
	bne,a	.L70
	 std	%i4, [%fp-24]
	mov	%i3, %o0
.L71:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	4, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L71
	 mov	%i3, %o0
	ldd	[%fp-40], %f12
	ldd	[%fp-32], %f8
	faddd	%f12, %f8, %f12
	std	%f12, [%fp-48]
	ldd	[%fp-8], %g2
	ldd	[%fp-48], %i4
	cmp	%i4, %g2
	bne	.L45
	 cmp	%i5, %g3
	bne,a	.L72
	 std	%i4, [%fp-24]
	mov	%i3, %o0
.L73:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	5, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L73
	 mov	%i3, %o0
	ldd	[%fp-40], %f10
	ldd	[%fp-32], %f12
	fsubd	%f10, %f12, %f10
	std	%f10, [%fp-48]
	ldd	[%fp-8], %g2
	ldd	[%fp-48], %i4
	cmp	%i4, %g2
	bne	.L46
	 cmp	%i5, %g3
	bne	.L46
	 sethi	%hi(.LC7), %g1
	ldd	[%fp-32], %f10
	ldd	[%g1+%lo(.LC7)], %f8
	fcmpd	%f10, %f8
	nop
	fbe	.L42
	 mov	%i3, %o0
.L74:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	6, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L74
	 mov	%i3, %o0
	ldd	[%fp-40], %f12
	ldd	[%fp-32], %f10
	fdivd	%f12, %f10, %f8
	st	%f8, [%fp-52]
	ldd	[%fp-8], %g2
	ld	[%fp-52], %g1
	cmp	%g1, %g2
	be,a	.L65
	 st	%f9, [%fp-52]
	std	%f8, [%fp-24]
.L75:
	ld	[%fp-20], %g1
	ld	[%fp-24], %g4
	st	%g1, [%sp+100]
	std	%g2, [%fp-24]
	sethi	%hi(.LC8), %o0
	ld	[%fp-20], %g1
	mov	%g2, %o5
	st	%g4, [%sp+96]
	st	%g1, [%sp+92]
	b	.L63
	 or	%o0, %lo(.LC8), %o0
.L64:
	ld	[%fp-16], %o2
	sethi	%hi(.LC3), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC3), %o0
	call	parseEngineThreadExceptions, 0
	 ld	[%fp-16], %o0
	b	.L66
	 st	%g0, [%i5+%lo(print_status)]
.L44:
	std	%i4, [%fp-24]
.L70:
	ld	[%fp-20], %g1
	ld	[%fp-24], %g4
	st	%g1, [%sp+100]
	std	%g2, [%fp-24]
	sethi	%hi(.LC4), %o0
	ld	[%fp-20], %g1
	mov	%g2, %o5
	st	%g4, [%sp+96]
	st	%g1, [%sp+92]
	or	%o0, %lo(.LC4), %o0
.L63:
	ld	[%fp-40], %o1
	ld	[%fp-36], %o2
	ld	[%fp-32], %o3
	ld	[%fp-28], %o4
	call	cortos_printf, 0
	 mov	1, %i0
	jmp	%i7+8
	 restore
.L45:
	std	%i4, [%fp-24]
.L72:
	ld	[%fp-20], %g1
	ld	[%fp-24], %g4
	st	%g1, [%sp+100]
	std	%g2, [%fp-24]
	ld	[%fp-20], %g1
	mov	%g2, %o5
	st	%g4, [%sp+96]
	st	%g1, [%sp+92]
	ld	[%fp-40], %o1
	ld	[%fp-36], %o2
	ld	[%fp-32], %o3
	ld	[%fp-28], %o4
	sethi	%hi(.LC5), %o0
	mov	1, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC5), %o0
	jmp	%i7+8
	 restore
.L46:
	std	%i4, [%fp-24]
	ld	[%fp-20], %g1
	ld	[%fp-24], %g4
	st	%g1, [%sp+100]
	std	%g2, [%fp-24]
	ld	[%fp-20], %g1
	mov	%g2, %o5
	st	%g4, [%sp+96]
	st	%g1, [%sp+92]
	ld	[%fp-40], %o1
	ld	[%fp-36], %o2
	ld	[%fp-32], %o3
	ld	[%fp-28], %o4
	sethi	%hi(.LC6), %o0
	mov	1, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC6), %o0
	jmp	%i7+8
	 restore
.L65:
	ld	[%fp-52], %g1
	cmp	%g1, %g3
	bne,a	.L75
	 std	%f8, [%fp-24]
.L42:
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	check_ops, .-check_ops
	.section	.rodata.str1.8
	.align 8
.LC10:
	.asciz	"blob_info = 0x%x, 0x%x, 0x%x, 0x%x\n"
	.align 8
.LC11:
	.asciz	"waiting on thread-init.. (%d)\n"
	.align 8
.LC12:
	.asciz	"thread-init (%d) completed.\n"
	.align 8
.LC13:
	.asciz	"enabling thread(%d)..\n"
	.align 8
.LC14:
	.asciz	"thread(%d) enabled.\n"
	.align 8
.LC15:
	.asciz	"loading imem (%d bytes from 0x%x)\n"
	.align 8
.LC16:
	.asciz	"finished loading imem (%d bytes from 0x%x)\n"
	.align 8
.LC17:
	.asciz	"done!\n"
	.align 8
.LC18:
	.asciz	"SUCCESS!\n"
	.align 8
.LC19:
	.asciz	"FAILURE...\n"
	.section	.rodata.cst8
	.align 8
.LC9:
	.long	1072693248
	.long	0
	.section	".text"
	.align 4
	.global main_00
	.type	main_00, #function
	.proc	020
main_00:
	save	%sp, -136, %sp
	sethi	%hi(blob_info), %i5
	call	get_blob_info, 0
	 or	%i5, %lo(blob_info), %o0
	or	%i5, %lo(blob_info), %i4
	ld	[%i5+%lo(blob_info)], %o1
	sethi	%hi(.LC10), %o0
	ld	[%i4+4], %o2
	or	%o0, %lo(.LC10), %o0
	ld	[%i4+8], %o3
	ld	[%i4+12], %o4
	call	cortos_printf, 0
	 nop
	mov	0, %o1
	sethi	%hi(.LC11), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC11), %o0
	call	wait_on_thread_init, 0
	 mov	0, %o0
	mov	0, %o1
	sethi	%hi(.LC12), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC12), %o0
	mov	0, %o1
	sethi	%hi(.LC13), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC13), %o0
	mov	0, %o3
	mov	0, %o2
	mov	0, %o1
	sethi	%hi(hms), %o0
	call	enableThreadCommandDaemon, 0
	 or	%o0, %lo(hms), %o0
	mov	0, %o1
	sethi	%hi(.LC14), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC14), %o0
	ld	[%i5+%lo(blob_info)], %o1
	sethi	%hi(.LC15), %o0
	ld	[%i4+4], %o2
	call	cortos_printf, 0
	 or	%o0, %lo(.LC15), %o0
	ld	[%i5+%lo(blob_info)], %o0
	ld	[%i4+4], %o1
	call	load_imem, 0
	 srl	%o0, 2, %o0
	ld	[%i5+%lo(blob_info)], %o1
	sethi	%hi(.LC16), %o0
	ld	[%i4+4], %o2
	call	cortos_printf, 0
	 or	%o0, %lo(.LC16), %o0
	sethi	%hi(.LC9), %g1
	mov	10, %i3
	ldd	[%g1+%lo(.LC9)], %f8
	mov	0, %i4
	std	%f8, [%fp-8]
.L77:
	sethi	%hi(.LC9), %g1
	ldd	[%fp-8], %f10
	mov	10, %i5
	fnegs	%f10, %f10
	ldd	[%g1+%lo(.LC9)], %f8
	std	%f10, [%fp-16]
.L80:
	std	%f8, [%fp-40]
	std	%f8, [%fp-24]
	ldd	[%fp-8], %o0
	call	check_ops, 0
	 ldd	[%fp-40], %o2
	cmp	%o0, 0
	be	.L90
	 ldd	[%fp-24], %f8
	std	%f8, [%fp-40]
.L92:
	std	%f8, [%fp-24]
	ldd	[%fp-16], %o0
	call	check_ops, 0
	 ldd	[%fp-40], %o2
	ldd	[%fp-24], %f8
.L83:
	fnegs	%f8, %f10
	fmovs	%f9, %f11
	std	%f8, [%fp-24]
	std	%f10, [%fp-40]
	ldd	[%fp-8], %o0
	ldd	[%fp-40], %o2
	call	check_ops, 0
	 std	%f10, [%fp-32]
	ldd	[%fp-32], %f10
	ldd	[%fp-16], %o0
	std	%f10, [%fp-40]
	call	check_ops, 0
	 ldd	[%fp-40], %o2
	mov	1, %i4
	ldd	[%fp-24], %f8
.L86:
	addcc	%i5, -1, %i5
	bne	.L80
	 faddd	%f8, %f8, %f8
	ldd	[%fp-8], %f10
	fmovs	%f10, %f8
	fmovs	%f11, %f9
	faddd	%f10, %f8, %f10
	addcc	%i3, -1, %i3
	bne	.L77
	 std	%f10, [%fp-8]
	sethi	%hi(.LC17), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC17), %o0
	cmp	%i4, 0
	be,a	.L91
	 sethi	%hi(.LC18), %i0
	sethi	%hi(.LC19), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC19), %o0
.L90:
	cmp	%i4, 0
	bne	.L92
	 std	%f8, [%fp-40]
	std	%f8, [%fp-24]
	ldd	[%fp-16], %o0
	call	check_ops, 0
	 ldd	[%fp-40], %o2
	cmp	%o0, 0
	bne	.L83
	 ldd	[%fp-24], %f8
	fnegs	%f8, %f10
	fmovs	%f9, %f11
	ldd	[%fp-8], %o0
	std	%f10, [%fp-40]
	std	%f8, [%fp-24]
	ldd	[%fp-40], %o2
	call	check_ops, 0
	 std	%f10, [%fp-32]
	ldd	[%fp-32], %f10
	std	%f10, [%fp-40]
	cmp	%o0, 0
	ldd	[%fp-24], %f8
	ldd	[%fp-16], %o0
	bne	.L85
	 ldd	[%fp-40], %o2
	call	check_ops, 0
	 nop
	ldd	[%fp-24], %f8
	subcc	%g0, %o0, %g0
	b	.L86
	 addx	%g0, 0, %i4
.L91:
	call	cortos_printf, 0
	 restore %i0, %lo(.LC18), %o0
.L85:
	call	check_ops, 0
	 std	%f8, [%fp-24]
	mov	1, %i4
	b	.L86
	 ldd	[%fp-24], %f8
	.size	main_00, .-main_00
	.global print_status
	.section	".data"
	.align 4
	.type	print_status, #object
	.size	print_status, 4
print_status:
	.long	1
	.common	blob_info,16,4
	.common	hms,2076,4
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
