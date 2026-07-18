	.file	"engine.c"
	.section	".text"
	.align 4
	.global __make_thread_control_reg__
	.type	__make_thread_control_reg__, #function
	.proc	016
__make_thread_control_reg__:
	and	%o0, 15, %o0
	sll	%o0, 8, %o0
	sll	%o3, 16, %o3
	sll	%o2, 14, %o2
	and	%o1, 254, %o1
	or	%o0, %o1, %o1
	or	%o1, %o4, %o4
	or	%o4, %o3, %o0
	jmp	%o7+8
	 or	%o0, %o2, %o0
	.size	__make_thread_control_reg__, .-__make_thread_control_reg__
	.align 4
	.global __make_dma_control_reg__
	.type	__make_dma_control_reg__, #function
	.proc	016
__make_dma_control_reg__:
	sll	%o2, 20, %o2
	and	%o1, 254, %o1
	sll	%o3, 16, %o3
	sll	%o0, 24, %o0
	sll	%o4, 8, %o4
	or	%o0, %o2, %o0
	sethi	%hi(64512), %g1
	or	%o0, %o1, %o0
	or	%g1, 1023, %g1
	or	%o0, %o3, %o0
	and	%o4, %g1, %o4
	or	%o0, %o5, %o0
	jmp	%o7+8
	 or	%o0, %o4, %o0
	.size	__make_dma_control_reg__, .-__make_dma_control_reg__
	.align 4
	.global initHpcMachineState
	.type	initHpcMachineState, #function
	.proc	020
initHpcMachineState:
	mov	16, %g1
.L4:
	st	%g0, [%o0+28]
	st	%g0, [%o0+32]
	st	%g0, [%o0+36]
	st	%g0, [%o0+40]
	st	%g0, [%o0+44]
	st	%g0, [%o0+48]
	st	%g0, [%o0+52]
	st	%g0, [%o0+56]
	st	%g0, [%o0+60]
	st	%g0, [%o0+64]
	st	%g0, [%o0+68]
	st	%g0, [%o0+72]
	st	%g0, [%o0+76]
	st	%g0, [%o0+80]
	st	%g0, [%o0+84]
	st	%g0, [%o0+88]
	addcc	%g1, -1, %g1
	bne	.L4
	 add	%o0, 64, %o0
	jmp	%o7+8
	 nop
	.size	initHpcMachineState, .-initHpcMachineState
	.align 4
	.global __pre_increment_engine_sequence_number__
	.type	__pre_increment_engine_sequence_number__, #function
	.proc	016
__pre_increment_engine_sequence_number__:
	sll	%o1, 2, %o1
	add	%o1, %o2, %o2
	sll	%o2, 2, %o1
	add	%o1, %o3, %o3
	add	%o3, 6, %g1
	sll	%g1, 2, %g1
	add	%o0, %g1, %g1
	ld	[%g1+4], %o0
	add	%o0, 1, %g2
	jmp	%o7+8
	 st	%g2, [%g1+4]
	.size	__pre_increment_engine_sequence_number__, .-__pre_increment_engine_sequence_number__
	.align 4
	.global __pre_increment_dma_sequence_number__
	.type	__pre_increment_dma_sequence_number__, #function
	.proc	016
__pre_increment_dma_sequence_number__:
	sll	%o1, 2, %o1
	add	%o1, %o2, %o2
	sll	%o2, 2, %o1
	add	%o1, %o3, %o3
	add	%o3, 6, %g1
	sll	%g1, 2, %g1
	add	%o0, %g1, %g1
	ld	[%g1+4], %o0
	add	%o0, 1, %g2
	jmp	%o7+8
	 st	%g2, [%g1+4]
	.size	__pre_increment_dma_sequence_number__, .-__pre_increment_dma_sequence_number__
	.align 4
	.global allocateHpcMachineState
	.type	allocateHpcMachineState, #function
	.proc	0110
allocateHpcMachineState:
	jmp	%o7+8
	 nop
	.size	allocateHpcMachineState, .-allocateHpcMachineState
	.align 4
	.global initEngineThreadLocks
	.type	initEngineThreadLocks, #function
	.proc	020
initEngineThreadLocks:
	jmp	%o7+8
	 nop
	.size	initEngineThreadLocks, .-initEngineThreadLocks
	.align 4
	.global initDmaChannelLocks
	.type	initDmaChannelLocks, #function
	.proc	020
initDmaChannelLocks:
	jmp	%o7+8
	 nop
	.size	initDmaChannelLocks, .-initDmaChannelLocks
	.align 4
	.global acquireEngineThreadLock
	.type	acquireEngineThreadLock, #function
	.proc	016
acquireEngineThreadLock:
	jmp	%o7+8
	 mov	0, %o0
	.size	acquireEngineThreadLock, .-acquireEngineThreadLock
	.align 4
	.global releaseEngineThreadLock
	.type	releaseEngineThreadLock, #function
	.proc	020
releaseEngineThreadLock:
	jmp	%o7+8
	 nop
	.size	releaseEngineThreadLock, .-releaseEngineThreadLock
	.align 4
	.global acquireDmaChannelLock
	.type	acquireDmaChannelLock, #function
	.proc	016
acquireDmaChannelLock:
	jmp	%o7+8
	 mov	0, %o0
	.size	acquireDmaChannelLock, .-acquireDmaChannelLock
	.align 4
	.global releaseDmaChannelLock
	.type	releaseDmaChannelLock, #function
	.proc	020
releaseDmaChannelLock:
	jmp	%o7+8
	 nop
	.size	releaseDmaChannelLock, .-releaseDmaChannelLock
	.align 4
	.global writeToEngineConfigRegister
	.type	writeToEngineConfigRegister, #function
	.proc	020
writeToEngineConfigRegister:
	save	%sp, -104, %sp
	mov	0, %o1
	st	%i5, [%sp+92]
	mov	%i0, %o0
	mov	%i1, %o2
	mov	%i2, %o3
	mov	%i3, %o4
	call	writeToConfigRegister, 0
	 mov	%i4, %o5
	jmp	%i7+8
	 restore
	.size	writeToEngineConfigRegister, .-writeToEngineConfigRegister
	.align 4
	.global readFromEngineConfigRegister
	.type	readFromEngineConfigRegister, #function
	.proc	016
readFromEngineConfigRegister:
	mov	%o1, %g3
	mov	%o2, %g2
	mov	%o3, %g1
	mov	%o4, %o5
	mov	0, %o1
	mov	%g3, %o2
	mov	%g2, %o3
	mov	%g1, %o4
	or	%o7, %g0, %g1
	call	readFromConfigRegister, 0
	 or	%g1, %g0, %o7
	.size	readFromEngineConfigRegister, .-readFromEngineConfigRegister
	.align 4
	.global engineThreadStatus
	.type	engineThreadStatus, #function
	.proc	016
