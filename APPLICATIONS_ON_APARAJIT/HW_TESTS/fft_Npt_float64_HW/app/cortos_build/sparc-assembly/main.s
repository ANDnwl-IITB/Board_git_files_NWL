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
	sethi	%hi(59999232), %o1
	or	%o0, 512, %o0
	call	__ajit_serial_set_baudrate_via_vmap__, 0
	 or	%o1, 768, %o1
	mov	0, %o0
	call	__ajit_serial_set_uart_reset_via_vmap__, 0
	 sethi	%hi(.LC0), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC0), %o0
	.size	setup, .-setup
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	-1072094725
	.long	1413754136
	.align 8
.LC3:
	.long	1063256064
	.long	0
	.section	".text"
	.align 4
	.global init_fft_data
	.type	init_fft_data, #function
	.proc	020
init_fft_data:
	save	%sp, -120, %sp
	sethi	%hi(fft_data), %g1
	mov	0, %g2
	or	%g1, %lo(fft_data), %g1
.L3:
	st	%g2, [%fp-12]
	ld	[%fp-12], %f10
	st	%g0, [%g1+8]
	fitod	%f10, %f8
	st	%g0, [%g1+12]
	std	%f8, [%g1]
	add	%g2, 1, %g2
	cmp	%g2, 512
	bne	.L3
	 add	%g1, 16, %g1
	sethi	%hi(twiddle), %i4
	mov	0, %i5
	or	%i4, %lo(twiddle), %i4
.L4:
	st	%i5, [%fp-12]
	ld	[%fp-12], %f11
	sethi	%hi(.LC2), %g1
	fitod	%f11, %f8
	ldd	[%g1+%lo(.LC2)], %f10
	sethi	%hi(.LC3), %g1
	fmuld	%f8, %f10, %f8
	ldd	[%g1+%lo(.LC3)], %f10
	fmuld	%f8, %f10, %f8
	std	%f8, [%fp-24]
	std	%f8, [%fp-8]
	call	cos, 0
	 ldd	[%fp-24], %o0
	ldd	[%fp-8], %f8
	std	%f8, [%fp-24]
	ldd	[%fp-24], %o0
	call	sin, 0
	 std	%f0, [%i4]
	std	%f0, [%i4+8]
	add	%i5, 1, %i5
	cmp	%i5, 256
	bne	.L4
	 add	%i4, 16, %i4
	jmp	%i7+8
	 restore
	.size	init_fft_data, .-init_fft_data
	.align 4
	.global set_args
	.type	set_args, #function
	.proc	020
set_args:
	save	%sp, -112, %sp
	sethi	%hi(hms), %i3
	mov	0, %i4
	sethi	%hi(16777216), %i5
	or	%i3, %lo(hms), %i3
	std	%i4, [%fp-8]
.L20:
	st	%i5, [%sp+92]
	mov	0, %o5
	mov	%i3, %o0
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	call	writeThreadDataRegister, 0
	 mov	17, %o4
	cmp	%o0, 0
	bne,a	.L20
	 std	%i4, [%fp-8]
	mov	0, %i4
	sethi	%hi(16789504), %i5
	std	%i4, [%fp-8]
.L21:
	st	%i5, [%sp+92]
	mov	0, %o5
	mov	%i3, %o0
	mov	0, %o1
	mov	0, %o2
	mov	1, %o3
	call	writeThreadDataRegister, 0
	 mov	17, %o4
	cmp	%o0, 0
	bne,a	.L21
	 std	%i4, [%fp-8]
	mov	0, %i4
	sethi	%hi(16801792), %i5
	std	%i4, [%fp-8]
.L22:
	st	%i5, [%sp+92]
	mov	0, %o5
	mov	%i3, %o0
	mov	0, %o1
	mov	0, %o2
	mov	2, %o3
	call	writeThreadDataRegister, 0
	 mov	17, %o4
	cmp	%o0, 0
	bne,a	.L22
	 std	%i4, [%fp-8]
	mov	0, %i4
	sethi	%hi(16814080), %i5
	std	%i4, [%fp-8]
