	.file	"thread_utils.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"0x%llx = REG[%d] TID=%d\n"
	.section	".text"
	.align 4
	.global dump_registers
	.type	dump_registers, #function
	.proc	020
dump_registers:
	save	%sp, -104, %sp
	sethi	%hi(hms), %i4
	sethi	%hi(.LC0), %i1
	mov	0, %i2
	and	%i0, 0xff, %i3
	or	%i4, %lo(hms), %i4
	or	%i1, %lo(.LC0), %i1
	and	%i2, 0xff, %i5
.L8:
	mov	%i4, %o0
.L7:
	mov	0, %o1
	mov	0, %o2
	mov	%i3, %o3
	mov	%i5, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne	.L7
	 mov	%i4, %o0
	mov	%i2, %o3
	mov	%i1, %o0
	ld	[%fp-8], %o1
	ld	[%fp-4], %o2
	call	cortos_printf, 0
	 mov	%i0, %o4
	add	%i2, 1, %i2
	cmp	%i2, 32
	bne	.L8
	 and	%i2, 0xff, %i5
	jmp	%i7+8
	 restore
	.size	dump_registers, .-dump_registers
	.align 4
	.global wait_on_thread_init
	.type	wait_on_thread_init, #function
	.proc	016
wait_on_thread_init:
	save	%sp, -96, %sp
	sethi	%hi(hms), %i5
	b	.L11
	 or	%i5, %lo(hms), %i5
.L12:
	call	__ajit_sleep__, 0
	 mov	1024, %o0
.L11:
	mov	0, %o1
	mov	0, %o2
	mov	0, %o3
	mov	%i0, %o4
	mov	0, %o5
	call	readFromConfigRegister, 0
	 mov	%i5, %o0
	andcc	%o0, 128, %g0
	be	.L12
	 nop
	jmp	%i7+8
	 restore %g0, %o0, %o0
	.size	wait_on_thread_init, .-wait_on_thread_init
	.section	.rodata.str1.8
	.align 8
.LC1:
	.asciz	"Error: init reg-val of r%d is 0x%llx\n"
	.section	".text"
	.align 4
	.global clear_registers
	.type	clear_registers, #function
	.proc	020
clear_registers:
	save	%sp, -120, %sp
	sethi	%hi(hms), %i2
	sethi	%hi(.LC1), %i1
	mov	0, %i4
	mov	0, %i5
	and	%i0, 0xff, %i0
	or	%i2, %lo(hms), %i2
	or	%i1, %lo(.LC1), %i1
.L27:
	and	%i5, 0xff, %i3
.L32:
	st	%g0, [%fp-16]
.L30:
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
	bne,a	.L30
	 st	%g0, [%fp-16]
	mov	%i2, %o0
.L31:
	mov	0, %o1
	mov	0, %o2
	mov	%i0, %o3
	mov	%i3, %o4
	call	readThreadDataRegister, 0
	 add	%fp, -8, %o5
	cmp	%o0, 0
	bne,a	.L31
	 mov	%i2, %o0
	ldd	[%fp-8], %o2
	orcc	%o2, %o3, %g0
	bne	.L28
	 mov	%i1, %o0
	addcc	%i5, 1, %g3
.L29:
	addx	%i4, 0, %g2
	mov	%g3, %i5
	cmp	%g2, 0
	bne	.L27
	 mov	%g2, %i4
	cmp	%g3, 32
	bne	.L32
	 and	%i5, 0xff, %i3
	jmp	%i7+8
	 restore
.L28:
	call	cortos_printf, 0
	 mov	%i5, %o1
	b	.L29
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
	call	clear_registers, 0
	 mov	2, %o0
	mov	3, %o0
	call	clear_registers, 0
	 mov	4, %i0
	call	clear_registers, 0
	 restore
	.size	clear_all_registers, .-clear_all_registers
	.section	.rodata.str1.8
	.align 8
.LC2:
	.asciz	"load_imem: number_of_words = %d, base_addr = 0x%x\n"
	.align 8
.LC3:
	.asciz	"Error: load_imem [%d] mismatch  0x%x != 0x%x\n"
	.section	".text"
	.align 4
	.global load_imem
	.type	load_imem, #function
	.proc	020
load_imem:
	save	%sp, -104, %sp
	sethi	%hi(.LC2), %o0
	mov	%i0, %o1
	or	%o0, %lo(.LC2), %o0
	call	cortos_printf, 0
	 mov	%i1, %o2
	cmp	%i0, 0
	be	.L47
	 mov	0, %i5
	sethi	%hi(hms), %i4
	sethi	%hi(.LC3), %i2
	or	%i4, %lo(hms), %i4
	or	%i2, %lo(.LC3), %i2
.L41:
	ld	[%i1], %i3
	mov	%i4, %o0
.L45:
	mov	0, %o1
	mov	0, %o2
	mov	%i5, %o3
	call	writeInstructionToEngineInstrMemory, 0
	 mov	%i3, %o4
	cmp	%o0, 0
	bne	.L45
	 mov	%i4, %o0
	st	%g0, [%fp-4]
.L46:
	mov	0, %o1
	mov	0, %o2
	mov	%i5, %o3
	call	readInstructionFromEngineInstrMemory, 0
	 add	%fp, -4, %o4
	cmp	%o0, 0
	bne	.L46
	 mov	%i4, %o0
	ld	[%fp-4], %o3
	cmp	%i3, %o3
	be	.L38
	 mov	%i2, %o0
	mov	%i5, %o1
	call	cortos_printf, 0
	 mov	%i3, %o2
.L38:
	add	%i5, 1, %i5
	cmp	%i5, %i0
	bne	.L41
	 add	%i1, 4, %i1
.L47:
	jmp	%i7+8
	 restore
	.size	load_imem, .-load_imem
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