engineThreadStatus:
	mov	0, %o4
	or	%o7, %g0, %g1
	call	readFromEngineConfigRegister, 0
	 or	%g1, %g0, %o7
	.size	engineThreadStatus, .-engineThreadStatus
	.align 4
	.global acquireEngineThread
	.type	acquireEngineThread, #function
	.proc	016
acquireEngineThread:
	save	%sp, -96, %sp
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	engineThreadStatus, 0
	 mov	%i3, %o3
	and	%o0, 7, %o0
	subcc	%g0, %o0, %g0
	addx	%g0, 0, %i0
	jmp	%i7+8
	 restore
	.size	acquireEngineThread, .-acquireEngineThread
	.align 4
	.global waitOnEngineThreadCompletion
	.type	waitOnEngineThreadCompletion, #function
	.proc	020
waitOnEngineThreadCompletion:
	save	%sp, -96, %sp
	mov	%i0, %o0
.L23:
	mov	%i1, %o1
	mov	%i2, %o2
	call	engineThreadStatus, 0
	 mov	%i3, %o3
	and	%o0, 7, %o0
	cmp	%o0, 7
	bne	.L23
	 mov	%i0, %o0
	jmp	%i7+8
	 restore
	.size	waitOnEngineThreadCompletion, .-waitOnEngineThreadCompletion
	.align 4
	.global __clear_thread_flags__
	.type	__clear_thread_flags__, #function
	.proc	020
__clear_thread_flags__:
	save	%sp, -96, %sp
	mov	0, %o4
	mov	%i4, %i5
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	call	readFromEngineConfigRegister, 0
	 mov	0, %i4
	andn	%o0, %i5, %i5
	call	writeToEngineConfigRegister, 0
	 restore
	.size	__clear_thread_flags__, .-__clear_thread_flags__
	.align 4
	.global releaseEngineThread
	.type	releaseEngineThread, #function
	.proc	016
releaseEngineThread:
	save	%sp, -96, %sp
	mov	1, %o4
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	__clear_thread_flags__, 0
	 mov	%i3, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	engineThreadStatus, 0
	 mov	%i3, %o3
	and	%o0, 7, %o0
	subcc	%g0, %o0, %g0
	addx	%g0, 0, %i0
	jmp	%i7+8
	 restore
	.size	releaseEngineThread, .-releaseEngineThread
	.align 4
	.global __set_thread_flags__
	.type	__set_thread_flags__, #function
	.proc	020
__set_thread_flags__:
	save	%sp, -96, %sp
	mov	0, %o4
	mov	%i4, %i5
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	call	readFromEngineConfigRegister, 0
	 mov	0, %i4
	or	%o0, %i5, %i5
	call	writeToEngineConfigRegister, 0
	 restore
	.size	__set_thread_flags__, .-__set_thread_flags__
	.align 4
	.global writeToDmaConfigRegister
	.type	writeToDmaConfigRegister, #function
	.proc	020
writeToDmaConfigRegister:
	save	%sp, -104, %sp
	mov	1, %o1
	st	%i5, [%sp+92]
	mov	%i0, %o0
	mov	%i1, %o2
	mov	%i2, %o3
	mov	%i3, %o4
	call	writeToConfigRegister, 0
	 mov	%i4, %o5
	jmp	%i7+8
	 restore
	.size	writeToDmaConfigRegister, .-writeToDmaConfigRegister
	.align 4
	.global readFromDmaConfigRegister
	.type	readFromDmaConfigRegister, #function
	.proc	016
readFromDmaConfigRegister:
	mov	%o1, %g3
	mov	%o2, %g2
	mov	%o3, %g1
	mov	%o4, %o5
	mov	1, %o1
	mov	%g3, %o2
	mov	%g2, %o3
	mov	%g1, %o4
	or	%o7, %g0, %g1
	call	readFromConfigRegister, 0
	 or	%g1, %g0, %o7
	.size	readFromDmaConfigRegister, .-readFromDmaConfigRegister
	.align 4
	.global dmaChannelStatus
	.type	dmaChannelStatus, #function
	.proc	016
dmaChannelStatus:
	mov	0, %o4
	or	%o7, %g0, %g1
	call	readFromDmaConfigRegister, 0
	 or	%g1, %g0, %o7
	.size	dmaChannelStatus, .-dmaChannelStatus
	.align 4
	.global waitOnDmaChannelCompletion
	.type	waitOnDmaChannelCompletion, #function
	.proc	020
waitOnDmaChannelCompletion:
	save	%sp, -96, %sp
	mov	%i0, %o0
.L33:
	mov	%i1, %o1
	mov	%i2, %o2
	call	dmaChannelStatus, 0
	 mov	%i3, %o3
	and	%o0, 7, %o0
	cmp	%o0, 7
	bne	.L33
	 mov	%i0, %o0
	jmp	%i7+8
	 restore
	.size	waitOnDmaChannelCompletion, .-waitOnDmaChannelCompletion
	.align 4
	.global __clear_dma_flags__
	.type	__clear_dma_flags__, #function
	.proc	020
__clear_dma_flags__:
	save	%sp, -96, %sp
	mov	0, %o4
	mov	%i4, %i5
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	call	readFromDmaConfigRegister, 0
	 mov	0, %i4
	andn	%o0, %i5, %i5
	call	writeToDmaConfigRegister, 0
	 restore
	.size	__clear_dma_flags__, .-__clear_dma_flags__
	.align 4
	.global __set_dma_flags__
	.type	__set_dma_flags__, #function
	.proc	020
__set_dma_flags__:
	save	%sp, -96, %sp
	mov	0, %o4
	mov	%i4, %i5
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	call	readFromDmaConfigRegister, 0
	 mov	0, %i4
	or	%o0, %i5, %i5
	call	writeToDmaConfigRegister, 0
	 restore
	.size	__set_dma_flags__, .-__set_dma_flags__
	.align 4
	.global writeInstructionToEngineInstrMemory
	.type	writeInstructionToEngineInstrMemory, #function
	.proc	016
writeInstructionToEngineInstrMemory:
	save	%sp, -104, %sp
	mov	0, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	call	acquireEngineThread, 0
	 mov	%i2, %o2
	cmp	%o0, 0
	be	.L40
	 mov	0, %o3
	jmp	%i7+8
	 restore %g0, %o0, %o0
