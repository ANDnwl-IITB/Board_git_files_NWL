! ============================================================================
! pure_pipeline.s — Pure Pipeline: Cache Line vs Bank Change
!
! TEST 1 (CACHE HIT):
!   64 × ldd/std, all within same 64 bytes (hits after warmup)
!   Loop 4× = 256 ops. 98% pure memory instructions.
!
! TEST 2 (CACHE LINE CHANGE - 64B):
!   64 × ldd/std, stride=64 (each hits NEW cache line)
!   Offsets: 0, 64, 128, ..., 4032 (fits 13-bit immediate)
!   Loop 4× = 256 ops. 64 cache lines per iteration.
!
! TEST 3 (BANK CHANGE - 128KB):
!   64 × ldd/std, each advances 128KB (each hits different bank)
!   Uses add between loads (50% pure, unavoidable for 128KB stride)
!   Loop 4× = 256 ops.
!
! TEST 4 (32-BYTE STRIDE):
!   64 x ldd/std, stride=32. 
!   Offsets: 0, 32, 64, ..., 2016 (fits 13-bit immediate)
!   Loop 4x = 256 ops.
!
! Cache flushed between every test. 
! ============================================================================

    ! 32KB Dummy array used to scrub the L1 Cache between tests
    .section ".bss"
    .align 4
dummy_flush_area: .skip 32768

    .section ".text"
    .align 4
    .global main_00

    .equ BASE,          0x40200000
    .equ LOOPS,         4
    .equ OPS_PER,       64
    .equ TOTAL_OPS,     256           ! 64 × 4
    .equ CACHE_LINE,    64
    .equ BLOCK_SPAN,    4096          ! 64 × 64 bytes (For Test 2)
    .equ STRIDE_32_SPAN, 2048         ! 64 × 32 bytes (For Test 4)
    .equ BANK_STRIDE,   131072        ! 128KB (For Test 3)

! ---- Strings ----
    .section ".rodata"
    .align 4

str_banner:  .asciz "==== PURE PIPELINE: Cache Line vs Bank Change ====\n"
str_info1:   .asciz "64 unrolled ops × 4 loops = 256 total ops\n"
str_info2:   .asciz "Cache flushed between every test\n\n"

str_t1_hdr:  .asciz "--- TEST 1: CACHE HIT (same 64B, all hits) ---\n"
str_t2_hdr:  .asciz "\n--- TEST 2: CACHE LINE CHANGE (stride 64B, new line each op) ---\n"
str_t3_hdr:  .asciz "\n--- TEST 3: BANK CHANGE (stride 128KB, new bank each op) ---\n"
str_t4_hdr:  .asciz "\n--- TEST 4: 32-BYTE STRIDE (fits in immediate field) ---\n"

str_wr:      .asciz "  Store: Total=%u  Per-op=%u cycles\n"
str_rd:      .asciz "  Load:  Total=%u  Per-op=%u cycles\n"
str_flush:   .asciz "  (cache flushed)\n"

str_summary: .asciz "\n============ SUMMARY ============\n"
str_s1:      .asciz "  Cache hit:        Store=%u  Load=%u  cycles/op\n"
str_s2:      .asciz "  Cache line miss:  Store=%u  Load=%u  cycles/op\n"
str_s3:      .asciz "  Bank change:      Store=%u  Load=%u  cycles/op\n"
str_s4:      .asciz "  32-Byte stride:   Store=%u  Load=%u  cycles/op\n"
str_d1:      .asciz "\n  Miss penalty (T2-T1):  Store=%d  Load=%d  cycles\n"
str_d2:      .asciz "  Bank penalty (T3-T2):  Store=%d  Load=%d  cycles\n"
str_done:    .asciz "\n==== DONE ====\n"

! ============================================================================
! flush_cache — Evicts L1 D-Cache data by reading a dummy buffer
! ============================================================================
    .section ".text"
    .align 4
flush_cache:
    save    %sp, -96, %sp
    sethi   %hi(dummy_flush_area), %l0
    or      %l0, %lo(dummy_flush_area), %l0
    sethi   %hi(32768), %l1
    or      %l1, %lo(32768), %l1
    clr     %l2
f_loop:
    cmp     %l2, %l1
    bgeu    f_done
    nop
    ld      [%l0 + %l2], %g0
    add     %l2, 32, %l2
    ba      f_loop
    nop
f_done:
    ret
    restore

! ============================================================================
! TEST 1: CACHE HIT — all ops within same 64 bytes
! ============================================================================

! t1_store: 64 × std to same 64B, loop 4×
    .section ".text"
    .align 4
t1_store:
    save    %sp, -96, %sp
    sethi   %hi(BASE), %l0
    or      %l0, %lo(BASE), %l0
    set     0xAAAAAAAA, %g2
    mov     %g2, %g3
    mov     %g2, %g4
    mov     %g2, %g5

    ! Warm cache line
    ld      [%l0], %g0

    call    timer_read
    nop
    mov     %o0, %l6
    mov     LOOPS, %l1
