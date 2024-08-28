section .data
    char DB 'A', 0              ; Define a byte with ASCII value 'A' and a null terminator
    string1 DB 'ABA', 0         ; Define the string "ABA" with a null terminator

section .text
    global _start

_start:
    ; Print single character 'A'
    MOV eax, 4                  ; sys_write system call number (4)
    MOV ebx, 1                  ; File descriptor (stdout)
    MOV ecx, char               ; Pointer to the character
    MOV edx, 2                  ; Length of the string including the null terminator
    INT 0x80                    ; Trigger the system call

    ; Print the string "ABA"
    MOV eax, 4                  ; sys_write system call number (4)
    MOV ebx, 1                  ; File descriptor (stdout)
    MOV ecx, string1            ; Pointer to the string
    MOV edx, 4                  ; Length of the string including the null terminator
    INT 0x80                    ; Trigger the system call

    ; Exit the Program
    MOV eax, 1                  ; sys_exit system call number (1)
    XOR ebx, ebx                ; Exit status code 0
    INT 0x80                    ; Trigger the system call