.L40:
	mov	2, %o4
	mov	%i3, %o5
	mov	%i0, %o0
	mov	%i1, %o1
	call	writeToEngineConfigRegister, 0
	 mov	%i2, %o2
	mov	%i4, %o5
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	0, %o3
	call	writeToEngineConfigRegister, 0
	 mov	3, %o4
	mov	%i1, %o1
	mov	%i2, %o2
	mov	0, %o3
	mov	0, %o4
	call	readFromEngineConfigRegister, 0
	 mov	%i0, %o0
	sll	%i1, 2, %g1
	and	%o0, 254, %g3
	add	%g1, %i2, %g1
	sll	%g1, 4, %g1
	add	%i0, %g1, %g1
	ld	[%g1+28], %g2
	add	%g2, 1, %g4
	sll	%g2, 16, %g2
	st	%g4, [%g1+28]
	or	%g2, 513, %g2
	or	%g2, %g3, %g2
	mov	%i2, %o3
	mov	%i0, %o0
	mov	0, %o1
	mov	%i1, %o2
	mov	0, %o4
	mov	0, %o5
	call	writeToConfigRegister, 0
	 st	%g2, [%sp+92]
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	waitOnEngineThreadCompletion, 0
	 mov	0, %o3
	mov	%i0, %o0
.L41:
	mov	%i1, %o1
	mov	%i2, %o2
	call	releaseEngineThread, 0
	 mov	0, %o3
	cmp	%o0, 0
	bne,a	.L41
	 mov	%i0, %o0
	jmp	%i7+8
	 restore %g0, %o0, %o0
	.size	writeInstructionToEngineInstrMemory, .-writeInstructionToEngineInstrMemory
	.align 4
	.global readInstructionFromEngineInstrMemory
	.type	readInstructionFromEngineInstrMemory, #function
	.proc	016
readInstructionFromEngineInstrMemory:
	save	%sp, -96, %sp
	mov	0, %o3
	mov	%i0, %o0
	mov	%i0, %i5
	mov	%i1, %o1
	call	acquireEngineThread, 0
	 mov	%i2, %o2
	orcc	%o0, 0, %i0
	bne	.L48
	 mov	%i1, %o1
	mov	%i2, %o2
	mov	0, %o3
	mov	0, %o4
	call	readFromEngineConfigRegister, 0
	 mov	%i5, %o0
	sll	%i1, 2, %g1
	and	%o0, 254, %g3
	add	%g1, %i2, %g1
	sll	%g1, 4, %g1
	add	%i5, %g1, %g1
	ld	[%g1+28], %g2
	add	%g2, 1, %g4
	mov	%i3, %o5
	st	%g4, [%g1+28]
	sll	%g2, 16, %i3
	mov	0, %o3
	mov	2, %o4
	mov	%i5, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	or	%i3, 257, %i3
	call	writeToEngineConfigRegister, 0
	 or	%i3, %g3, %i3
	mov	0, %o4
	mov	%i3, %o5
	mov	%i5, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	writeToEngineConfigRegister, 0
	 mov	0, %o3
	mov	%i5, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	waitOnEngineThreadCompletion, 0
	 mov	0, %o3
	mov	%i5, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	0, %o3
	call	readFromEngineConfigRegister, 0
	 mov	4, %o4
	st	%o0, [%i4]
	mov	%i5, %o0
.L47:
	mov	%i1, %o1
	mov	%i2, %o2
	call	releaseEngineThread, 0
	 mov	0, %o3
	cmp	%o0, 0
	bne	.L47
	 mov	%i5, %o0
.L48:
	jmp	%i7+8
	 restore
	.size	readInstructionFromEngineInstrMemory, .-readInstructionFromEngineInstrMemory
	.align 4
	.global resetEngineThread
	.type	resetEngineThread, #function
	.proc	016
resetEngineThread:
	save	%sp, -96, %sp
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	acquireEngineThread, 0
	 mov	%i3, %o3
	cmp	%o0, 0
	be	.L53
	 mov	%i1, %o1
	jmp	%i7+8
	 restore %g0, %o0, %o0
.L53:
	mov	%i2, %o2
	mov	%i3, %o3
	mov	0, %o4
	call	readFromEngineConfigRegister, 0
	 mov	%i0, %o0
	sll	%i1, 2, %g1
	and	%o0, 254, %o0
	add	%g1, %i2, %g1
	sll	%g1, 2, %g1
	add	%g1, %i3, %g1
	add	%g1, 6, %g1
	sll	%g1, 2, %g1
	add	%i0, %g1, %g1
	ld	[%g1+4], %g2
	sll	%g2, 16, %g3
	add	%g2, 1, %g2
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	0, %o4
	sll	%i3, 14, %o5
	st	%g2, [%g1+4]
	or	%o5, 769, %o5
	or	%o5, %g3, %o5
	or	%o5, %o0, %o5
	call	writeToEngineConfigRegister, 0
	 mov	%i0, %o0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	waitOnEngineThreadCompletion, 0
	 mov	%i3, %o3
	mov	%i0, %o0
.L54:
	mov	%i1, %o1
	mov	%i2, %o2
	call	releaseEngineThread, 0
	 mov	%i3, %o3
	cmp	%o0, 0
	bne,a	.L54
	 mov	%i0, %o0
	jmp	%i7+8
	 restore %g0, %o0, %o0
	.size	resetEngineThread, .-resetEngineThread
	.align 4
	.global writeThreadDataRegister
	.type	writeThreadDataRegister, #function
	.proc	016
writeThreadDataRegister:
	save	%sp, -96, %sp
	ld	[%fp+92], %l0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	acquireEngineThread, 0
	 mov	%i3, %o3
	cmp	%o0, 0
	be	.L59
	 mov	%i1, %o1
	jmp	%i7+8
	 restore %g0, %o0, %o0
.L59:
	mov	%i2, %o2
	mov	%i3, %o3
	mov	0, %o4
	call	readFromEngineConfigRegister, 0
	 mov	%i0, %o0
	sll	%i1, 2, %g1
	and	%o0, 254, %g3
	add	%g1, %i2, %g1
	sll	%g1, 2, %g1
	add	%g1, %i3, %g1
	add	%g1, 6, %g1
	sll	%g1, 2, %g1
	add	%i0, %g1, %g1
	ld	[%g1+4], %g2
	add	%g2, 1, %g4
	sll	%g2, 16, %g2
	st	%g4, [%g1+4]
	mov	%i4, %o5
	mov	2, %o4
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	sll	%i3, 14, %i4
	or	%i4, 1537, %i4
	or	%i4, %g2, %i4
	call	writeToEngineConfigRegister, 0
	 or	%i4, %g3, %i4
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	6, %o4
	call	writeToEngineConfigRegister, 0
	 mov	%i5, %o5
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	7, %o4
	call	writeToEngineConfigRegister, 0
	 mov	%l0, %o5
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	0, %o4
	call	writeToEngineConfigRegister, 0
	 mov	%i4, %o5
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	waitOnEngineThreadCompletion, 0
	 mov	%i3, %o3
	mov	%i0, %o0
