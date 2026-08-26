	.file	"main.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"Started\n"
	.align 8
.LC1:
	.asciz	"for freeQ: Allocated Buffer[%d] VA = 0x%08lx\n"
	.align 8
.LC2:
	.asciz	"control word: %016llx\n"
	.align 8
.LC3:
	.asciz	"for freeQ: Allocated Buffer[%d] PA = 0x%016llx\n"
	.align 8
.LC4:
	.asciz	"Warning: push to free queue not ok, retrying again.\n"
	.align 8
.LC5:
	.asciz	"Info: Total number of entries in free queue = %d\n"
	.align 8
.LC6:
	.asciz	"Reverse Translation Table is as follows:\n"
	.align 8
.LC7:
	.asciz	"Physical Address\t|\tVirtual Address\n"
	.align 8
.LC8:
	.asciz	"----------------------------------------\n"
	.align 8
.LC9:
	.asciz	"0x%016llx\t|\t0x%08lx\n"
	.align 8
.LC10:
	.asciz	"Control register = 0x%08lx\n"
	.align 8
.LC11:
	.asciz	"Configuration Done. NIC has started in Normal Mode\n"
	.align 8
.LC12:
	.asciz	"Error: Failed to find PA to VA translation!\n"
	.align 8
.LC13:
	.asciz	"ERROR: Received packet length %u exceeds expected size %u\n"
	.align 8
.LC14:
	.asciz	"Info: pushed to free queue, buf_addr = 0x%x\n"
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	save	%sp, -112, %sp
	call	__ajit_write_serial_control_register_via_vmap__, 0
	 mov	1, %o0
	sethi	%hi(.LC0), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC0), %o0
	call	setGlobalNicRegisterBasePointer, 0
	 sethi	%hi(-6225920), %o0
	mov	4, %g1
	st	%g1, [%fp-8]
	mov	64, %g1
	add	%fp, -12, %o0
	st	%g0, [%fp-12]
	st	%g1, [%fp-4]
	sethi	%hi(BufferPtrsVA), %i2
	sethi	%hi(.LC1), %i3
	or	%i2, %lo(BufferPtrsVA), %i2
	call	configureNic, 0
	 mov	0, %i5
	or	%i3, %lo(.LC1), %i3
	mov	%i2, %i0
	mov	%i2, %i4
.L2:
	call	cortos_bget_ncram, 0
	 mov	1500, %o0
	mov	%i5, %o1
	st	%o0, [%i4]
	mov	%o0, %o2
	call	cortos_printf, 0
	 mov	%i3, %o0
	add	%i5, 1, %i5
	cmp	%i5, 64
	bne	.L2
	 add	%i4, 4, %i4
	sethi	%hi(.LC2), %i4
	add	%i2, 256, %i2
	mov	%i0, %i5
	sethi	%hi(97779712), %i3
	or	%i4, %lo(.LC2), %i4
	ld	[%i5], %o0
.L40:
	mov	0, %o1
	call	memset, 0
	 mov	1500, %o2
	ld	[%i5], %g1
	mov	%i4, %o0
	st	%i3, [%g1]
	ld	[%g1+4], %o2
	call	cortos_printf, 0
	 ld	[%g1], %o1
	add	%i5, 4, %i5
	cmp	%i5, %i2
	bne,a	.L40
	 ld	[%i5], %o0
	sethi	%hi(BufferPtrsPA), %i2
	sethi	%hi(.LC3), %l0
	or	%i2, %lo(BufferPtrsPA), %i2
	mov	%i0, %i4
	mov	%i2, %i1
	mov	%i2, %i3
	mov	0, %i5
	b	.L5
	 or	%l0, %lo(.LC3), %l0
.L4:
	add	%i4, 4, %i4
	cmp	%i5, 64
	be	.L37
	 add	%i3, 8, %i3
.L5:
	sll	%i5, 3, %o1
	ld	[%i4], %o0
	call	translateVaToPa, 0
	 add	%i2, %o1, %o1
	cmp	%o0, 0
	bne,a	.L4
	 add	%i5, 1, %i5
	mov	%i5, %o1
	ldd	[%i3], %o2
	call	cortos_printf, 0
	 mov	%l0, %o0
	add	%i5, 1, %i5
	add	%i4, 4, %i4
	cmp	%i5, 64
	bne	.L5
	 add	%i3, 8, %i3
.L37:
	sethi	%hi(.LC14), %i3
	sethi	%hi(.LC4), %l0
	add	%i2, 512, %i2
	mov	%i1, %i5
	or	%i3, %lo(.LC14), %i3
	or	%l0, %lo(.LC4), %l0