.L23:
	st	%i5, [%sp+92]
	mov	0, %o5
	mov	%i3, %o0
	mov	0, %o1
	mov	0, %o2
	mov	3, %o3
	call	writeThreadDataRegister, 0
	 mov	17, %o4
	cmp	%o0, 0
	bne,a	.L23
	 std	%i4, [%fp-8]
	jmp	%i7+8
	 restore
	.size	set_args, .-set_args
	.section	.rodata.str1.8
	.align 8
.LC4:
	.asciz	"0x%llx = REG[%d] TID=%d\n"
	.section	".text"
	.align 4
	.global dump_registers
	.type	dump_registers, #function
	.proc	020
dump_registers:
	save	%sp, -104, %sp
	sethi	%hi(hms), %i4
	sethi	%hi(.LC4), %i1
	mov	0, %i2
	and	%i0, 0xff, %i3
	or	%i4, %lo(hms), %i4
	or	%i1, %lo(.LC4), %i1
	and	%i2, 0xff, %i5
.L30:
	mov	%i4, %o0
.L29:
	mov	0, %o1
	mov	0, %o2
	mov	%i3, %o3
	mov	%i5, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne	.L29
	 mov	%i4, %o0
	mov	%i2, %o3
	mov	%i1, %o0
	ld	[%fp-8], %o1
	ld	[%fp-4], %o2
	call	cortos_printf, 0
	 mov	%i0, %o4
	add	%i2, 1, %i2
	cmp	%i2, 32
	bne	.L30
	 and	%i2, 0xff, %i5
	jmp	%i7+8
	 restore
	.size	dump_registers, .-dump_registers
	.section	.rodata.str1.8
	.align 8
.LC5:
	.asciz	"ptr0[%d] = %d, expected 2\n"
	.align 8
.LC6:
	.asciz	"ptr1[%d] = %d, expected 2\n"
	.section	".text"
	.align 4
	.global ptr_check
	.type	ptr_check, #function
	.proc	020
ptr_check:
	save	%sp, -96, %sp
	sethi	%hi(.LC5), %l0
	sethi	%hi(.LC6), %i0
	sethi	%hi(16777216), %i5
	sethi	%hi(-16777216), %i1
	or	%l0, %lo(.LC5), %l0
	sethi	%hi(49152), %i2
	or	%i0, %lo(.LC6), %i0
	sethi	%hi(16826368), %i3
	ldub	[%i5], %o2
.L42:
	cmp	%o2, 2
	be	.L32
	 add	%i5, %i1, %i4
	mov	%i4, %o1
	call	cortos_printf, 0
	 mov	%l0, %o0
.L32:
	ldub	[%i5+%i2], %g1
	cmp	%g1, 2
	be	.L33
	 mov	%i0, %o0
	ldub	[%i5], %o2
	call	cortos_printf, 0
	 mov	%i4, %o1
.L33:
	add	%i5, 1, %i5
	cmp	%i5, %i3
	bne,a	.L42
	 ldub	[%i5], %o2
	jmp	%i7+8
	 restore
	.size	ptr_check, .-ptr_check
	.align 4
	.global wait_on_thread_init
	.type	wait_on_thread_init, #function
	.proc	016
wait_on_thread_init:
	save	%sp, -96, %sp
	sethi	%hi(hms), %i5
	b	.L45
	 or	%i5, %lo(hms), %i5
.L46:
	call	__ajit_sleep__, 0
	 mov	1024, %o0
.L45:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	%i0, %o4
	mov	0, %o5
	call	readFromConfigRegister, 0
	 mov	%i5, %o0
	andcc	%o0, 128, %g0
	be	.L46
	 nop
	jmp	%i7+8
	 restore %g0, %o0, %o0
	.size	wait_on_thread_init, .-wait_on_thread_init
	.section	.rodata.str1.8
	.align 8
