	.file	"main.c"
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
	call	__ajit_serial_set_uart_reset_via_vmap__, 0
	 mov	0, %o0
	sethi	%hi(iflags), %g1
	st	%g0, [%g1+%lo(iflags)]
	or	%g1, %lo(iflags), %g1
	st	%g0, [%g1+4]
	st	%g0, [%g1+8]
	st	%g0, [%g1+12]
	mov	0, %i0
	call	enableInterruptController, 0
	 restore %g0, 0, %o1
	.size	setup, .-setup
	.align 4
	.global set_args
	.type	set_args, #function
	.proc	020
set_args:
	save	%sp, -120, %sp
	mov	%i1, %g1
	ld	[%fp+96], %l6
	mov	%i2, %i1
	ld	[%fp+100], %l7
	ld	[%fp+92], %i2
	ld	[%fp+104], %l4
	ld	[%fp+108], %l5
	ld	[%fp+112], %l2
	ld	[%fp+116], %l3
	ld	[%fp+120], %l0
	ld	[%fp+124], %l1
	and	%i0, 0xff, %i0
.L3:
	st	%g1, [%fp-8]
	mov	%g1, %o5
	st	%g1, [%fp-12]
	st	%i1, [%fp-4]
	st	%i1, [%sp+92]
	sethi	%hi(hms), %o0
	mov	0, %o1
	or	%o0, %lo(hms), %o0
	mov	0, %o2
	mov	%i0, %o3
	call	writeThreadDataRegister, 0
	 mov	1, %o4
	cmp	%o0, 0
	bne	.L3
	 ld	[%fp-12], %g1
	sethi	%hi(hms), %i1
	or	%i1, %lo(hms), %i1
	st	%i3, [%fp-8]
.L24:
	st	%i4, [%fp-4]
	st	%i4, [%sp+92]
	mov	%i3, %o5
	mov	%i1, %o0
	mov	0, %o1
	mov	0, %o2
	mov	%i0, %o3
	call	writeThreadDataRegister, 0
	 mov	2, %o4
	cmp	%o0, 0
	bne,a	.L24
	 st	%i3, [%fp-8]
	st	%i5, [%fp-8]
.L25:
	st	%i2, [%fp-4]
	st	%i2, [%sp+92]
	mov	%i5, %o5
	mov	%i1, %o0
	mov	0, %o1
	mov	0, %o2
	mov	%i0, %o3
	call	writeThreadDataRegister, 0
	 mov	3, %o4
	cmp	%o0, 0
	bne,a	.L25
	 st	%i5, [%fp-8]
	std	%l6, [%fp-8]
.L26:
	st	%l7, [%sp+92]
	mov	%l6, %o5
	mov	%i1, %o0
	mov	0, %o1
	mov	0, %o2
	mov	%i0, %o3
	call	writeThreadDataRegister, 0
	 mov	4, %o4
	cmp	%o0, 0
	bne,a	.L26
	 std	%l6, [%fp-8]
	std	%l4, [%fp-8]
.L27:
	st	%l5, [%sp+92]
	mov	%l4, %o5
	mov	%i1, %o0
	mov	0, %o1
	mov	0, %o2
	mov	%i0, %o3
	call	writeThreadDataRegister, 0
	 mov	5, %o4
	cmp	%o0, 0
	bne,a	.L27
	 std	%l4, [%fp-8]
	std	%l2, [%fp-8]
.L28:
	st	%l3, [%sp+92]
	mov	%l2, %o5
	mov	%i1, %o0
	mov	0, %o1
	mov	0, %o2
	mov	%i0, %o3
	call	writeThreadDataRegister, 0
	 mov	6, %o4
	cmp	%o0, 0
	bne,a	.L28
	 std	%l2, [%fp-8]
	std	%l0, [%fp-8]
.L29:
	st	%l1, [%sp+92]
	mov	%l0, %o5
	mov	%i1, %o0
	mov	0, %o1
	mov	0, %o2
	mov	%i0, %o3
	call	writeThreadDataRegister, 0
	 mov	7, %o4
	cmp	%o0, 0
	bne,a	.L29
	 std	%l0, [%fp-8]
	jmp	%i7+8
	 restore
	.size	set_args, .-set_args
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"base pointers of matrices in processor memory 0x%x, 0x%x\n"
	.align 8
