Archive member included because of file (symbol)

d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/avr4\libgcc.a(_exit.o)
                              d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/../../../../avr/lib/avr4/crtm8.o (exit)

Memory Configuration

Name             Origin             Length             Attributes
text             0x00000000         0x00002000         xr
data             0x00800060         0x0000ffa0         rw !x
eeprom           0x00810000         0x00010000         rw !x
fuse             0x00820000         0x00000400         rw !x
lock             0x00830000         0x00000400         rw !x
signature        0x00840000         0x00000400         rw !x
*default*        0x00000000         0xffffffff

Linker script and memory map

LOAD d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/../../../../avr/lib/avr4/crtm8.o
LOAD pawan.o
LOAD d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/avr4\libgcc.a
LOAD d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/../../../../avr/lib/avr4\libc.a
LOAD d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/avr4\libgcc.a

.hash
 *(.hash)

.dynsym
 *(.dynsym)

.dynstr
 *(.dynstr)

.gnu.version
 *(.gnu.version)

.gnu.version_d
 *(.gnu.version_d)

.gnu.version_r
 *(.gnu.version_r)

.rel.init
 *(.rel.init)

.rela.init
 *(.rela.init)

.rel.text
 *(.rel.text)
 *(.rel.text.*)
 *(.rel.gnu.linkonce.t*)

.rela.text
 *(.rela.text)
 *(.rela.text.*)
 *(.rela.gnu.linkonce.t*)

.rel.fini
 *(.rel.fini)

.rela.fini
 *(.rela.fini)

.rel.rodata
 *(.rel.rodata)
 *(.rel.rodata.*)
 *(.rel.gnu.linkonce.r*)

.rela.rodata
 *(.rela.rodata)
 *(.rela.rodata.*)
 *(.rela.gnu.linkonce.r*)

.rel.data
 *(.rel.data)
 *(.rel.data.*)
 *(.rel.gnu.linkonce.d*)

.rela.data
 *(.rela.data)
 *(.rela.data.*)
 *(.rela.gnu.linkonce.d*)

.rel.ctors
 *(.rel.ctors)

.rela.ctors
 *(.rela.ctors)

.rel.dtors
 *(.rel.dtors)

.rela.dtors
 *(.rela.dtors)

.rel.got
 *(.rel.got)

.rela.got
 *(.rela.got)

.rel.bss
 *(.rel.bss)

.rela.bss
 *(.rela.bss)

.rel.plt
 *(.rel.plt)

.rela.plt
 *(.rela.plt)

.text           0x00000000       0x80
 *(.vectors)
 .vectors       0x00000000       0x26 d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/../../../../avr/lib/avr4/crtm8.o
                0x00000000                __vectors
                0x00000000                __vector_default
 *(.vectors)
 *(.progmem.gcc*)
 *(.progmem*)
                0x00000026                . = ALIGN (0x2)
                0x00000026                __trampolines_start = .
 *(.trampolines)
 .trampolines   0x00000026        0x0 linker stubs
 *(.trampolines*)
                0x00000026                __trampolines_end = .
 *(.jumptables)
 *(.jumptables*)
 *(.lowtext)
 *(.lowtext*)
                0x00000026                __ctors_start = .
 *(.ctors)
                0x00000026                __ctors_end = .
                0x00000026                __dtors_start = .
 *(.dtors)
                0x00000026                __dtors_end = .
 SORT(*)(.ctors)
 SORT(*)(.dtors)
 *(.init0)
 .init0         0x00000026        0x0 d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/../../../../avr/lib/avr4/crtm8.o
                0x00000026                __init
 *(.init0)
 *(.init1)
 *(.init1)
 *(.init2)
 .init2         0x00000026        0xc d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/../../../../avr/lib/avr4/crtm8.o
 *(.init2)
 *(.init3)
 *(.init3)
 *(.init4)
 *(.init4)
 *(.init5)
 *(.init5)
 *(.init6)
 *(.init6)
 *(.init7)
 *(.init7)
 *(.init8)
 *(.init8)
 *(.init9)
 .init9         0x00000032        0x4 d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/../../../../avr/lib/avr4/crtm8.o
 *(.init9)
 *(.text)
 .text          0x00000036        0x2 d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/../../../../avr/lib/avr4/crtm8.o
                0x00000036                __vector_1
                0x00000036                __vector_12
                0x00000036                __bad_interrupt
                0x00000036                __vector_6
                0x00000036                __vector_3
                0x00000036                __vector_11
                0x00000036                __vector_13
                0x00000036                __vector_17
                0x00000036                __vector_7
                0x00000036                __vector_5
                0x00000036                __vector_4
                0x00000036                __vector_9
                0x00000036                __vector_2
                0x00000036                __vector_15
                0x00000036                __vector_8
                0x00000036                __vector_14
                0x00000036                __vector_10
                0x00000036                __vector_16
                0x00000036                __vector_18
 .text          0x00000038       0x44 pawan.o
                0x00000038                main
 .text          0x0000007c        0x0 d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/avr4\libgcc.a(_exit.o)
                0x0000007c                . = ALIGN (0x2)
 *(.text.*)
 .text.libgcc   0x0000007c        0x0 d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/avr4\libgcc.a(_exit.o)
                0x0000007c                . = ALIGN (0x2)
 *(.fini9)
 .fini9         0x0000007c        0x0 d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/avr4\libgcc.a(_exit.o)
                0x0000007c                exit
                0x0000007c                _exit
 *(.fini9)
 *(.fini8)
 *(.fini8)
 *(.fini7)
 *(.fini7)
 *(.fini6)
 *(.fini6)
 *(.fini5)
 *(.fini5)
 *(.fini4)
 *(.fini4)
 *(.fini3)
 *(.fini3)
 *(.fini2)
 *(.fini2)
 *(.fini1)
 *(.fini1)
 *(.fini0)
 .fini0         0x0000007c        0x4 d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/avr4\libgcc.a(_exit.o)
 *(.fini0)
                0x00000080                _etext = .

