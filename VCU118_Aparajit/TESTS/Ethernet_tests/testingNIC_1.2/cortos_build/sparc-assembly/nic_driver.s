	.file	"nic_driver.c"
	.section	".text"
	.align 4
	.global getGlobalNicRegisterBasePointer
	.type	getGlobalNicRegisterBasePointer, #function
	.proc	016
getGlobalNicRegisterBasePointer:
	sethi	%hi(global_nic_register_base_pointer), %g1
	jmp	%o7+8
	 ld	[%g1+%lo(global_nic_register_base_pointer)], %o0
	.size	getGlobalNicRegisterBasePointer, .-getGlobalNicRegisterBasePointer
	.align 4
	.global setGlobalNicRegisterBasePointer
	.type	setGlobalNicRegisterBasePointer, #function
	.proc	04
setGlobalNicRegisterBasePointer:
	andcc	%o0, 0xff, %g0
	bne	.L6
	 sethi	%hi(global_nic_register_base_pointer), %g1
	st	%o0, [%g1+%lo(global_nic_register_base_pointer)]
.L6:
	jmp	%o7+8
	 nop
	.size	setGlobalNicRegisterBasePointer, .-setGlobalNicRegisterBasePointer
	.align 4
	.global accessNicReg
	.type	accessNicReg, #function
	.proc	016
accessNicReg:
	sll	%o1, 6, %o1
	sethi	%hi(global_nic_register_base_pointer), %g1
	add	%o2, %o1, %o2
	ld	[%g1+%lo(global_nic_register_base_pointer)], %g1
	cmp	%o0, 0
	bne	.L10
	 sll	%o2, 2, %o1
	st	%o3, [%o1+%g1]
	jmp	%o7+8
	 mov	%o3, %o0
.L10:
	jmp	%o7+8
	 ld	[%o1+%g1], %o0
	.size	accessNicReg, .-accessNicReg
	.align 4
	.global writeToNicReg
	.type	writeToNicReg, #function
	.proc	016
writeToNicReg:
	sll	%o0, 6, %o0
	sethi	%hi(global_nic_register_base_pointer), %g1
	add	%o0, %o1, %o1
	ld	[%g1+%lo(global_nic_register_base_pointer)], %g1
	sll	%o1, 2, %o1
	mov	%o2, %o0
	jmp	%o7+8
	 st	%o2, [%g1+%o1]
	.size	writeToNicReg, .-writeToNicReg
	.align 4
	.global readFromNicReg
	.type	readFromNicReg, #function
	.proc	016
readFromNicReg:
	sll	%o0, 6, %o0
	sethi	%hi(global_nic_register_base_pointer), %g1
	add	%o0, %o1, %o1
	ld	[%g1+%lo(global_nic_register_base_pointer)], %g1
	sll	%o1, 2, %o0
	jmp	%o7+8
	 ld	[%g1+%o0], %o0
	.size	readFromNicReg, .-readFromNicReg
	.align 4
	.global setNumberOfServersInNic
	.type	setNumberOfServersInNic, #function
	.proc	020
setNumberOfServersInNic:
	sll	%o0, 8, %o0
	sethi	%hi(global_nic_register_base_pointer), %g1
	add	%o0, 4, %o0
	ld	[%g1+%lo(global_nic_register_base_pointer)], %g1
	jmp	%o7+8
	 st	%o1, [%g1+%o0]
	.size	setNumberOfServersInNic, .-setNumberOfServersInNic
	.align 4
	.global getNumberOfServersInNic
	.type	getNumberOfServersInNic, #function
	.proc	016
getNumberOfServersInNic:
	sll	%o0, 8, %o0
	sethi	%hi(global_nic_register_base_pointer), %g1
	add	%o0, 4, %o0
	ld	[%g1+%lo(global_nic_register_base_pointer)], %g1
	jmp	%o7+8
	 ld	[%g1+%o0], %o0
	.size	getNumberOfServersInNic, .-getNumberOfServersInNic
	.align 4
	.global setNumberOfBuffersInQueue
	.type	setNumberOfBuffersInQueue, #function
	.proc	020