.LC1:
	.asciz	"Info: on_processor: initialized matrices (non-zeros %d)\n"
	.section	".text"
	.align 4
	.global init_processor_matrices
	.type	init_processor_matrices, #function
	.proc	020
init_processor_matrices:
	save	%sp, -96, %sp
	sethi	%hi(A), %i3
	sethi	%hi(B), %i4
	or	%i3, %lo(A), %o1
	or	%i4, %lo(B), %o2
	sethi	%hi(.LC0), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC0), %o0
	mov	0, %g4
	mov	0, %i1
	or	%i3, %lo(A), %i3
	or	%i4, %lo(B), %i4
	sethi	%hi(16384), %i2
.L31:
	mov	0, %g1
	sll	%g4, 7, %i5
	add	%g1, %i1, %g2
.L35:
	add	%i5, %g1, %g3
	sll	%g3, 2, %g3
	st	%g2, [%i3+%g3]
	sll	%g1, 7, %g3
	add	%g3, %g4, %g3
	sll	%g3, 2, %g3
	st	%g2, [%i4+%g3]
	add	%g1, 1, %g1
	cmp	%g1, 128
	bne	.L35
	 add	%g1, %i1, %g2
	add	%i1, 128, %i1
	cmp	%i1, %i2
	bne	.L31
	 add	%g4, 1, %g4
	sethi	%hi(.LC1), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC1), %o0
	.size	init_processor_matrices, .-init_processor_matrices
	.section	.rodata.str1.8
	.align 8
.LC2:
	.asciz	"mmul_on_processor: ticks=%lld [0][0] is 0x%x\n"
	.section	".text"
	.align 4
	.global mmul_on_processor
	.type	mmul_on_processor, #function
	.proc	020
mmul_on_processor:
	save	%sp, -96, %sp
	call	__ajit_get_clock_time, 0
	 sethi	%hi(A), %i0
	sethi	%hi(B), %i1
	sethi	%hi(PRESULT), %l0
	mov	%o0, %i4
	mov	%o1, %i5
	mov	0, %o5
	or	%i0, %lo(A), %i0
	or	%i1, %lo(B), %i1
	or	%l0, %lo(PRESULT), %l0
	mov	0, %o7
.L44:
	sll	%o5, 7, %i3
	mov	0, %g2
.L43:
	mov	0, %g1
	sll	%o7, 7, %i2
.L38:
	add	%i3, %g1, %g4
	add	%i2, %g1, %g3
	sll	%g4, 2, %g4
	sll	%g3, 2, %g3
	ld	[%i0+%g4], %g4
	ld	[%i1+%g3], %g3
	add	%g1, 1, %g1
	smul	%g4, %g3, %g3
	cmp	%g1, 128
	bne	.L38
	 add	%g2, %g3, %g2
	add	%i3, %o7, %g1
	sll	%g1, 2, %g1
	st	%g2, [%l0+%g1]
	add	%o7, 1, %o7
	cmp	%o7, 128
	bne,a	.L43
	 mov	0, %g2
	add	%o5, 1, %o5
	cmp	%o5, 128
	bne	.L44
	 mov	0, %o7
	call	__ajit_get_clock_time, 0
	 sethi	%hi(.LC2), %i0
	sethi	%hi(processor_ticks), %g1
	subcc	%o1, %i5, %o1
	subx	%o0, %i4, %o0
	or	%i0, %lo(.LC2), %i0
	std	%o0, [%g1+%lo(processor_ticks)]
	ldd	[%g1+%lo(processor_ticks)], %g2
	ld	[%l0], %i3
	mov	%g2, %i1
	call	cortos_printf, 0
	 restore %g0, %g3, %o2
	.size	mmul_on_processor, .-mmul_on_processor
	.align 4
	.global mmul_start_across_threads
	.type	mmul_start_across_threads, #function
	.proc	020
mmul_start_across_threads:
	save	%sp, -144, %sp
	ld	[%fp+92], %l0
	srl	%i3, 2, %i3
	smul	%l0, %i5, %i5
	call	__ajit_get_clock_time, 0
	 smul	%i4, %i3, %l6
	add	%l6, -1, %l5
	smul	%i5, %i3, %l4
	smul	%l0, %l6, %l6
	add	%i4, -1, %i4
	mov	%o0, %l2
	mov	%o1, %l3
	mov	0, %l0
	sethi	%hi(16777216), %l1
	mov	0, %i3