.LC7:
	.asciz	"Error: init reg-val of r%d is 0x%llx\n"
	.section	".text"
	.align 4
	.global clear_registers
	.type	clear_registers, #function
	.proc	020
clear_registers:
	save	%sp, -120, %sp
	sethi	%hi(hms), %i2
	sethi	%hi(.LC7), %i1
	mov	0, %i4
	mov	0, %i5
	and	%i0, 0xff, %i0
	or	%i2, %lo(hms), %i2
	or	%i1, %lo(.LC7), %i1
.L61:
	and	%i5, 0xff, %i3
.L66:
	st	%g0, [%fp-16]
.L64:
	st	%g0, [%fp-12]
	st	%g0, [%sp+92]
	mov	0, %o5
	mov	%i2, %o0
	mov	0, %o1
	mov	0, %o2
	mov	%i0, %o3
	call	writeThreadDataRegister, 0
	 mov	%i3, %o4
	cmp	%o0, 0
	bne,a	.L64
	 st	%g0, [%fp-16]
	mov	%i2, %o0
.L65:
	mov	0, %o1
	mov	0, %o2
	mov	%i0, %o3
	mov	%i3, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L65
	 mov	%i2, %o0
	ldd	[%fp-8], %o2
	orcc	%o2, %o3, %g0
	bne	.L62
	 mov	%i1, %o0
	addcc	%i5, 1, %g3
.L63:
	addx	%i4, 0, %g2
	mov	%g3, %i5
	cmp	%g2, 0
	bne	.L61
	 mov	%g2, %i4
	cmp	%g3, 32
	bne	.L66
	 and	%i5, 0xff, %i3
	jmp	%i7+8
	 restore
.L62:
	call	cortos_printf, 0
	 mov	%i5, %o1
	b	.L63
	 addcc	%i5, 1, %g3
	.size	clear_registers, .-clear_registers
	.align 4
	.global clear_all_registers
	.type	clear_all_registers, #function
	.proc	020
clear_all_registers:
	save	%sp, -96, %sp
	call	clear_registers, 0
	 mov	0, %o0
	call	clear_registers, 0
	 mov	1, %o0
	mov	2, %o0
	call	clear_registers, 0
	 mov	3, %i0
	call	clear_registers, 0
	 restore
	.size	clear_all_registers, .-clear_all_registers
	.section	.rodata.str1.8
	.align 8
.LC8:
	.asciz	"load_imem: number_of_words = %d, base_addr = 0x%x\n"
	.align 8
.LC9:
	.asciz	"Error: load_imem [%d] mismatch  0x%x != 0x%x\n"
	.section	".text"
	.align 4
	.global load_imem
	.type	load_imem, #function
	.proc	020
load_imem:
	save	%sp, -104, %sp
	sethi	%hi(.LC8), %o0
	mov	%i0, %o1
	or	%o0, %lo(.LC8), %o0
	call	cortos_printf, 0
	 mov	%i1, %o2
	cmp	%i0, 0
	be	.L81
	 mov	0, %i5
	sethi	%hi(hms), %i4
	sethi	%hi(.LC9), %i2
	or	%i4, %lo(hms), %i4
	or	%i2, %lo(.LC9), %i2
.L75:
	ld	[%i1], %i3
	mov	%i4, %o0
.L79:
	mov	0, %o1
	mov	0, %o2
	mov	%i5, %o3
	call	writeInstructionToEngineInstrMemory, 0
	 mov	%i3, %o4
	cmp	%o0, 0
	bne	.L79
	 mov	%i4, %o0
	st	%g0, [%fp-4]
.L80:
	mov	0, %o1
	mov	0, %o2
	mov	%i5, %o3
	call	readInstructionFromEngineInstrMemory, 0
	 add	%fp, -4, %o4
	cmp	%o0, 0
	bne	.L80
	 mov	%i4, %o0
	ld	[%fp-4], %o3
	cmp	%i3, %o3
	be	.L72
	 mov	%i2, %o0
	mov	%i5, %o1
	call	cortos_printf, 0
	 mov	%i3, %o2