setNumberOfBuffersInQueue:
	sll	%o0, 8, %o0
	sethi	%hi(global_nic_register_base_pointer), %g1
	add	%o0, 16, %o0
	ld	[%g1+%lo(global_nic_register_base_pointer)], %g1
	jmp	%o7+8
	 st	%o1, [%g1+%o0]
	.size	setNumberOfBuffersInQueue, .-setNumberOfBuffersInQueue
	.align 4
	.global getNumberOfBuffersInQueue
	.type	getNumberOfBuffersInQueue, #function
	.proc	016
getNumberOfBuffersInQueue:
	sll	%o0, 8, %o0
	sethi	%hi(global_nic_register_base_pointer), %g1
	add	%o0, 16, %o0
	ld	[%g1+%lo(global_nic_register_base_pointer)], %g1
	jmp	%o7+8
	 ld	[%g1+%o0], %o0
	.size	getNumberOfBuffersInQueue, .-getNumberOfBuffersInQueue
	.align 4
	.global getStatusOfQueueInNic
	.type	getStatusOfQueueInNic, #function
	.proc	016
getStatusOfQueueInNic:
	cmp	%o2, 1
	be,a	.L20
	 sll	%o0, 6, %o0
	bgeu	.L23
	 mov	25, %g1
	sll	%o0, 6, %o0
.L24:
	sethi	%hi(global_nic_register_base_pointer), %g2
	add	%o0, %g1, %g1
	ld	[%g2+%lo(global_nic_register_base_pointer)], %g2
	sll	%g1, 2, %g1
	jmp	%o7+8
	 ld	[%g2+%g1], %o0
.L23:
	cmp	%o2, 2
	bne	.L24
	 sll	%o0, 6, %o0
	add	%o1, %o1, %o1
	sethi	%hi(global_nic_register_base_pointer), %g2
	add	%o1, 17, %g1
	ld	[%g2+%lo(global_nic_register_base_pointer)], %g2
	add	%o0, %g1, %g1
	sll	%g1, 2, %g1
	jmp	%o7+8
	 ld	[%g2+%g1], %o0
.L20:
	add	%o1, %o1, %o1
	sethi	%hi(global_nic_register_base_pointer), %g2
	add	%o1, 9, %g1
	ld	[%g2+%lo(global_nic_register_base_pointer)], %g2
	add	%o0, %g1, %g1
	sll	%g1, 2, %g1
	jmp	%o7+8
	 ld	[%g2+%g1], %o0
	.size	getStatusOfQueueInNic, .-getStatusOfQueueInNic
	.align 4
	.global acquireLock
	.type	acquireLock, #function
	.proc	04
acquireLock:
	sll	%o0, 8, %o0
	add	%o0, 104, %o0
	sethi	%hi(global_nic_register_base_pointer), %g1
	ld	[%g1+%lo(global_nic_register_base_pointer)], %g1
	ld	[%g1+%o0], %g1
	subcc	%g0, %g1, %g0
	jmp	%o7+8
	 addx	%g0, 0, %o0
	.size	acquireLock, .-acquireLock
	.align 4
	.global releaseLock
	.type	releaseLock, #function
	.proc	04
releaseLock:
	sll	%o0, 8, %o0
	sethi	%hi(global_nic_register_base_pointer), %g2
	add	%o0, 104, %g1
	ld	[%g2+%lo(global_nic_register_base_pointer)], %g2
	mov	0, %o0
	jmp	%o7+8
	 st	%g0, [%g2+%g1]
	.size	releaseLock, .-releaseLock
	.align 4
	.global pushIntoQueue
	.type	pushIntoQueue, #function
	.proc	04
pushIntoQueue:
	cmp	%o2, 1
	be,a	.L30
	 sll	%o0, 6, %o0
	bgeu	.L33
	 mov	24, %g1
	sll	%o0, 6, %o0
.L34:
	sethi	%hi(global_nic_register_base_pointer), %g2
	add	%o0, %g1, %g1
	ld	[%g2+%lo(global_nic_register_base_pointer)], %g2
	sll	%g1, 2, %g1
	sra	%o3, 1, %o0
	st	%o3, [%g2+%g1]
	jmp	%o7+8
	 and	%o0, 1, %o0
