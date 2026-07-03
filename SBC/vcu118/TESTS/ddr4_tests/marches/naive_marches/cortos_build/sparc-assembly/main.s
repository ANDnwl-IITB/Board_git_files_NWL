	.file	"main.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"Core %d: started march(0x%x, 0x%x)\n"
	.align 8
.LC1:
	.asciz	"Error:Core %d: march at addr 0x%x, received 0x%x, expected 0x%x\n"
	.align 8
.LC2:
	.asciz	"Core %d: finished march(0x%x, 0x%x)\n"
	.section	".text"
	.align 4
	.global march_test
	.type	march_test, #function
	.proc	04
march_test:
	save	%sp, -96, %sp
	sethi	%hi(.LC0), %o0
	mov	%i0, %o1
	or	%o0, %lo(.LC0), %o0
	mov	%i1, %o2
	call	cortos_printf, 0
	 mov	%i2, %o3
	mov	%i0, %i5
	cmp	%i1, %i2
	bgeu	.L8
	 mov	%i1, %g1
	st	%g1, [%g1]
.L18:
	add	%g1, 4, %g1
	cmp	%i2, %g1
	bgu,a	.L18
	 st	%g1, [%g1]
	ld	[%i1], %o3
	cmp	%i1, %o3
	bne	.L11
	 mov	%i1, %g1
	b	.L19
	 add	%g1, 4, %o2
.L7:
	cmp	%g1, %o2
	bne	.L9
	 mov	%g1, %o3
	add	%g1, 4, %o2
.L19:
	cmp	%i2, %o2
	bgu,a	.L7
	 ld	[%g1+4], %g1
.L8:
	mov	0, %i0
	mov	%i5, %o1
	sethi	%hi(.LC2), %o0
	mov	%i1, %o2
	mov	%i2, %o3
	call	cortos_printf, 0
	 or	%o0, %lo(.LC2), %o0
	jmp	%i7+8
	 restore
.L11:
	mov	%i1, %o2
.L9:
	mov	%i5, %o1
	mov	%o2, %o4
	sethi	%hi(.LC1), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC1), %o0
	mov	1, %i0
	mov	%i5, %o1
	sethi	%hi(.LC2), %o0
	mov	%i1, %o2
	mov	%i2, %o3
	call	cortos_printf, 0
	 or	%o0, %lo(.LC2), %o0
	jmp	%i7+8
	 restore
	.size	march_test, .-march_test
	.section	.rodata.str1.8
	.align 8
.LC3:
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
	sethi	%hi(80000000), %o1
	sethi	%hi(114688), %o0
	call	__ajit_serial_set_baudrate_via_vmap__, 0
	 or	%o0, 512, %o0
	mov	0, %o0
	call	__ajit_serial_set_uart_reset_via_vmap__, 0
	 sethi	%hi(.LC3), %i0
	call	cortos_printf, 0
	 restore %i0, %lo(.LC3), %o0
	.size	setup, .-setup
	.section	.rodata.str1.8
	.align 8
.LC4:
	.asciz	"Core 0: running march test on SRAM0 region\n"
	.align 8
.LC5:
	.asciz	"Goodbye from core 0 (status = %d)\n"
	.section	".text"
	.align 4
	.global main_00
	.type	main_00, #function
	.proc	020
main_00:
	save	%sp, -96, %sp
	mov	1, %g2
	sethi	%hi(start_1), %g1
	sethi	%hi(.LC4), %o0
	st	%g2, [%g1+%lo(start_1)]
	call	cortos_printf, 0
	 or	%o0, %lo(.LC4), %o0
	mov	0, %o0
	sethi	%hi(1073741824), %o1
	sethi	%hi(1074002944), %o2
	sethi	%hi(.LC5), %i0
	or	%o2, 1023, %o2
	call	march_test, 0
	 or	%i0, %lo(.LC5), %i0
	subcc	%g0, %o0, %g0
	addx	%g0, 0, %i1
	call	cortos_printf, 0
	 restore
	.size	main_00, .-main_00
	.common	sram_array,4096,4
	.global start_1
	.section	".bss"
	.align 4
	.type	start_1, #object
	.size	start_1, 4
start_1:
	.skip	4
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
