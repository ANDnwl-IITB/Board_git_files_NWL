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
.L15:
	st	%i5, [%sp+92]
	mov	0, %o5
	mov	%i3, %o0
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	call	writeThreadDataRegister, 0
	 mov	7, %o4
	cmp	%o0, 0
	bne,a	.L15
	 std	%i4, [%fp-8]
	mov	0, %i4
	sethi	%hi(16793600), %i5
	std	%i4, [%fp-8]
.L16:
	st	%i5, [%sp+92]
	mov	0, %o5
	mov	%i3, %o0
	mov	0, %o1
	mov	0, %o2
	mov	1, %o3
	call	writeThreadDataRegister, 0
	 mov	7, %o4
	cmp	%o0, 0
	bne,a	.L16
	 std	%i4, [%fp-8]
	mov	0, %i4
	sethi	%hi(16809984), %i5
	std	%i4, [%fp-8]
.L17:
	st	%i5, [%sp+92]
	mov	0, %o5
	mov	%i3, %o0
	mov	0, %o1
	mov	0, %o2
	mov	2, %o3
	call	writeThreadDataRegister, 0
	 mov	7, %o4
	cmp	%o0, 0
	bne,a	.L17
	 std	%i4, [%fp-8]
	mov	0, %i4
	sethi	%hi(16826368), %i5
	std	%i4, [%fp-8]
.L18:
	st	%i5, [%sp+92]
	mov	0, %o5
	mov	%i3, %o0
	mov	0, %o1
	mov	0, %o2
	mov	3, %o3
	call	writeThreadDataRegister, 0
	 mov	7, %o4
	cmp	%o0, 0
	bne,a	.L18
	 std	%i4, [%fp-8]
	jmp	%i7+8
	 restore
	.size	set_args, .-set_args
	.section	.rodata.str1.8
	.align 8
.LC1:
	.asciz	"0x%llx = REG[%d] TID=%d\n"
	.section	".text"
	.align 4
	.global dump_registers
	.type	dump_registers, #function
	.proc	020
dump_registers:
	save	%sp, -104, %sp
	sethi	%hi(hms), %i4
	sethi	%hi(.LC1), %i1
	mov	0, %i2
	and	%i0, 0xff, %i3
	or	%i4, %lo(hms), %i4
	or	%i1, %lo(.LC1), %i1
	and	%i2, 0xff, %i5
.L25:
	mov	%i4, %o0
.L24:
	mov	0, %o1
	mov	0, %o2
	mov	%i3, %o3
	mov	%i5, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne	.L24
	 mov	%i4, %o0
	mov	%i2, %o3
	mov	%i1, %o0
	ld	[%fp-8], %o1
	ld	[%fp-4], %o2
	call	cortos_printf, 0
	 mov	%i0, %o4
	add	%i2, 1, %i2
	cmp	%i2, 32
	bne	.L25
	 and	%i2, 0xff, %i5
	jmp	%i7+8
	 restore
	.size	dump_registers, .-dump_registers
	.section	.rodata.str1.8
	.align 8
.LC2:
	.asciz	"ptr0[%d] = %d, expected 2\n"
	.align 8
.LC3:
	.asciz	"ptr1[%d] = %d, expected 2\n"
	.section	".text"
	.align 4
	.global ptr_check
	.type	ptr_check, #function
	.proc	020
ptr_check:
	save	%sp, -96, %sp
	sethi	%hi(.LC2), %l0
	sethi	%hi(10240), %i2
	sethi	%hi(.LC3), %i0
	sethi	%hi(16787456), %i3
	sethi	%hi(16777216), %i5
	sethi	%hi(-16777216), %i1
	or	%l0, %lo(.LC2), %l0
	or	%i2, 160, %i2
	or	%i0, %lo(.LC3), %i0
	or	%i3, 160, %i3
	ldub	[%i5], %o2
.L37:
	cmp	%o2, 2
	be	.L27
	 add	%i5, %i1, %i4
	mov	%i4, %o1
	call	cortos_printf, 0
	 mov	%l0, %o0
.L27:
	ldub	[%i5+%i2], %g1
	cmp	%g1, 2
	be	.L28
	 mov	%i0, %o0
	ldub	[%i5], %o2
	call	cortos_printf, 0
	 mov	%i4, %o1
.L28:
	add	%i5, 1, %i5
	cmp	%i5, %i3
	bne,a	.L37
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
	b	.L40
	 or	%i5, %lo(hms), %i5
.L41:
	call	__ajit_sleep__, 0
	 mov	1024, %o0