t1s_lp:
    ! 64 × std within same 64 bytes (offsets 0-56, wrapping)
    std     %g2, [%l0]
    std     %g4, [%l0 + 8]
    std     %g2, [%l0 + 16]
    std     %g4, [%l0 + 24]
    std     %g2, [%l0 + 32]
    std     %g4, [%l0 + 40]
    std     %g2, [%l0 + 48]
    std     %g4, [%l0 + 56]
    std     %g2, [%l0]
    std     %g4, [%l0 + 8]
    std     %g2, [%l0 + 16]
    std     %g4, [%l0 + 24]
    std     %g2, [%l0 + 32]
    std     %g4, [%l0 + 40]
    std     %g2, [%l0 + 48]
    std     %g4, [%l0 + 56]
    std     %g2, [%l0]
    std     %g4, [%l0 + 8]
    std     %g2, [%l0 + 16]
    std     %g4, [%l0 + 24]
    std     %g2, [%l0 + 32]
    std     %g4, [%l0 + 40]
    std     %g2, [%l0 + 48]
    std     %g4, [%l0 + 56]
    std     %g2, [%l0]
    std     %g4, [%l0 + 8]
    std     %g2, [%l0 + 16]
    std     %g4, [%l0 + 24]
    std     %g2, [%l0 + 32]
    std     %g4, [%l0 + 40]
    std     %g2, [%l0 + 48]
    std     %g4, [%l0 + 56]
    std     %g2, [%l0]
    std     %g4, [%l0 + 8]
    std     %g2, [%l0 + 16]
    std     %g4, [%l0 + 24]
    std     %g2, [%l0 + 32]
    std     %g4, [%l0 + 40]
    std     %g2, [%l0 + 48]
    std     %g4, [%l0 + 56]
    std     %g2, [%l0]
    std     %g4, [%l0 + 8]
    std     %g2, [%l0 + 16]
    std     %g4, [%l0 + 24]
    std     %g2, [%l0 + 32]
    std     %g4, [%l0 + 40]
    std     %g2, [%l0 + 48]
    std     %g4, [%l0 + 56]
    std     %g2, [%l0]
    std     %g4, [%l0 + 8]
    std     %g2, [%l0 + 16]
    std     %g4, [%l0 + 24]
    std     %g2, [%l0 + 32]
    std     %g4, [%l0 + 40]
    std     %g2, [%l0 + 48]
    std     %g4, [%l0 + 56]
    std     %g2, [%l0]
    std     %g4, [%l0 + 8]
    std     %g2, [%l0 + 16]
    std     %g4, [%l0 + 24]
    std     %g2, [%l0 + 32]
    std     %g4, [%l0 + 40]
    std     %g2, [%l0 + 48]
    std     %g4, [%l0 + 56]

    subcc   %l1, 1, %l1
    bne     t1s_lp
    nop
    call    timer_read
    nop
    sub     %o0, %l6, %i0
    set     TOTAL_OPS, %l5
    wr      %g0, 0, %y
    nop; nop; nop
    udiv    %i0, %l5, %i1
    ret
    restore

! t1_load: 64 × ldd from same 64B, loop 4×
    .align 4
t1_load:
    save    %sp, -96, %sp
    sethi   %hi(BASE), %l0
    or      %l0, %lo(BASE), %l0
    ld      [%l0], %g0

    call    timer_read
    nop
    mov     %o0, %l6
    mov     LOOPS, %l1
