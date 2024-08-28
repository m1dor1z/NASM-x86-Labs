section .data
    num DD 5

section .text
global _start

_start:

    MOV ebx, [num] ; Load the value stored at address of num into ebx

    ; Exit the Program
    MOV eax, 1
    XOR ecx, ecx
    INT 0x80

    ; layout asm
    ; break _start
    ; run
    ; info registers ebx
    ; x/x $ebx