.L33:
	cmp	%o2, 2
	bne	.L34
	 sll	%o0, 6, %o0
	add	%o1, 8, %g1
	sethi	%hi(global_nic_register_base_pointer), %g2
	add	%g1, %g1, %g1
	ld	[%g2+%lo(global_nic_register_base_pointer)], %g2
	add	%o0, %g1, %g1
	sra	%o3, 1, %o0
	sll	%g1, 2, %g1
	and	%o0, 1, %o0
	jmp	%o7+8
	 st	%o3, [%g2+%g1]
.L30:
	add	%o1, 4, %g1
	sethi	%hi(global_nic_register_base_pointer), %g2
	add	%g1, %g1, %g1
	ld	[%g2+%lo(global_nic_register_base_pointer)], %g2
	add	%o0, %g1, %g1
	sra	%o3, 1, %o0
	sll	%g1, 2, %g1
	and	%o0, 1, %o0
	jmp	%o7+8
	 st	%o3, [%g2+%g1]
	.size	pushIntoQueue, .-pushIntoQueue
	.align 4
	.global popFromQueue
	.type	popFromQueue, #function
	.proc	04
popFromQueue:
	cmp	%o2, 1
	be,a	.L38
	 sll	%o0, 6, %o0
	bgeu	.L41
	 mov	24, %g1
	sll	%o0, 6, %o0
.L42:
	sethi	%hi(global_nic_register_base_pointer), %g2
	add	%o0, %g1, %g1
	ld	[%g2+%lo(global_nic_register_base_pointer)], %g2
	sll	%g1, 2, %g1
	ld	[%g2+%g1], %o0
	st	%o0, [%o3]
	jmp	%o7+8
	 and	%o0, 1, %o0
.L41:
	cmp	%o2, 2
	bne	.L42
	 sll	%o0, 6, %o0
	add	%o1, 8, %g1
	sethi	%hi(global_nic_register_base_pointer), %g2
	add	%g1, %g1, %g1
	ld	[%g2+%lo(global_nic_register_base_pointer)], %g2
	add	%o0, %g1, %g1
	sll	%g1, 2, %g1
	ld	[%g2+%g1], %o0
	st	%o0, [%o3]
	jmp	%o7+8
	 and	%o0, 1, %o0
.L38:
	add	%o1, 4, %g1
	sethi	%hi(global_nic_register_base_pointer), %g2
	add	%g1, %g1, %g1
	ld	[%g2+%lo(global_nic_register_base_pointer)], %g2
	add	%o0, %g1, %g1
	sll	%g1, 2, %g1
	ld	[%g2+%g1], %o0
	st	%o0, [%o3]
	jmp	%o7+8
	 and	%o0, 1, %o0
	.size	popFromQueue, .-popFromQueue
	.align 4
	.global probeNic
	.type	probeNic, #function
	.proc	020
probeNic:
	sll	%o0, 6, %o0
	sethi	%hi(global_nic_register_base_pointer), %g1
	add	%o0, 211, %g2
	ld	[%g1+%lo(global_nic_register_base_pointer)], %g3
	sll	%g2, 2, %g2
	ld	[%g3+%g2], %g2
	st	%g2, [%o1]
	add	%o0, 210, %g2
	ld	[%g1+%lo(global_nic_register_base_pointer)], %g3
	sll	%g2, 2, %g2
	ld	[%g3+%g2], %g2
	st	%g2, [%o2]
	add	%o0, 212, %o0
	ld	[%g1+%lo(global_nic_register_base_pointer)], %g1
	sll	%o0, 2, %o0
	ld	[%g1+%o0], %g1
	jmp	%o7+8
	 st	%g1, [%o3]
	.size	probeNic, .-probeNic
	.align 4
	.global writeNicControlRegister
	.type	writeNicControlRegister, #function
	.proc	020