t1l_lp:
    ! NOTE: Using %i2 and %i4 instead of %l2 and %l4 to prevent ldd pair corruption
    ldd     [%l0], %g2
    ldd     [%l0 + 8], %g4
    ldd     [%l0 + 16], %i2
    ldd     [%l0 + 24], %i4
    ldd     [%l0 + 32], %g2
    ldd     [%l0 + 40], %g4
    ldd     [%l0 + 48], %i2
    ldd     [%l0 + 56], %i4
    ldd     [%l0], %g2
    ldd     [%l0 + 8], %g4
    ldd     [%l0 + 16], %i2
    ldd     [%l0 + 24], %i4
    ldd     [%l0 + 32], %g2
    ldd     [%l0 + 40], %g4
    ldd     [%l0 + 48], %i2
    ldd     [%l0 + 56], %i4
    ldd     [%l0], %g2
    ldd     [%l0 + 8], %g4
    ldd     [%l0 + 16], %i2
    ldd     [%l0 + 24], %i4
    ldd     [%l0 + 32], %g2
    ldd     [%l0 + 40], %g4
    ldd     [%l0 + 48], %i2
    ldd     [%l0 + 56], %i4
    ldd     [%l0], %g2
    ldd     [%l0 + 8], %g4
    ldd     [%l0 + 16], %i2
    ldd     [%l0 + 24], %i4
    ldd     [%l0 + 32], %g2
    ldd     [%l0 + 40], %g4
    ldd     [%l0 + 48], %i2
    ldd     [%l0 + 56], %i4
    ldd     [%l0], %g2
    ldd     [%l0 + 8], %g4
    ldd     [%l0 + 16], %i2
    ldd     [%l0 + 24], %i4
    ldd     [%l0 + 32], %g2
    ldd     [%l0 + 40], %g4
    ldd     [%l0 + 48], %i2
    ldd     [%l0 + 56], %i4
    ldd     [%l0], %g2
    ldd     [%l0 + 8], %g4
    ldd     [%l0 + 16], %i2
    ldd     [%l0 + 24], %i4
    ldd     [%l0 + 32], %g2
    ldd     [%l0 + 40], %g4
    ldd     [%l0 + 48], %i2
    ldd     [%l0 + 56], %i4
    ldd     [%l0], %g2
    ldd     [%l0 + 8], %g4
    ldd     [%l0 + 16], %i2
    ldd     [%l0 + 24], %i4
    ldd     [%l0 + 32], %g2
    ldd     [%l0 + 40], %g4
    ldd     [%l0 + 48], %i2
    ldd     [%l0 + 56], %i4
    ldd     [%l0], %g2
    ldd     [%l0 + 8], %g4
    ldd     [%l0 + 16], %i2
    ldd     [%l0 + 24], %i4
    ldd     [%l0 + 32], %g2
    ldd     [%l0 + 40], %g4
    ldd     [%l0 + 48], %i2
    ldd     [%l0 + 56], %i4

    subcc   %l1, 1, %l1
    bne     t1l_lp
    nop
    call    timer_read
    nop
    sub     %o0, %l6, %i0
    set     TOTAL_OPS, %l5
    wr      %g0, 0, %y
    nop; nop; nop
    udiv    %i0, %l5, %i1
    ret
    restore

! ============================================================================
! TEST 2: CACHE LINE CHANGE — each op hits a DIFFERENT 64B cache line
!   Offsets: 0, 64, 128, ..., 4032  (all fit in 13-bit signed immediate)
!   64 ops span 4096 bytes = 64 cache lines
! ============================================================================

! t2_store: 64 × std, stride=64 (each new cache line)
    .align 4
t2_store:
    save    %sp, -96, %sp
    sethi   %hi(BASE), %l0
    or      %l0, %lo(BASE), %l0
    set     0xBBBBBBBB, %g2
    mov     %g2, %g3
    mov     %g2, %g4
    mov     %g2, %g5

    call    timer_read
    nop
    mov     %o0, %l6
    mov     LOOPS, %l1
t2s_lp:
    std     %g2, [%l0]
    std     %g4, [%l0 + 64]
    std     %g2, [%l0 + 128]
    std     %g4, [%l0 + 192]
    std     %g2, [%l0 + 256]
    std     %g4, [%l0 + 320]
    std     %g2, [%l0 + 384]
    std     %g4, [%l0 + 448]
    std     %g2, [%l0 + 512]
    std     %g4, [%l0 + 576]
    std     %g2, [%l0 + 640]
    std     %g4, [%l0 + 704]
    std     %g2, [%l0 + 768]
    std     %g4, [%l0 + 832]
    std     %g2, [%l0 + 896]
    std     %g4, [%l0 + 960]
    std     %g2, [%l0 + 1024]
    std     %g4, [%l0 + 1088]
    std     %g2, [%l0 + 1152]
    std     %g4, [%l0 + 1216]
    std     %g2, [%l0 + 1280]
    std     %g4, [%l0 + 1344]
    std     %g2, [%l0 + 1408]
    std     %g4, [%l0 + 1472]
    std     %g2, [%l0 + 1536]
    std     %g4, [%l0 + 1600]
    std     %g2, [%l0 + 1664]
    std     %g4, [%l0 + 1728]
    std     %g2, [%l0 + 1792]
    std     %g4, [%l0 + 1856]
    std     %g2, [%l0 + 1920]
    std     %g4, [%l0 + 1984]
    std     %g2, [%l0 + 2048]
    std     %g4, [%l0 + 2112]
    std     %g2, [%l0 + 2176]
    std     %g4, [%l0 + 2240]
    std     %g2, [%l0 + 2304]
    std     %g4, [%l0 + 2368]
    std     %g2, [%l0 + 2432]
    std     %g4, [%l0 + 2496]
    std     %g2, [%l0 + 2560]
    std     %g4, [%l0 + 2624]
    std     %g2, [%l0 + 2688]
    std     %g4, [%l0 + 2752]
    std     %g2, [%l0 + 2816]
    std     %g4, [%l0 + 2880]
    std     %g2, [%l0 + 2944]
    std     %g4, [%l0 + 3008]
    std     %g2, [%l0 + 3072]
    std     %g4, [%l0 + 3136]
    std     %g2, [%l0 + 3200]
    std     %g4, [%l0 + 3264]
    std     %g2, [%l0 + 3328]
    std     %g4, [%l0 + 3392]
    std     %g2, [%l0 + 3456]
    std     %g4, [%l0 + 3520]
    std     %g2, [%l0 + 3584]
    std     %g4, [%l0 + 3648]
    std     %g2, [%l0 + 3712]
    std     %g4, [%l0 + 3776]
    std     %g2, [%l0 + 3840]
    std     %g4, [%l0 + 3904]
    std     %g2, [%l0 + 3968]
    std     %g4, [%l0 + 4032]

    add     %l0, BLOCK_SPAN, %l0       ! advance 4096 bytes
    subcc   %l1, 1, %l1
    bne     t2s_lp
    nop
    call    timer_read
    nop
    sub     %o0, %l6, %i0
    set     TOTAL_OPS, %l5
    wr      %g0, 0, %y
    nop; nop; nop
    udiv    %i0, %l5, %i1
    ret
    restore

