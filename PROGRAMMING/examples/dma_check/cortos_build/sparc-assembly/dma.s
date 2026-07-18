	.file	"dma.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"2.  Enable thread and dma command daemons.\n"
	.align 8
.LC1:
	.asciz	"dmem_ptr[%d] = 0x%llx\n"
	.align 8
.LC2:
	.asciz	"0-entry 0x%llx\n"
	.align 8
.LC3:
	.asciz	"Info: thread %d command daemon enabled\n"
	.align 8
.LC4:
	.asciz	"Info: dma %d command daemon enabled\n"
	.align 8
.LC5:
	.asciz	"2.  Schedule load DMA actions.\n"
	.align 8
.LC6:
	.asciz	"3.  Schedule load DMA [%d].\n"
	.align 8
.LC7:
	.asciz	"Error: schedule task (channel %d) returned failure.\n"
	.align 8
.LC8:
	.asciz	"4.  Successfully scheduled load DMA [%d].\n"
	.align 8
.LC9:
	.asciz	"5.  Dma task %d completed (creg=0x%x)\n"
	.align 8
.LC10:
	.asciz	"5.1 creg=0x%x\n"
	.align 8
.LC11:
	.asciz	"6.  Local mem values [%d]\n"
	.align 8
.LC12:
	.asciz	"\n"
	.align 8
.LC13:
	.asciz	"0x%llx  "
	.section	".text"
	.align 4
	.global do_load_dma_actions
	.type	do_load_dma_actions, #function
	.proc	020
do_load_dma_actions:
	save	%sp, -136, %sp
	sethi	%hi(hms), %l3
	sethi	%hi(.LC0), %o0
	sethi	%hi(dmem_ptr), %i5
	or	%o0, %lo(.LC0), %o0
	sethi	%hi(.LC1), %l6
	sethi	%hi(.LC2), %l5
	sethi	%hi(.LC3), %l4
	sethi	%hi(.LC4), %l2
	mov	0, %i2
	call	cortos_printf, 0
	 sethi	%hi(16777216), %i3
	mov	0, %l0
	or	%i5, %lo(dmem_ptr), %i5
	or	%l6, %lo(.LC1), %l6
	or	%l5, %lo(.LC2), %l5
	or	%l3, %lo(hms), %i4
	or	%l4, %lo(.LC3), %l4
	or	%l2, %lo(.LC4), %l2
	mov	0, %i0
	sethi	%hi(4096), %i1
	sll	%l0, 2, %g1
.L26:
	mov	%i3, %o3
	mov	%i2, %o2
	mov	%l0, %o1
	st	%i3, [%i5+%g1]
	call	cortos_printf, 0
	 mov	%l6, %o0
	ld	[%i5], %g1
	mov	%l5, %o0
	ld	[%g1], %o1
	call	cortos_printf, 0
	 ld	[%g1+4], %o2
	mov	0, %o2
	and	%l0, 0xff, %l1
	mov	%i4, %o0
	mov	%l1, %o3
	call	enableThreadCommandDaemon, 0
	 mov	0, %o1
	mov	%l0, %o1
	call	cortos_printf, 0
	 mov	%l4, %o0
	addcc	%i3, %i1, %g3
	addx	%i2, %i0, %g2
	mov	%i4, %o0
	mov	0, %o2
	mov	%l1, %o3
	mov	0, %o1
	mov	%g2, %i2
	call	enableDmaCommandDaemon, 0
	 mov	%g3, %i3
	mov	%l0, %o1
	call	cortos_printf, 0
	 mov	%l2, %o0
	add	%l0, 1, %l0
	cmp	%l0, 4
	bne	.L26
	 sll	%l0, 2, %g1
	sethi	%hi(.LC5), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC5), %o0
	sethi	%hi(.LC6), %g3
	mov	0, %o1
	call	cortos_printf, 0
	 or	%g3, %lo(.LC6), %o0
	sethi	%hi(ping_data), %l6
	sethi	%hi(.LC10), %l0
	sethi	%hi(.LC13), %i3
	mov	1, %i1
	mov	0, %i2
	mov	0, %g1
	mov	0, %g2
	or	%l6, %lo(ping_data), %l6
	sethi	%hi(.LC11), %l5
	sethi	%hi(.LC12), %l2
	or	%l0, %lo(.LC10), %l0
	or	%i3, %lo(.LC13), %i3
