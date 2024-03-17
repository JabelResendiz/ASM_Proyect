%include "io.inc"

section .data
    A dw 12,2
    B dw 1,1
    C dw 1,0
    

section .bss
    ab resd 2
    bc resd 2
    ac resd 2
    
section .text
    global main

main:
    mov ebp, esp; for correct debugging
    
    ;declarar tres variable2 
    
    mov ax,[A]
    mov bx,[B]
    call calculus

    push ax
    
    mov ax,[A+2]
    mov bx,[B+2]
    call calculus 
    
    mov bx,ax
    pop ax
    add ax,bx
    mov [ab],ax
    PRINT_STRING 'lo que esta en ab es '
    PRINT_UDEC 2,[ab]
    NEWLINE
    
    
    ; proximo calculo bc
    ;next
    ;---------------------------------------------
     mov ax,[C]
    mov bx,[B]
    call calculus

    push ax
    
    mov ax,[C+2]
    mov bx,[B+2]
    call calculus 
    
    mov bx,ax
    pop ax
    add ax,bx
    mov [bc],ax
    PRINT_STRING 'lo que esta en bc es '
    PRINT_UDEC 2,[bc]
    NEWLINE
    
    
    ; proximo calculo ac
    ;next
    ;---------------------------------------------
     mov ax,[A]
    mov bx,[C]
    call calculus

    push ax
    
    mov ax,[A+2]
    mov bx,[C+2]
    call calculus 
    
    mov bx,ax
    pop ax
    add ax,bx
    mov [ac],ax
    PRINT_STRING 'lo que esta en ac es '
    PRINT_UDEC 2,[ac]
    NEWLINE
    ; vamos a comprobar las condicionales
    ;-------------------------------------
    PRINT_STRING 'vamos empezar'
    NEWLINE
    mov ax,[ac]
    mov bx,[bc]
    add ax,bx
    PRINT_STRING 'suma ac+bc es '
    PRINT_UDEC 2,ax
    NEWLINE
    
    cmp ax,[ab]
    je .true
    
    mov ax,[ab]
    add ax,bx
    PRINT_STRING 'suma ab+bc es '
    PRINT_UDEC 2,ax
    NEWLINE
    cmp ax,[ac]
    je .true
    
    mov bx,[ac]
    add ax,bx
    PRINT_STRING 'suma ab+ac es '
    PRINT_UDEC 2,ax
    NEWLINE
    cmp ax,[bc]
    je .true
    PRINT_STRING 'false'
    NEWLINE
    xor eax, eax
    ret
    
 .true:
    PRINT_STRING 'true'
    NEWLINE
       
    
    
   
    
   
section .text
calculus:
    
    cmp ax,bx
    jge .first
    
    mov cx,ax
    mov ax,bx
    mov bx,cx
    
    jmp .first
    
    ret
    
.first:
    sub ax,bx
    mul ax
    PRINT_UDEC 2,ax   
    NEWLINE 
    ret
    