writeNicControlRegister:
	sll	%o0, 8, %o0
	sethi	%hi(global_nic_register_base_pointer), %g1
	ld	[%g1+%lo(global_nic_register_base_pointer)], %g1
	jmp	%o7+8
	 st	%o1, [%g1+%o0]
	.size	writeNicControlRegister, .-writeNicControlRegister
	.align 4
	.global readNicControlRegister
	.type	readNicControlRegister, #function
	.proc	016
readNicControlRegister:
	sll	%o0, 8, %o0
	sethi	%hi(global_nic_register_base_pointer), %g1
	ld	[%g1+%lo(global_nic_register_base_pointer)], %g1
	jmp	%o7+8
	 ld	[%g1+%o0], %o0
	.size	readNicControlRegister, .-readNicControlRegister
	.align 4
	.global enableNic
	.type	enableNic, #function
	.proc	020
enableNic:
	sll	%o0, 8, %o0
	sethi	%hi(global_nic_register_base_pointer), %g1
	sll	%o1, 2, %o1
	ld	[%g1+%lo(global_nic_register_base_pointer)], %g1
	add	%o2, %o2, %o2
	or	%o1, 120, %o1
	or	%o1, %o2, %o1
	or	%o1, %o3, %o3
	jmp	%o7+8
	 st	%o3, [%g1+%o0]
	.size	enableNic, .-enableNic
	.align 4
	.global disableNic
	.type	disableNic, #function
	.proc	020
disableNic:
	sll	%o0, 8, %o0
	sethi	%hi(global_nic_register_base_pointer), %g1
	ld	[%g1+%lo(global_nic_register_base_pointer)], %g1
	jmp	%o7+8
	 st	%g0, [%g1+%o0]
	.size	disableNic, .-disableNic
	.align 4
	.global configureNic
	.type	configureNic, #function
	.proc	020
configureNic:
	sethi	%hi(global_nic_register_base_pointer), %g1
	ld	[%o0], %g2
	ld	[%g1+%lo(global_nic_register_base_pointer)], %g3
	ld	[%o0+4], %g4
	sll	%g2, 8, %g2
	add	%g2, 4, %g2
	st	%g4, [%g3+%g2]
	ld	[%o0], %g4
	ld	[%g1+%lo(global_nic_register_base_pointer)], %g2
	ld	[%o0+8], %g3
	sll	%g4, 8, %g4
	add	%g4, 16, %g1
	jmp	%o7+8
	 st	%g3, [%g2+%g1]
	.size	configureNic, .-configureNic
	.align 4
	.global translateVaToPa
	.type	translateVaToPa, #function
	.proc	04
translateVaToPa:
	save	%sp, -120, %sp
	call	__ajit_load_word_mmu_reg__, 0
	 mov	512, %o0
	mov	%o0, %i5
	call	__ajit_load_word_mmu_reg__, 0
	 mov	256, %o0
	add	%fp, -8, %g1
	st	%g1, [%sp+92]
	add	%fp, -12, %g1
	mov	%i0, %o3
	srl	%o0, 2, %o1
	st	%g1, [%sp+96]
	sll	%o1, 6, %o1
	and	%i5, 0xff, %o2
	add	%fp, -13, %o4
	mov	%i1, %o5
	call	ajit_lookup_mmap, 0
	 srl	%o0, 28, %o0
	jmp	%i7+8
	 restore %g0, %o0, %o0
	.size	translateVaToPa, .-translateVaToPa
	.align 4
	.global getPacketLen
	.type	getPacketLen, #function
	.proc	016
getPacketLen:
	ld	[%o0+4], %g1
	srl	%g1, 8, %g2
	and	%g1, 255, %g1
	cmp	%g1, 240
	be	.L59
	 add	%g2, -4, %o0
	cmp	%g1, 240
	ble	.L67
	 cmp	%g1, 192
	cmp	%g1, 252
	be	.L59
	 add	%g2, -2, %o0
	cmp	%g1, 252
	ble	.L68
	 cmp	%g1, 248
	cmp	%g1, 254
	be	.L59
	 add	%g2, -1, %o0
	cmp	%g1, 255
	be,a	.L69
	 mov	%g2, %o0
.L59:
	jmp	%o7+8
	 add	%o0, -16, %o0
