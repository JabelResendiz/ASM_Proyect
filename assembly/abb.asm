%include "io.inc"

section .data
    n dd 15
    array dw 1,2,6,-1,3,-1,-1,-1,-1,4,5,-1,-1,-1,-1

section .bss
    
    pot resd 2
    index resd 2
    height resd 2
    i resd 2

section .text
global main
main:
    mov ebp, esp; for correct debugging
    
    mov [pot], dword 1
    mov [index],dword 0
    mov [height],dword 1
    mov [i],dword 0
  

while:
    mov eax,[n]
    mov ebx,[i]
    cmp bx,ax
    jge .return 
    
    mov cx,[array+ 2*ebx]
    cmp cx,-1
    jne .first_condicional
    jmp .second_condicional
    
                 
.return:
    mov eax,[height]
    PRINT_UDEC 4,eax
    NEWLINE    
    
xor eax, eax
ret

.first_condicional:
     shl ebx,1
     inc ebx
     cmp ebx,eax
     jge .return 
     mov cx,[array+ 2*ebx]
     cmp cx,-1
     je .compare   
     jmp .second_condicional 
    
.compare:
     inc ebx
     mov eax,ebx
     mov cx,[array+ 2*eax]
     cmp cx,-1
     je .return
     mov eax,[n]
     cmp ebx,eax
     jge .return
     jmp .second_condicional
       
          
.second_condicional:

    mov ebx,[i]
    mov eax,[index]
    mov ecx,[i]
    inc ecx
    mov [i],ecx
    cmp eax,ebx
    jne while
    mov eax,[height]
    inc eax
    mov [height],eax
    mov eax,[pot]
    shl eax,1
    mov [pot],eax
    mov ebx ,[index]
    add ebx,eax
    mov [index],ebx
    jmp while
                
                   
   
