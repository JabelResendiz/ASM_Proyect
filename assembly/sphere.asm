
%include "io.inc"

section .data
     r dw 65535  ; maximo valor es 65535


section .text
global main
main:
    ;write your code here
    
    mov eax,[r]
    mov ebx,[r]
    
    mul ebx
    mul ebx
    
    PRINT_UDEC 4,eax
    NEWLINE
    PRINT_UDEC 4,edx
    NEWLINE
    
    
    xor eax, eax
    ret