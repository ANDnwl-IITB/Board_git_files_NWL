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
	sethi	%hi(hms), %i4
	sra	%i0, 31, %i5
	or	%i4, %lo(hms), %i4
	st	%i5, [%fp-8]
.L26:
	st	%i0, [%fp-4]
	st	%i0, [%sp+92]
	mov	%i5, %o5
	mov	%i4, %o0
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	call	writeThreadDataRegister, 0
	 mov	1, %o4
	cmp	%o0, 0
	bne,a	.L26
	 st	%i5, [%fp-8]
	sra	%i1, 31, %i5
	st	%i5, [%fp-8]
.L27:
	st	%i1, [%fp-4]
	st	%i1, [%sp+92]
	mov	%i5, %o5
	mov	%i4, %o0
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	call	writeThreadDataRegister, 0
	 mov	2, %o4
	cmp	%o0, 0
	bne,a	.L27
	 st	%i5, [%fp-8]
	jmp	%i7+8
	 restore
	.size	set_args, .-set_args
	.section	.rodata.str1.8
	.align 8
.LC3:
	.asciz	"Error: %d * %d =  %d, expected %d\n"
	.align 8
.LC4:
	.asciz	"Error: %d + %d =  %d, expected %d\n"
	.align 8
.LC5:
	.asciz	"Error: %d - %d =  %d, expected %d\n"
	.align 8
.LC6:
	.asciz	"Error: %ld / %d =  %d, expected %d\n"
	.align 8
.LC7:
	.asciz	"Error: %d << %d =  %d, expected %d\n"
	.align 8
.LC8:
	.asciz	"Error: %d >> %d =  %d, expected %d\n"
	.section	".text"
	.align 4
	.global check_ops
	.type	check_ops, #function
	.proc	04
check_ops:
	save	%sp, -112, %sp
	sethi	%hi(hms), %i4
	mov	%i0, %o0
	mov	%i1, %o1
	call	set_args, 0
	 or	%i4, %lo(hms), %i5
	mov	%i5, %o0
.L60:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	call	runEngineThread, 0
	 mov	0, %o4
	cmp	%o0, 0
	bne	.L60
	 mov	%i5, %o0
.L61:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	add	%fp, -16, %o4
	call	completeEngineThread, 0
	 add	%fp, -12, %o5
	cmp	%o0, 0
	bne	.L61
	 mov	%i5, %o0
.L62:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	3, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L62
	 mov	%i5, %o0
	ld	[%fp-4], %o3
	smul	%i0, %i1, %o4
	cmp	%o4, %o3
	bne	.L55
	 mov	%i0, %o1
	mov	%i5, %o0
.L63:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	4, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L63
	 mov	%i5, %o0
	ld	[%fp-4], %o3
	add	%i0, %i1, %o4
	cmp	%o4, %o3
	bne	.L56
	 mov	%i0, %o1
	mov	%i5, %o0
.L64:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	5, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L64
	 mov	%i5, %o0
	ld	[%fp-4], %o3
	sub	%i0, %i1, %o4
	cmp	%o4, %o3
	bne	.L57
	 cmp	%i1, 0
	bne	.L65
	 mov	%i5, %o0
	or	%i4, %lo(hms), %i4
.L68:
	mov	%i4, %o0
.L66:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	7, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L66
	 mov	%i4, %o0
	ld	[%fp-4], %o3
	sra	%i0, %i1, %o4
	cmp	%o4, %o3
	bne	.L58
	 mov	%i0, %o1
	mov	%i4, %o0
.L67:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	8, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L67
	 mov	%i4, %o0
	ld	[%fp-4], %o3
	sll	%i0, %i1, %o4
	cmp	%o4, %o3
	be	.L41
	 mov	%i0, %o1
	mov	%i1, %o2
	sethi	%hi(.LC8), %o0
	mov	1, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC8), %o0
	jmp	%i7+8
	 restore
.L44:
.L65:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	6, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L44
	 mov	%i5, %o0
	ld	[%fp-4], %o3
	sra	%i0, 31, %g1
	wr	%g1, 0, %y
	nop
	nop
	nop
	sdiv	%i0, %i1, %o4
	cmp	%o4, %o3
	bne	.L59
	 cmp	%i1, 31
	bleu	.L68
	 or	%i4, %lo(hms), %i4
.L41:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L56:
	mov	%i1, %o2
	sethi	%hi(.LC4), %o0
	mov	1, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC4), %o0
	jmp	%i7+8
	 restore
.L55:
	mov	%i1, %o2
	sethi	%hi(.LC3), %o0
	mov	1, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC3), %o0
	jmp	%i7+8
	 restore
.L57:
	mov	%i0, %o1
	mov	%i1, %o2
	sethi	%hi(.LC5), %o0
	mov	1, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC5), %o0
	jmp	%i7+8
	 restore
.L59:
	mov	%i0, %o1
	mov	%i1, %o2
	sethi	%hi(.LC6), %o0
	mov	1, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC6), %o0
	jmp	%i7+8
	 restore
.L58:
	mov	%i1, %o2
	sethi	%hi(.LC7), %o0
	mov	1, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC7), %o0
	jmp	%i7+8
	 restore
	.size	check_ops, .-check_ops
	.section	.rodata.str1.8
	.align 8
