section .data
    msg db 'Hello World!',0
section .text
    global _start
_start:
    mov eax, 4      ; system call for 'write'
    mov ebx, 1      ; file descriptor for stdout
    mov ecx, msg    ; message to write
    mov edx, 13     ; length of message
    int 0x80        ; call kernel

    mov eax, 1      ; system call for 'exit'
    xor ebx, ebx    ; return 0
    int 0x80        ; call kernel