! t2_load: 64 × ldd, stride=64 (each new cache line)
    .align 4
t2_load:
    save    %sp, -96, %sp
    sethi   %hi(BASE), %l0
    or      %l0, %lo(BASE), %l0

    call    timer_read
    nop
    mov     %o0, %l6
    mov     LOOPS, %l1
t2l_lp:
    ldd     [%l0], %g2
    ldd     [%l0 + 64], %g4
    ldd     [%l0 + 128], %i2
    ldd     [%l0 + 192], %i4
    ldd     [%l0 + 256], %g2
    ldd     [%l0 + 320], %g4
    ldd     [%l0 + 384], %i2
    ldd     [%l0 + 448], %i4
    ldd     [%l0 + 512], %g2
    ldd     [%l0 + 576], %g4
    ldd     [%l0 + 640], %i2
    ldd     [%l0 + 704], %i4
    ldd     [%l0 + 768], %g2
    ldd     [%l0 + 832], %g4
    ldd     [%l0 + 896], %i2
    ldd     [%l0 + 960], %i4
    ldd     [%l0 + 1024], %g2
    ldd     [%l0 + 1088], %g4
    ldd     [%l0 + 1152], %i2
    ldd     [%l0 + 1216], %i4
    ldd     [%l0 + 1280], %g2
    ldd     [%l0 + 1344], %g4
    ldd     [%l0 + 1408], %i2
    ldd     [%l0 + 1472], %i4
    ldd     [%l0 + 1536], %g2
    ldd     [%l0 + 1600], %g4
    ldd     [%l0 + 1664], %i2
    ldd     [%l0 + 1728], %i4
    ldd     [%l0 + 1792], %g2
    ldd     [%l0 + 1856], %g4
    ldd     [%l0 + 1920], %i2
    ldd     [%l0 + 1984], %i4
    ldd     [%l0 + 2048], %g2
    ldd     [%l0 + 2112], %g4
    ldd     [%l0 + 2176], %i2
    ldd     [%l0 + 2240], %i4
    ldd     [%l0 + 2304], %g2
    ldd     [%l0 + 2368], %g4
    ldd     [%l0 + 2432], %i2
    ldd     [%l0 + 2496], %i4
    ldd     [%l0 + 2560], %g2
    ldd     [%l0 + 2624], %g4
    ldd     [%l0 + 2688], %i2
    ldd     [%l0 + 2752], %i4
    ldd     [%l0 + 2816], %g2
    ldd     [%l0 + 2880], %g4
    ldd     [%l0 + 2944], %i2
    ldd     [%l0 + 3008], %i4
    ldd     [%l0 + 3072], %g2
    ldd     [%l0 + 3136], %g4
    ldd     [%l0 + 3200], %i2
    ldd     [%l0 + 3264], %i4
    ldd     [%l0 + 3328], %g2
    ldd     [%l0 + 3392], %g4
    ldd     [%l0 + 3456], %i2
    ldd     [%l0 + 3520], %i4
    ldd     [%l0 + 3584], %g2
    ldd     [%l0 + 3648], %g4
    ldd     [%l0 + 3712], %i2
    ldd     [%l0 + 3776], %i4
    ldd     [%l0 + 3840], %g2
    ldd     [%l0 + 3904], %g4
    ldd     [%l0 + 3968], %i2
    ldd     [%l0 + 4032], %i4

    add     %l0, BLOCK_SPAN, %l0       ! advance 4096 bytes
    subcc   %l1, 1, %l1
    bne     t2l_lp
    nop
    call    timer_read
    nop
    sub     %o0, %l6, %i0
    set     TOTAL_OPS, %l5
    wr      %g0, 0, %y
    nop; nop; nop
    udiv    %i0, %l5, %i1
    ret
    restore

! ============================================================================
! TEST 3: BANK CHANGE — each op crosses 128KB bank boundary
! ============================================================================

! t3_store: 64 × std with 128KB advance between each
    .align 4
t3_store:
    save    %sp, -96, %sp
    sethi   %hi(BASE), %l0
    or      %l0, %lo(BASE), %l0
    set     0xCCCCCCCC, %g2
    mov     %g2, %g3
    mov     %g2, %g4
    mov     %g2, %g5
    set     BANK_STRIDE, %l5           ! pre-load 128KB stride

    call    timer_read
    nop
    mov     %o0, %l6
    mov     LOOPS, %l1