.L46:
	std	%l0, [%fp-8]
	ld	[%fp-8], %g1
	addcc	%l1, 256, %g3
	st	%g1, [%sp+120]
	addx	%l0, 0, %g2
	ld	[%fp-4], %g1
	st	%i2, [%sp+100]
	mov	%i3, %o0
	mov	%i0, %o2
	st	%g0, [%sp+96]
	st	%g0, [%sp+104]
	st	%i4, [%sp+108]
	st	%g0, [%sp+112]
	st	%l5, [%sp+116]
	st	%g1, [%sp+124]
	st	%g0, [%fp-8]
	st	%i5, [%fp-4]
	st	%i5, [%sp+92]
	mov	0, %o5
	mov	0, %o1
	mov	0, %o3
	mov	%i1, %o4
	mov	%g2, %l0
	call	set_args, 0
	 mov	%g3, %l1
	add	%i3, 1, %i3
	add	%i0, %l4, %i0
	cmp	%i3, 4
	bne	.L46
	 add	%i2, %l6, %i2
	sethi	%hi(hms), %i4
	mov	0, %i3
	or	%i4, %lo(hms), %i4
	and	%i3, 0xff, %i5
	mov	%i4, %o0
.L52:
	mov	0, %o1
	mov	0, %o2
	mov	%i5, %o3
	call	runEngineThreadAndInterrupt, 0
	 mov	0, %o4
	cmp	%o0, 0
	bne	.L52
	 mov	%i4, %o0
	add	%i3, 1, %i3
	cmp	%i3, 4
	bne,a	.L52
	 and	%i3, 0xff, %i5
	call	__ajit_get_clock_time, 0
	 nop
	sethi	%hi(setup_ticks), %g1
	subcc	%o1, %l3, %o1
	subx	%o0, %l2, %o0
	std	%o0, [%g1+%lo(setup_ticks)]
	jmp	%i7+8
	 restore
	.size	mmul_start_across_threads, .-mmul_start_across_threads
	.align 4
	.global mmul_complete_across_threads
	.type	mmul_complete_across_threads, #function
	.proc	020
mmul_complete_across_threads:
	sethi	%hi(iflags), %g2
	or	%g2, %lo(iflags), %g2
.L69:
	ld	[%g2], %g1
	cmp	%g1, 0
	be	.L69
	 nop
	ld	[%g2+4], %g1
	cmp	%g1, 0
	be	.L69
	 nop
	ld	[%g2+8], %g1
	cmp	%g1, 0
	be	.L69
	 nop
	ld	[%g2+12], %g1
	cmp	%g1, 0
	be	.L69
	 nop
	st	%g0, [%g2]
	st	%g0, [%g2+4]
	st	%g0, [%g2+8]
	st	%g0, [%g2+12]
	jmp	%o7+8
	 nop
	.size	mmul_complete_across_threads, .-mmul_complete_across_threads
	.align 4
	.global load_B_stripe
	.type	load_B_stripe, #function
	.proc	020
load_B_stripe:
	save	%sp, -96, %sp
	call	__ajit_get_clock_time, 0
	 smul	%i2, %i0, %i0
	subcc	%g0, %i1, %g0
	sethi	%hi(8192), %g2
	addx	%g0, -1, %g1
	and	%g1, %g2, %g1
	smul	%i3, %i2, %o3
	mov	%o0, %i4
	mov	%o1, %i5
	mov	0, %o0
	sethi	%hi(B), %o1
	sll	%i0, 9, %i0
	or	%o1, %lo(B), %o1
	sethi	%hi(16809984), %o2
	add	%o1, %i0, %o1
	call	dma_start_load_stripe, 0
	 add	%g1, %o2, %o2
	call	dma_complete, 0
	 mov	0, %o0
	call	__ajit_get_clock_time, 0
	 nop
	sethi	%hi(dma_ticks), %g1
	ldd	[%g1+%lo(dma_ticks)], %g2
	subcc	%g3, %i5, %i5
	subx	%g2, %i4, %i4
	addcc	%i5, %o1, %g3
	addx	%i4, %o0, %g2
	mov	%g3, %o1
	mov	%g2, %o0
	std	%o0, [%g1+%lo(dma_ticks)]
	jmp	%i7+8
	 restore
	.size	load_B_stripe, .-load_B_stripe
	.align 4
	.global load_A_stripe
	.type	load_A_stripe, #function
	.proc	020