.L72:
	add	%i5, 1, %i5
	cmp	%i5, %i0
	bne	.L75
	 add	%i1, 4, %i1
.L81:
	jmp	%i7+8
	 restore
	.size	load_imem, .-load_imem
	.section	.rodata.str1.8
	.align 8
.LC10:
	.asciz	"Info: dmem [0x%x] = 0x%llx \n"
	.section	".text"
	.align 4
	.global load_dmem
	.type	load_dmem, #function
	.proc	020
load_dmem:
	save	%sp, -96, %sp
	sethi	%hi(.LC10), %i2
	srl	%i0, 2, %i0
	mov	0, %i3
	cmp	%i0, 0
	be	.L88
	 or	%i2, %lo(.LC10), %i2
.L86:
	ld	[%i1+8], %o2
	ld	[%i1], %g1
	sll	%g1, 3, %g1
	ld	[%i1+4], %i4
	mov	%o2, %o3
	mov	0, %i5
	mov	0, %o2
	or	%i5, %o3, %o3
	or	%i4, %o2, %o2
	mov	%i2, %o0
	mov	%g1, %o1
	call	cortos_printf, 0
	 std	%o2, [%g1]
	add	%i3, 3, %i3
	cmp	%i0, %i3
	bgu	.L86
	 add	%i1, 12, %i1
.L88:
	jmp	%i7+8
	 restore
	.size	load_dmem, .-load_dmem
	.align 4
	.global dotp_on_processor
	.type	dotp_on_processor, #function
	.proc	020
dotp_on_processor:
	sethi	%hi(byte_array), %g4
	mov	0, %g1
	or	%g4, %lo(byte_array), %g4
	mov	2, %g3
	sethi	%hi(49152), %g2
.L90:
	stb	%g3, [%g4+%g1]
	add	%g4, %g1, %o5
	add	%g1, 1, %g1
	cmp	%g1, %g2
	bne	.L90
	 stb	%g3, [%o5+%g2]
	jmp	%o7+8
	 nop
	.size	dotp_on_processor, .-dotp_on_processor
	.section	.rodata.str1.8
	.align 8
.LC11:
	.asciz	"Processor FFT completed.\n"
	.align 8
.LC12:
	.asciz	"Processor ticks = %lld\n"
	.section	".text"
	.align 4
	.global fft512_on_processor
	.type	fft512_on_processor, #function
	.proc	020
fft512_on_processor:
	save	%sp, -4096, %sp
	sethi	%hi(twiddle), %g4
	add	%sp, -96, %sp
	mov	0, %g1
	add	%fp, -4096, %i1
	or	%g4, %lo(twiddle), %g4
	sethi	%hi(4096), %i4
.L93:
	ldd	[%g4+%g1], %g2
	std	%g2, [%i1+%g1]
	add	%i1, %g1, %i5
	add	%g4, %g1, %g2
	ldd	[%g2+8], %g2
	add	%g1, 16, %g1
	cmp	%g1, %i4
	bne	.L93
	 std	%g2, [%i5+8]
	call	__ajit_get_clock_time, 0
	 nop
	sethi	%hi(fft_data), %g2
	mov	%o0, %i4
	mov	%o1, %i5
	mov	9, %o4
	mov	512, %o3
	or	%g2, %lo(fft_data), %g2
.L98:
	srl	%o3, 1, %o7
	mov	0, %i0
	sll	%i0, 4, %g3
.L107:
	mov	0, %g1
	add	%g2, %g3, %g3
	add	%i0, %o7, %o5