t3s_lp:
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]
    add     %l0, %l5, %l0
    std     %g2, [%l0]
    add     %l0, %l5, %l0
    std     %g4, [%l0]

    subcc   %l1, 1, %l1
    bne     t3s_lp
    nop
    call    timer_read
    nop
    sub     %o0, %l6, %i0
    set     TOTAL_OPS, %l5
    wr      %g0, 0, %y
    nop; nop; nop
    udiv    %i0, %l5, %i1
    ret
    restore

! t3_load: 64 × ldd with 128KB advance between each
    .align 4
t3_load:
    save    %sp, -96, %sp
    sethi   %hi(BASE), %l0
    or      %l0, %lo(BASE), %l0
    set     BANK_STRIDE, %l5

    call    timer_read
    nop
    mov     %o0, %l6
    mov     LOOPS, %l1
t3l_lp:
    ! CRITICAL FIX: Changed %l2/%l4 to %i2/%i4 so ldd doesn't corrupt %l5!
    ldd     [%l0], %g2
    add     %l0, %l5, %l0
    ldd     [%l0], %g4
    add     %l0, %l5, %l0
    ldd     [%l0], %i2
    add     %l0, %l5, %l0
    ldd     [%l0], %i4
    add     %l0, %l5, %l0
    ldd     [%l0], %g2
    add     %l0, %l5, %l0
    ldd     [%l0], %g4
    add     %l0, %l5, %l0
    ldd     [%l0], %i2
    add     %l0, %l5, %l0
    ldd     [%l0], %i4
    add     %l0, %l5, %l0
    ldd     [%l0], %g2
    add     %l0, %l5, %l0
    ldd     [%l0], %g4
    add     %l0, %l5, %l0
    ldd     [%l0], %i2
    add     %l0, %l5, %l0
    ldd     [%l0], %i4
    add     %l0, %l5, %l0
    ldd     [%l0], %g2
    add     %l0, %l5, %l0
    ldd     [%l0], %g4
    add     %l0, %l5, %l0
    ldd     [%l0], %i2
    add     %l0, %l5, %l0
    ldd     [%l0], %i4
    add     %l0, %l5, %l0
    ldd     [%l0], %g2
    add     %l0, %l5, %l0
    ldd     [%l0], %g4
    add     %l0, %l5, %l0
    ldd     [%l0], %i2
    add     %l0, %l5, %l0
    ldd     [%l0], %i4
    add     %l0, %l5, %l0
    ldd     [%l0], %g2
    add     %l0, %l5, %l0
    ldd     [%l0], %g4
    add     %l0, %l5, %l0
    ldd     [%l0], %i2
    add     %l0, %l5, %l0
    ldd     [%l0], %i4
    add     %l0, %l5, %l0
    ldd     [%l0], %g2
    add     %l0, %l5, %l0
    ldd     [%l0], %g4
    add     %l0, %l5, %l0
    ldd     [%l0], %i2
    add     %l0, %l5, %l0
    ldd     [%l0], %i4
    add     %l0, %l5, %l0
    ldd     [%l0], %g2
    add     %l0, %l5, %l0
    ldd     [%l0], %g4
    add     %l0, %l5, %l0
    ldd     [%l0], %i2
    add     %l0, %l5, %l0
    ldd     [%l0], %i4
    add     %l0, %l5, %l0
    ldd     [%l0], %g2
    add     %l0, %l5, %l0
    ldd     [%l0], %g4
    add     %l0, %l5, %l0
    ldd     [%l0], %i2
    add     %l0, %l5, %l0
    ldd     [%l0], %i4
    add     %l0, %l5, %l0
    ldd     [%l0], %g2
    add     %l0, %l5, %l0
    ldd     [%l0], %g4
    add     %l0, %l5, %l0
    ldd     [%l0], %i2
    add     %l0, %l5, %l0
    ldd     [%l0], %i4
    add     %l0, %l5, %l0
    ldd     [%l0], %g2
    add     %l0, %l5, %l0
    ldd     [%l0], %g4
    add     %l0, %l5, %l0
    ldd     [%l0], %i2
    add     %l0, %l5, %l0
    ldd     [%l0], %i4
    add     %l0, %l5, %l0
    ldd     [%l0], %g2
    add     %l0, %l5, %l0
    ldd     [%l0], %g4
    add     %l0, %l5, %l0
    ldd     [%l0], %i2
    add     %l0, %l5, %l0
    ldd     [%l0], %i4
    add     %l0, %l5, %l0
    ldd     [%l0], %g2
    add     %l0, %l5, %l0
    ldd     [%l0], %g4
    add     %l0, %l5, %l0
    ldd     [%l0], %i2
    add     %l0, %l5, %l0
    ldd     [%l0], %i4
    add     %l0, %l5, %l0
    ldd     [%l0], %g2
    add     %l0, %l5, %l0
    ldd     [%l0], %g4
    add     %l0, %l5, %l0
    ldd     [%l0], %i2
    add     %l0, %l5, %l0
    ldd     [%l0], %i4

    subcc   %l1, 1, %l1
    bne     t3l_lp
    nop
    call    timer_read
    nop
    sub     %o0, %l6, %i0
    set     TOTAL_OPS, %l5
    wr      %g0, 0, %y
    nop; nop; nop
    udiv    %i0, %l5, %i1
    ret
    restore