.L60:
	mov	%i1, %o1
	mov	%i2, %o2
	call	releaseEngineThread, 0
	 mov	%i3, %o3
	cmp	%o0, 0
	bne,a	.L60
	 mov	%i0, %o0
	jmp	%i7+8
	 restore %g0, %o0, %o0
	.size	writeThreadDataRegister, .-writeThreadDataRegister
	.align 4
	.global readThreadDataRegister
	.type	readThreadDataRegister, #function
	.proc	016
readThreadDataRegister:
	save	%sp, -96, %sp
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	call	acquireEngineThread, 0
	 mov	%i5, %l0
	cmp	%o0, 0
	be	.L65
	 mov	%i1, %o1
	jmp	%i7+8
	 restore %g0, %o0, %o0
.L65:
	mov	%i2, %o2
	mov	%i3, %o3
	mov	0, %o4
	call	readFromEngineConfigRegister, 0
	 mov	%i0, %o0
	sll	%i1, 2, %g1
	and	%o0, 254, %g3
	add	%g1, %i2, %g1
	sll	%g1, 2, %g1
	add	%g1, %i3, %g1
	add	%g1, 6, %g1
	sll	%g1, 2, %g1
	add	%i0, %g1, %g1
	ld	[%g1+4], %g2
	add	%g2, 1, %g4
	sll	%g2, 16, %g2
	st	%g4, [%g1+4]
	mov	%i4, %o5
	mov	2, %o4
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	sll	%i3, 14, %i5
	or	%i5, 1281, %i5
	or	%i5, %g2, %i5
	call	writeToEngineConfigRegister, 0
	 or	%i5, %g3, %i5
	mov	%i5, %o5
	mov	0, %o4
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	writeToEngineConfigRegister, 0
	 mov	%i3, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	waitOnEngineThreadCompletion, 0
	 mov	%i3, %o3
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	7, %o4
	call	readFromEngineConfigRegister, 0
	 mov	%i0, %o0
	mov	%i1, %o1
	mov	%o0, %i4
	mov	%i2, %o2
	mov	%i0, %o0
	mov	%i3, %o3
	call	readFromEngineConfigRegister, 0
	 mov	6, %o4
	mov	%i4, %i5
	mov	0, %g3
	mov	0, %i4
	or	%g3, %i5, %g3
	or	%o0, %i4, %g2
	std	%g2, [%l0]
	mov	%i0, %o0
.L66:
	mov	%i1, %o1
	mov	%i2, %o2
	call	releaseEngineThread, 0
	 mov	%i3, %o3
	cmp	%o0, 0
	bne,a	.L66
	 mov	%i0, %o0
	jmp	%i7+8
	 restore %g0, %o0, %o0
	.size	readThreadDataRegister, .-readThreadDataRegister
	.align 4
	.global completeEngineThread
	.type	completeEngineThread, #function
	.proc	016
completeEngineThread:
	save	%sp, -96, %sp
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	acquireEngineThread, 0
	 mov	%i3, %o3
	cmp	%o0, 0
	be	.L71
	 mov	%i1, %o1
	jmp	%i7+8
	 restore %g0, %o0, %o0
.L71:
	mov	%i2, %o2
	mov	%i3, %o3
	mov	0, %o4
	call	readFromEngineConfigRegister, 0
	 mov	%i0, %o0
	sll	%i1, 2, %g1
	and	%o0, 254, %o0
	add	%g1, %i2, %g1
	sll	%g1, 2, %g1
	add	%g1, %i3, %g1
	add	%g1, 6, %g1
	sll	%g1, 2, %g1
	add	%i0, %g1, %g1
	ld	[%g1+4], %g2
	sll	%g2, 16, %g3
	add	%g2, 1, %g2
	mov	0, %o4
	st	%g2, [%g1+4]
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	sll	%i3, 14, %o5
	or	%o5, 1793, %o5
	or	%o5, %g3, %o5
	or	%o5, %o0, %o5
	call	writeToEngineConfigRegister, 0
	 mov	%i0, %o0
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	waitOnEngineThreadCompletion, 0
	 mov	%i3, %o3
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	5, %o4
	call	readFromEngineConfigRegister, 0
	 mov	%i0, %o0
	mov	%i1, %o1
	st	%o0, [%i4]
	mov	%i2, %o2
	mov	%i0, %o0
	mov	%i3, %o3
	call	readFromEngineConfigRegister, 0
	 mov	6, %o4
	st	%o0, [%i5]
	mov	%i0, %o0
.L72:
	mov	%i1, %o1
	mov	%i2, %o2
	call	releaseEngineThread, 0
	 mov	%i3, %o3
	cmp	%o0, 0
	bne,a	.L72
	 mov	%i0, %o0
	jmp	%i7+8
	 restore %g0, %o0, %o0
	.size	completeEngineThread, .-completeEngineThread
	.align 4
	.global pollAndCompleteEngineThread
	.type	pollAndCompleteEngineThread, #function
	.proc	016
pollAndCompleteEngineThread:
	save	%sp, -96, %sp
	mov	%i0, %o0
.L80:
	mov	%i1, %o1
	mov	%i2, %o2
	call	engineThreadStatus, 0
	 mov	%i3, %o3
	andcc	%o0, 7, %g0
	bne	.L80
	 mov	%i0, %o0
.L81:
	mov	%i1, %o1
.L82:
	mov	%i2, %o2
	mov	%i3, %o3
	mov	%i4, %o4
	call	completeEngineThread, 0
	 mov	%i5, %o5
	cmp	%o0, 0
	bne	.L81
	 mov	%i0, %o0
	ld	[%i4], %g1
	cmp	%g1, 0
	bge	.L82
	 mov	%i1, %o1
	jmp	%i7+8
	 restore %g0, 0, %o0
	.size	pollAndCompleteEngineThread, .-pollAndCompleteEngineThread
	.align 4
	.global checkIfThreadHasCompleted
	.type	checkIfThreadHasCompleted, #function
	.proc	016
