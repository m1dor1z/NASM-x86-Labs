section .data
    num DB 1
    num2 DB 2


section .text
global _start

_start:
    MOV bl, [num] 
    MOV cl, [num2]

    ; Exit the Program
    MOV eax, 1
    INT 0x80