.L3:
	sll	%g2, 7, %g2
	sll	%g1, 3, %g1
	sll	%i2, 2, %i4
	add	%g2, %g1, %g1
	ld	[%i5+%i4], %g2
	sra	%g2, 31, %g3
	st	%g2, [%sp+100]
	mov	64, %g2
	st	%g2, [%sp+104]
	mov	128, %g2
	sll	%g1, 3, %g1
	st	%g2, [%sp+108]
	add	%l6, %g1, %g1
	mov	8, %g2
	sra	%g1, 31, %o5
	add	%i1, -1, %l1
	st	%g3, [%sp+96]
	and	%l1, 0xff, %l1
	st	%o5, [%fp-16]
	st	%g2, [%sp+112]
	st	%g1, [%fp-12]
	st	%g1, [%sp+92]
	or	%l3, %lo(hms), %o0
	mov	0, %o1
	mov	0, %o2
	mov	%l1, %o3
	mov	1, %o4
	call	scheduleDmaTaskOnEngine, 0
	 mov	%i1, %l4
	cmp	%o0, 0
	be,a	.L5
	 sethi	%hi(.LC8), %o0
	sethi	%hi(.LC7), %o0
	mov	%i2, %o1
	call	cortos_printf, 0
	 or	%o0, %lo(.LC7), %o0
	mov	%i2, %o1
.L25:
	or	%l5, %lo(.LC11), %o0
	call	cortos_printf, 0
	 mov	0, %l1
	mov	1, %l7
	mov	0, %i0
	b	.L9
	 or	%l2, %lo(.LC12), %i2
.L21:
	be	.L19
	 mov	%i3, %o0
	ld	[%i5+%i4], %g2
	add	%g2, %l1, %g3
	ld	[%g3], %o1
	call	cortos_printf, 0
	 ld	[%g3+4], %o2
	cmp	%l7, 64
	be	.L20
	 nop
	add	%i0, 1, %i0
.L23:
	add	%l7, 1, %l7
	add	%l1, 8, %l1
.L9:
	cmp	%i0, 0
	bne	.L21
	 andcc	%i0, 7, %g0
	ld	[%i5+%i4], %g2
	add	%g2, %l1, %g1
	mov	%i3, %o0
	ld	[%g1], %o1
	call	cortos_printf, 0
	 ld	[%g1+4], %o2
	b	.L23
	 add	%i0, 1, %i0
.L19:
	call	cortos_printf, 0
	 mov	%i2, %o0
	ld	[%i5+%i4], %g2
	add	%g2, %l1, %g3
	mov	%i3, %o0
	ld	[%g3], %o1
	call	cortos_printf, 0
	 ld	[%g3+4], %o2
	cmp	%l7, 64
	bne,a	.L23
	 add	%i0, 1, %i0
.L20:
	call	cortos_printf, 0
	 or	%l2, %lo(.LC12), %o0
	cmp	%i1, 4
	be	.L27
	 sethi	%hi(.LC6), %g1
	mov	%i1, %o1
	call	cortos_printf, 0
	 or	%g1, %lo(.LC6), %o0
	and	%l4, 0xff, %l4
	cmp	%l4, 1
	be	.L14
	 mov	%i1, %i2
	cmp	%l4, 2
	be,a	.L15
	 mov	0, %g1
	mov	1, %g1
	mov	1, %g2
	b	.L3
	 add	%i1, 1, %i1
.L5:
	mov	%i2, %o1
	or	%o0, %lo(.LC8), %o0
	call	cortos_printf, 0
	 or	%l3, %lo(hms), %i0
	b	.L24
	 mov	0, %o2
.L7:
	call	cortos_printf, 0
	 ld	[%fp-4], %o1
	call	__ajit_sleep__, 0
	 mov	1024, %o0
	mov	0, %o2
.L24:
	mov	%i2, %o3
	add	%fp, -4, %o4
	mov	%i0, %o0
	call	readDmaChannelTaskStatus, 0
	 mov	0, %o1
	andcc	%o0, 4, %g0
	be	.L7
	 mov	%l0, %o0
	mov	%i2, %o1
	ld	[%fp-4], %o2
	sethi	%hi(.LC9), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC9), %o0
	sethi	%hi(hms), %o0
	mov	0, %o1
	or	%o0, %lo(hms), %o0
	mov	0, %o2
	call	closeDmaChannelTask, 0
	 mov	%l1, %o3
	b	.L25
	 mov	%i2, %o1
.L27:
	jmp	%i7+8
	 restore
.L14:
	mov	1, %g1
	mov	0, %g2
	b	.L3
	 add	%i1, 1, %i1
.L15:
	mov	1, %g2
	b	.L3
	 add	%i1, 1, %i1
	.size	do_load_dma_actions, .-do_load_dma_actions
	.section	.rodata.str1.8
	.align 8
.LC14:
	.asciz	"7.  Schedule store DMA [%d].\n"
	.align 8
.LC15:
	.asciz	"8.  Successfully scheduled store DMA [%d].\n"
	.align 8
.LC16:
	.asciz	"9.  Dma task %d completed (creg=0x%x)\n"
	.align 8
