section .data
nb: db "0"
msg: db "Saisir une valeur : "
lmsg: equ $-msg
retourligne: db 10

section .text
    global _start
_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, lmsg
    int 80h
    mov eax, 3
    mov ebx, 1
    mov ecx, nb
    mov edx, 1
    int 80h
    ;sub byte [nb], "0"
    inc byte [nb]
    mov eax, 4
    mov ebx, 1
    mov ecx, nb
    mov edx, 1
    int 80h
    mov eax, 4
    mov ebx, 1
    mov ecx, retourligne
    mov edx, 1
    int 80h
    mov eax, 1
    mov ebx, 0
    int 80h