.L40:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	%i0, %o4
	mov	0, %o5
	call	readFromConfigRegister, 0
	 mov	%i5, %o0
	andcc	%o0, 128, %g0
	be	.L41
	 nop
	jmp	%i7+8
	 restore %g0, %o0, %o0
	.size	wait_on_thread_init, .-wait_on_thread_init
	.section	.rodata.str1.8
	.align 8
.LC4:
	.asciz	"Error: init reg-val of r%d is 0x%llx\n"
	.section	".text"
	.align 4
	.global clear_registers
	.type	clear_registers, #function
	.proc	020
clear_registers:
	save	%sp, -120, %sp
	sethi	%hi(hms), %i2
	sethi	%hi(.LC4), %i1
	mov	0, %i4
	mov	0, %i5
	and	%i0, 0xff, %i0
	or	%i2, %lo(hms), %i2
	or	%i1, %lo(.LC4), %i1
.L56:
	and	%i5, 0xff, %i3
.L61:
	st	%g0, [%fp-16]
.L59:
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
	bne,a	.L59
	 st	%g0, [%fp-16]
	mov	%i2, %o0
.L60:
	mov	0, %o1
	mov	0, %o2
	mov	%i0, %o3
	mov	%i3, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L60
	 mov	%i2, %o0
	ldd	[%fp-8], %o2
	orcc	%o2, %o3, %g0
	bne	.L57
	 mov	%i1, %o0
	addcc	%i5, 1, %g3
.L58:
	addx	%i4, 0, %g2
	mov	%g3, %i5
	cmp	%g2, 0
	bne	.L56
	 mov	%g2, %i4
	cmp	%g3, 32
	bne	.L61
	 and	%i5, 0xff, %i3
	jmp	%i7+8
	 restore
.L57:
	call	cortos_printf, 0
	 mov	%i5, %o1
	b	.L58
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
.LC5:
	.asciz	"load_imem: number_of_words = %d, base_addr = 0x%x\n"
	.align 8
.LC6:
	.asciz	"Error: load_imem [%d] mismatch  0x%x != 0x%x\n"
	.section	".text"
	.align 4
	.global load_imem
	.type	load_imem, #function
	.proc	020
load_imem:
	save	%sp, -104, %sp
	sethi	%hi(.LC5), %o0
	mov	%i0, %o1
	or	%o0, %lo(.LC5), %o0
	call	cortos_printf, 0
	 mov	%i1, %o2
	cmp	%i0, 0
	be	.L76
	 mov	0, %i5
	sethi	%hi(hms), %i4
	sethi	%hi(.LC6), %i2
	or	%i4, %lo(hms), %i4
	or	%i2, %lo(.LC6), %i2
.L70:
	ld	[%i1], %i3
	mov	%i4, %o0
.L74:
	mov	0, %o1
	mov	0, %o2
	mov	%i5, %o3
	call	writeInstructionToEngineInstrMemory, 0
	 mov	%i3, %o4
	cmp	%o0, 0
	bne	.L74
	 mov	%i4, %o0
	st	%g0, [%fp-4]
.L75:
	mov	0, %o1
	mov	0, %o2
	mov	%i5, %o3
	call	readInstructionFromEngineInstrMemory, 0
	 add	%fp, -4, %o4
	cmp	%o0, 0
	bne	.L75
	 mov	%i4, %o0
	ld	[%fp-4], %o3
	cmp	%i3, %o3
	be	.L67
	 mov	%i2, %o0
	mov	%i5, %o1
	call	cortos_printf, 0
	 mov	%i3, %o2
.L67:
	add	%i5, 1, %i5
	cmp	%i5, %i0
	bne	.L70
	 add	%i1, 4, %i1
.L76:
	jmp	%i7+8
	 restore
	.size	load_imem, .-load_imem
	.section	.rodata.str1.8
	.align 8
.LC7:
	.asciz	"Info: dmem [0x%x] = 0x%llx \n"
	.section	".text"
	.align 4
	.global load_dmem
	.type	load_dmem, #function
	.proc	020
load_dmem:
	save	%sp, -96, %sp
	sethi	%hi(.LC7), %i2
	srl	%i0, 2, %i0
	mov	0, %i3
	cmp	%i0, 0
	be	.L83
	 or	%i2, %lo(.LC7), %i2
.L81:
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
	bgu	.L81
	 add	%i1, 12, %i1
.L83:
	jmp	%i7+8
	 restore
	.size	load_dmem, .-load_dmem
	.section	.rodata.str1.8
	.align 8
