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
   !PTD: context=0, index=64, level=1, child_p_addr=0x100, p_addr=0x900
   ! *(PAGE_TABLE_BASE + 0x900) = ptd(PAGE_TABLE_BASE + 0x100)
   ! make PTD from 0x100
   set 0x100, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x900, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTD: context=0, index=0, level=2, child_p_addr=0x0, p_addr=0x100
   ! *(PAGE_TABLE_BASE + 0x100) = ptd(PAGE_TABLE_BASE + 0x0)
   ! make PTD from 0x0
   set 0x0, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x100, %g5
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
   !PTE: context=0, index=17, level=3,  ppnr=0x40011000, p_addr=0x44, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x44) = 0x400118e (pte)
   set 0x400118e, %g2
   set 0x44, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=18, level=3,  ppnr=0x40012000, p_addr=0x48, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x48) = 0x400128e (pte)
   set 0x400128e, %g2
   set 0x48, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=19, level=3,  ppnr=0x40013000, p_addr=0x4c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x4c) = 0x400138e (pte)
   set 0x400138e, %g2
   set 0x4c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=20, level=3,  ppnr=0x40014000, p_addr=0x50, cacheable=0x0, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x50) = 0x400140e (pte)
   set 0x400140e, %g2
   set 0x50, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=21, level=3,  ppnr=0x40015000, p_addr=0x54, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x54) = 0x400158e (pte)
   set 0x400158e, %g2
   set 0x54, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=22, level=3,  ppnr=0x40016000, p_addr=0x58, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x58) = 0x400168e (pte)
   set 0x400168e, %g2
   set 0x58, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=23, level=3,  ppnr=0x40017000, p_addr=0x5c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x5c) = 0x400178e (pte)
   set 0x400178e, %g2
   set 0x5c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=24, level=3,  ppnr=0x40018000, p_addr=0x60, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x60) = 0x400188e (pte)
   set 0x400188e, %g2
   set 0x60, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=25, level=3,  ppnr=0x40019000, p_addr=0x64, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x64) = 0x400198e (pte)
   set 0x400198e, %g2
   set 0x64, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=26, level=3,  ppnr=0x4001a000, p_addr=0x68, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x68) = 0x4001a8e (pte)
   set 0x4001a8e, %g2
   set 0x68, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=27, level=3,  ppnr=0x4001b000, p_addr=0x6c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x6c) = 0x4001b8e (pte)
   set 0x4001b8e, %g2
   set 0x6c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=28, level=3,  ppnr=0x4001c000, p_addr=0x70, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x70) = 0x4001c8e (pte)
   set 0x4001c8e, %g2
   set 0x70, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=29, level=3,  ppnr=0x4001d000, p_addr=0x74, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x74) = 0x4001d8e (pte)
   set 0x4001d8e, %g2
   set 0x74, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=30, level=3,  ppnr=0x4001e000, p_addr=0x78, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x78) = 0x4001e8e (pte)
   set 0x4001e8e, %g2
   set 0x78, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=31, level=3,  ppnr=0x4001f000, p_addr=0x7c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x7c) = 0x4001f8e (pte)
   set 0x4001f8e, %g2
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
   !PTE: context=0, index=1, level=2,  ppnr=0x40040000, p_addr=0x104, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x104) = 0x400408e (pte)
   set 0x400408e, %g2
   set 0x104, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=2, level=2,  ppnr=0x40080000, p_addr=0x108, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x108) = 0x400808e (pte)
   set 0x400808e, %g2
   set 0x108, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=3, level=2,  ppnr=0x400c0000, p_addr=0x10c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x10c) = 0x400c08e (pte)
   set 0x400c08e, %g2
   set 0x10c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=4, level=2,  ppnr=0x40100000, p_addr=0x110, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x110) = 0x401008e (pte)
   set 0x401008e, %g2
   set 0x110, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=5, level=2,  ppnr=0x40140000, p_addr=0x114, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x114) = 0x401408e (pte)
   set 0x401408e, %g2
   set 0x114, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=6, level=2,  ppnr=0x40180000, p_addr=0x118, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x118) = 0x401808e (pte)
   set 0x401808e, %g2
   set 0x118, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=7, level=2,  ppnr=0x401c0000, p_addr=0x11c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x11c) = 0x401c08e (pte)
   set 0x401c08e, %g2
   set 0x11c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=8, level=2,  ppnr=0x40200000, p_addr=0x120, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x120) = 0x402008e (pte)
   set 0x402008e, %g2
   set 0x120, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=9, level=2,  ppnr=0x40240000, p_addr=0x124, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x124) = 0x402408e (pte)
   set 0x402408e, %g2
   set 0x124, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=10, level=2,  ppnr=0x40280000, p_addr=0x128, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x128) = 0x402808e (pte)
   set 0x402808e, %g2
   set 0x128, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=11, level=2,  ppnr=0x402c0000, p_addr=0x12c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x12c) = 0x402c08e (pte)
   set 0x402c08e, %g2
   set 0x12c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=12, level=2,  ppnr=0x40300000, p_addr=0x130, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x130) = 0x403008e (pte)
   set 0x403008e, %g2
   set 0x130, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=13, level=2,  ppnr=0x40340000, p_addr=0x134, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x134) = 0x403408e (pte)
   set 0x403408e, %g2
   set 0x134, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=14, level=2,  ppnr=0x40380000, p_addr=0x138, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x138) = 0x403808e (pte)
   set 0x403808e, %g2
   set 0x138, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=15, level=2,  ppnr=0x403c0000, p_addr=0x13c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x13c) = 0x403c08e (pte)
   set 0x403c08e, %g2
   set 0x13c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=16, level=2,  ppnr=0x40400000, p_addr=0x140, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x140) = 0x404008e (pte)
   set 0x404008e, %g2
   set 0x140, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=17, level=2,  ppnr=0x40440000, p_addr=0x144, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x144) = 0x404408e (pte)
   set 0x404408e, %g2
   set 0x144, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=18, level=2,  ppnr=0x40480000, p_addr=0x148, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x148) = 0x404808e (pte)
   set 0x404808e, %g2
   set 0x148, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=19, level=2,  ppnr=0x404c0000, p_addr=0x14c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x14c) = 0x404c08e (pte)
   set 0x404c08e, %g2
   set 0x14c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=20, level=2,  ppnr=0x40500000, p_addr=0x150, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x150) = 0x405008e (pte)
   set 0x405008e, %g2
   set 0x150, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=21, level=2,  ppnr=0x40540000, p_addr=0x154, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x154) = 0x405408e (pte)
   set 0x405408e, %g2
   set 0x154, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=22, level=2,  ppnr=0x40580000, p_addr=0x158, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x158) = 0x405808e (pte)
   set 0x405808e, %g2
   set 0x158, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=23, level=2,  ppnr=0x405c0000, p_addr=0x15c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x15c) = 0x405c08e (pte)
   set 0x405c08e, %g2
   set 0x15c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=24, level=2,  ppnr=0x40600000, p_addr=0x160, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x160) = 0x406008e (pte)
   set 0x406008e, %g2
   set 0x160, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=25, level=2,  ppnr=0x40640000, p_addr=0x164, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x164) = 0x406408e (pte)
   set 0x406408e, %g2
   set 0x164, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=26, level=2,  ppnr=0x40680000, p_addr=0x168, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x168) = 0x406808e (pte)
   set 0x406808e, %g2
   set 0x168, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=27, level=2,  ppnr=0x406c0000, p_addr=0x16c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x16c) = 0x406c08e (pte)
   set 0x406c08e, %g2
   set 0x16c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=28, level=2,  ppnr=0x40700000, p_addr=0x170, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x170) = 0x407008e (pte)
   set 0x407008e, %g2
   set 0x170, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=29, level=2,  ppnr=0x40740000, p_addr=0x174, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x174) = 0x407408e (pte)
   set 0x407408e, %g2
   set 0x174, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=30, level=2,  ppnr=0x40780000, p_addr=0x178, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x178) = 0x407808e (pte)
   set 0x407808e, %g2
   set 0x178, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=31, level=2,  ppnr=0x407c0000, p_addr=0x17c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x17c) = 0x407c08e (pte)
   set 0x407c08e, %g2
   set 0x17c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=32, level=2,  ppnr=0x40800000, p_addr=0x180, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x180) = 0x408008e (pte)
   set 0x408008e, %g2
   set 0x180, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=33, level=2,  ppnr=0x40840000, p_addr=0x184, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x184) = 0x408408e (pte)
   set 0x408408e, %g2
   set 0x184, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=34, level=2,  ppnr=0x40880000, p_addr=0x188, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x188) = 0x408808e (pte)
   set 0x408808e, %g2
   set 0x188, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=35, level=2,  ppnr=0x408c0000, p_addr=0x18c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x18c) = 0x408c08e (pte)
   set 0x408c08e, %g2
   set 0x18c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=36, level=2,  ppnr=0x40900000, p_addr=0x190, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x190) = 0x409008e (pte)
   set 0x409008e, %g2
   set 0x190, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=37, level=2,  ppnr=0x40940000, p_addr=0x194, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x194) = 0x409408e (pte)
   set 0x409408e, %g2
   set 0x194, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=38, level=2,  ppnr=0x40980000, p_addr=0x198, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x198) = 0x409808e (pte)
   set 0x409808e, %g2
   set 0x198, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=39, level=2,  ppnr=0x409c0000, p_addr=0x19c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x19c) = 0x409c08e (pte)
   set 0x409c08e, %g2
   set 0x19c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=40, level=2,  ppnr=0x40a00000, p_addr=0x1a0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1a0) = 0x40a008e (pte)
   set 0x40a008e, %g2
   set 0x1a0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=41, level=2,  ppnr=0x40a40000, p_addr=0x1a4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1a4) = 0x40a408e (pte)
   set 0x40a408e, %g2
   set 0x1a4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=42, level=2,  ppnr=0x40a80000, p_addr=0x1a8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1a8) = 0x40a808e (pte)
   set 0x40a808e, %g2
   set 0x1a8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=43, level=2,  ppnr=0x40ac0000, p_addr=0x1ac, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1ac) = 0x40ac08e (pte)
   set 0x40ac08e, %g2
   set 0x1ac, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=44, level=2,  ppnr=0x40b00000, p_addr=0x1b0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1b0) = 0x40b008e (pte)
   set 0x40b008e, %g2
   set 0x1b0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=45, level=2,  ppnr=0x40b40000, p_addr=0x1b4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1b4) = 0x40b408e (pte)
   set 0x40b408e, %g2
   set 0x1b4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=46, level=2,  ppnr=0x40b80000, p_addr=0x1b8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1b8) = 0x40b808e (pte)
   set 0x40b808e, %g2
   set 0x1b8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=47, level=2,  ppnr=0x40bc0000, p_addr=0x1bc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1bc) = 0x40bc08e (pte)
   set 0x40bc08e, %g2
   set 0x1bc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=48, level=2,  ppnr=0x40c00000, p_addr=0x1c0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1c0) = 0x40c008e (pte)
   set 0x40c008e, %g2
   set 0x1c0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=49, level=2,  ppnr=0x40c40000, p_addr=0x1c4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1c4) = 0x40c408e (pte)
   set 0x40c408e, %g2
   set 0x1c4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=50, level=2,  ppnr=0x40c80000, p_addr=0x1c8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1c8) = 0x40c808e (pte)
   set 0x40c808e, %g2
   set 0x1c8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=51, level=2,  ppnr=0x40cc0000, p_addr=0x1cc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1cc) = 0x40cc08e (pte)
   set 0x40cc08e, %g2
   set 0x1cc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=52, level=2,  ppnr=0x40d00000, p_addr=0x1d0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1d0) = 0x40d008e (pte)
   set 0x40d008e, %g2
   set 0x1d0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=53, level=2,  ppnr=0x40d40000, p_addr=0x1d4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1d4) = 0x40d408e (pte)
   set 0x40d408e, %g2
   set 0x1d4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=54, level=2,  ppnr=0x40d80000, p_addr=0x1d8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1d8) = 0x40d808e (pte)
   set 0x40d808e, %g2
   set 0x1d8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=55, level=2,  ppnr=0x40dc0000, p_addr=0x1dc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1dc) = 0x40dc08e (pte)
   set 0x40dc08e, %g2
   set 0x1dc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=56, level=2,  ppnr=0x40e00000, p_addr=0x1e0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1e0) = 0x40e008e (pte)
   set 0x40e008e, %g2
   set 0x1e0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=57, level=2,  ppnr=0x40e40000, p_addr=0x1e4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1e4) = 0x40e408e (pte)
   set 0x40e408e, %g2
   set 0x1e4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=58, level=2,  ppnr=0x40e80000, p_addr=0x1e8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1e8) = 0x40e808e (pte)
   set 0x40e808e, %g2
   set 0x1e8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=59, level=2,  ppnr=0x40ec0000, p_addr=0x1ec, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1ec) = 0x40ec08e (pte)
   set 0x40ec08e, %g2
   set 0x1ec, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=60, level=2,  ppnr=0x40f00000, p_addr=0x1f0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1f0) = 0x40f008e (pte)
   set 0x40f008e, %g2
   set 0x1f0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=61, level=2,  ppnr=0x40f40000, p_addr=0x1f4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1f4) = 0x40f408e (pte)
   set 0x40f408e, %g2
   set 0x1f4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=62, level=2,  ppnr=0x40f80000, p_addr=0x1f8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1f8) = 0x40f808e (pte)
   set 0x40f808e, %g2
   set 0x1f8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=63, level=2,  ppnr=0x40fc0000, p_addr=0x1fc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x1fc) = 0x40fc08e (pte)
   set 0x40fc08e, %g2
   set 0x1fc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=65, level=1,  ppnr=0x41000000, p_addr=0x904, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x904) = 0x410008e (pte)
   set 0x410008e, %g2
   set 0x904, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=66, level=1,  ppnr=0x42000000, p_addr=0x908, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x908) = 0x420008e (pte)
   set 0x420008e, %g2
   set 0x908, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=67, level=1,  ppnr=0x43000000, p_addr=0x90c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x90c) = 0x430008e (pte)
   set 0x430008e, %g2
   set 0x90c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=68, level=1,  ppnr=0x44000000, p_addr=0x910, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x910) = 0x440008e (pte)
   set 0x440008e, %g2
   set 0x910, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=69, level=1,  ppnr=0x45000000, p_addr=0x914, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x914) = 0x450008e (pte)
   set 0x450008e, %g2
   set 0x914, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=70, level=1,  ppnr=0x46000000, p_addr=0x918, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x918) = 0x460008e (pte)
   set 0x460008e, %g2
   set 0x918, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=71, level=1,  ppnr=0x47000000, p_addr=0x91c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x91c) = 0x470008e (pte)
   set 0x470008e, %g2
   set 0x91c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=72, level=1,  ppnr=0x48000000, p_addr=0x920, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x920) = 0x480008e (pte)
   set 0x480008e, %g2
   set 0x920, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=73, level=1,  ppnr=0x49000000, p_addr=0x924, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x924) = 0x490008e (pte)
   set 0x490008e, %g2
   set 0x924, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=74, level=1,  ppnr=0x4a000000, p_addr=0x928, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x928) = 0x4a0008e (pte)
   set 0x4a0008e, %g2
   set 0x928, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=75, level=1,  ppnr=0x4b000000, p_addr=0x92c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x92c) = 0x4b0008e (pte)
   set 0x4b0008e, %g2
   set 0x92c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=76, level=1,  ppnr=0x4c000000, p_addr=0x930, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x930) = 0x4c0008e (pte)
   set 0x4c0008e, %g2
   set 0x930, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=77, level=1,  ppnr=0x4d000000, p_addr=0x934, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x934) = 0x4d0008e (pte)
   set 0x4d0008e, %g2
   set 0x934, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=78, level=1,  ppnr=0x4e000000, p_addr=0x938, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x938) = 0x4e0008e (pte)
   set 0x4e0008e, %g2
   set 0x938, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=79, level=1,  ppnr=0x4f000000, p_addr=0x93c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x93c) = 0x4f0008e (pte)
   set 0x4f0008e, %g2
   set 0x93c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=80, level=1,  ppnr=0x50000000, p_addr=0x940, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x940) = 0x500008e (pte)
   set 0x500008e, %g2
   set 0x940, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=81, level=1,  ppnr=0x51000000, p_addr=0x944, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x944) = 0x510008e (pte)
   set 0x510008e, %g2
   set 0x944, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=82, level=1,  ppnr=0x52000000, p_addr=0x948, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x948) = 0x520008e (pte)
   set 0x520008e, %g2
   set 0x948, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=83, level=1,  ppnr=0x53000000, p_addr=0x94c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x94c) = 0x530008e (pte)
   set 0x530008e, %g2
   set 0x94c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=84, level=1,  ppnr=0x54000000, p_addr=0x950, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x950) = 0x540008e (pte)
   set 0x540008e, %g2
   set 0x950, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=85, level=1,  ppnr=0x55000000, p_addr=0x954, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x954) = 0x550008e (pte)
   set 0x550008e, %g2
   set 0x954, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=86, level=1,  ppnr=0x56000000, p_addr=0x958, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x958) = 0x560008e (pte)
   set 0x560008e, %g2
   set 0x958, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=87, level=1,  ppnr=0x57000000, p_addr=0x95c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x95c) = 0x570008e (pte)
   set 0x570008e, %g2
   set 0x95c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=88, level=1,  ppnr=0x58000000, p_addr=0x960, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x960) = 0x580008e (pte)
   set 0x580008e, %g2
   set 0x960, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=89, level=1,  ppnr=0x59000000, p_addr=0x964, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x964) = 0x590008e (pte)
   set 0x590008e, %g2
   set 0x964, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=90, level=1,  ppnr=0x5a000000, p_addr=0x968, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x968) = 0x5a0008e (pte)
   set 0x5a0008e, %g2
   set 0x968, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=91, level=1,  ppnr=0x5b000000, p_addr=0x96c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x96c) = 0x5b0008e (pte)
   set 0x5b0008e, %g2
   set 0x96c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=92, level=1,  ppnr=0x5c000000, p_addr=0x970, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x970) = 0x5c0008e (pte)
   set 0x5c0008e, %g2
   set 0x970, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=93, level=1,  ppnr=0x5d000000, p_addr=0x974, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x974) = 0x5d0008e (pte)
   set 0x5d0008e, %g2
   set 0x974, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=94, level=1,  ppnr=0x5e000000, p_addr=0x978, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x978) = 0x5e0008e (pte)
   set 0x5e0008e, %g2
   set 0x978, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=95, level=1,  ppnr=0x5f000000, p_addr=0x97c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x97c) = 0x5f0008e (pte)
   set 0x5f0008e, %g2
   set 0x97c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=96, level=1,  ppnr=0x60000000, p_addr=0x980, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x980) = 0x600008e (pte)
   set 0x600008e, %g2
   set 0x980, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=97, level=1,  ppnr=0x61000000, p_addr=0x984, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x984) = 0x610008e (pte)
   set 0x610008e, %g2
   set 0x984, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=98, level=1,  ppnr=0x62000000, p_addr=0x988, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x988) = 0x620008e (pte)
   set 0x620008e, %g2
   set 0x988, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=99, level=1,  ppnr=0x63000000, p_addr=0x98c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x98c) = 0x630008e (pte)
   set 0x630008e, %g2
   set 0x98c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=100, level=1,  ppnr=0x64000000, p_addr=0x990, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x990) = 0x640008e (pte)
   set 0x640008e, %g2
   set 0x990, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=101, level=1,  ppnr=0x65000000, p_addr=0x994, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x994) = 0x650008e (pte)
   set 0x650008e, %g2
   set 0x994, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=102, level=1,  ppnr=0x66000000, p_addr=0x998, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x998) = 0x660008e (pte)
   set 0x660008e, %g2
   set 0x998, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=103, level=1,  ppnr=0x67000000, p_addr=0x99c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x99c) = 0x670008e (pte)
   set 0x670008e, %g2
   set 0x99c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=104, level=1,  ppnr=0x68000000, p_addr=0x9a0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9a0) = 0x680008e (pte)
   set 0x680008e, %g2
   set 0x9a0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=105, level=1,  ppnr=0x69000000, p_addr=0x9a4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9a4) = 0x690008e (pte)
   set 0x690008e, %g2
   set 0x9a4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=106, level=1,  ppnr=0x6a000000, p_addr=0x9a8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9a8) = 0x6a0008e (pte)
   set 0x6a0008e, %g2
   set 0x9a8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=107, level=1,  ppnr=0x6b000000, p_addr=0x9ac, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9ac) = 0x6b0008e (pte)
   set 0x6b0008e, %g2
   set 0x9ac, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=108, level=1,  ppnr=0x6c000000, p_addr=0x9b0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9b0) = 0x6c0008e (pte)
   set 0x6c0008e, %g2
   set 0x9b0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=109, level=1,  ppnr=0x6d000000, p_addr=0x9b4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9b4) = 0x6d0008e (pte)
   set 0x6d0008e, %g2
   set 0x9b4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=110, level=1,  ppnr=0x6e000000, p_addr=0x9b8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9b8) = 0x6e0008e (pte)
   set 0x6e0008e, %g2
   set 0x9b8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=111, level=1,  ppnr=0x6f000000, p_addr=0x9bc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9bc) = 0x6f0008e (pte)
   set 0x6f0008e, %g2
   set 0x9bc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=112, level=1,  ppnr=0x70000000, p_addr=0x9c0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9c0) = 0x700008e (pte)
   set 0x700008e, %g2
   set 0x9c0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=113, level=1,  ppnr=0x71000000, p_addr=0x9c4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9c4) = 0x710008e (pte)
   set 0x710008e, %g2
   set 0x9c4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=114, level=1,  ppnr=0x72000000, p_addr=0x9c8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9c8) = 0x720008e (pte)
   set 0x720008e, %g2
   set 0x9c8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=115, level=1,  ppnr=0x73000000, p_addr=0x9cc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9cc) = 0x730008e (pte)
   set 0x730008e, %g2
   set 0x9cc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=116, level=1,  ppnr=0x74000000, p_addr=0x9d0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9d0) = 0x740008e (pte)
   set 0x740008e, %g2
   set 0x9d0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=117, level=1,  ppnr=0x75000000, p_addr=0x9d4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9d4) = 0x750008e (pte)
   set 0x750008e, %g2
   set 0x9d4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=118, level=1,  ppnr=0x76000000, p_addr=0x9d8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9d8) = 0x760008e (pte)
   set 0x760008e, %g2
   set 0x9d8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=119, level=1,  ppnr=0x77000000, p_addr=0x9dc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9dc) = 0x770008e (pte)
   set 0x770008e, %g2
   set 0x9dc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=120, level=1,  ppnr=0x78000000, p_addr=0x9e0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9e0) = 0x780008e (pte)
   set 0x780008e, %g2
   set 0x9e0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=121, level=1,  ppnr=0x79000000, p_addr=0x9e4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9e4) = 0x790008e (pte)
   set 0x790008e, %g2
   set 0x9e4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=122, level=1,  ppnr=0x7a000000, p_addr=0x9e8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9e8) = 0x7a0008e (pte)
   set 0x7a0008e, %g2
   set 0x9e8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=123, level=1,  ppnr=0x7b000000, p_addr=0x9ec, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9ec) = 0x7b0008e (pte)
   set 0x7b0008e, %g2
   set 0x9ec, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=124, level=1,  ppnr=0x7c000000, p_addr=0x9f0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9f0) = 0x7c0008e (pte)
   set 0x7c0008e, %g2
   set 0x9f0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=125, level=1,  ppnr=0x7d000000, p_addr=0x9f4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9f4) = 0x7d0008e (pte)
   set 0x7d0008e, %g2
   set 0x9f4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=126, level=1,  ppnr=0x7e000000, p_addr=0x9f8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9f8) = 0x7e0008e (pte)
   set 0x7e0008e, %g2
   set 0x9f8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=127, level=1,  ppnr=0x7f000000, p_addr=0x9fc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x9fc) = 0x7f0008e (pte)
   set 0x7f0008e, %g2
   set 0x9fc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=128, level=1,  ppnr=0x80000000, p_addr=0xa00, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa00) = 0x800008e (pte)
   set 0x800008e, %g2
   set 0xa00, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=129, level=1,  ppnr=0x81000000, p_addr=0xa04, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa04) = 0x810008e (pte)
   set 0x810008e, %g2
   set 0xa04, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=130, level=1,  ppnr=0x82000000, p_addr=0xa08, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa08) = 0x820008e (pte)
   set 0x820008e, %g2
   set 0xa08, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=131, level=1,  ppnr=0x83000000, p_addr=0xa0c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa0c) = 0x830008e (pte)
   set 0x830008e, %g2
   set 0xa0c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=132, level=1,  ppnr=0x84000000, p_addr=0xa10, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa10) = 0x840008e (pte)
   set 0x840008e, %g2
   set 0xa10, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=133, level=1,  ppnr=0x85000000, p_addr=0xa14, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa14) = 0x850008e (pte)
   set 0x850008e, %g2
   set 0xa14, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=134, level=1,  ppnr=0x86000000, p_addr=0xa18, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa18) = 0x860008e (pte)
   set 0x860008e, %g2
   set 0xa18, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=135, level=1,  ppnr=0x87000000, p_addr=0xa1c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa1c) = 0x870008e (pte)
   set 0x870008e, %g2
   set 0xa1c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=136, level=1,  ppnr=0x88000000, p_addr=0xa20, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa20) = 0x880008e (pte)
   set 0x880008e, %g2
   set 0xa20, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=137, level=1,  ppnr=0x89000000, p_addr=0xa24, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa24) = 0x890008e (pte)
   set 0x890008e, %g2
   set 0xa24, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=138, level=1,  ppnr=0x8a000000, p_addr=0xa28, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa28) = 0x8a0008e (pte)
   set 0x8a0008e, %g2
   set 0xa28, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=139, level=1,  ppnr=0x8b000000, p_addr=0xa2c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa2c) = 0x8b0008e (pte)
   set 0x8b0008e, %g2
   set 0xa2c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=140, level=1,  ppnr=0x8c000000, p_addr=0xa30, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa30) = 0x8c0008e (pte)
   set 0x8c0008e, %g2
   set 0xa30, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=141, level=1,  ppnr=0x8d000000, p_addr=0xa34, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa34) = 0x8d0008e (pte)
   set 0x8d0008e, %g2
   set 0xa34, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=142, level=1,  ppnr=0x8e000000, p_addr=0xa38, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa38) = 0x8e0008e (pte)
   set 0x8e0008e, %g2
   set 0xa38, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=143, level=1,  ppnr=0x8f000000, p_addr=0xa3c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa3c) = 0x8f0008e (pte)
   set 0x8f0008e, %g2
   set 0xa3c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=144, level=1,  ppnr=0x90000000, p_addr=0xa40, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa40) = 0x900008e (pte)
   set 0x900008e, %g2
   set 0xa40, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=145, level=1,  ppnr=0x91000000, p_addr=0xa44, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa44) = 0x910008e (pte)
   set 0x910008e, %g2
   set 0xa44, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=146, level=1,  ppnr=0x92000000, p_addr=0xa48, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa48) = 0x920008e (pte)
   set 0x920008e, %g2
   set 0xa48, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=147, level=1,  ppnr=0x93000000, p_addr=0xa4c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa4c) = 0x930008e (pte)
   set 0x930008e, %g2
   set 0xa4c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=148, level=1,  ppnr=0x94000000, p_addr=0xa50, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa50) = 0x940008e (pte)
   set 0x940008e, %g2
   set 0xa50, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=149, level=1,  ppnr=0x95000000, p_addr=0xa54, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa54) = 0x950008e (pte)
   set 0x950008e, %g2
   set 0xa54, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=150, level=1,  ppnr=0x96000000, p_addr=0xa58, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa58) = 0x960008e (pte)
   set 0x960008e, %g2
   set 0xa58, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=151, level=1,  ppnr=0x97000000, p_addr=0xa5c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa5c) = 0x970008e (pte)
   set 0x970008e, %g2
   set 0xa5c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=152, level=1,  ppnr=0x98000000, p_addr=0xa60, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa60) = 0x980008e (pte)
   set 0x980008e, %g2
   set 0xa60, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=153, level=1,  ppnr=0x99000000, p_addr=0xa64, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa64) = 0x990008e (pte)
   set 0x990008e, %g2
   set 0xa64, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=154, level=1,  ppnr=0x9a000000, p_addr=0xa68, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa68) = 0x9a0008e (pte)
   set 0x9a0008e, %g2
   set 0xa68, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=155, level=1,  ppnr=0x9b000000, p_addr=0xa6c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa6c) = 0x9b0008e (pte)
   set 0x9b0008e, %g2
   set 0xa6c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=156, level=1,  ppnr=0x9c000000, p_addr=0xa70, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa70) = 0x9c0008e (pte)
   set 0x9c0008e, %g2
   set 0xa70, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=157, level=1,  ppnr=0x9d000000, p_addr=0xa74, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa74) = 0x9d0008e (pte)
   set 0x9d0008e, %g2
   set 0xa74, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=158, level=1,  ppnr=0x9e000000, p_addr=0xa78, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa78) = 0x9e0008e (pte)
   set 0x9e0008e, %g2
   set 0xa78, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=159, level=1,  ppnr=0x9f000000, p_addr=0xa7c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa7c) = 0x9f0008e (pte)
   set 0x9f0008e, %g2
   set 0xa7c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=160, level=1,  ppnr=0xa0000000, p_addr=0xa80, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa80) = 0xa00008e (pte)
   set 0xa00008e, %g2
   set 0xa80, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=161, level=1,  ppnr=0xa1000000, p_addr=0xa84, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa84) = 0xa10008e (pte)
   set 0xa10008e, %g2
   set 0xa84, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=162, level=1,  ppnr=0xa2000000, p_addr=0xa88, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa88) = 0xa20008e (pte)
   set 0xa20008e, %g2
   set 0xa88, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=163, level=1,  ppnr=0xa3000000, p_addr=0xa8c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa8c) = 0xa30008e (pte)
   set 0xa30008e, %g2
   set 0xa8c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=164, level=1,  ppnr=0xa4000000, p_addr=0xa90, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa90) = 0xa40008e (pte)
   set 0xa40008e, %g2
   set 0xa90, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=165, level=1,  ppnr=0xa5000000, p_addr=0xa94, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa94) = 0xa50008e (pte)
   set 0xa50008e, %g2
   set 0xa94, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=166, level=1,  ppnr=0xa6000000, p_addr=0xa98, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa98) = 0xa60008e (pte)
   set 0xa60008e, %g2
   set 0xa98, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=167, level=1,  ppnr=0xa7000000, p_addr=0xa9c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xa9c) = 0xa70008e (pte)
   set 0xa70008e, %g2
   set 0xa9c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=168, level=1,  ppnr=0xa8000000, p_addr=0xaa0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xaa0) = 0xa80008e (pte)
   set 0xa80008e, %g2
   set 0xaa0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=169, level=1,  ppnr=0xa9000000, p_addr=0xaa4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xaa4) = 0xa90008e (pte)
   set 0xa90008e, %g2
   set 0xaa4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=170, level=1,  ppnr=0xaa000000, p_addr=0xaa8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xaa8) = 0xaa0008e (pte)
   set 0xaa0008e, %g2
   set 0xaa8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=171, level=1,  ppnr=0xab000000, p_addr=0xaac, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xaac) = 0xab0008e (pte)
   set 0xab0008e, %g2
   set 0xaac, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=172, level=1,  ppnr=0xac000000, p_addr=0xab0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xab0) = 0xac0008e (pte)
   set 0xac0008e, %g2
   set 0xab0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=173, level=1,  ppnr=0xad000000, p_addr=0xab4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xab4) = 0xad0008e (pte)
   set 0xad0008e, %g2
   set 0xab4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=174, level=1,  ppnr=0xae000000, p_addr=0xab8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xab8) = 0xae0008e (pte)
   set 0xae0008e, %g2
   set 0xab8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=175, level=1,  ppnr=0xaf000000, p_addr=0xabc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xabc) = 0xaf0008e (pte)
   set 0xaf0008e, %g2
   set 0xabc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=176, level=1,  ppnr=0xb0000000, p_addr=0xac0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xac0) = 0xb00008e (pte)
   set 0xb00008e, %g2
   set 0xac0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=177, level=1,  ppnr=0xb1000000, p_addr=0xac4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xac4) = 0xb10008e (pte)
   set 0xb10008e, %g2
   set 0xac4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=178, level=1,  ppnr=0xb2000000, p_addr=0xac8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xac8) = 0xb20008e (pte)
   set 0xb20008e, %g2
   set 0xac8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=179, level=1,  ppnr=0xb3000000, p_addr=0xacc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xacc) = 0xb30008e (pte)
   set 0xb30008e, %g2
   set 0xacc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=180, level=1,  ppnr=0xb4000000, p_addr=0xad0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xad0) = 0xb40008e (pte)
   set 0xb40008e, %g2
   set 0xad0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=181, level=1,  ppnr=0xb5000000, p_addr=0xad4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xad4) = 0xb50008e (pte)
   set 0xb50008e, %g2
   set 0xad4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=182, level=1,  ppnr=0xb6000000, p_addr=0xad8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xad8) = 0xb60008e (pte)
   set 0xb60008e, %g2
   set 0xad8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=183, level=1,  ppnr=0xb7000000, p_addr=0xadc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xadc) = 0xb70008e (pte)
   set 0xb70008e, %g2
   set 0xadc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=184, level=1,  ppnr=0xb8000000, p_addr=0xae0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xae0) = 0xb80008e (pte)
   set 0xb80008e, %g2
   set 0xae0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=185, level=1,  ppnr=0xb9000000, p_addr=0xae4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xae4) = 0xb90008e (pte)
   set 0xb90008e, %g2
   set 0xae4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=186, level=1,  ppnr=0xba000000, p_addr=0xae8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xae8) = 0xba0008e (pte)
   set 0xba0008e, %g2
   set 0xae8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=187, level=1,  ppnr=0xbb000000, p_addr=0xaec, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xaec) = 0xbb0008e (pte)
   set 0xbb0008e, %g2
   set 0xaec, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=188, level=1,  ppnr=0xbc000000, p_addr=0xaf0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xaf0) = 0xbc0008e (pte)
   set 0xbc0008e, %g2
   set 0xaf0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=189, level=1,  ppnr=0xbd000000, p_addr=0xaf4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xaf4) = 0xbd0008e (pte)
   set 0xbd0008e, %g2
   set 0xaf4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=190, level=1,  ppnr=0xbe000000, p_addr=0xaf8, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xaf8) = 0xbe0008e (pte)
   set 0xbe0008e, %g2
   set 0xaf8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=191, level=1,  ppnr=0xbf000000, p_addr=0xafc, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0xafc) = 0xbf0008e (pte)
   set 0xbf0008e, %g2
   set 0xafc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTD: context=0, index=192, level=1, child_p_addr=0x300, p_addr=0xb00
   ! *(PAGE_TABLE_BASE + 0xb00) = ptd(PAGE_TABLE_BASE + 0x300)
   ! make PTD from 0x300
   set 0x300, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0xb00, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTD: context=0, index=0, level=2, child_p_addr=0x200, p_addr=0x300
   ! *(PAGE_TABLE_BASE + 0x300) = ptd(PAGE_TABLE_BASE + 0x200)
   ! make PTD from 0x200
   set 0x200, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x300, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=0, index=0, level=3,  ppnr=0xc0000000, p_addr=0x200, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x200) = 0xc00008e (pte)
   set 0xc00008e, %g2
   set 0x200, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=1, level=3,  ppnr=0xc0001000, p_addr=0x204, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x204) = 0xc00018e (pte)
   set 0xc00018e, %g2
   set 0x204, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=2, level=3,  ppnr=0xc0002000, p_addr=0x208, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x208) = 0xc00028e (pte)
   set 0xc00028e, %g2
   set 0x208, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=3, level=3,  ppnr=0xc0003000, p_addr=0x20c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x20c) = 0xc00038e (pte)
   set 0xc00038e, %g2
   set 0x20c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=4, level=3,  ppnr=0xc0004000, p_addr=0x210, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x210) = 0xc00048e (pte)
   set 0xc00048e, %g2
   set 0x210, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=5, level=3,  ppnr=0xc0005000, p_addr=0x214, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x214) = 0xc00058e (pte)
   set 0xc00058e, %g2
   set 0x214, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=6, level=3,  ppnr=0xc0006000, p_addr=0x218, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x218) = 0xc00068e (pte)
   set 0xc00068e, %g2
   set 0x218, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=7, level=3,  ppnr=0xc0007000, p_addr=0x21c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x21c) = 0xc00078e (pte)
   set 0xc00078e, %g2
   set 0x21c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=8, level=3,  ppnr=0xc0008000, p_addr=0x220, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x220) = 0xc00088e (pte)
   set 0xc00088e, %g2
   set 0x220, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=9, level=3,  ppnr=0xc0009000, p_addr=0x224, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x224) = 0xc00098e (pte)
   set 0xc00098e, %g2
   set 0x224, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=10, level=3,  ppnr=0xc000a000, p_addr=0x228, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x228) = 0xc000a8e (pte)
   set 0xc000a8e, %g2
   set 0x228, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=11, level=3,  ppnr=0xc000b000, p_addr=0x22c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x22c) = 0xc000b8e (pte)
   set 0xc000b8e, %g2
   set 0x22c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=12, level=3,  ppnr=0xc000c000, p_addr=0x230, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x230) = 0xc000c8e (pte)
   set 0xc000c8e, %g2
   set 0x230, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=13, level=3,  ppnr=0xc000d000, p_addr=0x234, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x234) = 0xc000d8e (pte)
   set 0xc000d8e, %g2
   set 0x234, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=14, level=3,  ppnr=0xc000e000, p_addr=0x238, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x238) = 0xc000e8e (pte)
   set 0xc000e8e, %g2
   set 0x238, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=15, level=3,  ppnr=0xc000f000, p_addr=0x23c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x23c) = 0xc000f8e (pte)
   set 0xc000f8e, %g2
   set 0x23c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=16, level=3,  ppnr=0xc0010000, p_addr=0x240, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x240) = 0xc00108e (pte)
   set 0xc00108e, %g2
   set 0x240, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=17, level=3,  ppnr=0xc0011000, p_addr=0x244, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x244) = 0xc00118e (pte)
   set 0xc00118e, %g2
   set 0x244, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=18, level=3,  ppnr=0xc0012000, p_addr=0x248, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x248) = 0xc00128e (pte)
   set 0xc00128e, %g2
   set 0x248, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=19, level=3,  ppnr=0xc0013000, p_addr=0x24c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x24c) = 0xc00138e (pte)
   set 0xc00138e, %g2
   set 0x24c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=20, level=3,  ppnr=0xc0014000, p_addr=0x250, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x250) = 0xc00148e (pte)
   set 0xc00148e, %g2
   set 0x250, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=21, level=3,  ppnr=0xc0015000, p_addr=0x254, cacheable=0x1, acc=0x4
   ! *(PAGE_TABLE_BASE + 0x254) = 0xc001592 (pte)
   set 0xc001592, %g2
   set 0x254, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=22, level=3,  ppnr=0xc0016000, p_addr=0x258, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x258) = 0xc00168e (pte)
   set 0xc00168e, %g2
   set 0x258, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=23, level=3,  ppnr=0xc0017000, p_addr=0x25c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x25c) = 0xc00178e (pte)
   set 0xc00178e, %g2
   set 0x25c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=24, level=3,  ppnr=0xc0018000, p_addr=0x260, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x260) = 0xc00188e (pte)
   set 0xc00188e, %g2
   set 0x260, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=25, level=3,  ppnr=0xc0019000, p_addr=0x264, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x264) = 0xc00198e (pte)
   set 0xc00198e, %g2
   set 0x264, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=26, level=3,  ppnr=0xc001a000, p_addr=0x268, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x268) = 0xc001a8e (pte)
   set 0xc001a8e, %g2
   set 0x268, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=27, level=3,  ppnr=0xc001b000, p_addr=0x26c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x26c) = 0xc001b8e (pte)
   set 0xc001b8e, %g2
   set 0x26c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=28, level=3,  ppnr=0xc001c000, p_addr=0x270, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x270) = 0xc001c8e (pte)
   set 0xc001c8e, %g2
   set 0x270, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=29, level=3,  ppnr=0xc001d000, p_addr=0x274, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x274) = 0xc001d8e (pte)
   set 0xc001d8e, %g2
   set 0x274, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=30, level=3,  ppnr=0xc001e000, p_addr=0x278, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x278) = 0xc001e8e (pte)
   set 0xc001e8e, %g2
   set 0x278, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=31, level=3,  ppnr=0xc001f000, p_addr=0x27c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x27c) = 0xc001f8e (pte)
   set 0xc001f8e, %g2
   set 0x27c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=32, level=3,  ppnr=0xc0020000, p_addr=0x280, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x280) = 0xc00208e (pte)
   set 0xc00208e, %g2
   set 0x280, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=33, level=3,  ppnr=0xc0021000, p_addr=0x284, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x284) = 0xc00218e (pte)
   set 0xc00218e, %g2
   set 0x284, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=34, level=3,  ppnr=0xc0022000, p_addr=0x288, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x288) = 0xc00228e (pte)
   set 0xc00228e, %g2
   set 0x288, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=35, level=3,  ppnr=0xc0023000, p_addr=0x28c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x28c) = 0xc00238e (pte)
   set 0xc00238e, %g2
   set 0x28c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=36, level=3,  ppnr=0xc0024000, p_addr=0x290, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x290) = 0xc00248e (pte)
   set 0xc00248e, %g2
   set 0x290, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=37, level=3,  ppnr=0xc0025000, p_addr=0x294, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x294) = 0xc00258e (pte)
   set 0xc00258e, %g2
   set 0x294, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=38, level=3,  ppnr=0xc0026000, p_addr=0x298, cacheable=0x1, acc=0x4
   ! *(PAGE_TABLE_BASE + 0x298) = 0xc002692 (pte)
   set 0xc002692, %g2
   set 0x298, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTD: context=0, index=255, level=1, child_p_addr=0x5fc, p_addr=0xbfc
   ! *(PAGE_TABLE_BASE + 0xbfc) = ptd(PAGE_TABLE_BASE + 0x500)
   ! make PTD from 0x5fc
   set 0x500, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0xbfc, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTD: context=0, index=63, level=2, child_p_addr=0x4c0, p_addr=0x5fc
   ! *(PAGE_TABLE_BASE + 0x5fc) = ptd(PAGE_TABLE_BASE + 0x400)
   ! make PTD from 0x4c0
   set 0x400, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x5fc, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=0, index=48, level=3,  ppnr=0xffff0000, p_addr=0x4c0, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x4c0) = 0xffff016 (pte)
   set 0xffff016, %g2
   set 0x4c0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=49, level=3,  ppnr=0xffff1000, p_addr=0x4c4, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x4c4) = 0xffff116 (pte)
   set 0xffff116, %g2
   set 0x4c4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=50, level=3,  ppnr=0xffff2000, p_addr=0x4c8, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x4c8) = 0xffff216 (pte)
   set 0xffff216, %g2
   set 0x4c8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=51, level=3,  ppnr=0xffff3000, p_addr=0x4cc, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x4cc) = 0xffff316 (pte)
   set 0xffff316, %g2
   set 0x4cc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=52, level=3,  ppnr=0xffff4000, p_addr=0x4d0, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x4d0) = 0xffff416 (pte)
   set 0xffff416, %g2
   set 0x4d0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=53, level=3,  ppnr=0xffff5000, p_addr=0x4d4, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x4d4) = 0xffff516 (pte)
   set 0xffff516, %g2
   set 0x4d4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=54, level=3,  ppnr=0xffff6000, p_addr=0x4d8, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x4d8) = 0xffff616 (pte)
   set 0xffff616, %g2
   set 0x4d8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=55, level=3,  ppnr=0xffff7000, p_addr=0x4dc, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x4dc) = 0xffff716 (pte)
   set 0xffff716, %g2
   set 0x4dc, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=56, level=3,  ppnr=0xffff8000, p_addr=0x4e0, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x4e0) = 0xffff816 (pte)
   set 0xffff816, %g2
   set 0x4e0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=57, level=3,  ppnr=0xffff9000, p_addr=0x4e4, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x4e4) = 0xffff916 (pte)
   set 0xffff916, %g2
   set 0x4e4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=58, level=3,  ppnr=0xffffa000, p_addr=0x4e8, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x4e8) = 0xffffa16 (pte)
   set 0xffffa16, %g2
   set 0x4e8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=59, level=3,  ppnr=0xffffb000, p_addr=0x4ec, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x4ec) = 0xffffb16 (pte)
   set 0xffffb16, %g2
   set 0x4ec, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=60, level=3,  ppnr=0xffffc000, p_addr=0x4f0, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x4f0) = 0xffffc16 (pte)
   set 0xffffc16, %g2
   set 0x4f0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=61, level=3,  ppnr=0xffffd000, p_addr=0x4f4, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x4f4) = 0xffffd16 (pte)
   set 0xffffd16, %g2
   set 0x4f4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=62, level=3,  ppnr=0xffffe000, p_addr=0x4f8, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x4f8) = 0xffffe16 (pte)
   set 0xffffe16, %g2
   set 0x4f8, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=63, level=3,  ppnr=0xfffff000, p_addr=0x4fc, cacheable=0x0, acc=0x5
   ! *(PAGE_TABLE_BASE + 0x4fc) = 0xfffff16 (pte)
   set 0xfffff16, %g2
   set 0x4fc, %g5
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
