	.file	"util.c"
	.section	".text"
	.align 4
	.global writeToConfigRegister
	.type	writeToConfigRegister, #function
	.proc	020
writeToConfigRegister:
	sll	%o2, 9, %o2
	sll	%o3, 7, %o3
	cmp	%o1, 0
	be	.L4
	 sethi	%hi(-131072), %g1
	sethi	%hi(-122880), %g1
.L4:
	add	%o2, %g1, %o2
	sll	%o4, 5, %o4
	add	%o2, %o3, %o3
	sll	%o5, 2, %o5
	add	%o3, %o4, %o4
	and	%o5, 31, %o5
	ld	[%sp+92], %g1
	add	%o4, %o5, %o5
	jmp	%o7+8
	 st	%g1, [%o5]
	.size	writeToConfigRegister, .-writeToConfigRegister
	.align 4
	.global readFromConfigRegister
	.type	readFromConfigRegister, #function
	.proc	016
readFromConfigRegister:
	sll	%o2, 9, %o2
	sll	%o3, 7, %o3
	cmp	%o1, 0
	be	.L9
	 sethi	%hi(-131072), %g1
	sethi	%hi(-122880), %g1
.L9:
	add	%o2, %g1, %o2
	sll	%o4, 5, %o4
	add	%o2, %o3, %o3
	sll	%o5, 2, %o5
	add	%o3, %o4, %o4
	and	%o5, 31, %o5
	add	%o4, %o5, %o5
	jmp	%o7+8
	 ld	[%o5], %o0
	.size	readFromConfigRegister, .-readFromConfigRegister
	.align 4
	.global writeDwordToDataMem
	.type	writeDwordToDataMem, #function
	.proc	020
writeDwordToDataMem:
	add	%o1, 64, %o1
	sll	%o1, 2, %o1
	st	%o5, [%sp+88]
	sll	%o4, 3, %o4
	add	%o1, %o2, %o2
	sethi	%hi(64512), %g1
	sll	%o2, 16, %o1
	or	%g1, 1023, %g1
	ldd	[%sp+88], %g2
	and	%o4, %g1, %o4
	jmp	%o7+8
	 std	%g2, [%o4+%o1]
	.size	writeDwordToDataMem, .-writeDwordToDataMem
	.align 4
	.global readDwordFromDataMem
	.type	readDwordFromDataMem, #function
	.proc	017
readDwordFromDataMem:
	add	%o1, 64, %o1
	sethi	%hi(64512), %g1
	sll	%o1, 2, %o1
	or	%g1, 1023, %g1
	add	%o1, %o2, %o2
	sll	%o4, 3, %o4
	sll	%o2, 16, %o2
	and	%o4, %g1, %o4
	add	%o4, %o2, %g1
	ld	[%o4+%o2], %o0
	jmp	%o7+8
	 ld	[%g1+4], %o1
	.size	readDwordFromDataMem, .-readDwordFromDataMem
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
