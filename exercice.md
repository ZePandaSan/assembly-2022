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
Ecrire un programme qui multiplie par 2 une valeur
```asm

``` 