! ============================================================================
! TEST 4: 32-BYTE STRIDE — fits perfectly in immediate offset field
!   Offsets: 0, 32, 64, ..., 2016  (all fit in 13-bit signed immediate)
!   64 ops span 2048 bytes
! ============================================================================

! t4_store: 64 × std, stride=32
    .align 4
t4_store:
    save    %sp, -96, %sp
    sethi   %hi(BASE), %l0
    or      %l0, %lo(BASE), %l0
    set     0xDDDDDDDD, %g2
    mov     %g2, %g3
    mov     %g2, %g4
    mov     %g2, %g5

    call    timer_read
    nop
    mov     %o0, %l6
    mov     LOOPS, %l1
t4s_lp:
    std     %g2, [%l0 + 0]
    std     %g4, [%l0 + 32]
    std     %g2, [%l0 + 64]
    std     %g4, [%l0 + 96]
    std     %g2, [%l0 + 128]
    std     %g4, [%l0 + 160]
    std     %g2, [%l0 + 192]
    std     %g4, [%l0 + 224]
    std     %g2, [%l0 + 256]
    std     %g4, [%l0 + 288]
    std     %g2, [%l0 + 320]
    std     %g4, [%l0 + 352]
    std     %g2, [%l0 + 384]
    std     %g4, [%l0 + 416]
    std     %g2, [%l0 + 448]
    std     %g4, [%l0 + 480]
    std     %g2, [%l0 + 512]
    std     %g4, [%l0 + 544]
    std     %g2, [%l0 + 576]
    std     %g4, [%l0 + 608]
    std     %g2, [%l0 + 640]
    std     %g4, [%l0 + 672]
    std     %g2, [%l0 + 704]
    std     %g4, [%l0 + 736]
    std     %g2, [%l0 + 768]
    std     %g4, [%l0 + 800]
    std     %g2, [%l0 + 832]
    std     %g4, [%l0 + 864]
    std     %g2, [%l0 + 896]
    std     %g4, [%l0 + 928]
    std     %g2, [%l0 + 960]
    std     %g4, [%l0 + 992]
    std     %g2, [%l0 + 1024]
    std     %g4, [%l0 + 1056]
    std     %g2, [%l0 + 1088]
    std     %g4, [%l0 + 1120]
    std     %g2, [%l0 + 1152]
    std     %g4, [%l0 + 1184]
    std     %g2, [%l0 + 1216]
    std     %g4, [%l0 + 1248]
    std     %g2, [%l0 + 1280]
    std     %g4, [%l0 + 1312]
    std     %g2, [%l0 + 1344]
    std     %g4, [%l0 + 1376]
    std     %g2, [%l0 + 1408]
    std     %g4, [%l0 + 1440]
    std     %g2, [%l0 + 1472]
    std     %g4, [%l0 + 1504]
    std     %g2, [%l0 + 1536]
    std     %g4, [%l0 + 1568]
    std     %g2, [%l0 + 1600]
    std     %g4, [%l0 + 1632]
    std     %g2, [%l0 + 1664]
    std     %g4, [%l0 + 1696]
    std     %g2, [%l0 + 1728]
    std     %g4, [%l0 + 1760]
    std     %g2, [%l0 + 1792]
    std     %g4, [%l0 + 1824]
    std     %g2, [%l0 + 1856]
    std     %g4, [%l0 + 1888]
    std     %g2, [%l0 + 1920]
    std     %g4, [%l0 + 1952]
    std     %g2, [%l0 + 1984]
    std     %g4, [%l0 + 2016]

    ! Advance the base pointer by 2048 bytes for the next loop iteration
    add     %l0, STRIDE_32_SPAN, %l0       
    subcc   %l1, 1, %l1
    bne     t4s_lp
    nop
    call    timer_read
    nop
    sub     %o0, %l6, %i0
    set     TOTAL_OPS, %l5
    wr      %g0, 0, %y
    nop; nop; nop
    udiv    %i0, %l5, %i1
    ret
    restore

! t4_load: 64 × ldd, stride=32
    .align 4
t4_load:
    save    %sp, -96, %sp
    sethi   %hi(BASE), %l0
    or      %l0, %lo(BASE), %l0

    call    timer_read
    nop
    mov     %o0, %l6
    mov     LOOPS, %l1