.data           0x00800060        0x0 load address 0x00000080
                0x00800060                PROVIDE (__data_start, .)
 *(.data)
 .data          0x00800060        0x0 d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/../../../../avr/lib/avr4/crtm8.o
 .data          0x00800060        0x0 pawan.o
 .data          0x00800060        0x0 d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/avr4\libgcc.a(_exit.o)
 *(.data*)
 *(.rodata)
 *(.rodata*)
 *(.gnu.linkonce.d*)
                0x00800060                . = ALIGN (0x2)
                0x00800060                _edata = .
                0x00800060                PROVIDE (__data_end, .)

.bss            0x00800060        0x0
                0x00800060                PROVIDE (__bss_start, .)
 *(.bss)
 .bss           0x00800060        0x0 d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/../../../../avr/lib/avr4/crtm8.o
 .bss           0x00800060        0x0 pawan.o
 .bss           0x00800060        0x0 d:/winavr-20100110/bin/../lib/gcc/avr/4.3.3/avr4\libgcc.a(_exit.o)
 *(.bss*)
 *(COMMON)
                0x00800060                PROVIDE (__bss_end, .)
                0x00000080                __data_load_start = LOADADDR (.data)
                0x00000080                __data_load_end = (__data_load_start + SIZEOF (.data))

.noinit         0x00800060        0x0
                0x00800060                PROVIDE (__noinit_start, .)
 *(.noinit*)
                0x00800060                PROVIDE (__noinit_end, .)
                0x00800060                _end = .
                0x00800060                PROVIDE (__heap_start, .)

.eeprom         0x00810000        0x0
 *(.eeprom*)
                0x00810000                __eeprom_end = .

.fuse
 *(.fuse)
 *(.lfuse)
 *(.hfuse)
 *(.efuse)

.lock
 *(.lock*)

.signature
 *(.signature*)

.stab
 *(.stab)

.stabstr
 *(.stabstr)

.stab.excl
 *(.stab.excl)

.stab.exclstr
 *(.stab.exclstr)

.stab.index
 *(.stab.index)

.stab.indexstr
 *(.stab.indexstr)

.comment
 *(.comment)

.debug
 *(.debug)

.line
 *(.line)

.debug_srcinfo
 *(.debug_srcinfo)

.debug_sfnames
 *(.debug_sfnames)

.debug_aranges  0x00000000       0x20
 *(.debug_aranges)
 .debug_aranges
                0x00000000       0x20 pawan.o

.debug_pubnames
                0x00000000       0x1b
 *(.debug_pubnames)
 .debug_pubnames
                0x00000000       0x1b pawan.o

.debug_info     0x00000000       0x8d
 *(.debug_info)
 .debug_info    0x00000000       0x8d pawan.o
 *(.gnu.linkonce.wi.*)

.debug_abbrev   0x00000000       0x59
 *(.debug_abbrev)
 .debug_abbrev  0x00000000       0x59 pawan.o

.debug_line     0x00000000       0xce
 *(.debug_line)
 .debug_line    0x00000000       0xce pawan.o

.debug_frame    0x00000000       0x20
 *(.debug_frame)
 .debug_frame   0x00000000       0x20 pawan.o

.debug_str      0x00000000       0x5a
 *(.debug_str)
 .debug_str     0x00000000       0x5a pawan.o
                                 0x8e (size before relaxing)

.debug_loc
 *(.debug_loc)

.debug_macinfo
 *(.debug_macinfo)
OUTPUT(pawan.elf elf32-avr)
LOAD linker stubs
