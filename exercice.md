# Exercice 0
Write a "hello world in assembler".
```asm
section .data
    msg: db 'Hello world', 10
    lmsg: equ $-msg
section .text
    global _start
    _start:
        mov eax, 4
        mov ebx, 1
        mov ecx, msg
        mov edx, lmsg
        int 80h
        mov eax, 1
        int 80h
 ```
# Exercice 1
Write a program that increments a value.
```asm
section .data
    value: db "6"
    retourligne: db 10
section .text
global _start
    _start:
    inc byte [value]
    mov ecx, value
    sub ecx, "0"
    mov eax, 4
    mov ebx, 1
    mov ecx, value
    mov edx, 1
    int 80h
    mov eax, 4
    mov ebx, 1
    mov ecx, retourligne
    mov edx, 1
    int 80h
    mov eax, 1
    int 80h
```
# Exercice 2
Ecrire un programme qui calcul la somme de deux valeur
```asm
section .text

global _start

_start:

    mov     eax, [x]
    sub     eax, '0'
    mov     ebx, [y]
    sub     ebx, '0'
    add     eax, ebx
    add     eax, '0'

    mov     [sum], eax

    mov     ecx, msg
    mov     edx, len
    mov     ebx, 1
    mov     eax, 4
    int     0x80

    mov     ecx, sum
    mov     edx, 1
    mov     ebx, 1
    mov     eax, 4
    int     0x80

    mov     eax, 1
    int     0x80

section .data
    x db '5'
    y db '3'
    msg db  "sum of x and y is "
    len equ $ - msg

segment .bss

    sum resb 1
``` 

