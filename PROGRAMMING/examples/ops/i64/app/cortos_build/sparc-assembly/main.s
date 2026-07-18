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
	.asciz	"Error: %lld * %lld =  %lld, expected %lld\n"
	.align 8
.LC5:
	.asciz	"Error: %lld + %lld =  %lld, expected %lld\n"
	.align 8
.LC6:
	.asciz	"Error: %lld - %lld =  %lld, expected %lld\n"
	.global __divdi3
	.align 8
.LC7:
	.asciz	"Error: %lld / %lld =  %lld, expected %lld\n"
	.align 8
.LC8:
	.asciz	"Error: %lld << %lld =  %lld, expected %lld\n"
	.align 8
.LC9:
	.asciz	"Error: %lld >> %lld =  %lld, expected %lld\n"
	.section	".text"
	.align 4
	.global check_ops
	.type	check_ops, #function
	.proc	04
check_ops:
	save	%sp, -136, %sp
	sethi	%hi(hms), %i4
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	call	set_args, 0
	 or	%i4, %lo(hms), %i5
	mov	%i5, %o0
.L85:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	call	runEngineThread, 0
	 mov	0, %o4
	cmp	%o0, 0
	bne	.L85
	 mov	%i5, %o0
.L86:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	add	%fp, -16, %o4
	call	checkIfThreadHasCompleted, 0
	 add	%fp, -12, %o5
	cmp	%o0, 0
	bne,a	.L86
	 mov	%i5, %o0
	sethi	%hi(print_status), %i5
	ld	[%i5+%lo(print_status)], %g1
	cmp	%g1, 0
	bne	.L82
	 ld	[%fp-12], %o1
	st	%g0, [%i5+%lo(print_status)]
.L84:
	or	%i4, %lo(hms), %i5
	mov	%i5, %o0
.L87:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	3, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L87
	 mov	%i5, %o0
	smul	%i0, %i3, %g4
	smul	%i2, %i1, %g1
	add	%g4, %g1, %g1
	umul	%i1, %i3, %g3
	rd	%y, %g2
	ld	[%fp-8], %o5
	add	%g1, %g2, %g2
	cmp	%g2, %o5
	bne	.L55
	 ld	[%fp-4], %g1
	cmp	%g3, %g1
	bne,a	.L88
	 std	%g2, [%fp-24]
	mov	%i5, %o0
.L89:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	4, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L89
	 mov	%i5, %o0
	addcc	%i1, %i3, %g3
	ld	[%fp-8], %o5
	addx	%i0, %i2, %g2
	cmp	%g2, %o5
	bne	.L56
	 ld	[%fp-4], %g1
	cmp	%g3, %g1
	bne,a	.L90
	 std	%g2, [%fp-24]
	mov	%i5, %o0
.L91:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	5, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L91
	 mov	%i5, %o0
	subcc	%i1, %i3, %g3
	ld	[%fp-8], %o5
	subx	%i0, %i2, %g2
	cmp	%g2, %o5
	bne	.L57
	 ld	[%fp-4], %g1
	cmp	%g3, %g1
	bne	.L57
	 orcc	%i2, %i3, %g0
	bne	.L92
	 mov	%i5, %o0
	or	%i4, %lo(hms), %i5
.L95:
	mov	%i5, %o0
.L93:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	7, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L93
	 mov	%i5, %o0
	andcc	%i3, 32, %l0
	be	.L47
	 mov	%i3, %i5
	sra	%i0, %i3, %g1
	sra	%i0, 31, %g3
.L48:
	ld	[%fp-8], %o5
	cmp	%g3, %o5
	bne	.L59
	 ld	[%fp-4], %g2
	cmp	%g1, %g2
	bne	.L59
	 or	%i4, %lo(hms), %i4
	mov	%i4, %o0
.L94:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	8, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L94
	 mov	%i4, %o0
	cmp	%l0, 0
	be,a	.L51
	 xnor	%g0, %i5, %g2
	sll	%i1, %i5, %g1
	mov	0, %i5
.L52:
	ld	[%fp-8], %o5
	cmp	%g1, %o5
	be	.L83
	 ld	[%fp-4], %g2
	mov	%i0, %o1
.L96:
	st	%g1, [%sp+96]
	st	%i5, [%sp+100]
	st	%o5, [%fp-24]
	st	%g2, [%fp-20]
	st	%g2, [%sp+92]
	mov	%i1, %o2
	mov	%i2, %o3
	mov	%i3, %o4
	sethi	%hi(.LC9), %o0
	mov	1, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC9), %o0
	jmp	%i7+8
	 restore
.L82:
	sethi	%hi(.LC3), %o0
	ld	[%fp-16], %o2
	call	cortos_printf, 0
	 or	%o0, %lo(.LC3), %o0
	b	.L84
	 st	%g0, [%i5+%lo(print_status)]
.L55:
	std	%g2, [%fp-24]
.L88:
	ld	[%fp-24], %g2
	st	%g2, [%sp+96]
	ld	[%fp-20], %g2
	mov	%i0, %o1
	st	%g1, [%sp+92]
	st	%g2, [%sp+100]
	st	%o5, [%fp-24]
	st	%g1, [%fp-20]
	mov	%i1, %o2
	mov	%i2, %o3
	mov	%i3, %o4
	sethi	%hi(.LC4), %o0
	mov	1, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC4), %o0
	jmp	%i7+8
	 restore
.L56:
	std	%g2, [%fp-24]