.L31:
	call	acquireLock, 0
	 mov	0, %o0
	cmp	%o0, 0
	bne	.L31
	 mov	0, %o1
	ld	[%i5+4], %o3
	call	pushIntoQueue, 0
	 mov	0, %o2
	mov	%o0, %i4
	call	releaseLock, 0
	 mov	0, %o0
	cmp	%i4, 0
	bne	.L38
	 mov	%i3, %o0
	call	cortos_printf, 0
	 ld	[%i5+4], %o1
	add	%i5, 8, %i5
	cmp	%i5, %i2
	bne	.L31
	 mov	0, %o1
	mov	0, %o0
	call	getStatusOfQueueInNic, 0
	 mov	0, %o2
	mov	%o0, %o1
	sethi	%hi(.LC5), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC5), %o0
.L9:
	ldd	[%i1], %o0
	call	initTranslationTable, 0
	 ld	[%i0], %o2
	add	%i1, 8, %i1
	cmp	%i1, %i2
	bne	.L9
	 add	%i0, 4, %i0
	sethi	%hi(.LC6), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC6), %o0
	sethi	%hi(.LC7), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC7), %o0
	sethi	%hi(.LC8), %o0
	sethi	%hi(translationTable), %i5
	or	%o0, %lo(.LC8), %o0
	or	%i5, %lo(translationTable), %i5
	call	cortos_printf, 0
	 sethi	%hi(.LC9), %i3
	or	%i3, %lo(.LC9), %i3
	add	%i5, 1024, %i4
	ld	[%i5], %o1
.L41:
	ld	[%i5+4], %o2
	ld	[%i5+8], %o3
	call	cortos_printf, 0
	 mov	%i3, %o0
	add	%i5, 16, %i5
	cmp	%i5, %i4
	bne,a	.L41
	 ld	[%i5], %o1
	mov	1, %o2
	mov	1, %o3
	mov	0, %o1
	call	enableNic, 0
	 mov	0, %o0
	call	readNicControlRegister, 0
	 mov	0, %o0
	mov	%o0, %o1
	sethi	%hi(.LC10), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC10), %o0
	sethi	%hi(.LC11), %o0
	sethi	%hi(.LC12), %i3
	or	%o0, %lo(.LC11), %o0
	call	cortos_printf, 0
	 mov	0, %i5
	or	%i3, %lo(.LC12), %i3
.L32:
	mov	0, %o0
.L42:
	mov	%i5, %o1
	mov	1, %o2
	call	popFromQueue, 0
	 add	%fp, -16, %o3
	cmp	%o0, 0
	bne,a	.L42
	 mov	0, %o0
	call	cortos_get_clock_time, 0
	 ld	[%fp-16], %i4
	mov	%i4, %o1
	call	translatePAtoVA, 0
	 mov	0, %o0
	orcc	%o0, 0, %i4
	be	.L39
	 nop
.L12:
	call	getPacketLen, 0
	 mov	%i4, %o0
	cmp	%o0, 1500
	bgu	.L35
	 add	%i4, 30, %g1
	add	%i4, 36, %g4
	ldub	[%g1], %g3
.L43:
	ldub	[%g1-6], %g2
	stb	%g3, [%g1-6]
	stb	%g2, [%g1]
	add	%g1, 1, %g1
	cmp	%g1, %g4
	bne,a	.L43
	 ldub	[%g1], %g3
	mov	0, %o0
.L44:
	mov	%i5, %o1
	mov	2, %o2
	call	pushIntoQueue, 0
	 ld	[%fp-16], %o3
	cmp	%o0, 0
	bne	.L44
	 mov	0, %o0
	call	cortos_get_clock_time, 0
	 add	%i5, 1, %i5
	b	.L32
	 and	%i5, 3, %i5
.L38:
	call	cortos_printf, 0
	 mov	%l0, %o0
	b,a	.L31
.L35:
	mov	%o0, %o1
	mov	1500, %o2
	sethi	%hi(.LC13), %o0
	mov	1, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC13), %o0
	jmp	%i7+8
	 restore
.L39:
	call	cortos_printf, 0
	 mov	%i3, %o0
	call	cortos_exit, 0
	 mov	0, %o0
	b,a	.L12
	.size	main, .-main
	.common	translationTable,1024,8
	.common	BufferPtrsPA,512,8
	.common	BufferPtrsVA,256,4
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