.LC9:
	.asciz	"blob_info = 0x%x, 0x%x, 0x%x, 0x%x\n"
	.align 8
.LC10:
	.asciz	"waiting on thread-init.. (%d)\n"
	.align 8
.LC11:
	.asciz	"thread-init (%d) completed.\n"
	.align 8
.LC12:
	.asciz	"enabling thread(%d)..\n"
	.align 8
.LC13:
	.asciz	"thread(%d) enabled.\n"
	.align 8
.LC14:
	.asciz	"loading imem (%d bytes from 0x%x)\n"
	.align 8
.LC15:
	.asciz	"finished loading imem (%d bytes from 0x%x)\n"
	.align 8
.LC16:
	.asciz	"done!\n"
	.align 8
.LC17:
	.asciz	"SUCCESS!\n"
	.align 8
.LC18:
	.asciz	"FAILURE...\n"
	.section	".text"
	.align 4
	.global main_00
	.type	main_00, #function
	.proc	020
main_00:
	save	%sp, -96, %sp
	sethi	%hi(blob_info), %i5
	call	get_blob_info, 0
	 or	%i5, %lo(blob_info), %o0
	or	%i5, %lo(blob_info), %i4
	ld	[%i5+%lo(blob_info)], %o1
	sethi	%hi(.LC9), %o0
	ld	[%i4+4], %o2
	or	%o0, %lo(.LC9), %o0
	ld	[%i4+8], %o3
	ld	[%i4+12], %o4
	call	cortos_printf, 0
	 nop
	mov	0, %o1
	sethi	%hi(.LC10), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC10), %o0
	call	wait_on_thread_init, 0
	 mov	0, %o0
	mov	0, %o1
	sethi	%hi(.LC11), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC11), %o0
	mov	0, %o1
	sethi	%hi(.LC12), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC12), %o0
	mov	0, %o3
	mov	0, %o2
	mov	0, %o1
	sethi	%hi(hms), %o0
	call	enableThreadCommandDaemon, 0
	 or	%o0, %lo(hms), %o0
	mov	0, %o1
	sethi	%hi(.LC13), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC13), %o0
	ld	[%i5+%lo(blob_info)], %o1
	sethi	%hi(.LC14), %o0
	ld	[%i4+4], %o2
	call	cortos_printf, 0
	 or	%o0, %lo(.LC14), %o0
	ld	[%i5+%lo(blob_info)], %o0
	ld	[%i4+4], %o1
	call	load_imem, 0
	 srl	%o0, 2, %o0
	ld	[%i5+%lo(blob_info)], %o1
	sethi	%hi(.LC15), %o0
	ld	[%i4+4], %o2
	or	%o0, %lo(.LC15), %o0
	mov	30, %l3
	mov	0, %i2
	call	cortos_printf, 0
	 mov	1, %i3
	mov	0, %i0
.L70:
	mov	%i3, %l1
	mov	30, %i1
	mov	0, %i4
	mov	1, %i5
	b	.L73
	 sub	%g0, %i3, %l0
.L71:
.L86:
	call	check_ops, 0
	 mov	%l2, %o1
	sub	%g0, %i5, %l2
.L87:
	mov	%l1, %o0
	call	check_ops, 0
	 mov	%l2, %o1
	mov	1, %i0
	mov	%l0, %o0
	call	check_ops, 0
	 mov	%l2, %o1
.L79:
	addcc	%i5, %i5, %g3
.L85:
	addx	%i4, %i4, %g2
	mov	%g3, %i5
	addcc	%i1, -1, %i1
	be	.L83
	 mov	%g2, %i4
.L73:
	mov	%l1, %o0
	mov	%i5, %o1
	call	check_ops, 0
	 mov	%i5, %l2
	cmp	%o0, 0
	bne	.L86
	 mov	%l0, %o0
	cmp	%i0, 0
	bne	.L71
	 nop
	call	check_ops, 0
	 mov	%i5, %o1
	cmp	%o0, 0
	bne,a	.L87
	 sub	%g0, %i5, %l2
	sub	%g0, %i5, %i0
	mov	%l1, %o0
	call	check_ops, 0
	 mov	%i0, %o1
	mov	%i0, %o1
	cmp	%o0, 0
	bne	.L78
	 mov	%l0, %o0
	call	check_ops, 0
	 nop
	subcc	%g0, %o0, %g0
	b	.L79
	 addx	%g0, 0, %i0
.L83:
	addcc	%i3, %i3, %g3
	addx	%i2, %i2, %g2
	mov	%g3, %i3
	addcc	%l3, -1, %l3
	bne	.L70
	 mov	%g2, %i2
	sethi	%hi(.LC16), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC16), %o0
	cmp	%i0, 0
	be,a	.L84
	 sethi	%hi(.LC17), %i0
	sethi	%hi(.LC18), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC18), %o0
.L84:
	call	cortos_printf, 0
	 restore %i0, %lo(.LC17), %o0
.L78:
	call	check_ops, 0
	 mov	1, %i0
	b	.L85
	 addcc	%i5, %i5, %g3
	.size	main_00, .-main_00
	.common	blob_info,16,4
	.common	hms,2076,4
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
