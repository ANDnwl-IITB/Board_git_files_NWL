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
	.asciz	"==== FULL 2GB VOLUME SCAN START ====\n"
	.align 8
.LC1:
	.asciz	"Range: 0x%lx to 0x%lx\n"
	.align 8
.LC2:
	.asciz	"==== WRITE START (Touching every word) ====\n"
	.align 8
.LC3:
	.asciz	"  Writing... Addr: 0x%lx\n"
	.align 8
.LC4:
	.asciz	"==== WRITE DONE: %lu words written ====\n"
	.align 8
.LC5:
	.asciz	"==== READ BACK START ====\n"
	.align 8
.LC6:
	.asciz	"MISMATCH at 0x%lx \342\200\224 expected 0x%lx, got 0x%lx\n"
	.align 8
.LC7:
	.asciz	"FATAL: Too many mismatches. Aborting.\n"
	.align 8
.LC8:
	.asciz	"  Verifying... Addr: 0x%lx\n"
	.align 8
.LC9:
	.asciz	"==== SUCCESS: All %lu words OK ====\n"
	.align 8
.LC10:
	.asciz	"==== FAIL: %lu mismatches in %lu words ====\n"
	.align 8
.LC11:
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
	sethi	%hi(-1073741824), %o2
	sethi	%hi(.LC1), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC1), %o0
	sethi	%hi(.LC2), %o0
	sethi	%hi(1047552), %i4
	or	%o0, %lo(.LC2), %o0
	sethi	%hi(.LC3), %i2
	sethi	%hi(1075838976), %i5
	call	cortos_printf, 0
	 sethi	%hi(-1073741824), %i3
	or	%i4, 1023, %i4
	b	.L4
	 or	%i2, %lo(.LC3), %i2
.L3:
	cmp	%i5, %i3
	be	.L16
	 sethi	%hi(536346624), %o1
.L4:
	st	%i5, [%i5]
	andcc	%i5, %i4, %g0
	bne,a	.L3
	 add	%i5, 4, %i5
	mov	%i5, %o1
	call	cortos_printf, 0
	 mov	%i2, %o0
	add	%i5, 4, %i5
	cmp	%i5, %i3
	bne	.L4
	 sethi	%hi(536346624), %o1
.L16:
	sethi	%hi(.LC4), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC4), %o0
	sethi	%hi(.LC5), %o0
	sethi	%hi(.LC6), %i2
	or	%o0, %lo(.LC5), %o0
	sethi	%hi(1047552), %i1
	sethi	%hi(.LC8), %l0
	mov	0, %i4
	mov	0, %i3
	call	cortos_printf, 0
	 sethi	%hi(1075838976), %i5
	sethi	%hi(-1073741824), %i0
	or	%i2, %lo(.LC6), %i2
	or	%i1, 1023, %i1
	b	.L8
	 or	%l0, %lo(.LC8), %l0
.L7:
	add	%i5, 4, %i5
	cmp	%i5, %i0
	be	.L17
	 cmp	%i3, 0
.L8:
	ld	[%i5], %g1
	mov	%i5, %o1
	mov	%i5, %o2
	cmp	%g1, %i5
	be	.L5
	 mov	%i2, %o0
	ld	[%i5], %o3
	call	cortos_printf, 0
	 add	%i3, 1, %i3
	cmp	%i3, 20
	bgu	.L15
	 sethi	%hi(.LC7), %o0
.L5:
	andcc	%i5, %i1, %g0
	bne	.L7
	 add	%i4, 1, %i4
	mov	%i5, %o1
	call	cortos_printf, 0
	 mov	%l0, %o0
	add	%i5, 4, %i5
	cmp	%i5, %i0
	bne	.L8
	 cmp	%i3, 0
.L17:
	bne	.L6
	 mov	%i4, %o1
	sethi	%hi(.LC9), %o0
	sethi	%hi(.LC11), %i0
	or	%o0, %lo(.LC9), %o0
	call	cortos_printf, 0
	 or	%i0, %lo(.LC11), %i0
	call	cortos_printf, 0
	 restore
.L15:
	call	cortos_printf, 0
	 or	%o0, %lo(.LC7), %o0
.L6:
	mov	%i3, %o1
	sethi	%hi(.LC10), %o0
	mov	%i4, %o2
	or	%o0, %lo(.LC10), %o0
	call	cortos_printf, 0
	 sethi	%hi(.LC11), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC11), %o0
	.size	main_00, .-main_00
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