load_A_stripe:
	save	%sp, -96, %sp
	call	__ajit_get_clock_time, 0
	 smul	%i2, %i0, %i0
	subcc	%g0, %i1, %g0
	sethi	%hi(8192), %g2
	addx	%g0, -1, %g1
	and	%g1, %g2, %g1
	smul	%i3, %i2, %o3
	mov	%o0, %i4
	mov	%o1, %i5
	mov	0, %o0
	sethi	%hi(A), %o1
	sll	%i0, 9, %i0
	or	%o1, %lo(A), %o1
	sethi	%hi(16793600), %o2
	add	%o1, %i0, %o1
	call	dma_start_load_stripe, 0
	 add	%g1, %o2, %o2
	call	dma_complete, 0
	 mov	0, %o0
	call	__ajit_get_clock_time, 0
	 nop
	sethi	%hi(dma_ticks), %g1
	ldd	[%g1+%lo(dma_ticks)], %g2
	subcc	%g3, %i5, %i5
	subx	%g2, %i4, %i4
	addcc	%i5, %o1, %g3
	addx	%i4, %o0, %g2
	mov	%g3, %o1
	mov	%g2, %o0
	std	%o0, [%g1+%lo(dma_ticks)]
	jmp	%i7+8
	 restore
	.size	load_A_stripe, .-load_A_stripe
	.align 4
	.global print_A_stripe_in_datamem
	.type	print_A_stripe_in_datamem, #function
	.proc	020
print_A_stripe_in_datamem:
	jmp	%o7+8
	 nop
	.size	print_A_stripe_in_datamem, .-print_A_stripe_in_datamem
	.align 4
	.global print_B_stripe_in_datamem
	.type	print_B_stripe_in_datamem, #function
	.proc	020
print_B_stripe_in_datamem:
	jmp	%o7+8
	 nop
	.size	print_B_stripe_in_datamem, .-print_B_stripe_in_datamem
	.align 4
	.global print_R_stripe_in_datamem
	.type	print_R_stripe_in_datamem, #function
	.proc	020
print_R_stripe_in_datamem:
	jmp	%o7+8
	 nop
	.size	print_R_stripe_in_datamem, .-print_R_stripe_in_datamem
	.section	.rodata.str1.8
	.align 8
.LC3:
	.asciz	"Error: insertR[%d][%d]: 0x%x 0x%x\n"
	.section	".text"
	.align 4
	.global insert_R_into_result
	.type	insert_R_into_result, #function
	.proc	020
insert_R_into_result:
	save	%sp, -96, %sp
	sethi	%hi(8192), %g1
	subcc	%g0, %i2, %g0
	smul	%i3, %i0, %i0
	addx	%g0, -1, %i5
	smul	%i3, %i1, %i1
	and	%i5, %g1, %i5
	cmp	%i3, 0
	sethi	%hi(16826368), %g1
	be	.L93
	 add	%i5, %g1, %i5
	sethi	%hi(TRESULT), %i4
	sethi	%hi(PRESULT), %i2
	sethi	%hi(.LC3), %l2
	mov	0, %o1
	mov	0, %l1
	or	%i4, %lo(TRESULT), %i4
	or	%i2, %lo(PRESULT), %i2
	add	%i1, %i3, %l0
	or	%l2, %lo(.LC3), %l2
.L82:
	ld	[%i5], %g2
	add	%o1, %i0, %o1
	sll	%o1, 7, %g4
	add	%g4, %i1, %g1
	sll	%g1, 2, %g1
	st	%g2, [%i4+%g1]
	ld	[%i4+%g1], %g2
	ld	[%i2+%g1], %g1
	cmp	%g2, %g1
	bne	.L88
	 add	%i5, 4, %i5
	b	.L83
	 add	%i1, 1, %g1
.L85:
	ld	[%i5], %g3
	st	%g3, [%i4+%g2]
	ld	[%i4+%g2], %g3
	ld	[%i2+%g2], %g2
	mov	%g1, %o2
	add	%i5, 4, %i5
	cmp	%g3, %g2
	bne	.L86
	 add	%g1, 1, %g1