t4l_lp:
    ldd     [%l0 + 0], %g2
    ldd     [%l0 + 32], %g4
    ldd     [%l0 + 64], %i2
    ldd     [%l0 + 96], %i4
    ldd     [%l0 + 128], %g2
    ldd     [%l0 + 160], %g4
    ldd     [%l0 + 192], %i2
    ldd     [%l0 + 224], %i4
    ldd     [%l0 + 256], %g2
    ldd     [%l0 + 288], %g4
    ldd     [%l0 + 320], %i2
    ldd     [%l0 + 352], %i4
    ldd     [%l0 + 384], %g2
    ldd     [%l0 + 416], %g4
    ldd     [%l0 + 448], %i2
    ldd     [%l0 + 480], %i4
    ldd     [%l0 + 512], %g2
    ldd     [%l0 + 544], %g4
    ldd     [%l0 + 576], %i2
    ldd     [%l0 + 608], %i4
    ldd     [%l0 + 640], %g2
    ldd     [%l0 + 672], %g4
    ldd     [%l0 + 704], %i2
    ldd     [%l0 + 736], %i4
    ldd     [%l0 + 768], %g2
    ldd     [%l0 + 800], %g4
    ldd     [%l0 + 832], %i2
    ldd     [%l0 + 864], %i4
    ldd     [%l0 + 896], %g2
    ldd     [%l0 + 928], %g4
    ldd     [%l0 + 960], %i2
    ldd     [%l0 + 992], %i4
    ldd     [%l0 + 1024], %g2
    ldd     [%l0 + 1056], %g4
    ldd     [%l0 + 1088], %i2
    ldd     [%l0 + 1120], %i4
    ldd     [%l0 + 1152], %g2
    ldd     [%l0 + 1184], %g4
    ldd     [%l0 + 1216], %i2
    ldd     [%l0 + 1248], %i4
    ldd     [%l0 + 1280], %g2
    ldd     [%l0 + 1312], %g4
    ldd     [%l0 + 1344], %i2
    ldd     [%l0 + 1376], %i4
    ldd     [%l0 + 1408], %g2
    ldd     [%l0 + 1440], %g4
    ldd     [%l0 + 1472], %i2
    ldd     [%l0 + 1504], %i4
    ldd     [%l0 + 1536], %g2
    ldd     [%l0 + 1568], %g4
    ldd     [%l0 + 1600], %i2
    ldd     [%l0 + 1632], %i4
    ldd     [%l0 + 1664], %g2
    ldd     [%l0 + 1696], %g4
    ldd     [%l0 + 1728], %i2
    ldd     [%l0 + 1760], %i4
    ldd     [%l0 + 1792], %g2
    ldd     [%l0 + 1824], %g4
    ldd     [%l0 + 1856], %i2
    ldd     [%l0 + 1888], %i4
    ldd     [%l0 + 1920], %g2
    ldd     [%l0 + 1952], %g4
    ldd     [%l0 + 1984], %i2
    ldd     [%l0 + 2016], %i4

    ! Advance the base pointer by 2048 bytes for the next loop iteration
    add     %l0, STRIDE_32_SPAN, %l0       
    subcc   %l1, 1, %l1
    bne     t4l_lp
    nop
    call    timer_read
    nop
    sub     %o0, %l6, %i0
    set     TOTAL_OPS, %l5
    wr      %g0, 0, %y
    nop; nop; nop
    udiv    %i0, %l5, %i1
    ret
    restore

! ============================================================================
! main_00 — Run all tests with cache flush between each
! ============================================================================
    .section ".text"
    .align 4
