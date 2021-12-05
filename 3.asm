%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor ecx, ecx ;; обнуление, через отладку буду смотреть номер четверти
    mov ax, -7  ;;ввёл случайное число
    mov bx, -14  ;;ввёл случайное число
    mov cx, 0
    cmp ax, 0
    jg way1 ;; если А больше 0, то выбираем путь 1
    jl way2 ;; если А меньше 0, то выбираем путь 2
way1:
    cmp bx, 0
    jg first ;; если B больше 0, то первая четверть (x,y)
    jl forth ;; если B меньше 0, то четвертая четверть (x,-y)
way2:
    cmp bx, 0
    jg second ;; если B больше 0, то вторая четверть (-x,y)
    jl third ;; если B меньше 0, то третья четверть (-x,-y)
    
first: 
    mov cx, 1 ;1 четверть
    ret
second:
    mov cx, 2  ; 2 четверть
    ret
third:
    mov cx, 3  ; 3 четверть
    ret
forth: 
    mov cx, 4  ; 4 четверть   