.L83:
	add	%g4, %g1, %g2
	cmp	%g1, %l0
	bne	.L85
	 sll	%g2, 2, %g2
	add	%l1, 1, %l1
	cmp	%l1, %i3
	bne	.L82
	 mov	%l1, %o1
.L93:
	jmp	%i7+8
	 restore
.L88:
	mov	%i1, %o2
.L86:
	add	%g4, %o2, %g4
	sll	%g4, 2, %g4
	mov	%l2, %o0
	ld	[%i4+%g4], %o3
	ld	[%i2+%g4], %o4
	call	cortos_printf, 0
	 add	%l1, 1, %l1
	cmp	%l1, %i3
	bne	.L82
	 mov	%l1, %o1
	b,a	.L93
	.size	insert_R_into_result, .-insert_R_into_result
	.align 4
	.global dma_insert_R_into_result
	.type	dma_insert_R_into_result, #function
	.proc	020
dma_insert_R_into_result:
	save	%sp, -96, %sp
	call	__ajit_get_clock_time, 0
	 smul	%i3, %i0, %i0
	subcc	%g0, %i2, %g0
	sethi	%hi(8192), %g2
	addx	%g0, -1, %g1
	and	%g1, %g2, %g1
	sll	%i3, 2, %o3
	mov	%i3, %o5
	mov	512, %o4
	mov	%o0, %i4
	mov	%o1, %i5
	mov	0, %o0
	sethi	%hi(16826368), %o1
	sll	%i0, 7, %i0
	add	%g1, %o1, %o1
	smul	%i3, %i1, %i3
	sethi	%hi(TRESULT), %o2
	add	%i0, %i3, %i3
	or	%o2, %lo(TRESULT), %o2
	sll	%i3, 2, %i3
	call	dma_start_store_stripe, 0
	 add	%o2, %i3, %o2
	call	dma_complete, 0
	 mov	0, %o0
	call	__ajit_get_clock_time, 0
	 nop
	sethi	%hi(dma_ticks), %g1
	ldd	[%g1+%lo(dma_ticks)], %g2
	subcc	%g3, %i5, %i5
	subx	%g2, %i4, %i4
	addcc	%i5, %o1, %g3
	addx	%i4, %o0, %g2
	mov	%g3, %o1
	mov	%g2, %o0
	std	%o0, [%g1+%lo(dma_ticks)]
	jmp	%i7+8
	 restore
	.size	dma_insert_R_into_result, .-dma_insert_R_into_result
	.section	.rodata.str1.8
	.align 8
.LC4:
	.asciz	"Info: entered mmul_stripe_and_run_on_thread %d, %d, %d\n"
	.section	".text"
	.align 4
	.global mmul_stripe_and_run_on_threads
	.type	mmul_stripe_and_run_on_threads, #function
	.proc	020
mmul_stripe_and_run_on_threads:
	save	%sp, -104, %sp
	sethi	%hi(.LC4), %o0
	mov	%i0, %o1
	mov	%i1, %o2
	mov	%i2, %o3
	call	cortos_printf, 0
	 or	%o0, %lo(.LC4), %o0
	call	__ajit_get_clock_time, 0
	 nop
	cmp	%i0, 0
	mov	%o0, %l6
	be	.L100
	 mov	%o1, %l7
	sethi	%hi(computation_ticks), %l3
	mov	0, %l2
	or	%l3, %lo(computation_ticks), %l3
	mov	4, %l4
	mov	%l2, %o0
.L106:
	mov	1, %o1
	mov	%i1, %o2
	mov	%i2, %o3
	call	load_A_stripe, 0
	 mov	0, %i3
	mov	%i3, %o0
.L105:
	mov	%i1, %o2
	mov	%i2, %o3
	call	load_B_stripe, 0
	 mov	1, %o1
	call	__ajit_get_clock_time, 0
	 nop
	sethi	%hi(16826368), %o2
	mov	%i1, %o3
	mov	%i1, %o4
	mov	128, %o5
	sethi	%hi(16793600), %o0
	sethi	%hi(16809984), %o1
	call	mmul_start_across_threads, 0
	 st	%l4, [%sp+92]
	call	__ajit_get_clock_time, 0
	 nop
	mov	%o0, %i4
	mov	%o1, %i5
	mov	%l2, %o0
	call	mmul_complete_across_threads, 0
	 mov	%i3, %o1
	call	__ajit_get_clock_time, 0
	 nop
	ldd	[%l3], %g2
	addcc	%o1, %g3, %l1
	addx	%o0, %g2, %l0
	subcc	%l1, %i5, %i5
	mov	%i3, %o1
	subx	%l0, %i4, %i4
	mov	1, %o2
	mov	%i1, %o3
	mov	%l2, %o0
	std	%i4, [%l3]
	call	dma_insert_R_into_result, 0
	 add	%i3, 1, %i3
	cmp	%i3, %i0
	bne	.L105
	 mov	%i3, %o0
	add	%l2, 1, %l2
	cmp	%l2, %i0
	bne	.L106
	 mov	%l2, %o0