.L95:
	add	%g1, %i0, %i2
	add	%o5, %g1, %g4
	sll	%i2, 4, %i2
	sll	%g4, 4, %g4
	ldd	[%g2+%i2], %f10
	ldd	[%g2+%g4], %f8
	add	%g2, %g4, %i3
	faddd	%f10, %f8, %f18
	ldd	[%i3+8], %f12
	add	%g2, %i2, %i2
	ldd	[%i2+8], %f14
	std	%f18, [%g3]
	faddd	%f14, %f12, %f16
	std	%f16, [%g3+8]
	sll	%g1, 4, %i2
	fsubd	%f10, %f8, %f10
	fsubd	%f14, %f12, %f12
	ldd	[%i1+%i2], %f14
	add	%i1, %i2, %i2
	fmuld	%f10, %f14, %f16
	ldd	[%i2+8], %f8
	fmuld	%f12, %f14, %f14
	fmuld	%f12, %f8, %f12
	fmuld	%f10, %f8, %f8
	fsubd	%f16, %f12, %f12
	faddd	%f8, %f14, %f8
	std	%f12, [%g2+%g4]
	std	%f8, [%i3+8]
	add	%g1, 1, %g1
	cmp	%o7, %g1
	bgu	.L95
	 add	%g3, 16, %g3
	add	%i0, %o3, %i0
	cmp	%i0, 511
	bleu,a	.L107
	 sll	%i0, 4, %g3
	cmp	%o3, 2
	be,a	.L108
	 addcc	%o4, -1, %o4
	mov	0, %g1
.L97:
	add	%g1, %g1, %g4
	sll	%g4, 4, %g4
	ldd	[%i1+%g4], %f10
	sll	%g1, 4, %g3
	add	%i1, %g4, %g4
	add	%i1, %g3, %i3
	ldd	[%g4+8], %f8
	fmuld	%f10, %f10, %f14
	fmuld	%f8, %f8, %f12
	fmuld	%f10, %f8, %f8
	fsubd	%f14, %f12, %f10
	faddd	%f8, %f8, %f8
	std	%f10, [%i1+%g3]
	add	%g1, 1, %g1
	cmp	%g1, 256
	bne	.L97
	 std	%f8, [%i3+8]
	addcc	%o4, -1, %o4
.L108:
	bne	.L98
	 mov	%o7, %o3
	call	__ajit_get_clock_time, 0
	 sethi	%hi(processor_ticks), %i3
	subcc	%o1, %i5, %i5
	subx	%o0, %i4, %i4
	sll	%i5, 2, %g3
	srl	%i5, 30, %g1
	sll	%i4, 2, %g2
	or	%g1, %g2, %g2
	sethi	%hi(.LC11), %o0
	std	%g2, [%i3+%lo(processor_ticks)]
	call	cortos_printf, 0
	 or	%o0, %lo(.LC11), %o0
	ldd	[%i3+%lo(processor_ticks)], %g2
	sethi	%hi(.LC12), %i0
	mov	%g2, %i1
	mov	%g3, %i2
	call	cortos_printf, 0
	 restore %i0, %lo(.LC12), %o0
	.size	fft512_on_processor, .-fft512_on_processor
	.section	.rodata.str1.8
	.align 8
.LC13:
	.asciz	"Starting fft on engine threads\n"
	.align 8
.LC14:
	.asciz	"Starting fft on engine thread %d\n"
	.align 8
.LC15:
	.asciz	"Thread %d:  exceptions=0x%x, stop_pc=0x%x\n"
	.align 8
.LC16:
	.asciz	"Completed fft on engine threads\n"
	.align 8
.LC17:
	.asciz	"Ticks.  t0 = 0x%llx, t1=0x%llx, delta=%lld,%lld\n"
	.section	".text"
	.align 4
	.global fft_across_all_threads
	.type	fft_across_all_threads, #function
	.proc	020
fft_across_all_threads:
	save	%sp, -152, %sp
	sethi	%hi(.LC13), %o0
	sethi	%hi(.LC14), %i4
	or	%o0, %lo(.LC13), %o0
	call	cortos_printf, 0
	 mov	0, %i5
	or	%i4, %lo(.LC14), %i4
	mov	%i5, %o1
