	.file	"main.c"
	.section	".text"
	.align 4
	.global setup
	.type	setup, #function
	.proc	020
setup:
	save	%sp, -96, %sp
	mov	1, %o0
	mov	0, %o1
	call	__ajit_serial_configure_via_bypass__, 0
	 mov	0, %o2
	mov	0, %i0
	sethi	%hi(114688), %o0
	sethi	%hi(59999232), %o1
	or	%o0, 512, %o0
	call	__ajit_serial_set_baudrate_via_bypass__, 0
	 or	%o1, 768, %o1
	call	__ajit_serial_set_uart_reset_via_bypass__, 0
	 restore
	.size	setup, .-setup
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"==== MEMORY SCAN START ====\n"
	.align 8
.LC1:
	.asciz	"Range: 0x%lx to 0x%lx, %lu pages of %luKB\n"
	.align 8
.LC2:
	.asciz	"==== WRITE START ====\n"
	.align 8
.LC3:
	.asciz	"addr is 0x%lx"
	.align 8
.LC4:
	.asciz	"count is 100"
	.align 8
.LC5:
	.asciz	"==== WRITE DONE: %lu pages written ====\n"
	.align 8
.LC6:
	.asciz	"==== READ BACK START ====\n"
	.align 8
.LC7:
	.asciz	"MISMATCH at 0x%lx \342\200\224 expected %u, got %u\n"
	.align 8
.LC8:
	.asciz	"==== READ BACK DONE: all %lu pages OK ====\n"
	.align 8
.LC9:
	.asciz	"==== READ BACK DONE: %lu mismatches out of %lu pages ====\n"
	.align 8
.LC10:
	.asciz	"==== MEMORY SCAN DONE ====\n"
	.section	".text"
	.align 4
	.global main_00
	.type	main_00, #function
	.proc	04
main_00:
	save	%sp, -96, %sp
	sethi	%hi(.LC0), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC0), %o0
	sethi	%hi(1075838976), %o1
	sethi	%hi(-16777216), %o2
	mov	64, %o4
	sethi	%hi(.LC1), %o0
	sethi	%hi(48128), %o3
	or	%o0, %lo(.LC1), %o0
	call	cortos_printf, 0
	 or	%o3, 736, %o3
	sethi	%hi(.LC2), %o0
	sethi	%hi(1879047168), %i1
	or	%o0, %lo(.LC2), %o0
	sethi	%hi(.LC3), %i0
	sethi	%hi(.LC4), %l0
	mov	1, %i4
	sethi	%hi(1075838976), %i5
	call	cortos_printf, 0
	 sethi	%hi(65536), %i2
	sethi	%hi(-16777216), %i3
	or	%i1, 1023, %i1
	or	%i0, %lo(.LC3), %i0
	b	.L14
	 or	%l0, %lo(.LC4), %l0
.L4:
	cmp	%i4, 100
	be	.L16
	 nop
.L14:
	add	%i4, -1, %g1
.L20:
	stb	%g1, [%i5]
	add	%i5, %i2, %i5
	cmp	%i5, %i3
	be	.L19
	 sethi	%hi(.LC5), %o0
	cmp	%i5, %i1
.L21:
	bleu	.L4
	 add	%i4, 1, %i4
	mov	%i5, %o1
	call	cortos_printf, 0
	 mov	%i0, %o0
	cmp	%i4, 100
	bne	.L20
	 add	%i4, -1, %g1
.L16:
	call	cortos_printf, 0
	 mov	%l0, %o0
	add	%i4, -1, %g1
	stb	%g1, [%i5]
	add	%i5, %i2, %i5
	cmp	%i5, %i3
	bne	.L21
	 cmp	%i5, %i1
	sethi	%hi(.LC5), %o0
.L19:
	sethi	%hi(48128), %o1
	or	%o0, %lo(.LC5), %o0
	call	cortos_printf, 0
	 or	%o1, 736, %o1
	sethi	%hi(.LC6), %o0
	sethi	%hi(.LC7), %i0
	or	%o0, %lo(.LC6), %o0
	mov	0, %i3
	mov	0, %i4
	call	cortos_printf, 0
	 sethi	%hi(1075838976), %i5
	sethi	%hi(65536), %i1
	sethi	%hi(-16777216), %i2
	or	%i0, %lo(.LC7), %i0
.L8:
	ldub	[%i5], %o3
	and	%i4, 0xff, %g1
	cmp	%o3, %g1
	be	.L7
	 mov	%i5, %o1
	mov	%g1, %o2
	mov	%i0, %o0
	call	cortos_printf, 0
	 add	%i3, 1, %i3
.L7:
	add	%i5, %i1, %i5
	cmp	%i5, %i2
	bne	.L8
	 add	%i4, 1, %i4
	cmp	%i3, 0
	be	.L18
	 sethi	%hi(48128), %o2
	mov	%i3, %o1
	sethi	%hi(.LC9), %o0
	or	%o0, %lo(.LC9), %o0
	call	cortos_printf, 0
	 or	%o2, 736, %o2
	mov	0, %i0
	sethi	%hi(.LC10), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC10), %o0
	jmp	%i7+8
	 restore
.L18:
	sethi	%hi(.LC8), %o0
	sethi	%hi(48128), %o1
	or	%o0, %lo(.LC8), %o0
	call	cortos_printf, 0
	 or	%o1, 736, %o1
	mov	0, %i0
	sethi	%hi(.LC10), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC10), %o0
	jmp	%i7+8
	 restore
	.size	main_00, .-main_00
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