.L100:
	call	__ajit_get_clock_time, 0
	 nop
	sethi	%hi(engine_ticks), %g1
	ldd	[%g1+%lo(engine_ticks)], %g2
	subcc	%g3, %l7, %l7
	subx	%g2, %l6, %l6
	addcc	%l7, %o1, %g3
	addx	%l6, %o0, %g2
	mov	%g3, %o1
	mov	%g2, %o0
	std	%o0, [%g1+%lo(engine_ticks)]
	jmp	%i7+8
	 restore
	.size	mmul_stripe_and_run_on_threads, .-mmul_stripe_and_run_on_threads
	.section	.rodata.str1.8
	.align 8
.LC5:
	.asciz	"cross-checking accel results with processor results\n"
	.align 8
.LC6:
	.asciz	"Error: result[%d] = 0x%x, expected 0x%x\n"
	.align 8
.LC7:
	.asciz	"FAILURE...\n"
	.align 8
.LC8:
	.asciz	"SUCCESS! (dma_ticks=%lld, setup_ticks=%lld, computation_ticks=%lld, engine_ticks=%lld, processor_ticks=%lld)\n"
	.align 8
.LC9:
	.asciz	"Net speedup = %F, computation speedup = %F\n"
	.global __floatundidf
	.section	".text"
	.align 4
	.global check_result_values
	.type	check_result_values, #function
	.proc	04
check_result_values:
	save	%sp, -152, %sp
	call	__ajit_flush_dcache__, 0
	 nop
	sethi	%hi(.LC5), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC5), %o0
	sethi	%hi(PRESULT), %g3
	sethi	%hi(TRESULT), %g2
	mov	0, %g1
	mov	0, %o1
	or	%g3, %lo(PRESULT), %g3
	or	%g2, %lo(TRESULT), %g2
	b	.L110
	 sethi	%hi(16384), %g4
.L108:
	cmp	%o1, %g4
	be	.L114
	 add	%g1, 4, %g1
.L110:
	ld	[%g3+%g1], %o3
	ld	[%g2+%g1], %o2
	cmp	%o2, %o3
	be,a	.L108
	 add	%o1, 1, %o1
	sethi	%hi(.LC6), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC6), %o0
	sethi	%hi(.LC7), %o0
	mov	1, %i0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC7), %o0
	jmp	%i7+8
	 restore