.L122:
	call	cortos_printf, 0
	 mov	%i4, %o0
	call	clear_registers, 0
	 mov	%i5, %o0
	call	set_args, 0
	 add	%i5, 1, %i5
	cmp	%i5, 4
	bne	.L122
	 mov	%i5, %o1
	call	__ajit_get_clock_time, 0
	 sethi	%hi(hms), %i1
	mov	%o0, %i2
	mov	%o1, %i3
	mov	0, %i4
	or	%i1, %lo(hms), %i1
	and	%i4, 0xff, %i5
	mov	%i1, %o0
.L123:
	mov	0, %o1
	mov	0, %o2
	mov	%i5, %o3
	call	runEngineThread, 0
	 mov	0, %o4
	cmp	%o0, 0
	bne	.L123
	 mov	%i1, %o0
	add	%i4, 1, %i4
	cmp	%i4, 4
	bne	.L123
	 and	%i4, 0xff, %i5
	call	__ajit_get_clock_time, 0
	 mov	0, %l2
	mov	%o0, %i4
	mov	%o1, %i5
	add	%fp, -32, %l3
	add	%fp, -16, %l4
	mov	%i1, %l1
	sll	%l2, 2, %i1
.L125:
	and	%l2, 0xff, %l0
	add	%l3, %i1, %i0
	add	%l4, %i1, %i1
	mov	%l1, %o0
.L124:
	mov	0, %o1
	mov	0, %o2
	mov	%l0, %o3
	mov	%i0, %o4
	call	checkIfThreadHasCompleted, 0
	 mov	%i1, %o5
	cmp	%o0, 0
	bne,a	.L124
	 mov	%l1, %o0
	add	%l2, 1, %l2
	cmp	%l2, 4
	bne	.L125
	 sll	%l2, 2, %i1
	call	__ajit_get_clock_time, 0
	 sethi	%hi(.LC15), %l2
	sethi	%hi(accel_ticks), %g1
	subcc	%o1, %i5, %i1
	subx	%o0, %i4, %i0
	mov	0, %l1
	std	%i0, [%g1+%lo(accel_ticks)]
	mov	0, %l0
	or	%l2, %lo(.LC15), %l2
.L115:
	mov	%l0, %o1
	ld	[%l3+%l1], %o2
	ld	[%l4+%l1], %o3
	call	cortos_printf, 0
	 mov	%l2, %o0
	add	%l0, 1, %l0
	cmp	%l0, 4
	bne	.L115
	 add	%l1, 4, %l1
	sethi	%hi(.LC16), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC16), %o0
	std	%i0, [%fp-40]
	ld	[%fp-40], %g1
	subcc	%i5, %i3, %g3
	st	%g1, [%sp+96]
	subx	%i4, %i2, %g2
	ld	[%fp-36], %g1
	st	%g3, [%sp+92]
	st	%g1, [%sp+100]
	std	%g2, [%fp-40]
	mov	%g2, %o5
	sethi	%hi(.LC17), %o0
	mov	%i2, %o1
	mov	%i3, %o2
	mov	%i4, %o3
	mov	%i5, %o4
	call	cortos_printf, 0
	 or	%o0, %lo(.LC17), %o0
	jmp	%i7+8
	 restore
	.size	fft_across_all_threads, .-fft_across_all_threads
	.section	.rodata.str1.8
	.align 8
.LC18:
	.asciz	"blob_info = 0x%x, 0x%x, 0x%x, 0x%x\n"
	.align 8
.LC19:
	.asciz	"enabling threads\n"
	.align 8
.LC20:
	.asciz	"threads enabled\n"
	.align 8
.LC21:
	.asciz	"loading imem (%d bytes from 0x%x)\n"
	.align 8
.LC22:
	.asciz	"finished loading imem (%d bytes from 0x%x)\n"
	.align 8
.LC23:
	.asciz	"loading dmem (%d bytes from 0x%x)\n"
	.align 8
.LC24:
	.asciz	"calling fft\n"
	.align 8
.LC25:
	.asciz	"done with fft\n"
	.align 8
.LC26:
	.asciz	"ptr[%d]=0x%llx ,   %F\n "
	.align 8
