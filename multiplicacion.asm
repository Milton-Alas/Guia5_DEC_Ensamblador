section .data
    resultado db 'El resultado es: ', 0
    longitud_resultado equ $ - resultado
    
section .text
    global _start
    
    
_start:
    mov ah, 2
    mov al, 3
    mul ah
    
    add ax, 48
    mov [resultado + longitud_resultado - 2], al
    
    mov eax, 4
    mov ebx, 1
    mov ecx, resultado
    mov edx, longitud_resultado
    int 0x80

    mov eax, 1
    mov ebx, 0
    int 0x80