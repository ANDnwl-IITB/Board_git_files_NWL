	.file	"setup.c"
	.section	".text"
	.align 4
	.global setup
	.type	setup, #function
	.proc	020
setup:
	save	%sp, -96, %sp
	call	__ajit_serial_set_uart_reset_via_bypass__, 0
	 mov	1, %o0
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
	.align 4
	.global timer_read
	.type	timer_read, #function
	.proc	016
timer_read:
	save	%sp, -96, %sp
	call	__ajit_get_clock_time, 0
	 nop
	jmp	%i7+8
	 restore %g0, %o1, %o0
	.size	timer_read, .-timer_read
	.align 4
	.global flush_cache
	.type	flush_cache, #function
	.proc	020
flush_cache:
	or	%o7, %g0, %g1
	call	__ajit_flush_dcache__, 0
	 or	%g1, %g0, %o7
	.size	flush_cache, .-flush_cache
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
