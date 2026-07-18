	.file	"dma.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"Info: dma %d command daemon enabled\n"
	.section	".text"
	.align 4
	.global enable_dma_channel
	.type	enable_dma_channel, #function
	.proc	020
enable_dma_channel:
	save	%sp, -96, %sp
	mov	0, %o1
	and	%i0, 0xff, %o3
	mov	%i0, %i1
	sethi	%hi(hms), %o0
	mov	0, %o2
	or	%o0, %lo(hms), %o0
	call	enableDmaCommandDaemon, 0
	 sethi	%hi(.LC0), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC0), %o0
	.size	enable_dma_channel, .-enable_dma_channel
	.align 4
	.global dma_start_store_stripe
	.type	dma_start_store_stripe, #function
	.proc	020
dma_start_store_stripe:
	save	%sp, -128, %sp
	call	__ajit_get_clock_time, 0
	 sethi	%hi(hms), %l0
	or	%l0, %lo(hms), %l0
	st	%g0, [%sp+96]
.L6:
	st	%i2, [%sp+100]
	st	%i3, [%sp+104]
	st	%i4, [%sp+108]
	st	%i5, [%sp+112]
	st	%g0, [%fp-8]
	st	%i1, [%fp-4]
	st	%i1, [%sp+92]
	mov	0, %o5
	mov	%l0, %o0
	mov	0, %o1
	mov	0, %o2
	mov	%i0, %o3
	call	scheduleDmaTaskOnEngine, 0
	 mov	0, %o4
	cmp	%o0, 0
	bne,a	.L6
	 st	%g0, [%sp+96]
	jmp	%i7+8
	 restore
	.size	dma_start_store_stripe, .-dma_start_store_stripe
	.align 4
	.global dma_start_load_stripe
	.type	dma_start_load_stripe, #function
	.proc	020
dma_start_load_stripe:
	save	%sp, -128, %sp
	sethi	%hi(hms), %i5
	and	%i0, 0xff, %i0
	mov	1, %i4
	or	%i5, %lo(hms), %i5
	st	%g0, [%sp+96]
.L10:
	st	%i2, [%sp+100]
	st	%i3, [%sp+104]
	st	%i3, [%sp+108]
	st	%i4, [%sp+112]
	st	%g0, [%fp-8]
	st	%i1, [%fp-4]
	st	%i1, [%sp+92]
	mov	0, %o5
	mov	%i5, %o0
	mov	0, %o1
	mov	0, %o2
	mov	%i0, %o3
	call	scheduleDmaTaskOnEngine, 0
	 mov	1, %o4
	cmp	%o0, 0
	bne,a	.L10
	 st	%g0, [%sp+96]
	jmp	%i7+8
	 restore
	.size	dma_start_load_stripe, .-dma_start_load_stripe
	.align 4
	.global dma_complete
	.type	dma_complete, #function
	.proc	020
dma_complete:
	save	%sp, -104, %sp
	sethi	%hi(hms), %i5
	or	%i5, %lo(hms), %i5
	mov	%i5, %o0
.L14:
	mov	0, %o1
	mov	0, %o2
	mov	%i0, %o3
	call	readDmaChannelTaskStatus, 0
	 add	%fp, -4, %o4
	and	%o0, 7, %o0
	cmp	%o0, 7
	bne	.L14
	 mov	%i5, %o0
	mov	0, %o1
	mov	0, %o2
	call	closeDmaChannelTask, 0
	 and	%i0, 0xff, %o3
	jmp	%i7+8
	 restore
	.size	dma_complete, .-dma_complete
	.align 4
	.global dma_load_stripe
	.type	dma_load_stripe, #function
	.proc	020
dma_load_stripe:
	save	%sp, -96, %sp
	call	__ajit_get_clock_time, 0
	 nop
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%o0, %i4
	mov	%o1, %i5
	mov	%i0, %o0
	call	dma_start_load_stripe, 0
	 mov	%i1, %o1
	call	dma_complete, 0
	 mov	%i0, %o0
	call	__ajit_get_clock_time, 0
	 nop
	sethi	%hi(dma_ticks), %g1
	ldd	[%g1+%lo(dma_ticks)], %g2
	addcc	%o1, %g3, %i3
	addx	%o0, %g2, %i2
	subcc	%i3, %i5, %i5
	subx	%i2, %i4, %i4
	std	%i4, [%g1+%lo(dma_ticks)]
	jmp	%i7+8
	 restore
	.size	dma_load_stripe, .-dma_load_stripe
	.align 4
	.global dma_store_burst
	.type	dma_store_burst, #function
	.proc	020
dma_store_burst:
	save	%sp, -128, %sp
	sethi	%hi(hms), %i5
	and	%i0, 0xff, %i0
	mov	1, %i4
	or	%i5, %lo(hms), %i5
	st	%g0, [%sp+96]
.L19:
	st	%i2, [%sp+100]
	st	%i3, [%sp+104]
	st	%i3, [%sp+108]
	st	%i4, [%sp+112]
	st	%g0, [%fp-8]
	st	%i1, [%fp-4]
	st	%i1, [%sp+92]
	mov	0, %o5
	mov	%i5, %o0
	mov	0, %o1
	mov	0, %o2
	mov	%i0, %o3
	call	scheduleDmaTaskOnEngine, 0
	 mov	0, %o4
	cmp	%o0, 0
	bne,a	.L19
	 st	%g0, [%sp+96]
	jmp	%i7+8
	 restore
	.size	dma_store_burst, .-dma_store_burst
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
