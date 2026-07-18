	.file	"dma.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"Info: dma %d command daemon enabled\n"
	.align 8
.LC1:
	.asciz	"Dma task %d completed (creg=0x%x)\n"
	.align 8
.LC2:
	.asciz	"do_dma_load %d:  t0=0x%llx, t1=0x%llx, t2=0x%llx, delta=%lld\n"
	.section	".text"
	.align 4
	.global do_load_dma
	.type	do_load_dma, #function
	.proc	020
do_load_dma:
	save	%sp, -136, %sp
	mov	0, %o2
	mov	%i0, %o3
	sethi	%hi(hms), %i1
	mov	0, %o1
	call	enableDmaCommandDaemon, 0
	 or	%i1, %lo(hms), %o0
	mov	%i0, %o1
	sethi	%hi(.LC0), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC0), %o0
	call	__ajit_get_clock_time, 0
	 nop
	sethi	%hi(dmem_ptr), %g2
	sethi	%hi(ping_data), %g1
	ld	[%g2+%lo(dmem_ptr)], %g4
	or	%g1, %lo(ping_data), %g1
	sra	%g1, 31, %g2
	sethi	%hi(8192), %g3
	mov	%g2, %o5
	st	%g2, [%fp-16]
	mov	1, %g2
	sra	%g4, 31, %i5
	mov	0, %o2
	mov	%i0, %o3
	mov	1, %o4
	st	%g4, [%sp+100]
	st	%i5, [%sp+96]
	st	%g3, [%sp+104]
	st	%g3, [%sp+108]
	st	%g2, [%sp+112]
	st	%g1, [%fp-12]
	st	%g1, [%sp+92]
	mov	%o0, %l2
	mov	%o1, %l3
	or	%i1, %lo(hms), %o0
	call	scheduleDmaTaskOnEngine, 0
	 mov	0, %o1
	call	__ajit_get_clock_time, 0
	 or	%i1, %lo(hms), %i1
	mov	%o0, %i4
	mov	%o1, %i5
	mov	%i1, %o0
.L9:
	mov	0, %o1
	mov	0, %o2
	mov	%i0, %o3
	call	readDmaChannelTaskStatus, 0
	 add	%fp, -4, %o4
	andcc	%o0, 4, %g0
	be,a	.L9
	 mov	%i1, %o0
	call	__ajit_get_clock_time, 0
	 nop
	ld	[%fp-4], %o2
	mov	%o0, %i2
	mov	%o1, %i3
	sethi	%hi(.LC1), %o0
	mov	%i0, %o1
	call	cortos_printf, 0
	 or	%o0, %lo(.LC1), %o0
	subcc	%i3, %i5, %l1
	sethi	%hi(dma_load_ticks), %g1
	subx	%i2, %i4, %l0
	ldd	[%g1+%lo(dma_load_ticks)], %g2
	addcc	%l1, %g3, %o5
	addx	%l0, %g2, %o4
	mov	%i1, %o0
	std	%o4, [%g1+%lo(dma_load_ticks)]
	mov	%i0, %o3
	mov	0, %o1
	call	closeDmaChannelTask, 0
	 mov	0, %o2
	std	%i2, [%fp-16]
	ld	[%fp-12], %g1
	ld	[%fp-16], %g2
	st	%g1, [%sp+96]
	std	%l0, [%fp-16]
	ld	[%fp-16], %g1
	st	%g1, [%sp+100]
	ld	[%fp-12], %g1
	st	%g2, [%sp+92]
	st	%g1, [%sp+104]
	sethi	%hi(.LC2), %o0
	mov	%i0, %o1
	mov	%l2, %o2
	mov	%l3, %o3
	mov	%i4, %o4
	mov	%i5, %o5
	call	cortos_printf, 0
	 or	%o0, %lo(.LC2), %o0
	jmp	%i7+8
	 restore
	.size	do_load_dma, .-do_load_dma
	.section	.rodata.str1.8
	.align 8
.LC3:
	.asciz	"7.  Schedule store DMA [%d].\n"
	.align 8
.LC4:
	.asciz	"9.  Dma task %d completed (creg=0x%x)\n"
	.align 8
.LC5:
	.asciz	"do_dma_store %d:  t0=0x%llx, t1=0x%llx, t2=0x%llx, delta=%lld\n"
	.section	".text"
	.align 4
	.global do_store_dma
	.type	do_store_dma, #function
	.proc	020
do_store_dma:
	save	%sp, -136, %sp
	sethi	%hi(.LC3), %o0
	mov	%i0, %o1
	call	cortos_printf, 0
	 or	%o0, %lo(.LC3), %o0
	call	__ajit_get_clock_time, 0
	 sethi	%hi(hms), %i1
	sethi	%hi(dmem_ptr), %g1
	ld	[%g1+%lo(dmem_ptr)], %g1
	sra	%g1, 31, %g2
	sethi	%hi(8192), %g3
	mov	%g2, %o5
	st	%g2, [%fp-16]
	sethi	%hi(pong_data), %g4
	mov	1, %g2
	or	%g4, %lo(pong_data), %g4
	sra	%g4, 31, %i5
	mov	0, %o2
	mov	%i0, %o3
	mov	0, %o4
	st	%i5, [%sp+96]
	st	%g4, [%sp+100]
	st	%g3, [%sp+104]
	st	%g3, [%sp+108]
	st	%g2, [%sp+112]
	st	%g1, [%fp-12]
	st	%g1, [%sp+92]
	mov	%o0, %l2
	mov	%o1, %l3
	or	%i1, %lo(hms), %o0
	call	scheduleDmaTaskOnEngine, 0
	 mov	0, %o1
	call	__ajit_get_clock_time, 0
	 or	%i1, %lo(hms), %i1
	mov	%o0, %i4
	mov	%o1, %i5
	mov	%i1, %o0
.L17:
	mov	0, %o1
	mov	0, %o2
	mov	%i0, %o3
	call	readDmaChannelTaskStatus, 0
	 add	%fp, -4, %o4
	andcc	%o0, 4, %g0
	be,a	.L17
	 mov	%i1, %o0
	call	__ajit_get_clock_time, 0
	 nop
	ld	[%fp-4], %o2
	mov	%o0, %i2
	mov	%o1, %i3
	sethi	%hi(.LC4), %o0
	mov	%i0, %o1
	call	cortos_printf, 0
	 or	%o0, %lo(.LC4), %o0
	subcc	%i3, %i5, %l1
	sethi	%hi(dma_store_ticks), %g1
	subx	%i2, %i4, %l0
	ldd	[%g1+%lo(dma_store_ticks)], %g2
	addcc	%l1, %g3, %o5
	addx	%l0, %g2, %o4
	mov	%i1, %o0
	std	%o4, [%g1+%lo(dma_store_ticks)]
	mov	%i0, %o3
	mov	0, %o1
	call	closeDmaChannelTask, 0
	 mov	0, %o2
	std	%i2, [%fp-16]
	ld	[%fp-12], %g1
	ld	[%fp-16], %g2
	st	%g1, [%sp+96]
	std	%l0, [%fp-16]
	ld	[%fp-16], %g1
	st	%g1, [%sp+100]
	ld	[%fp-12], %g1
	st	%g2, [%sp+92]
	st	%g1, [%sp+104]
	sethi	%hi(.LC5), %o0
	mov	%i0, %o1
	mov	%l2, %o2
	mov	%l3, %o3
	mov	%i4, %o4
	mov	%i5, %o5
	call	cortos_printf, 0
	 or	%o0, %lo(.LC5), %o0
	jmp	%i7+8
	 restore
	.size	do_store_dma, .-do_store_dma
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