.LC8:
	.asciz	"dotp_on_processor: result=%d, ticks=%lld\n"
	.section	".text"
	.align 4
	.global dotp_on_processor
	.type	dotp_on_processor, #function
	.proc	020
dotp_on_processor:
	save	%sp, -96, %sp
	sethi	%hi(byte_array), %i3
	sethi	%hi(10240), %g2
	mov	0, %g1
	or	%i3, %lo(byte_array), %i3
	mov	2, %g3
	or	%g2, 160, %g2
.L85:
	stb	%g3, [%i3+%g1]
	add	%i3, %g1, %g4
	add	%g1, 1, %g1
	cmp	%g1, %g2
	bne	.L85
	 stb	%g3, [%g4+%g2]
	call	__ajit_get_clock_time, 0
	 mov	0, %i1
	sethi	%hi(10240), %g2
	mov	%o0, %i4
	mov	%o1, %i5
	mov	0, %g1
	or	%g2, 160, %g2
.L86:
	ldub	[%i3+%g1], %g4
	add	%i3, %g1, %g3
	add	%g1, 1, %g1
	ldub	[%g3+%g2], %g3
	cmp	%g1, %g2
	smul	%g4, %g3, %g3
	bne	.L86
	 add	%i1, %g3, %i1
	call	__ajit_get_clock_time, 0
	 sethi	%hi(.LC8), %i0
	sethi	%hi(processor_ticks), %g1
	subcc	%o1, %i5, %o1
	subx	%o0, %i4, %o0
	srl	%o1, 30, %g4
	sll	%o0, 2, %g2
	sll	%o1, 2, %g3
	or	%g4, %g2, %g2
	or	%i0, %lo(.LC8), %i0
	std	%g2, [%g1+%lo(processor_ticks)]
	ldd	[%g1+%lo(processor_ticks)], %i2
	call	cortos_printf, 0
	 restore
	.size	dotp_on_processor, .-dotp_on_processor
	.section	.rodata.str1.8
	.align 8
.LC9:
	.asciz	"matmul_on_processor: ticks=%lld\n"
	.section	".text"
	.align 4
	.global matmul_on_processor
	.type	matmul_on_processor, #function
	.proc	020
matmul_on_processor:
	save	%sp, -96, %sp
	sethi	%hi(byte_array), %i2
	mov	2, %g4
	or	%i2, %lo(byte_array), %i2
	add	%i2, 2048, %i1
	mov	%i2, %g1
	mov	%i2, %g2
	mov	%i1, %g3
	stb	%g4, [%g1]
.L102:
	add	%g1, 1, %g1
	cmp	%g1, %g3
	bne,a	.L102
	 stb	%g4, [%g1]
	mov	%i1, %g1
	add	%i1, 2048, %g4
	mov	2, %g3
	stb	%g3, [%g1]
.L103:
	add	%g1, 1, %g1
	cmp	%g1, %g4
	bne,a	.L103
	 stb	%g3, [%g1]
	sethi	%hi(8192), %g1
	sethi	%hi(byte_array+4096), %l0
	add	%g2, %g1, %g2
	or	%l0, %lo(byte_array+4096), %l0
	mov	%l0, %g1
	st	%g0, [%g1]
.L104:
	add	%g1, 4, %g1
	cmp	%g1, %g2
	bne,a	.L104
	 st	%g0, [%g1]
	call	__ajit_get_clock_time, 0
	 mov	0, %i0
	mov	%o0, %i4
	mov	%o1, %i5
.L93:
	mov	%l0, %o5
	mov	0, %o7
.L97:
	mov	%o7, %g2
	mov	0, %g3
	mov	0, %g1
.L94:
	add	%i2, %g1, %i3
	ldub	[%i1+%g2], %g4
	ldub	[%i3+%i0], %i3
	add	%g1, 1, %g1
	smul	%i3, %g4, %g4
	add	%g2, 32, %g2
	cmp	%g1, 64
	bne	.L94
	 add	%g3, %g4, %g3
	st	%g3, [%o5]
	add	%o7, 1, %o7
	cmp	%o7, 32
	bne	.L97
	 add	%o5, 4, %o5
	add	%i0, 64, %i0
	cmp	%i0, 2048
	bne	.L93
	 add	%l0, 128, %l0
	call	__ajit_get_clock_time, 0
	 sethi	%hi(.LC9), %i0
	sethi	%hi(processor_ticks), %g1
	subcc	%o1, %i5, %o1
	subx	%o0, %i4, %o0
	or	%i0, %lo(.LC9), %i0
	std	%o0, [%g1+%lo(processor_ticks)]
	ldd	[%g1+%lo(processor_ticks)], %g2
	mov	%g2, %i1
	call	cortos_printf, 0
	 restore %g0, %g3, %o2
	.size	matmul_on_processor, .-matmul_on_processor
	.section	.rodata.str1.8
	.align 8
