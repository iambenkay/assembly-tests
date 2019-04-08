.model small
.stack 200h

.data
    msg db "I am a boy $"
    m db "He is also a boy $"

.code

start:
    mov bx, @data
    mov ds, bx
    lea dx, msg
    mov ah, 09
    ; int 21h
    mov dl, 10
    mov ah, 02
    int 21h
    lea dx, m
    mov ah, 09
    int 21h
    mov ah, 4ch
    int 21h
end start
    