checkIfThreadHasCompleted:
	save	%sp, -96, %sp
	mov	0, %o4
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	readFromEngineConfigRegister, 0
	 mov	%i3, %o3
	st	%g0, [%i4]
	st	%g0, [%i5]
	and	%o0, 7, %o0
	cmp	%o0, 7
	be	.L86
	 mov	1, %g1
	jmp	%i7+8
	 restore %g0, %g1, %o0
.L86:
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	5, %o4
	call	readFromEngineConfigRegister, 0
	 mov	%i0, %o0
	mov	%i1, %o1
	st	%o0, [%i4]
	mov	%i2, %o2
	mov	%i0, %o0
	mov	%i3, %o3
	call	readFromEngineConfigRegister, 0
	 mov	6, %o4
	mov	0, %g1
	st	%o0, [%i5]
	jmp	%i7+8
	 restore %g0, %g1, %o0
	.size	checkIfThreadHasCompleted, .-checkIfThreadHasCompleted
	.align 4
	.global acquireDmaChannel
	.type	acquireDmaChannel, #function
	.proc	016
acquireDmaChannel:
	save	%sp, -96, %sp
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	dmaChannelStatus, 0
	 mov	%i3, %o3
	and	%o0, 7, %o0
	subcc	%g0, %o0, %g0
	addx	%g0, 0, %i0
	jmp	%i7+8
	 restore
	.size	acquireDmaChannel, .-acquireDmaChannel
	.align 4
	.global releaseDmaChannel
	.type	releaseDmaChannel, #function
	.proc	016
releaseDmaChannel:
	save	%sp, -96, %sp
	mov	1, %o4
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	__clear_dma_flags__, 0
	 mov	%i3, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	dmaChannelStatus, 0
	 mov	%i3, %o3
	and	%o0, 7, %o0
	subcc	%g0, %o0, %g0
	addx	%g0, 0, %i0
	jmp	%i7+8
	 restore
	.size	releaseDmaChannel, .-releaseDmaChannel
	.align 4
	.global scheduleDmaTaskOnEngine
	.type	scheduleDmaTaskOnEngine, #function
	.proc	016
scheduleDmaTaskOnEngine:
	save	%sp, -96, %sp
	ld	[%fp+92], %l5
	ld	[%fp+96], %l3
	ld	[%fp+100], %l2
	ld	[%fp+104], %l0
	ld	[%fp+112], %l1
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	acquireDmaChannel, 0
	 mov	%i3, %o3
	orcc	%o0, 0, %l4
	bne	.L90
	 subcc	%g0, %i4, %g0
	sethi	%hi(16777216), %g1
	addx	%g0, -1, %i4
	mov	%i1, %o1
	and	%i4, %g1, %i4
	mov	%i2, %o2
	add	%i4, %g1, %i4
	mov	%i3, %o3
	mov	0, %o4
	call	readFromDmaConfigRegister, 0
	 mov	%i0, %o0
	and	%i5, 15, %g3
	sll	%i1, 2, %g1
	add	%g1, %i2, %g1
	sll	%g1, 2, %g1
	add	%g1, %i3, %g1
	add	%g1, 6, %g1
	sll	%g1, 2, %g1
	add	%i0, %g1, %g1
	and	%o0, 254, %o7
	ld	[%g1+4], %g4
	sll	%g3, 20, %o3
	add	%g4, 1, %i5
	and	%l3, 15, %g3
	st	%i5, [%g1+4]
	sll	%g3, 16, %g2
	sll	%g4, 8, %g4
	sethi	%hi(64512), %o2
	or	%o2, 1023, %o2
	and	%g4, %o2, %g4
	or	%g4, 1, %g4
	or	%g4, %o3, %g4
	or	%g4, %g2, %g1
	mov	1, %o4
	or	%g1, %i4, %i4
	mov	%l5, %o5
	or	%i4, %o7, %i4
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	writeToDmaConfigRegister, 0
	 mov	%i3, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	2, %o4
	call	writeToDmaConfigRegister, 0
	 mov	%l2, %o5
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	3, %o4
	call	writeToDmaConfigRegister, 0
	 smul	%l1, %l0, %o5
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	4, %o4
	call	writeToDmaConfigRegister, 0
	 mov	%l1, %o5
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	5, %o4
	call	writeToDmaConfigRegister, 0
	 ld	[%fp+108], %o5
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	6, %o4
	call	writeToDmaConfigRegister, 0
	 mov	%l0, %o5
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	0, %o4
	call	writeToDmaConfigRegister, 0
	 mov	%i4, %o5
.L90:
	jmp	%i7+8
	 restore %g0, %l4, %o0
	.size	scheduleDmaTaskOnEngine, .-scheduleDmaTaskOnEngine
	.align 4
	.global readDmaChannelTaskStatus
	.type	readDmaChannelTaskStatus, #function
	.proc	014
readDmaChannelTaskStatus:
	save	%sp, -96, %sp
	mov	0, %o4
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	readFromDmaConfigRegister, 0
	 mov	%i3, %o3
	cmp	%i4, 0
	bne,a	.L94
	 st	%o0, [%i4]
.L94:
	and	%o0, 7, %i0
	jmp	%i7+8
	 restore
	.size	readDmaChannelTaskStatus, .-readDmaChannelTaskStatus
	.align 4
	.global closeDmaChannelTask
	.type	closeDmaChannelTask, #function
	.proc	020
closeDmaChannelTask:
	save	%sp, -96, %sp
	mov	%i0, %o0
.L101:
	mov	%i1, %o1
	mov	%i2, %o2
	call	releaseDmaChannel, 0
	 mov	%i3, %o3
	cmp	%o0, 0
	bne	.L101
	 mov	%i0, %o0
	jmp	%i7+8
	 restore
	.size	closeDmaChannelTask, .-closeDmaChannelTask
	.align 4
	.global enableThreadCommandDaemon
	.type	enableThreadCommandDaemon, #function
	.proc	020
enableThreadCommandDaemon:
	save	%sp, -96, %sp
	mov	0, %o4
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	readFromEngineConfigRegister, 0
	 mov	%i3, %o3
	andcc	%o0, 16, %g0
	be	.L104
	 nop
	jmp	%i7+8
	 restore
.L104:
	call	__set_thread_flags__, 0
	 restore %g0, 16, %o4
	.size	enableThreadCommandDaemon, .-enableThreadCommandDaemon
	.align 4
	.global enableThreadInterrupt
	.type	enableThreadInterrupt, #function
	.proc	020
enableThreadInterrupt:
	mov	32, %o4
	or	%o7, %g0, %g1
	call	__set_thread_flags__, 0
	 or	%g1, %g0, %o7
	.size	enableThreadInterrupt, .-enableThreadInterrupt
	.align 4
	.global disableThreadInterrupt
	.type	disableThreadInterrupt, #function
	.proc	020