.LC27:
	.asciz	"Finished dumping output\n"
	.section	".text"
	.align 4
	.global main_00
	.type	main_00, #function
	.proc	020
main_00:
	save	%sp, -96, %sp
	sethi	%hi(blob_info), %i2
	call	get_blob_info, 0
	 or	%i2, %lo(blob_info), %o0
	ld	[%i2+%lo(blob_info)], %o1
	or	%i2, %lo(blob_info), %i4
	sethi	%hi(.LC18), %o0
	ld	[%i4+4], %o2
	or	%o0, %lo(.LC18), %o0
	ld	[%i4+8], %o3
	ld	[%i4+12], %o4
	call	cortos_printf, 0
	 sethi	%hi(hms), %i1
	sethi	%hi(.LC19), %o0
	or	%o0, %lo(.LC19), %o0
	mov	0, %i3
	call	cortos_printf, 0
	 mov	0, %i5
	or	%i1, %lo(hms), %i1
.L127:
	call	wait_on_thread_init, 0
	 mov	%i5, %o0
	mov	%i5, %o3
	mov	%i1, %o0
	mov	0, %o1
	call	enableThreadCommandDaemon, 0
	 mov	0, %o2
	add	%i3, 1, %i3
	and	%i3, 0xff, %i5
	cmp	%i5, 4
	bne	.L127
	 sethi	%hi(.LC20), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC20), %o0
	ld	[%i2+%lo(blob_info)], %o1
	sethi	%hi(.LC21), %o0
	ld	[%i4+4], %o2
	call	cortos_printf, 0
	 or	%o0, %lo(.LC21), %o0
	ld	[%i2+%lo(blob_info)], %o0
	ld	[%i4+4], %o1
	call	load_imem, 0
	 srl	%o0, 2, %o0
	ld	[%i2+%lo(blob_info)], %o1
	sethi	%hi(.LC22), %i5
	ld	[%i4+4], %o2
	call	cortos_printf, 0
	 or	%i5, %lo(.LC22), %o0
	ld	[%i4+8], %o1
	sethi	%hi(.LC23), %o0
	ld	[%i4+12], %o2
	call	cortos_printf, 0
	 or	%o0, %lo(.LC23), %o0
	ld	[%i4+8], %o0
	ld	[%i4+12], %o1
	call	load_dmem, 0
	 nop
	ld	[%i4+8], %o1
	or	%i5, %lo(.LC22), %o0
	ld	[%i4+12], %o2
	call	cortos_printf, 0
	 sethi	%hi(.LC26), %i3
	call	clear_all_registers, 0
	 sethi	%hi(16777216), %i4
	call	set_args, 0
	 mov	0, %o0
	call	set_args, 0
	 mov	1, %o0
	call	set_args, 0
	 mov	2, %o0
	call	set_args, 0
	 mov	3, %o0
	sethi	%hi(.LC24), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC24), %o0
	call	fft512_on_processor, 0
	 mov	0, %i5
	call	fft_across_all_threads, 0
	 sethi	%hi(6144), %i2
	sethi	%hi(.LC25), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC25), %o0
	or	%i3, %lo(.LC26), %i3
.L128:
	ldd	[%i4], %o2
	mov	%i5, %o1
	mov	%i3, %o0
	mov	%o2, %o4
	call	cortos_printf, 0
	 mov	%o3, %o5
	add	%i5, 1, %i5
	cmp	%i5, %i2
	bne	.L128
	 add	%i4, 8, %i4
	sethi	%hi(.LC27), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC27), %o0
	call	dump_registers, 0
	 mov	0, %o0
	call	dump_registers, 0
	 mov	1, %o0
	mov	2, %o0
	call	dump_registers, 0
	 mov	3, %i0
	call	dump_registers, 0
	 restore
	.size	main_00, .-main_00
	.common	byte_array,98304,8
	.common	blob_info,16,4
	.common	accel_ticks,8,8
	.common	processor_ticks,8,8
	.common	twiddle,4096,8
	.common	fft_data,8192,8
	.common	hms,2076,4
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
