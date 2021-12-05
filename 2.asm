%include "io.inc"

;(a+b)/c
;(8,14,22)
;(-3,-10, 0)
; 8 bit

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    finit 
    fld dword [a]
    fld dword [b]
    fadd
    fld dword [c]
    fdiv
    fst dword [s]
    ret
    
section .data
a: DD 0x41000000; 0xC0400000
b: DD 0x41600000; 0xC1200000
c: DD 0x41B00000; 0x00000000
s: DD 0x00000000