.LC10:
	.asciz	"Starting fft on engine threads\n"
	.align 8
.LC11:
	.asciz	"Starting fft on engine thread %d\n"
	.align 8
.LC12:
	.asciz	"Thread %d:  exceptions=0x%x, stop_pc=0x%x\n"
	.align 8
.LC13:
	.asciz	"Completed fft on engine threads\n"
	.align 8
.LC14:
	.asciz	"Ticks.  t1 = 0x%llx, t2=0x%llx, net tick count=%lld\n"
	.section	".text"
	.align 4
	.global fft_across_all_threads
	.type	fft_across_all_threads, #function
	.proc	020
fft_across_all_threads:
	save	%sp, -144, %sp
	sethi	%hi(.LC10), %o0
	sethi	%hi(.LC11), %i4
	or	%o0, %lo(.LC10), %o0
	call	cortos_printf, 0
	 mov	0, %i5
	or	%i4, %lo(.LC11), %i4
	mov	%i5, %o1
.L118:
	call	cortos_printf, 0
	 mov	%i4, %o0
	call	clear_registers, 0
	 mov	%i5, %o0
	call	set_args, 0
	 add	%i5, 1, %i5
	cmp	%i5, 4
	bne	.L118
	 mov	%i5, %o1
	call	__ajit_get_clock_time, 0
	 sethi	%hi(hms), %i4
	mov	0, %i3
	or	%i4, %lo(hms), %i4
	and	%i3, 0xff, %i5
	mov	%i4, %o0
.L119:
	mov	0, %o1
	mov	0, %o2
	mov	%i5, %o3
	call	runEngineThread, 0
	 mov	0, %o4
	cmp	%o0, 0
	bne	.L119
	 mov	%i4, %o0
	add	%i3, 1, %i3
	cmp	%i3, 4
	bne	.L119
	 and	%i3, 0xff, %i5
	call	__ajit_get_clock_time, 0
	 mov	0, %l0
	mov	%o0, %i2
	mov	%o1, %i3
	add	%fp, -32, %l1
	add	%fp, -16, %l2
	mov	%i4, %i0
	sll	%l0, 2, %i5
.L121:
	and	%l0, 0xff, %i1
	add	%l1, %i5, %i4
	add	%l2, %i5, %i5
	mov	%i0, %o0
.L120:
	mov	0, %o1
	mov	0, %o2
	mov	%i1, %o3
	mov	%i4, %o4
	call	checkIfThreadHasCompleted, 0
	 mov	%i5, %o5
	cmp	%o0, 0
	bne,a	.L120
	 mov	%i0, %o0
	add	%l0, 1, %l0
	cmp	%l0, 4
	bne	.L121
	 sll	%l0, 2, %i5
	call	__ajit_get_clock_time, 0
	 sethi	%hi(.LC12), %l4
	sethi	%hi(accel_ticks), %g1
	subcc	%o1, %i3, %i5
	mov	%o0, %i0
	subx	%i0, %i2, %i4
	mov	%o1, %i1
	std	%i4, [%g1+%lo(accel_ticks)]
	mov	0, %l3
	mov	0, %l0
	or	%l4, %lo(.LC12), %l4
.L111:
	mov	%l0, %o1
	ld	[%l1+%l3], %o2
	ld	[%l2+%l3], %o3
	call	cortos_printf, 0
	 mov	%l4, %o0
	add	%l0, 1, %l0
	cmp	%l0, 4
	bne	.L111
	 add	%l3, 4, %l3
	sethi	%hi(.LC13), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC13), %o0
	mov	%i4, %o5
	std	%i4, [%fp-40]
	st	%i5, [%sp+92]
	sethi	%hi(.LC14), %o0
	mov	%i2, %o1
	mov	%i3, %o2
	mov	%i0, %o3
	mov	%i1, %o4
	call	cortos_printf, 0
	 or	%o0, %lo(.LC14), %o0
	jmp	%i7+8
	 restore
	.size	fft_across_all_threads, .-fft_across_all_threads
	.section	.rodata.str1.8
	.align 8
.LC15:
	.asciz	"blob_info = 0x%x, 0x%x, 0x%x, 0x%x\n"
	.align 8