disableThreadInterrupt:
	mov	32, %o4
	or	%o7, %g0, %g1
	call	__clear_thread_flags__, 0
	 or	%g1, %g0, %o7
	.size	disableThreadInterrupt, .-disableThreadInterrupt
	.align 4
	.global clearThreadInterrupt
	.type	clearThreadInterrupt, #function
	.proc	020
clearThreadInterrupt:
	mov	8, %o4
	or	%o7, %g0, %g1
	call	__clear_thread_flags__, 0
	 or	%g1, %g0, %o7
	.size	clearThreadInterrupt, .-clearThreadInterrupt
	.align 4
	.global threadInterruptIsSet
	.type	threadInterruptIsSet, #function
	.proc	016
threadInterruptIsSet:
	save	%sp, -96, %sp
	mov	0, %o4
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	readFromEngineConfigRegister, 0
	 mov	%i3, %o3
	and	%o0, 40, %o0
	xor	%o0, 40, %o0
	subcc	%g0, %o0, %g0
	subx	%g0, -1, %i0
	jmp	%i7+8
	 restore
	.size	threadInterruptIsSet, .-threadInterruptIsSet
	.align 4
	.global threadInterruptIsEnabled
	.type	threadInterruptIsEnabled, #function
	.proc	016
threadInterruptIsEnabled:
	save	%sp, -96, %sp
	mov	0, %o4
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	readFromEngineConfigRegister, 0
	 mov	%i3, %o3
	srl	%o0, 5, %i0
	and	%i0, 1, %i0
	jmp	%i7+8
	 restore
	.size	threadInterruptIsEnabled, .-threadInterruptIsEnabled
	.align 4
	.global runEngineThreadAndInterrupt
	.type	runEngineThreadAndInterrupt, #function
	.proc	016
runEngineThreadAndInterrupt:
	save	%sp, -96, %sp
	mov	%i0, %o0
	mov	%i0, %i5
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	call	threadInterruptIsEnabled, 0
	 mov	1, %i0
	cmp	%o0, 0
	be	.L115
	 mov	%i5, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	acquireEngineThread, 0
	 mov	%i3, %o3
	orcc	%o0, 0, %i0
	bne	.L115
	 mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	0, %o4
	call	readFromEngineConfigRegister, 0
	 mov	%i5, %o0
	sll	%i1, 2, %g1
	and	%o0, 254, %g3
	add	%g1, %i2, %g1
	sll	%g1, 2, %g1
	add	%g1, %i3, %g1
	add	%g1, 6, %g1
	sll	%g1, 2, %g1
	add	%i5, %g1, %g1
	ld	[%g1+4], %g2
	add	%g2, 1, %g4
	sll	%g2, 16, %g2
	mov	%i4, %o5
	mov	%i5, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	1, %o4
	sll	%i3, 14, %i4
	st	%g4, [%g1+4]
	or	%i4, 1025, %i4
	or	%i4, %g2, %i4
	call	writeToEngineConfigRegister, 0
	 or	%i4, %g3, %i4
	mov	%i5, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	0, %o4
	call	writeToEngineConfigRegister, 0
	 mov	%i4, %o5
.L115:
	jmp	%i7+8
	 restore
	.size	runEngineThreadAndInterrupt, .-runEngineThreadAndInterrupt
	.align 4
	.global runEngineThreadAndPoll
	.type	runEngineThreadAndPoll, #function
	.proc	016
runEngineThreadAndPoll:
	save	%sp, -96, %sp
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	threadInterruptIsEnabled, 0
	 mov	%i3, %o3
	cmp	%o0, 0
	be	.L121
	 mov	1, %g1
.L117:
	jmp	%i7+8
	 restore %g0, %g1, %o0
.L121:
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	acquireEngineThread, 0
	 mov	%i3, %o3
	orcc	%o0, 0, %g1
	bne	.L117
	 mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	0, %o4
	call	readFromEngineConfigRegister, 0
	 mov	%i0, %o0
	sll	%i1, 2, %g1
	and	%o0, 254, %g3
	add	%g1, %i2, %g1
	sll	%g1, 2, %g1
	add	%g1, %i3, %g1
	add	%g1, 6, %g1
	sll	%g1, 2, %g1
	add	%i0, %g1, %g1
	ld	[%g1+4], %g2
	add	%g2, 1, %g4
	sll	%g2, 16, %g2
	mov	1, %o4
	mov	%i4, %o5
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	st	%g4, [%g1+4]
	sll	%i3, 14, %i5
	or	%i5, 1025, %i5
	or	%i5, %g2, %i5
	call	writeToEngineConfigRegister, 0
	 or	%i5, %g3, %i5
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	0, %o4
	call	writeToEngineConfigRegister, 0
	 mov	%i5, %o5
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	waitOnEngineThreadCompletion, 0
	 mov	%i3, %o3
	mov	%i0, %o0
.L122:
	mov	%i1, %o1
	mov	%i2, %o2
	call	releaseEngineThread, 0
	 mov	%i3, %o3
	orcc	%o0, 0, %g1
	bne	.L122
	 mov	%i0, %o0
	jmp	%i7+8
	 restore %g0, %g1, %o0
	.size	runEngineThreadAndPoll, .-runEngineThreadAndPoll
	.align 4
	.global enableDmaCommandDaemon
	.type	enableDmaCommandDaemon, #function
	.proc	020
enableDmaCommandDaemon:
	jmp	%o7+8
	 nop
	.size	enableDmaCommandDaemon, .-enableDmaCommandDaemon
	.align 4
	.global enableDmaInterrupt
	.type	enableDmaInterrupt, #function
	.proc	020
enableDmaInterrupt:
	mov	32, %o4
	or	%o7, %g0, %g1
	call	__set_dma_flags__, 0
	 or	%g1, %g0, %o7
	.size	enableDmaInterrupt, .-enableDmaInterrupt
	.align 4
	.global disableDmaInterrupt
	.type	disableDmaInterrupt, #function
	.proc	020
disableDmaInterrupt:
	mov	32, %o4
	or	%o7, %g0, %g1
	call	__clear_dma_flags__, 0
	 or	%g1, %g0, %o7
	.size	disableDmaInterrupt, .-disableDmaInterrupt
	.align 4
	.global clearDmaInterrupt
	.type	clearDmaInterrupt, #function
	.proc	020
clearDmaInterrupt:
	mov	8, %o4
	or	%o7, %g0, %g1
	call	__clear_dma_flags__, 0
	 or	%g1, %g0, %o7
	.size	clearDmaInterrupt, .-clearDmaInterrupt
	.align 4
	.global dmaInterruptIsSet
	.type	dmaInterruptIsSet, #function
	.proc	016