.L114:
	sethi	%hi(dma_ticks), %g1
	ldd	[%g1+%lo(dma_ticks)], %i0
	sethi	%hi(setup_ticks), %g1
	sethi	%hi(computation_ticks), %l1
	ldd	[%g1+%lo(setup_ticks)], %i2
	sethi	%hi(engine_ticks), %l2
	ldd	[%l1+%lo(computation_ticks)], %g2
	ldd	[%l2+%lo(engine_ticks)], %i4
	std	%i4, [%fp-8]
	ld	[%fp-4], %g1
	ld	[%fp-8], %g4
	sethi	%hi(processor_ticks), %l0
	st	%g1, [%sp+100]
	ldd	[%l0+%lo(processor_ticks)], %i4
	std	%i4, [%fp-8]
	ld	[%fp-8], %g1
	st	%g1, [%sp+104]
	ld	[%fp-4], %g1
	mov	%g2, %o5
	mov	%i1, %o2
	mov	%i2, %o3
	mov	%i3, %o4
	st	%g4, [%sp+96]
	st	%g1, [%sp+108]
	std	%g2, [%fp-8]
	st	%g3, [%sp+92]
	mov	%i0, %o1
	sethi	%hi(.LC8), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC8), %o0
	ldd	[%l0+%lo(processor_ticks)], %o0
	call	__floatundidf, 0
	 nop
	fmovs	%f0, %f10
	fmovs	%f1, %f11
	ldd	[%l2+%lo(engine_ticks)], %i4
	std	%f10, [%fp-24]
	mov	%i4, %o0
	call	__floatundidf, 0
	 mov	%i5, %o1
	ldd	[%fp-24], %f10
	fdivd	%f10, %f0, %f10
	ldd	[%l0+%lo(processor_ticks)], %o0
	call	__floatundidf, 0
	 std	%f10, [%fp-24]
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	ldd	[%l1+%lo(computation_ticks)], %i4
	std	%f8, [%fp-16]
	mov	%i4, %o0
	call	__floatundidf, 0
	 mov	%i5, %o1
	ldd	[%fp-24], %f10
	std	%f10, [%fp-32]
	ldd	[%fp-32], %g2
	ldd	[%fp-16], %f8
	mov	%g2, %o1
	mov	%g3, %o2
	fdivd	%f8, %f0, %f0
	std	%f0, [%fp-32]
	ldd	[%fp-32], %g2
	sethi	%hi(.LC9), %o0
	mov	%g2, %o3
	mov	%g3, %o4
	or	%o0, %lo(.LC9), %o0
	call	cortos_printf, 0
	 mov	0, %i0
	jmp	%i7+8
	 restore
	.size	check_result_values, .-check_result_values
	.section	.rodata.str1.8
	.align 8
.LC10:
	.asciz	"blob_info = 0x%x, 0x%x, 0x%x, 0x%x\n"
	.align 8
.LC11:
	.asciz	"enabling thread daemons and interrupts,  and mmu channel.\n"
	.align 8
.LC12:
	.asciz	"Info: after enabling thread %d, cr=0x%x\n"
	.align 8
.LC13:
	.asciz	"threads enabled\n"
	.align 8
.LC14:
	.asciz	"loading imem (%d bytes from 0x%x)\n"
	.align 8
.LC15:
	.asciz	"finished loading imem (%d bytes from 0x%x)\n"
	.align 8
.LC16:
	.asciz	"Info: enable AJIT interrupt 14\n"
	.align 8
.LC17:
	.asciz	"calling mmul on processor\n"
	.align 8
.LC18:
	.asciz	"calling mmul on threads\n"
	.align 8
.LC19:
	.asciz	"done with mmul\n"
	.align 8
.LC20:
	.asciz	"SUCCESS!!!\n"
	.section	".text"
	.align 4
	.global main_00
	.type	main_00, #function
	.proc	020
main_00:
	save	%sp, -96, %sp
	call	init_processor_matrices, 0
	 sethi	%hi(blob_info), %i1
	call	get_blob_info, 0
	 or	%i1, %lo(blob_info), %o0
	ld	[%i1+%lo(blob_info)], %o1
	or	%i1, %lo(blob_info), %i2
	sethi	%hi(.LC10), %o0
	ld	[%i2+4], %o2
	or	%o0, %lo(.LC10), %o0
	ld	[%i2+8], %o3
	ld	[%i2+12], %o4
	call	cortos_printf, 0
	 sethi	%hi(hms), %i3
	sethi	%hi(.LC11), %o0
	or	%o0, %lo(.LC11), %o0
	sethi	%hi(.LC12), %i0
	call	cortos_printf, 0
	 mov	0, %i5
	or	%i3, %lo(hms), %i3
	or	%i0, %lo(.LC12), %i0
	and	%i5, 0xff, %i4