.L90:
	ld	[%fp-24], %g2
	st	%g2, [%sp+96]
	ld	[%fp-20], %g2
	mov	%i0, %o1
	st	%g1, [%sp+92]
	st	%g2, [%sp+100]
	st	%o5, [%fp-24]
	st	%g1, [%fp-20]
	mov	%i1, %o2
	mov	%i2, %o3
	mov	%i3, %o4
	sethi	%hi(.LC5), %o0
	mov	1, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC5), %o0
	jmp	%i7+8
	 restore
.L65:
.L92:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	6, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne	.L65
	 mov	%i5, %o0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	__divdi3, 0
	 mov	%i3, %o3
	ld	[%fp-8], %o5
	cmp	%o0, %o5
	bne	.L58
	 ld	[%fp-4], %g1
	cmp	%o1, %g1
	bne	.L58
	 cmp	%i2, 0
	bge	.L95
	 or	%i4, %lo(hms), %i5
.L53:
	jmp	%i7+8
	 restore %g0, 0, %o0
.L57:
	std	%g2, [%fp-24]
	ld	[%fp-24], %g2
	st	%g2, [%sp+96]
	ld	[%fp-20], %g2
	mov	%i0, %o1
	st	%g1, [%sp+92]
	st	%g2, [%sp+100]
	st	%o5, [%fp-24]
	st	%g1, [%fp-20]
	mov	%i1, %o2
	mov	%i2, %o3
	mov	%i3, %o4
	sethi	%hi(.LC6), %o0
	mov	1, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC6), %o0
	jmp	%i7+8
	 restore
.L59:
	mov	%i0, %o1
	st	%g3, [%sp+96]
	st	%g1, [%sp+100]
	st	%o5, [%fp-24]
	st	%g2, [%fp-20]
	st	%g2, [%sp+92]
	mov	%i1, %o2
	mov	%i2, %o3
	mov	%i3, %o4
	sethi	%hi(.LC8), %o0
	mov	1, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC8), %o0
	jmp	%i7+8
	 restore
.L47:
	sll	%i0, 1, %g3
	xnor	%g0, %i3, %g2
	srl	%i1, %i3, %g1
	sll	%g3, %g2, %g2
	sra	%i0, %i3, %g3
	b	.L48
	 or	%g2, %g1, %g1
.L51:
	sll	%i0, %i5, %g1
	srl	%i1, 1, %g3
	sll	%i1, %i5, %i5
	srl	%g3, %g2, %g2
	b	.L52
	 or	%g2, %g1, %g1
.L58:
	st	%o0, [%sp+96]
	st	%o1, [%sp+100]
	st	%o5, [%fp-24]
	mov	%i0, %o1
	st	%g1, [%fp-20]
	st	%g1, [%sp+92]
	mov	%i1, %o2
	mov	%i2, %o3
	mov	%i3, %o4
	sethi	%hi(.LC7), %o0
	mov	1, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC7), %o0
	jmp	%i7+8
	 restore
.L83:
	cmp	%i5, %g2
	bne	.L96
	 mov	%i0, %o1
	b,a	.L53
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
	or	%o0, %lo(.LC16), %o0
	mov	30, %l4
	mov	0, %i2
	call	cortos_printf, 0
	 mov	1, %i3
	mov	0, %l3
.L98:
	subcc	%g0, %i3, %i1
	mov	30, %l2
	mov	0, %i4
	mov	1, %i5
	b	.L101
	 subx	%g0, %i2, %i0
.L114:
	mov	%i1, %o1
.L116:
	mov	%i4, %o2
	call	check_ops, 0
	 mov	%i5, %o3
	subcc	%g0, %i5, %l1
.L115:
	mov	%i3, %o1
	subx	%g0, %i4, %l0
	mov	%l1, %o3
	mov	%l0, %o2
	call	check_ops, 0
	 mov	%i2, %o0
	mov	1, %l3
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%l0, %o2
	call	check_ops, 0
	 mov	%l1, %o3
.L107:
	addcc	%i5, %i5, %g3
.L113:
	addx	%i4, %i4, %g2
	mov	%g3, %i5
	addcc	%l2, -1, %l2
	be	.L111
	 mov	%g2, %i4
.L101:
	mov	%i2, %o0
	mov	%i3, %o1
	mov	%i4, %o2
	call	check_ops, 0
	 mov	%i5, %o3
	cmp	%o0, 0
	bne	.L114
	 mov	%i0, %o0
	cmp	%l3, 0
	bne	.L116
	 mov	%i1, %o1
	mov	%i0, %o0
	mov	%i4, %o2
	call	check_ops, 0
	 mov	%i5, %o3
	cmp	%o0, 0
	bne	.L115
	 subcc	%g0, %i5, %l1
	mov	%i3, %o1
	subx	%g0, %i4, %l0
	mov	%l1, %o3
	mov	%l0, %o2
	call	check_ops, 0
	 mov	%i2, %o0
	mov	%i1, %o1
	cmp	%o0, 0
	mov	%l0, %o2
	mov	%i0, %o0
	bne	.L106
	 mov	%l1, %o3
	call	check_ops, 0
	 nop
	subcc	%g0, %o0, %g0
	b	.L107
	 addx	%g0, 0, %l3
.L111:
	addcc	%i3, %i3, %g3
	addx	%i2, %i2, %g2
	mov	%g3, %i3
	addcc	%l4, -1, %l4
	bne	.L98
	 mov	%g2, %i2
	sethi	%hi(.LC17), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC17), %o0
	cmp	%l3, 0
	be,a	.L112
	 sethi	%hi(.LC18), %i0
	sethi	%hi(.LC19), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC19), %o0
.L112:
	call	cortos_printf, 0
	 restore %i0, %lo(.LC18), %o0
.L106:
	call	check_ops, 0
	 mov	1, %l3
	b	.L113
	 addcc	%i5, %i5, %g3
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