dmaInterruptIsSet:
	save	%sp, -96, %sp
	mov	0, %o4
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	readFromDmaConfigRegister, 0
	 mov	%i3, %o3
	and	%o0, 40, %o0
	xor	%o0, 40, %o0
	subcc	%g0, %o0, %g0
	subx	%g0, -1, %i0
	jmp	%i7+8
	 restore
	.size	dmaInterruptIsSet, .-dmaInterruptIsSet
	.align 4
	.global decodeRetireMessage
	.type	decodeRetireMessage, #function
	.proc	020
decodeRetireMessage:
	srl	%o0, 28, %g1
	stb	%g1, [%o1]
	srl	%o0, 26, %g1
	and	%g1, 1, %g1
	stb	%g1, [%o2]
	srl	%o0, 24, %g1
	and	%g1, 3, %g1
	stb	%g1, [%o3]
	srl	%o0, 16, %g1
	stb	%g1, [%o4]
	jmp	%o7+8
	 sth	%o0, [%o5]
	.size	decodeRetireMessage, .-decodeRetireMessage
	.align 4
	.global readGlobalTickTimer
	.type	readGlobalTickTimer, #function
	.proc	017
readGlobalTickTimer:
	save	%sp, -104, %sp
	mov	0, %i4
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	call	acquireEngineThread, 0
	 mov	0, %i5
	cmp	%o0, 0
	be	.L134
	 mov	%i1, %o1
	mov	%i4, %i0
	jmp	%i7+8
	 restore %g0, %i5, %o1
.L134:
	mov	%i2, %o2
	mov	%i3, %o3
	mov	0, %o4
	call	readFromEngineConfigRegister, 0
	 mov	%i0, %o0
	sll	%i1, 2, %g1
	and	%o0, 254, %g3
	sll	%i3, 14, %g4
	add	%g1, %i2, %g1
	or	%g4, 2561, %g4
	sll	%g1, 2, %g1
	add	%g1, %i3, %g1
	add	%g1, 6, %g1
	sll	%g1, 2, %g1
	add	%i0, %g1, %g1
	ld	[%g1+4], %g2
	add	%g2, 1, %i5
	sll	%g2, 16, %g2
	st	%i5, [%g1+4]
	or	%g4, %g2, %g2
	or	%g2, %g3, %g2
	mov	0, %o5
	st	%g2, [%sp+92]
	mov	%i3, %o4
	mov	%i0, %o0
	mov	0, %o1
	mov	%i1, %o2
	call	writeToConfigRegister, 0
	 mov	%i2, %o3
	mov	%i0, %o0
	mov	%i1, %o1
	mov	%i2, %o2
	call	waitOnEngineThreadCompletion, 0
	 mov	%i3, %o3
	mov	%i1, %o1
	mov	%i2, %o2
	mov	%i3, %o3
	mov	3, %o4
	call	readFromEngineConfigRegister, 0
	 mov	%i0, %o0
	mov	%i1, %o1
	mov	%o0, %l0
	mov	%i2, %o2
	mov	%i0, %o0
	mov	%i3, %o3
	call	readFromEngineConfigRegister, 0
	 mov	4, %o4
	mov	0, %g3
	mov	%o0, %o1
	mov	0, %o0
	or	%g3, %o1, %i5
	or	%l0, %o0, %i4
	mov	%i0, %o0
.L135:
	mov	%i1, %o1
	mov	%i2, %o2
	call	releaseEngineThread, 0
	 mov	%i3, %o3
	cmp	%o0, 0
	bne,a	.L135
	 mov	%i0, %o0
	mov	%i4, %i0
	jmp	%i7+8
	 restore %g0, %i5, %o1
	.size	readGlobalTickTimer, .-readGlobalTickTimer
	.align 4
	.global fillLaneException
	.type	fillLaneException, #function
	.proc	020
fillLaneException:
	stb	%g0, [%o0]
	stb	%g0, [%o0+1]
	stb	%g0, [%o0+2]
	stb	%g0, [%o0+3]
	stb	%g0, [%o0+4]
	stb	%g0, [%o0+5]
	cmp	%o1, 6
	bleu	.L146
	 stb	%g0, [%o0+6]
.L137:
	mov	1, %g1
	jmp	%o7+8
	 stb	%g1, [%o0+6]
.L146:
	sll	%o1, 2, %o1
	sethi	%hi(.L144), %g1
	or	%g1, %lo(.L144), %g1
	ld	[%g1+%o1], %g1
	jmp	%g1
	 nop
	.section	".rodata"
	.section	".text"
.L143:
	mov	1, %g1
	jmp	%o7+8
	 stb	%g1, [%o0+5]
.L138:
	mov	1, %g1
	jmp	%o7+8
	 stb	%g1, [%o0]
.L139:
	mov	1, %g1
	jmp	%o7+8
	 stb	%g1, [%o0+1]
.L140:
	mov	1, %g1
	jmp	%o7+8
	 stb	%g1, [%o0+2]
.L141:
	mov	1, %g1
	jmp	%o7+8
	 stb	%g1, [%o0+3]
.L142:
	mov	1, %g1
	jmp	%o7+8
	 stb	%g1, [%o0+4]
	.align 4
	.subsection	-1
	.align 4
.L144:
	.word	.L137
	.word	.L138
	.word	.L139
	.word	.L140
	.word	.L141
	.word	.L142
	.word	.L143
	.previous
	.size	fillLaneException, .-fillLaneException
	.align 4
	.global fillEngineThreadExceptions
	.type	fillEngineThreadExceptions, #function
	.proc	020
fillEngineThreadExceptions:
	save	%sp, -96, %sp
	srl	%i1, 25, %g1
	and	%g1, 1, %g1
	srl	%i1, 26, %g2
	stb	%g1, [%i0+1]
	and	%g2, 1, %g2
	srl	%i1, 24, %g1
	and	%g1, 1, %g1
	stb	%g2, [%i0]
	stb	%g1, [%i0+2]
	add	%i0, 3, %o0
	srl	%i1, 21, %o1
	call	fillLaneException, 0
	 and	%o1, 7, %o1
	add	%i0, 10, %o0
	srl	%i1, 18, %o1
	call	fillLaneException, 0
	 and	%o1, 7, %o1
	add	%i0, 17, %o0
	srl	%i1, 15, %o1
	call	fillLaneException, 0
	 and	%o1, 7, %o1
	add	%i0, 24, %o0
	srl	%i1, 12, %o1
	call	fillLaneException, 0
	 and	%o1, 7, %o1
	add	%i0, 31, %o0
	srl	%i1, 9, %o1
	call	fillLaneException, 0
	 and	%o1, 7, %o1
	add	%i0, 38, %o0
	srl	%i1, 6, %o1
	call	fillLaneException, 0
	 and	%o1, 7, %o1
	add	%i0, 45, %o0
	srl	%i1, 3, %o1
	add	%i0, 52, %i0
	and	%o1, 7, %o1
	call	fillLaneException, 0
	 and	%i1, 7, %i1
	call	fillLaneException, 0
	 restore
	.size	fillEngineThreadExceptions, .-fillEngineThreadExceptions
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.asciz	"      (lane %d) integer-divide-by-zero\n"
	.align 8