.LC17:
	.asciz	"10.  Global mem values [%d]\n"
	.section	".text"
	.align 4
	.global do_store_dma_actions
	.type	do_store_dma_actions, #function
	.proc	020
do_store_dma_actions:
	save	%sp, -136, %sp
	sethi	%hi(.LC14), %l6
	mov	0, %o1
	call	cortos_printf, 0
	 or	%l6, %lo(.LC14), %o0
	sethi	%hi(pong_data), %i0
	sethi	%hi(dmem_ptr), %l5
	or	%i0, %lo(pong_data), %i0
	sethi	%hi(.LC13), %i4
	sethi	%hi(hms), %l0
	mov	1, %i1
	mov	0, %i5
	mov	0, %g2
	mov	0, %g1
	or	%l5, %lo(dmem_ptr), %l5
	sethi	%hi(.LC17), %l4
	add	%i0, 2048, %l3
	sethi	%hi(.LC12), %l2
	or	%i4, %lo(.LC13), %i4
.L29:
	sll	%g1, 7, %g1
	sll	%g2, 3, %g2
	add	%g1, %g2, %g2
	sll	%g2, 3, %g2
	add	%g2, %i0, %g2
	sra	%g2, 31, %g3
	st	%g2, [%sp+100]
	mov	64, %g2
	st	%g2, [%sp+104]
	mov	128, %g2
	sll	%i5, 2, %g1
	st	%g2, [%sp+108]
	ld	[%l5+%g1], %g1
	mov	8, %g2
	sra	%g1, 31, %o5
	add	%i1, -1, %i2
	st	%g3, [%sp+96]
	and	%i2, 0xff, %i2
	st	%o5, [%fp-16]
	st	%g2, [%sp+112]
	st	%g1, [%fp-12]
	st	%g1, [%sp+92]
	or	%l0, %lo(hms), %o0
	mov	0, %o1
	mov	0, %o2
	mov	%i2, %o3
	mov	0, %o4
	call	scheduleDmaTaskOnEngine, 0
	 mov	%i1, %l1
	cmp	%o0, 0
	be,a	.L31
	 sethi	%hi(.LC15), %o0
	sethi	%hi(.LC7), %o0
	mov	%i5, %o1
	call	cortos_printf, 0
	 or	%o0, %lo(.LC7), %o0
	mov	%i5, %o1
.L44:
	call	cortos_printf, 0
	 or	%l4, %lo(.LC17), %o0
	call	__ajit_flush_dcache__, 0
	 mov	%i0, %i5
	mov	%l3, %i2
	or	%l2, %lo(.LC12), %i3
	mov	0, %l7
.L46:
	add	%i5, %l7, %g1
.L45:
	mov	%i4, %o0
	ld	[%g1], %o1
	call	cortos_printf, 0
	 ld	[%g1+4], %o2
	add	%l7, 8, %l7
	cmp	%l7, 128
	bne	.L45
	 add	%i5, %l7, %g1
	call	cortos_printf, 0
	 mov	%i3, %o0
	add	%i5, 128, %i5
	cmp	%i5, %i2
	bne,a	.L46
	 mov	0, %l7
	cmp	%i1, 4
	be	.L47
	 or	%l6, %lo(.LC14), %o0
	call	cortos_printf, 0
	 mov	%i1, %o1
	and	%l1, 0xff, %l1
	cmp	%l1, 1
	be	.L39
	 mov	%i1, %i5
	cmp	%l1, 2
	be,a	.L40
	 mov	0, %g2
	mov	1, %g2
	mov	1, %g1
	b	.L29
	 add	%i1, 1, %i1
.L31:
	mov	%i5, %o1
	or	%o0, %lo(.LC15), %o0
	call	cortos_printf, 0
	 or	%l0, %lo(hms), %i3
	b	.L43
	 mov	0, %o1
.L33:
	call	__ajit_sleep__, 0
	 mov	1024, %o0
	mov	0, %o1
.L43:
	mov	0, %o2
	mov	%i5, %o3
	add	%fp, -4, %o4
	call	readDmaChannelTaskStatus, 0
	 mov	%i3, %o0
	andcc	%o0, 4, %g0
	be	.L33
	 mov	%i5, %o1
	ld	[%fp-4], %o2
	sethi	%hi(.LC16), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC16), %o0
	sethi	%hi(hms), %o0
	mov	0, %o1
	or	%o0, %lo(hms), %o0
	mov	0, %o2
	call	closeDmaChannelTask, 0
	 mov	%i2, %o3
	b	.L44
	 mov	%i5, %o1
.L47:
	jmp	%i7+8
	 restore
.L39:
	mov	1, %g2
	mov	0, %g1
	b	.L29
	 add	%i1, 1, %i1
.L40:
	mov	1, %g1
	b	.L29
	 add	%i1, 1, %i1
	.size	do_store_dma_actions, .-do_store_dma_actions
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
