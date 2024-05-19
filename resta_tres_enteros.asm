section .data
    resultado db 'El resultado es: ', 0
    longitud_resultado equ $ - resultado
    
section .text
    global _start

_start:
    mov ax, 9
    mov bx, 3
    mov cx, 2

    sub ax, bx  ; Resta BX de AX
    sub ax, cx  ; Resta CX del resultado
    add ax, 48  ; Convertir el resultado en ASCII

    mov [resultado + longitud_resultado - 1], al  ; Añade el resultado al mensaje

    mov eax, 4
    mov ebx, 1
    mov ecx, resultado
    mov edx, longitud_resultado
    int 0x80      
    
    mov eax, 1
    mov ebx, 0
    int 0x80