.LC1:
	.asciz	"      (lane %d) fp-divide-by-zero\n"
	.align 8
.LC2:
	.asciz	"      (lane %d) fp-nan in alu operation\n"
	.align 8
.LC3:
	.asciz	"      (lane %d) int-sqroot of negative number\n"
	.align 8
.LC4:
	.asciz	"      (lane %d) fp-sqrt of negative number\n"
	.align 8
.LC5:
	.asciz	"      (lane %d) unaligned memory access\n"
	.align 8
.LC6:
	.asciz	"      (lane %d) none\n"
	.section	".text"
	.align 4
	.global printExceptionKind
	.type	printExceptionKind, #function
	.proc	020
printExceptionKind:
	cmp	%o1, 6
	bleu	.L157
	 sll	%o1, 2, %o1
.L149:
	mov	%o0, %o1
	sethi	%hi(.LC6), %o0
	or	%o0, %lo(.LC6), %o0
	or	%o7, %g0, %g1
	call	cortos_printf, 0
	 or	%g1, %g0, %o7
.L157:
	sethi	%hi(.L156), %g1
	or	%g1, %lo(.L156), %g1
	ld	[%g1+%o1], %g1
	jmp	%g1
	 nop
	.section	".rodata"
	.section	".text"
.L155:
	mov	%o0, %o1
	sethi	%hi(.LC5), %o0
	or	%o0, %lo(.LC5), %o0
	or	%o7, %g0, %g1
	call	cortos_printf, 0
	 or	%g1, %g0, %o7
.L150:
	mov	%o0, %o1
	sethi	%hi(.LC0), %o0
	or	%o0, %lo(.LC0), %o0
	or	%o7, %g0, %g1
	call	cortos_printf, 0
	 or	%g1, %g0, %o7
.L151:
	mov	%o0, %o1
	sethi	%hi(.LC1), %o0
	or	%o0, %lo(.LC1), %o0
	or	%o7, %g0, %g1
	call	cortos_printf, 0
	 or	%g1, %g0, %o7
.L152:
	mov	%o0, %o1
	sethi	%hi(.LC2), %o0
	or	%o0, %lo(.LC2), %o0
	or	%o7, %g0, %g1
	call	cortos_printf, 0
	 or	%g1, %g0, %o7
.L153:
	mov	%o0, %o1
	sethi	%hi(.LC3), %o0
	or	%o0, %lo(.LC3), %o0
	or	%o7, %g0, %g1
	call	cortos_printf, 0
	 or	%g1, %g0, %o7
.L154:
	mov	%o0, %o1
	sethi	%hi(.LC4), %o0
	or	%o0, %lo(.LC4), %o0
	or	%o7, %g0, %g1
	call	cortos_printf, 0
	 or	%g1, %g0, %o7
	.align 4
	.subsection	-1
	.align 4
.L156:
	.word	.L149
	.word	.L150
	.word	.L151
	.word	.L152
	.word	.L153
	.word	.L154
	.word	.L155
	.previous
	.size	printExceptionKind, .-printExceptionKind
	.section	.rodata.str1.8
	.align 8
.LC7:
	.asciz	"Info: exception summary\n"
	.align 8
.LC8:
	.asciz	"      halt\n"
	.align 8
.LC9:
	.asciz	"      ras-error\n"
	.align 8
.LC10:
	.asciz	"      execution-exception\n"
	.section	".text"
	.align 4
	.global parseEngineThreadExceptions
	.type	parseEngineThreadExceptions, #function
	.proc	020
parseEngineThreadExceptions:
	save	%sp, -96, %sp
	sethi	%hi(.LC7), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC7), %o0
	srl	%i0, 26, %l4
	srl	%i0, 24, %l3
	srl	%i0, 21, %l2
	srl	%i0, 18, %l1
	srl	%i0, 15, %l0
	srl	%i0, 12, %i2
	srl	%i0, 9, %i3
	srl	%i0, 6, %i4
	srl	%i0, 3, %i5
	and	%i0, 7, %i1
	and	%l4, 1, %l4
	srl	%i0, 25, %i0
	and	%l3, 1, %l3
	and	%l2, 7, %l2
	and	%l1, 7, %l1
	and	%l0, 7, %l0
	and	%i2, 7, %i2
	and	%i3, 7, %i3
	and	%i4, 7, %i4
	andcc	%i0, 1, %g0
	bne	.L171
	 and	%i5, 7, %i5
	cmp	%l4, 0
.L174:
	bne,a	.L172
	 sethi	%hi(.LC9), %o0
	cmp	%l3, 0
.L173:
	be	.L175
	 mov	%l2, %o1
	sethi	%hi(.LC10), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC10), %o0
	mov	%l2, %o1
.L175:
	call	printExceptionKind, 0
	 mov	0, %o0
	mov	%l1, %o1
	call	printExceptionKind, 0
	 mov	1, %o0
	mov	%l0, %o1
	call	printExceptionKind, 0
	 mov	2, %o0
	mov	%i2, %o1
	call	printExceptionKind, 0
	 mov	3, %o0
	mov	%i3, %o1
	call	printExceptionKind, 0
	 mov	4, %o0
	mov	%i4, %o1
	call	printExceptionKind, 0
	 mov	5, %o0
	mov	6, %o0
	mov	%i5, %o1
	call	printExceptionKind, 0
	 mov	7, %i0
	call	printExceptionKind, 0
	 restore
.L172:
	call	cortos_printf, 0
	 or	%o0, %lo(.LC9), %o0
	b	.L173
	 cmp	%l3, 0
.L171:
	sethi	%hi(.LC8), %o0
	call	cortos_printf, 0
	 or	%o0, %lo(.LC8), %o0
	b	.L174
	 cmp	%l4, 0
	.size	parseEngineThreadExceptions, .-parseEngineThreadExceptions
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