.L120:
	call	wait_on_thread_init, 0
	 mov	%i4, %o0
	mov	0, %o1
	mov	0, %o2
	mov	%i4, %o3
	call	enableThreadCommandDaemon, 0
	 mov	%i3, %o0
	call	enable_dma_channel, 0
	 mov	%i5, %o0
	mov	%i3, %o0
	mov	0, %o1
	mov	0, %o2
	call	enableThreadInterrupt, 0
	 mov	%i4, %o3
	mov	%i4, %o3
	mov	0, %o4
	mov	0, %o1
	mov	0, %o2
	call	readFromEngineConfigRegister, 0
	 mov	%i3, %o0
	mov	%i5, %o1
	mov	%o0, %o2
	call	cortos_printf, 0
	 mov	%i0, %o0
	add	%i5, 1, %i5
	cmp	%i5, 4
	bne,a	.L120
	 and	%i5, 0xff, %i4
	sethi	%hi(.LC13), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC13), %o0
	ld	[%i1+%lo(blob_info)], %o1
	sethi	%hi(.LC14), %o0
	ld	[%i2+4], %o2
	call	cortos_printf, 0
	 or	%o0, %lo(.LC14), %o0
	ld	[%i1+%lo(blob_info)], %o0
	ld	[%i2+4], %o1
	call	load_imem, 0
	 srl	%o0, 2, %o0
	ld	[%i1+%lo(blob_info)], %o1
	sethi	%hi(.LC15), %o0
	ld	[%i2+4], %o2
	call	cortos_printf, 0
	 or	%o0, %lo(.LC15), %o0
	call	clear_all_registers, 0
	 nop
	sethi	%hi(.LC16), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC16), %o0
	mov	0, %o1
	mov	14, %o2
	call	enableInterrupt, 0
	 mov	0, %o0
	sethi	%hi(.LC17), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC17), %o0
	call	mmul_on_processor, 0
	 nop
	sethi	%hi(.LC18), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC18), %o0
	mov	32, %o1
	mov	512, %o2
	call	mmul_stripe_and_run_on_threads, 0
	 mov	4, %o0
	sethi	%hi(.LC19), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC19), %o0
	call	check_result_values, 0
	 nop
	cmp	%o0, 0
	bne,a	.L119
	 sethi	%hi(.LC7), %i0
	sethi	%hi(.LC20), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC20), %o0
.L119:
	call	cortos_printf, 0
	 restore %i0, %lo(.LC7), %o0
	.size	main_00, .-main_00
	.align 4
	.global my_external_interrupt_handler
	.type	my_external_interrupt_handler, #function
	.proc	020
my_external_interrupt_handler:
	save	%sp, -96, %sp
	mov	0, %o0
	mov	0, %o1
	mov	14, %o2
	sethi	%hi(hms), %i3
	mov	0, %i5
	call	disableInterrupt, 0
	 or	%i3, %lo(hms), %i3
	sethi	%hi(iflags), %i0
	mov	1, %i1
	mov	%i3, %i2
	and	%i5, 0xff, %i4
.L131:
	mov	0, %o1
	mov	0, %o2
	mov	%i4, %o3
	call	threadInterruptIsSet, 0
	 mov	%i3, %o0
	cmp	%o0, 0
	bne	.L128
	 sll	%i5, 2, %g1
	add	%i5, 1, %i5
	cmp	%i5, 4
.L130:
	bne,a	.L131
	 and	%i5, 0xff, %i4
	mov	0, %i0
	mov	0, %i1
	call	enableInterrupt, 0
	 restore %g0, 14, %o2
.L128:
	or	%i0, %lo(iflags), %g2
	mov	%i4, %o3
	mov	%i2, %o0
	mov	0, %o1
	mov	0, %o2
	st	%i1, [%g2+%g1]
	call	clearThreadInterrupt, 0
	 add	%i5, 1, %i5
	mov	%i3, %o0
	mov	0, %o1
	mov	0, %o2
	call	releaseEngineThread, 0
	 mov	%i4, %o3
	b	.L130
	 cmp	%i5, 4
	.size	my_external_interrupt_handler, .-my_external_interrupt_handler
	.common	blob_info,16,4
	.common	iflags,16,4
	.common	stop_pcs,256,4
	.common	exceptions,256,4
	.global dma_ticks
	.section	".bss"
	.align 8
	.type	dma_ticks, #object
	.size	dma_ticks, 8
dma_ticks:
	.skip	8
	.global computation_ticks
	.align 8
	.type	computation_ticks, #object
	.size	computation_ticks, 8
computation_ticks:
	.skip	8
	.global setup_ticks
	.align 8
	.type	setup_ticks, #object
	.size	setup_ticks, 8
setup_ticks:
	.skip	8
	.global engine_ticks
	.align 8
	.type	engine_ticks, #object
	.size	engine_ticks, 8
engine_ticks:
	.skip	8
	.global processor_ticks
	.align 8
	.type	processor_ticks, #object
	.size	processor_ticks, 8
processor_ticks:
	.skip	8
	.common	PRESULT,65536,64
	.common	TRESULT,65536,64
	.common	B,65536,64
	.common	A,65536,64
	.common	hms,2076,4
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
