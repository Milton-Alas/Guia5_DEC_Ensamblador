section .data
    resultado db 'El resultado es: ', 0
    longitud_resultado equ $ - resultado
    
section .text
    global _start
    
_start:
    mov eax, 9
    xor edx, edx    ; Establece edx a cero (necesario antes de la división)
    mov ebx, 3
    div ebx  
    
    add eax, 48 
    
    mov[resultado + longitud_resultado - 2], eax
    
    mov eax, 4
    mov ebx, 1
    mov ecx, resultado
    mov edx, longitud_resultado
    int 0x80
    
    mov eax, 1
    mov ebx, 0
    int 0x80