main_00:
    ! Stack space safely holds 8 metrics (t1..t4 w/r)
    save    %sp, -160, %sp

    sethi   %hi(str_banner), %o0
    call    cortos_printf
    or      %o0, %lo(str_banner), %o0
    sethi   %hi(str_info1), %o0
    call    cortos_printf
    or      %o0, %lo(str_info1), %o0
    sethi   %hi(str_info2), %o0
    call    cortos_printf
    or      %o0, %lo(str_info2), %o0

    ! ==== TEST 1: Cache hit ====
    sethi   %hi(str_t1_hdr), %o0
    call    cortos_printf
    or      %o0, %lo(str_t1_hdr), %o0

    call    flush_cache
    nop
    sethi   %hi(str_flush), %o0
    call    cortos_printf
    or      %o0, %lo(str_flush), %o0

    ! [FIXED] Printing logic: Saving total (%o0) into %l0 before setting string
    call    t1_store
    nop
    mov     %o0, %l0                   ! Save Total
    st      %o1, [%fp - 4]             ! Save Average
    sethi   %hi(str_wr), %o0
    or      %o0, %lo(str_wr), %o0
    mov     %l0, %o1
    ld      [%fp - 4], %o2
    call    cortos_printf
    nop

    call    flush_cache
    nop
    call    t1_load
    nop
    mov     %o0, %l0                   ! Save Total
    st      %o1, [%fp - 8]             ! Save Average
    sethi   %hi(str_rd), %o0
    or      %o0, %lo(str_rd), %o0
    mov     %l0, %o1
    ld      [%fp - 8], %o2
    call    cortos_printf
    nop

    ! ==== TEST 2: Cache line change (64B) ====
    sethi   %hi(str_t2_hdr), %o0
    call    cortos_printf
    or      %o0, %lo(str_t2_hdr), %o0

    call    flush_cache
    nop
    sethi   %hi(str_flush), %o0
    call    cortos_printf
    or      %o0, %lo(str_flush), %o0

    call    t2_store
    nop
    mov     %o0, %l0                   ! Save Total
    st      %o1, [%fp - 12]            ! Save Average
    sethi   %hi(str_wr), %o0
    or      %o0, %lo(str_wr), %o0
    mov     %l0, %o1
    ld      [%fp - 12], %o2
    call    cortos_printf
    nop

    call    flush_cache
    nop
    call    t2_load
    nop
    mov     %o0, %l0                   ! Save Total
    st      %o1, [%fp - 16]            ! Save Average
    sethi   %hi(str_rd), %o0
    or      %o0, %lo(str_rd), %o0
    mov     %l0, %o1
    ld      [%fp - 16], %o2
    call    cortos_printf
    nop

    ! ==== TEST 3: Bank change (128KB) ====
    sethi   %hi(str_t3_hdr), %o0
    call    cortos_printf
    or      %o0, %lo(str_t3_hdr), %o0

    call    flush_cache
    nop
    sethi   %hi(str_flush), %o0
    call    cortos_printf
    or      %o0, %lo(str_flush), %o0

    call    t3_store
    nop
    mov     %o0, %l0                   ! Save Total
    st      %o1, [%fp - 20]            ! Save Average
    sethi   %hi(str_wr), %o0
    or      %o0, %lo(str_wr), %o0
    mov     %l0, %o1
    ld      [%fp - 20], %o2
    call    cortos_printf
    nop

    call    flush_cache
    nop
    call    t3_load
    nop
    mov     %o0, %l0                   ! Save Total
    st      %o1, [%fp - 24]            ! Save Average
    sethi   %hi(str_rd), %o0
    or      %o0, %lo(str_rd), %o0
    mov     %l0, %o1
    ld      [%fp - 24], %o2
    call    cortos_printf
    nop

    ! ==== TEST 4: Stride 32B ====
    sethi   %hi(str_t4_hdr), %o0
    call    cortos_printf
    or      %o0, %lo(str_t4_hdr), %o0

    call    flush_cache
    nop
    sethi   %hi(str_flush), %o0
    call    cortos_printf
    or      %o0, %lo(str_flush), %o0

    call    t4_store
    nop
    mov     %o0, %l0                   ! Save Total
    st      %o1, [%fp - 28]            ! Save Average
    sethi   %hi(str_wr), %o0
    or      %o0, %lo(str_wr), %o0
    mov     %l0, %o1
    ld      [%fp - 28], %o2
    call    cortos_printf
    nop

    call    flush_cache
    nop
    call    t4_load
    nop
    mov     %o0, %l0                   ! Save Total
    st      %o1, [%fp - 32]            ! Save Average
    sethi   %hi(str_rd), %o0
    or      %o0, %lo(str_rd), %o0
    mov     %l0, %o1
    ld      [%fp - 32], %o2
    call    cortos_printf
    nop

    ! ==== SUMMARY ====
    sethi   %hi(str_summary), %o0
    call    cortos_printf
    or      %o0, %lo(str_summary), %o0

    sethi   %hi(str_s1), %o0
    or      %o0, %lo(str_s1), %o0
    ld      [%fp - 4], %o1
    ld      [%fp - 8], %o2
    call    cortos_printf
    nop

    sethi   %hi(str_s2), %o0
    or      %o0, %lo(str_s2), %o0
    ld      [%fp - 12], %o1
    ld      [%fp - 16], %o2
    call    cortos_printf
    nop

    sethi   %hi(str_s3), %o0
    or      %o0, %lo(str_s3), %o0
    ld      [%fp - 20], %o1
    ld      [%fp - 24], %o2
    call    cortos_printf
    nop

    sethi   %hi(str_s4), %o0
    or      %o0, %lo(str_s4), %o0
    ld      [%fp - 28], %o1
    ld      [%fp - 32], %o2
    call    cortos_printf
    nop

    ! Penalties
    ld      [%fp - 12], %l0            ! t2 store
    ld      [%fp - 4], %l1             ! t1 store
    sub     %l0, %l1, %o1              ! miss penalty store
    ld      [%fp - 16], %l0            ! t2 load
    ld      [%fp - 8], %l1             ! t1 load
    sub     %l0, %l1, %o2              ! miss penalty load
    sethi   %hi(str_d1), %o0
    call    cortos_printf
    or      %o0, %lo(str_d1), %o0

    ld      [%fp - 20], %l0            ! t3 store
    ld      [%fp - 12], %l1            ! t2 store
    sub     %l0, %l1, %o1              ! bank penalty store
    ld      [%fp - 24], %l0            ! t3 load
    ld      [%fp - 16], %l1            ! t2 load
    sub     %l0, %l1, %o2              ! bank penalty load
    sethi   %hi(str_d2), %o0
    call    cortos_printf
    or      %o0, %lo(str_d2), %o0

    sethi   %hi(str_done), %o0
    call    cortos_printf
    or      %o0, %lo(str_done), %o0

    ret
    restore