.LC16:
	.asciz	"enabling threads\n"
	.align 8
.LC17:
	.asciz	"threads enabled\n"
	.align 8
.LC18:
	.asciz	"loading imem (%d bytes from 0x%x)\n"
	.align 8
.LC19:
	.asciz	"finished loading imem (%d bytes from 0x%x)\n"
	.align 8
.LC20:
	.asciz	"loading dmem (%d bytes from 0x%x)\n"
	.align 8
.LC21:
	.asciz	"calling dotp\n"
	.align 8
.LC22:
	.asciz	"done with dotp\n"
	.align 8
.LC23:
	.asciz	"Dumping output: %d locations, 16 bytes each\n"
	.align 8
.LC24:
	.asciz	"ptr0[%d] = "
	.align 8
.LC25:
	.asciz	"%02x"
	.align 8
.LC26:
	.asciz	"\n"
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
	sethi	%hi(.LC15), %o0
	ld	[%i4+4], %o2
	or	%o0, %lo(.LC15), %o0
	ld	[%i4+8], %o3
	ld	[%i4+12], %o4
	call	cortos_printf, 0
	 sethi	%hi(hms), %i1
	sethi	%hi(.LC16), %o0
	or	%o0, %lo(.LC16), %o0
	mov	0, %i3
	call	cortos_printf, 0
	 mov	0, %i5
	or	%i1, %lo(hms), %i1
.L123:
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
	bne	.L123
	 sethi	%hi(.LC17), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC17), %o0
	ld	[%i2+%lo(blob_info)], %o1
	sethi	%hi(.LC18), %o0
	ld	[%i4+4], %o2
	call	cortos_printf, 0
	 or	%o0, %lo(.LC18), %o0
	ld	[%i2+%lo(blob_info)], %o0
	ld	[%i4+4], %o1
	call	load_imem, 0
	 srl	%o0, 2, %o0
	ld	[%i2+%lo(blob_info)], %o1
	sethi	%hi(.LC19), %i5
	ld	[%i4+4], %o2
	call	cortos_printf, 0
	 or	%i5, %lo(.LC19), %o0
	ld	[%i4+8], %o1
	sethi	%hi(.LC20), %o0
	ld	[%i4+12], %o2
	call	cortos_printf, 0
	 or	%o0, %lo(.LC20), %o0
	ld	[%i4+8], %o0
	ld	[%i4+12], %o1
	call	load_dmem, 0
	 nop
	ld	[%i4+8], %o1
	or	%i5, %lo(.LC19), %o0
	ld	[%i4+12], %o2
	call	cortos_printf, 0
	 nop
	call	clear_all_registers, 0
	 nop
	call	set_args, 0
	 nop
	call	set_args, 0
	 nop
	call	set_args, 0
	 nop
	call	set_args, 0
	 nop
	sethi	%hi(.LC21), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC21), %o0
	call	matmul_on_processor, 0
	 nop
	call	fft_across_all_threads, 0
	 nop
	sethi	%hi(.LC22), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC22), %o0
	sethi	%hi(accel_ticks), %g1
	ldd	[%g1+%lo(accel_ticks)], %g2
	mov	650, %o1
	sethi	%hi(.LC23), %o0
	sethi	%hi(.LC24), %i0
	or	%o0, %lo(.LC23), %o0
	sethi	%hi(.LC25), %i3
	sethi	%hi(.LC26), %i1
	call	cortos_printf, 0
	 mov	0, %i2
	sethi	%hi(16777216), %l0
	or	%i0, %lo(.LC24), %i0
	or	%i3, %lo(.LC25), %i3
	or	%i1, %lo(.LC26), %i1
	mov	%i0, %o0
.L130:
	mov	%i2, %o1
	sll	%i2, 3, %i4
	call	cortos_printf, 0
	 mov	0, %i5
	add	%i4, %l0, %i4
	ldub	[%i4+%i5], %o1
.L129:
	call	cortos_printf, 0
	 mov	%i3, %o0
	add	%i5, 1, %i5
	cmp	%i5, 8
	bne,a	.L129
	 ldub	[%i4+%i5], %o1
	call	cortos_printf, 0
	 mov	%i1, %o0
	add	%i2, 1, %i2
	cmp	%i2, 1300
	bne,a	.L130
	 mov	%i0, %o0
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
	.common	byte_array,20800,8
	.common	blob_info,16,4
	.common	accel_ticks,8,8
	.common	processor_ticks,8,8
	.common	hms,2076,4
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
