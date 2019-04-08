.model small
.stack 200

.data
num1 db 5
num2 db 7
num3 db 9
avg db ?

msg1 db "The average is: $"

.code

start:
    mov ax, @data
    mov ds, ax
    mov al, num1
    add al, num2
    add al, num3
    mov ah, 0
    mov dl, 3
    div dl
    add al, 30h
    lea dx, msg1
    mov ah, 9
    int 21h
    mov dl, al
    mov ah, 2
    int 21h
    mov ah, 4ch
    int 21h
    end start