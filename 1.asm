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
    mov AL, 0x08 ;0xFD
    mov BL, 0xE  ;0xF6
    mov CL, 0x16 ;0x0
    add AL, BL
    cbw
    IDIV CL
    ret
    
    
    