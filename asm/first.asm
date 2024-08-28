section .data

section .text
global _start

_start:
    MOV eax, 1          ; sys_write 
    MOV ebx, 1          ; stdout 
    INT 0x80            ; Call kernel