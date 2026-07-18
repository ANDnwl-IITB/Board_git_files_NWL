.section .text.pagetablesetup
.global page_table_setup
page_table_setup:
   set PAGE_TABLE_BASE, %g1
   !PTD: context=0, index=0, level=0, child_p_addr=0x900, p_addr=0xc00
   ! *(PAGE_TABLE_BASE + 0xc00) = ptd(PAGE_TABLE_BASE + 0x800)
   ! make PTD from 0x900
   set 0x800, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0xc00, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTD: context=0, index=64, level=1, child_p_addr=0x200, p_addr=0x900
   ! *(PAGE_TABLE_BASE + 0x900) = ptd(PAGE_TABLE_BASE + 0x200)
   ! make PTD from 0x200
   set 0x200, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x900, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTD: context=0, index=0, level=2, child_p_addr=0x0, p_addr=0x200
   ! *(PAGE_TABLE_BASE + 0x200) = ptd(PAGE_TABLE_BASE + 0x0)
   ! make PTD from 0x0
   set 0x0, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x200, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=0, index=0, level=3,  ppnr=0x40000000, p_addr=0x0, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x0) = 0x400008a (pte)
   set 0x400008a, %g2
   set 0x0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=1, level=3,  ppnr=0x40001000, p_addr=0x4, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x4) = 0x400018a (pte)
   set 0x400018a, %g2
   set 0x4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=2, level=3,  ppnr=0x40002000, p_addr=0x8, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x8) = 0x400028a (pte)
   set 0x400028a, %g2
   set 0x8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=3, level=3,  ppnr=0x40003000, p_addr=0xc, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0xc) = 0x400038a (pte)
   set 0x400038a, %g2
   set 0xc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=4, level=3,  ppnr=0x40004000, p_addr=0x10, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x10) = 0x400048a (pte)
   set 0x400048a, %g2
   set 0x10, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=5, level=3,  ppnr=0x40005000, p_addr=0x14, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x14) = 0x400058a (pte)
   set 0x400058a, %g2
   set 0x14, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=6, level=3,  ppnr=0x40006000, p_addr=0x18, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x18) = 0x400068a (pte)
   set 0x400068a, %g2
   set 0x18, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=7, level=3,  ppnr=0x40007000, p_addr=0x1c, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x1c) = 0x400078a (pte)
   set 0x400078a, %g2
   set 0x1c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=8, level=3,  ppnr=0x40008000, p_addr=0x20, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x20) = 0x400088a (pte)
   set 0x400088a, %g2
   set 0x20, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=9, level=3,  ppnr=0x40009000, p_addr=0x24, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x24) = 0x400098a (pte)
   set 0x400098a, %g2
   set 0x24, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=10, level=3,  ppnr=0x4000a000, p_addr=0x28, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x28) = 0x4000a8a (pte)
   set 0x4000a8a, %g2
   set 0x28, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=11, level=3,  ppnr=0x4000b000, p_addr=0x2c, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x2c) = 0x4000b8a (pte)
   set 0x4000b8a, %g2
   set 0x2c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=12, level=3,  ppnr=0x4000c000, p_addr=0x30, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x30) = 0x4000c8a (pte)
   set 0x4000c8a, %g2
   set 0x30, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=13, level=3,  ppnr=0x4000d000, p_addr=0x34, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x34) = 0x4000d8a (pte)
   set 0x4000d8a, %g2
   set 0x34, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=14, level=3,  ppnr=0x4000e000, p_addr=0x38, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x38) = 0x4000e8a (pte)
   set 0x4000e8a, %g2
   set 0x38, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=15, level=3,  ppnr=0x4000f000, p_addr=0x3c, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x3c) = 0x4000f8a (pte)
   set 0x4000f8a, %g2
   set 0x3c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=16, level=3,  ppnr=0x40010000, p_addr=0x40, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x40) = 0x400108a (pte)
   set 0x400108a, %g2
   set 0x40, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=17, level=3,  ppnr=0x40011000, p_addr=0x44, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x44) = 0x400118a (pte)
   set 0x400118a, %g2
   set 0x44, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=18, level=3,  ppnr=0x40012000, p_addr=0x48, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x48) = 0x400128a (pte)
   set 0x400128a, %g2
   set 0x48, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=19, level=3,  ppnr=0x40013000, p_addr=0x4c, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x4c) = 0x400138a (pte)
   set 0x400138a, %g2
   set 0x4c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=20, level=3,  ppnr=0x40014000, p_addr=0x50, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x50) = 0x400148a (pte)
   set 0x400148a, %g2
   set 0x50, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=21, level=3,  ppnr=0x40015000, p_addr=0x54, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x54) = 0x400158a (pte)
   set 0x400158a, %g2
   set 0x54, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=22, level=3,  ppnr=0x40016000, p_addr=0x58, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x58) = 0x400168a (pte)
   set 0x400168a, %g2
   set 0x58, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=23, level=3,  ppnr=0x40017000, p_addr=0x5c, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x5c) = 0x400178a (pte)
   set 0x400178a, %g2
   set 0x5c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=24, level=3,  ppnr=0x40018000, p_addr=0x60, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x60) = 0x400188a (pte)
   set 0x400188a, %g2
   set 0x60, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=25, level=3,  ppnr=0x40019000, p_addr=0x64, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x64) = 0x400198a (pte)
   set 0x400198a, %g2
   set 0x64, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=26, level=3,  ppnr=0x4001a000, p_addr=0x68, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x68) = 0x4001a8a (pte)
   set 0x4001a8a, %g2
   set 0x68, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=27, level=3,  ppnr=0x4001b000, p_addr=0x6c, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x6c) = 0x4001b8a (pte)
   set 0x4001b8a, %g2
   set 0x6c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=28, level=3,  ppnr=0x4001c000, p_addr=0x70, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x70) = 0x4001c8a (pte)
   set 0x4001c8a, %g2
   set 0x70, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=29, level=3,  ppnr=0x4001d000, p_addr=0x74, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x74) = 0x4001d8a (pte)
   set 0x4001d8a, %g2
   set 0x74, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=30, level=3,  ppnr=0x4001e000, p_addr=0x78, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x78) = 0x4001e8a (pte)
   set 0x4001e8a, %g2
   set 0x78, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=31, level=3,  ppnr=0x4001f000, p_addr=0x7c, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x7c) = 0x4001f8a (pte)
   set 0x4001f8a, %g2
   set 0x7c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=32, level=3,  ppnr=0x40020000, p_addr=0x80, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x80) = 0x400208e (pte)
   set 0x400208e, %g2
   set 0x80, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=33, level=3,  ppnr=0x40021000, p_addr=0x84, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x84) = 0x400218e (pte)
   set 0x400218e, %g2
   set 0x84, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=34, level=3,  ppnr=0x40022000, p_addr=0x88, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x88) = 0x400228e (pte)
   set 0x400228e, %g2
   set 0x88, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=35, level=3,  ppnr=0x40023000, p_addr=0x8c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x8c) = 0x400238e (pte)
   set 0x400238e, %g2
   set 0x8c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=36, level=3,  ppnr=0x40024000, p_addr=0x90, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x90) = 0x400248e (pte)
   set 0x400248e, %g2
   set 0x90, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=37, level=3,  ppnr=0x40025000, p_addr=0x94, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x94) = 0x400258e (pte)
   set 0x400258e, %g2
   set 0x94, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=38, level=3,  ppnr=0x40026000, p_addr=0x98, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x98) = 0x400268e (pte)
   set 0x400268e, %g2
   set 0x98, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=39, level=3,  ppnr=0x40027000, p_addr=0x9c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9c) = 0x400278e (pte)
   set 0x400278e, %g2
   set 0x9c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=40, level=3,  ppnr=0x40028000, p_addr=0xa0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa0) = 0x400288e (pte)
   set 0x400288e, %g2
   set 0xa0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=41, level=3,  ppnr=0x40029000, p_addr=0xa4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa4) = 0x400298e (pte)
   set 0x400298e, %g2
   set 0xa4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=42, level=3,  ppnr=0x4002a000, p_addr=0xa8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa8) = 0x4002a8e (pte)
   set 0x4002a8e, %g2
   set 0xa8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=43, level=3,  ppnr=0x4002b000, p_addr=0xac, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xac) = 0x4002b8e (pte)
   set 0x4002b8e, %g2
   set 0xac, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=44, level=3,  ppnr=0x4002c000, p_addr=0xb0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xb0) = 0x4002c8e (pte)
   set 0x4002c8e, %g2
   set 0xb0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=45, level=3,  ppnr=0x4002d000, p_addr=0xb4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xb4) = 0x4002d8e (pte)
   set 0x4002d8e, %g2
   set 0xb4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=46, level=3,  ppnr=0x4002e000, p_addr=0xb8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xb8) = 0x4002e8e (pte)
   set 0x4002e8e, %g2
   set 0xb8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=47, level=3,  ppnr=0x4002f000, p_addr=0xbc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xbc) = 0x4002f8e (pte)
   set 0x4002f8e, %g2
   set 0xbc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=48, level=3,  ppnr=0x40030000, p_addr=0xc0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xc0) = 0x400308e (pte)
   set 0x400308e, %g2
   set 0xc0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=49, level=3,  ppnr=0x40031000, p_addr=0xc4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xc4) = 0x400318e (pte)
   set 0x400318e, %g2
   set 0xc4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=50, level=3,  ppnr=0x40032000, p_addr=0xc8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xc8) = 0x400328e (pte)
   set 0x400328e, %g2
   set 0xc8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=51, level=3,  ppnr=0x40033000, p_addr=0xcc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xcc) = 0x400338e (pte)
   set 0x400338e, %g2
   set 0xcc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=52, level=3,  ppnr=0x40034000, p_addr=0xd0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xd0) = 0x400348e (pte)
   set 0x400348e, %g2
   set 0xd0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=53, level=3,  ppnr=0x40035000, p_addr=0xd4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xd4) = 0x400358e (pte)
   set 0x400358e, %g2
   set 0xd4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=54, level=3,  ppnr=0x40036000, p_addr=0xd8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xd8) = 0x400368e (pte)
   set 0x400368e, %g2
   set 0xd8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=55, level=3,  ppnr=0x40037000, p_addr=0xdc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xdc) = 0x400378e (pte)
   set 0x400378e, %g2
   set 0xdc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=56, level=3,  ppnr=0x40038000, p_addr=0xe0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xe0) = 0x400388e (pte)
   set 0x400388e, %g2
   set 0xe0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=57, level=3,  ppnr=0x40039000, p_addr=0xe4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xe4) = 0x400398e (pte)
   set 0x400398e, %g2
   set 0xe4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=58, level=3,  ppnr=0x4003a000, p_addr=0xe8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xe8) = 0x4003a8e (pte)
   set 0x4003a8e, %g2
   set 0xe8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=59, level=3,  ppnr=0x4003b000, p_addr=0xec, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xec) = 0x4003b8e (pte)
   set 0x4003b8e, %g2
   set 0xec, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=60, level=3,  ppnr=0x4003c000, p_addr=0xf0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xf0) = 0x4003c8e (pte)
   set 0x4003c8e, %g2
   set 0xf0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=61, level=3,  ppnr=0x4003d000, p_addr=0xf4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xf4) = 0x4003d8e (pte)
   set 0x4003d8e, %g2
   set 0xf4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=62, level=3,  ppnr=0x4003e000, p_addr=0xf8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xf8) = 0x4003e8e (pte)
   set 0x4003e8e, %g2
   set 0xf8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=63, level=3,  ppnr=0x4003f000, p_addr=0xfc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xfc) = 0x4003f8e (pte)
   set 0x4003f8e, %g2
   set 0xfc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTD: context=0, index=1, level=2, child_p_addr=0x100, p_addr=0x204
   ! *(PAGE_TABLE_BASE + 0x204) = ptd(PAGE_TABLE_BASE + 0x100)
   ! make PTD from 0x100
   set 0x100, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x204, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=0, index=0, level=3,  ppnr=0x40040000, p_addr=0x100, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x100) = 0x400408e (pte)
   set 0x400408e, %g2
   set 0x100, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=1, level=3,  ppnr=0x40041000, p_addr=0x104, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x104) = 0x400418e (pte)
   set 0x400418e, %g2
   set 0x104, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=2, level=3,  ppnr=0x40042000, p_addr=0x108, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x108) = 0x400428e (pte)
   set 0x400428e, %g2
   set 0x108, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=3, level=3,  ppnr=0x40043000, p_addr=0x10c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x10c) = 0x400438e (pte)
   set 0x400438e, %g2
   set 0x10c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=4, level=3,  ppnr=0x40044000, p_addr=0x110, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x110) = 0x400448e (pte)
   set 0x400448e, %g2
   set 0x110, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=5, level=3,  ppnr=0x40045000, p_addr=0x114, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x114) = 0x400458e (pte)
   set 0x400458e, %g2
   set 0x114, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=6, level=3,  ppnr=0x40046000, p_addr=0x118, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x118) = 0x400468e (pte)
   set 0x400468e, %g2
   set 0x118, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=7, level=3,  ppnr=0x40047000, p_addr=0x11c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x11c) = 0x400478e (pte)
   set 0x400478e, %g2
   set 0x11c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=8, level=3,  ppnr=0x40048000, p_addr=0x120, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x120) = 0x400488e (pte)
   set 0x400488e, %g2
   set 0x120, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=9, level=3,  ppnr=0x40049000, p_addr=0x124, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x124) = 0x400498e (pte)
   set 0x400498e, %g2
   set 0x124, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=10, level=3,  ppnr=0x4004a000, p_addr=0x128, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x128) = 0x4004a8e (pte)
   set 0x4004a8e, %g2
   set 0x128, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=11, level=3,  ppnr=0x4004b000, p_addr=0x12c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x12c) = 0x4004b8e (pte)
   set 0x4004b8e, %g2
   set 0x12c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=12, level=3,  ppnr=0x4004c000, p_addr=0x130, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x130) = 0x4004c8e (pte)
   set 0x4004c8e, %g2
   set 0x130, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=13, level=3,  ppnr=0x4004d000, p_addr=0x134, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x134) = 0x4004d8e (pte)
   set 0x4004d8e, %g2
   set 0x134, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=14, level=3,  ppnr=0x4004e000, p_addr=0x138, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x138) = 0x4004e8e (pte)
   set 0x4004e8e, %g2
   set 0x138, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=15, level=3,  ppnr=0x4004f000, p_addr=0x13c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x13c) = 0x4004f8e (pte)
   set 0x4004f8e, %g2
   set 0x13c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=16, level=3,  ppnr=0x40050000, p_addr=0x140, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x140) = 0x400508e (pte)
   set 0x400508e, %g2
   set 0x140, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=17, level=3,  ppnr=0x40051000, p_addr=0x144, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x144) = 0x400518e (pte)
   set 0x400518e, %g2
   set 0x144, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=18, level=3,  ppnr=0x40052000, p_addr=0x148, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x148) = 0x400528e (pte)
   set 0x400528e, %g2
   set 0x148, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=19, level=3,  ppnr=0x40053000, p_addr=0x14c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x14c) = 0x400538e (pte)
   set 0x400538e, %g2
   set 0x14c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=20, level=3,  ppnr=0x40054000, p_addr=0x150, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x150) = 0x400548e (pte)
   set 0x400548e, %g2
   set 0x150, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=21, level=3,  ppnr=0x40055000, p_addr=0x154, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x154) = 0x400558e (pte)
   set 0x400558e, %g2
   set 0x154, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=22, level=3,  ppnr=0x40056000, p_addr=0x158, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x158) = 0x400568e (pte)
   set 0x400568e, %g2
   set 0x158, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=23, level=3,  ppnr=0x40057000, p_addr=0x15c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x15c) = 0x400578e (pte)
   set 0x400578e, %g2
   set 0x15c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=24, level=3,  ppnr=0x40058000, p_addr=0x160, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x160) = 0x400588e (pte)
   set 0x400588e, %g2
   set 0x160, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=25, level=3,  ppnr=0x40059000, p_addr=0x164, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x164) = 0x400598e (pte)
   set 0x400598e, %g2
   set 0x164, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=26, level=3,  ppnr=0x4005a000, p_addr=0x168, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x168) = 0x4005a8e (pte)
   set 0x4005a8e, %g2
   set 0x168, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=27, level=3,  ppnr=0x4005b000, p_addr=0x16c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x16c) = 0x4005b8e (pte)
   set 0x4005b8e, %g2
   set 0x16c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=28, level=3,  ppnr=0x4005c000, p_addr=0x170, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x170) = 0x4005c8e (pte)
   set 0x4005c8e, %g2
   set 0x170, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=29, level=3,  ppnr=0x4005d000, p_addr=0x174, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x174) = 0x4005d8e (pte)
   set 0x4005d8e, %g2
   set 0x174, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=30, level=3,  ppnr=0x4005e000, p_addr=0x178, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x178) = 0x4005e8e (pte)
   set 0x4005e8e, %g2
   set 0x178, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=31, level=3,  ppnr=0x4005f000, p_addr=0x17c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x17c) = 0x4005f8e (pte)
   set 0x4005f8e, %g2
   set 0x17c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=32, level=3,  ppnr=0x40060000, p_addr=0x180, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x180) = 0x400608e (pte)
   set 0x400608e, %g2
   set 0x180, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=33, level=3,  ppnr=0x40061000, p_addr=0x184, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x184) = 0x400618e (pte)
   set 0x400618e, %g2
   set 0x184, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=34, level=3,  ppnr=0x40062000, p_addr=0x188, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x188) = 0x400628e (pte)
   set 0x400628e, %g2
   set 0x188, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=35, level=3,  ppnr=0x40063000, p_addr=0x18c, cacheable=0x0, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x18c) = 0x400630e (pte)
   set 0x400630e, %g2
   set 0x18c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=36, level=3,  ppnr=0x40064000, p_addr=0x190, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x190) = 0x400648e (pte)
   set 0x400648e, %g2
   set 0x190, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=37, level=3,  ppnr=0x40065000, p_addr=0x194, cacheable=0x1, acc=0x4
   ! *(PAGE_TABLE_BASE + 0x194) = 0x4006592 (pte)
   set 0x4006592, %g2
   set 0x194, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=38, level=3,  ppnr=0x40066000, p_addr=0x198, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x198) = 0x400668e (pte)
   set 0x400668e, %g2
   set 0x198, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=39, level=3,  ppnr=0x40067000, p_addr=0x19c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x19c) = 0x400678e (pte)
   set 0x400678e, %g2
   set 0x19c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=40, level=3,  ppnr=0x40068000, p_addr=0x1a0, cacheable=0x1, acc=0x4
   ! *(PAGE_TABLE_BASE + 0x1a0) = 0x4006892 (pte)
   set 0x4006892, %g2
   set 0x1a0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTD: context=0, index=1, level=1, child_p_addr=0x400, p_addr=0x804
   ! *(PAGE_TABLE_BASE + 0x804) = ptd(PAGE_TABLE_BASE + 0x400)
   ! make PTD from 0x400
   set 0x400, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x804, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTD: context=0, index=0, level=2, child_p_addr=0x300, p_addr=0x400
   ! *(PAGE_TABLE_BASE + 0x400) = ptd(PAGE_TABLE_BASE + 0x300)
   ! make PTD from 0x300
   set 0x300, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x400, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=0, index=0, level=3,  ppnr=0x1000000, p_addr=0x300, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x300) = 0x100016 (pte)
   set 0x100016, %g2
   set 0x300, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=1, level=3,  ppnr=0x1001000, p_addr=0x304, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x304) = 0x100116 (pte)
   set 0x100116, %g2
   set 0x304, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=2, level=3,  ppnr=0x1002000, p_addr=0x308, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x308) = 0x100216 (pte)
   set 0x100216, %g2
   set 0x308, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=3, level=3,  ppnr=0x1003000, p_addr=0x30c, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x30c) = 0x100316 (pte)
   set 0x100316, %g2
   set 0x30c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=4, level=3,  ppnr=0x1004000, p_addr=0x310, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x310) = 0x100416 (pte)
   set 0x100416, %g2
   set 0x310, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=5, level=3,  ppnr=0x1005000, p_addr=0x314, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x314) = 0x100516 (pte)
   set 0x100516, %g2
   set 0x314, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=6, level=3,  ppnr=0x1006000, p_addr=0x318, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x318) = 0x100616 (pte)
   set 0x100616, %g2
   set 0x318, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=7, level=3,  ppnr=0x1007000, p_addr=0x31c, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x31c) = 0x100716 (pte)
   set 0x100716, %g2
   set 0x31c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=8, level=3,  ppnr=0x1008000, p_addr=0x320, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x320) = 0x100816 (pte)
   set 0x100816, %g2
   set 0x320, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=9, level=3,  ppnr=0x1009000, p_addr=0x324, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x324) = 0x100916 (pte)
   set 0x100916, %g2
   set 0x324, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=10, level=3,  ppnr=0x100a000, p_addr=0x328, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x328) = 0x100a16 (pte)
   set 0x100a16, %g2
   set 0x328, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=11, level=3,  ppnr=0x100b000, p_addr=0x32c, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x32c) = 0x100b16 (pte)
   set 0x100b16, %g2
   set 0x32c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=12, level=3,  ppnr=0x100c000, p_addr=0x330, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x330) = 0x100c16 (pte)
   set 0x100c16, %g2
   set 0x330, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=13, level=3,  ppnr=0x100d000, p_addr=0x334, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x334) = 0x100d16 (pte)
   set 0x100d16, %g2
   set 0x334, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=14, level=3,  ppnr=0x100e000, p_addr=0x338, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x338) = 0x100e16 (pte)
   set 0x100e16, %g2
   set 0x338, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=15, level=3,  ppnr=0x100f000, p_addr=0x33c, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x33c) = 0x100f16 (pte)
   set 0x100f16, %g2
   set 0x33c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTD: context=0, index=255, level=1, child_p_addr=0x6fc, p_addr=0xbfc
   ! *(PAGE_TABLE_BASE + 0xbfc) = ptd(PAGE_TABLE_BASE + 0x600)
   ! make PTD from 0x6fc
   set 0x600, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0xbfc, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTD: context=0, index=63, level=2, child_p_addr=0x580, p_addr=0x6fc
   ! *(PAGE_TABLE_BASE + 0x6fc) = ptd(PAGE_TABLE_BASE + 0x500)
   ! make PTD from 0x580
   set 0x500, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x6fc, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=0, index=32, level=3,  ppnr=0xfffe0000, p_addr=0x580, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x580) = 0xfffe016 (pte)
   set 0xfffe016, %g2
   set 0x580, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=33, level=3,  ppnr=0xfffe1000, p_addr=0x584, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x584) = 0xfffe116 (pte)
   set 0xfffe116, %g2
   set 0x584, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=34, level=3,  ppnr=0xfffe2000, p_addr=0x588, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x588) = 0xfffe216 (pte)
   set 0xfffe216, %g2
   set 0x588, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=35, level=3,  ppnr=0xfffe3000, p_addr=0x58c, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x58c) = 0xfffe316 (pte)
   set 0xfffe316, %g2
   set 0x58c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=36, level=3,  ppnr=0xfffe4000, p_addr=0x590, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x590) = 0xfffe416 (pte)
   set 0xfffe416, %g2
   set 0x590, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=37, level=3,  ppnr=0xfffe5000, p_addr=0x594, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x594) = 0xfffe516 (pte)
   set 0xfffe516, %g2
   set 0x594, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=38, level=3,  ppnr=0xfffe6000, p_addr=0x598, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x598) = 0xfffe616 (pte)
   set 0xfffe616, %g2
   set 0x598, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=39, level=3,  ppnr=0xfffe7000, p_addr=0x59c, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x59c) = 0xfffe716 (pte)
   set 0xfffe716, %g2
   set 0x59c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=40, level=3,  ppnr=0xfffe8000, p_addr=0x5a0, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5a0) = 0xfffe816 (pte)
   set 0xfffe816, %g2
   set 0x5a0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=41, level=3,  ppnr=0xfffe9000, p_addr=0x5a4, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5a4) = 0xfffe916 (pte)
   set 0xfffe916, %g2
   set 0x5a4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=42, level=3,  ppnr=0xfffea000, p_addr=0x5a8, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5a8) = 0xfffea16 (pte)
   set 0xfffea16, %g2
   set 0x5a8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=43, level=3,  ppnr=0xfffeb000, p_addr=0x5ac, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5ac) = 0xfffeb16 (pte)
   set 0xfffeb16, %g2
   set 0x5ac, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=44, level=3,  ppnr=0xfffec000, p_addr=0x5b0, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5b0) = 0xfffec16 (pte)
   set 0xfffec16, %g2
   set 0x5b0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=45, level=3,  ppnr=0xfffed000, p_addr=0x5b4, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5b4) = 0xfffed16 (pte)
   set 0xfffed16, %g2
   set 0x5b4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=46, level=3,  ppnr=0xfffee000, p_addr=0x5b8, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5b8) = 0xfffee16 (pte)
   set 0xfffee16, %g2
   set 0x5b8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=47, level=3,  ppnr=0xfffef000, p_addr=0x5bc, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5bc) = 0xfffef16 (pte)
   set 0xfffef16, %g2
   set 0x5bc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=48, level=3,  ppnr=0xffff0000, p_addr=0x5c0, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5c0) = 0xffff016 (pte)
   set 0xffff016, %g2
   set 0x5c0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=49, level=3,  ppnr=0xffff1000, p_addr=0x5c4, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5c4) = 0xffff116 (pte)
   set 0xffff116, %g2
   set 0x5c4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=50, level=3,  ppnr=0xffff2000, p_addr=0x5c8, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5c8) = 0xffff216 (pte)
   set 0xffff216, %g2
   set 0x5c8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=51, level=3,  ppnr=0xffff3000, p_addr=0x5cc, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5cc) = 0xffff316 (pte)
   set 0xffff316, %g2
   set 0x5cc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=52, level=3,  ppnr=0xffff4000, p_addr=0x5d0, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5d0) = 0xffff416 (pte)
   set 0xffff416, %g2
   set 0x5d0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=53, level=3,  ppnr=0xffff5000, p_addr=0x5d4, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5d4) = 0xffff516 (pte)
   set 0xffff516, %g2
   set 0x5d4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=54, level=3,  ppnr=0xffff6000, p_addr=0x5d8, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5d8) = 0xffff616 (pte)
   set 0xffff616, %g2
   set 0x5d8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=55, level=3,  ppnr=0xffff7000, p_addr=0x5dc, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5dc) = 0xffff716 (pte)
   set 0xffff716, %g2
   set 0x5dc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=56, level=3,  ppnr=0xffff8000, p_addr=0x5e0, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5e0) = 0xffff816 (pte)
   set 0xffff816, %g2
   set 0x5e0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=57, level=3,  ppnr=0xffff9000, p_addr=0x5e4, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5e4) = 0xffff916 (pte)
   set 0xffff916, %g2
   set 0x5e4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=58, level=3,  ppnr=0xffffa000, p_addr=0x5e8, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5e8) = 0xffffa16 (pte)
   set 0xffffa16, %g2
   set 0x5e8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=59, level=3,  ppnr=0xffffb000, p_addr=0x5ec, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5ec) = 0xffffb16 (pte)
   set 0xffffb16, %g2
   set 0x5ec, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=60, level=3,  ppnr=0xffffc000, p_addr=0x5f0, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5f0) = 0xffffc16 (pte)
   set 0xffffc16, %g2
   set 0x5f0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=61, level=3,  ppnr=0xffffd000, p_addr=0x5f4, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5f4) = 0xffffd16 (pte)
   set 0xffffd16, %g2
   set 0x5f4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=62, level=3,  ppnr=0xffffe000, p_addr=0x5f8, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5f8) = 0xffffe16 (pte)
   set 0xffffe16, %g2
   set 0x5f8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=63, level=3,  ppnr=0xfffff000, p_addr=0x5fc, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x5fc) = 0xfffff16 (pte)
   set 0xfffff16, %g2
   set 0x5fc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   retl;
   nop;
! done: page_table_setup
! start: set context-table-pointer = PAGE_TABLE_BASE + 0xc00
.global set_context_table_pointer
set_context_table_pointer:
   set PAGE_TABLE_BASE, %g1
   set 0xc00, %g5
   add %g5, %g1, %g2
   srl  %g2, 0x4, %g2
   or  %g2, 0x1, %g2
   set 0x100, %g3
   sta %g2, [%g3] 0x4
   retl;
   nop;
! done: set  context-table-pointer
.align 1024
PAGE_TABLE_BASE: .skip 4096