.L67:
	be	.L59
	 add	%g2, -6, %o0
	cmp	%g1, 224
	be	.L54
	 cmp	%g1, 128
	bne	.L59
	 nop
	add	%g2, -7, %o0
	jmp	%o7+8
	 add	%o0, -16, %o0
.L68:
	bne	.L59
	 nop
	add	%g2, -3, %o0
	jmp	%o7+8
	 add	%o0, -16, %o0
.L54:
	add	%g2, -5, %o0
	jmp	%o7+8
	 add	%o0, -16, %o0
.L69:
	jmp	%o7+8
	 add	%o0, -16, %o0
	.size	getPacketLen, .-getPacketLen
	.align 4
	.global initTranslationTable
	.type	initTranslationTable, #function
	.proc	020
initTranslationTable:
	sethi	%hi(i.2927), %g1
	sethi	%hi(translationTable), %g3
	ld	[%g1+%lo(i.2927)], %g4
	or	%g3, %lo(translationTable), %g3
	sll	%g4, 4, %g2
	add	%g4, 1, %g4
	add	%g3, %g2, %o5
	std	%o0, [%g3+%g2]
	st	%o2, [%o5+8]
	jmp	%o7+8
	 st	%g4, [%g1+%lo(i.2927)]
	.size	initTranslationTable, .-initTranslationTable
	.align 4
	.global translatePAtoVA
	.type	translatePAtoVA, #function
	.proc	0116
translatePAtoVA:
	sethi	%hi(translationTable), %g4
	mov	0, %g2
	or	%g4, %lo(translationTable), %g4
	b	.L74
	 mov	%g4, %g1
.L72:
.L77:
	cmp	%g2, 64
	be	.L76
	 add	%g1, 16, %g1
.L74:
	ld	[%g1], %g3
	cmp	%g3, %o0
	bne,a	.L77
	 add	%g2, 1, %g2
	ld	[%g1+4], %g3
	cmp	%g3, %o1
	bne,a	.L72
	 add	%g2, 1, %g2
	sll	%g2, 4, %g2
	add	%g4, %g2, %g4
	jmp	%o7+8
	 ld	[%g4+8], %o0
.L76:
	jmp	%o7+8
	 mov	0, %o0
	.size	translatePAtoVA, .-translatePAtoVA
	.align 4
	.global getPacketLenInDW
	.type	getPacketLenInDW, #function
	.proc	016
getPacketLenInDW:
	and	%o0, 7, %g1
	subcc	%g0, %g1, %g0
	jmp	%o7+8
	 addx	%g0, %o0, %o0
	.size	getPacketLenInDW, .-getPacketLenInDW
	.align 4
	.global getLastTkeep
	.type	getLastTkeep, #function
	.proc	016
getLastTkeep:
	and	%o0, 7, %o0
	sethi	%hi(.L91), %g1
	sll	%o0, 2, %o0
	or	%g1, %lo(.L91), %g1
	ld	[%g1+%o0], %g1
	jmp	%g1
	 nop
	.section	".rodata"
	.section	".text"
.L89:
	jmp	%o7+8
	 mov	252, %o0
.L92:
	jmp	%o7+8
	 mov	254, %o0
.L83:
	jmp	%o7+8
	 mov	255, %o0
.L84:
	jmp	%o7+8
	 mov	128, %o0
.L85:
	jmp	%o7+8
	 mov	192, %o0
.L86:
	jmp	%o7+8
	 mov	224, %o0
.L87:
	jmp	%o7+8
	 mov	240, %o0
.L88:
	jmp	%o7+8
	 mov	248, %o0
	.align 4
	.subsection	-1
	.align 4
.L91:
	.word	.L83
	.word	.L84
	.word	.L85
	.word	.L86
	.word	.L87
	.word	.L88
	.word	.L89
	.word	.L92
	.previous
	.size	getLastTkeep, .-getLastTkeep
	.common	global_nic_register_base_pointer,4,4
	.common	translationTable,1024,8
	.common	BufferPtrsPA,512,8
	.common	BufferPtrsVA,256,4
	.local	i.2927
	.common	i.2927,4,4
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
