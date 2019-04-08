.model small
.stack 200h

.data
    a db 5
    b db 7
    c db 9
    result db "The average is: $"

.code

start:
    mov bx, @data
    mov ds, bx
    mov al, a
    add al, b
    add al, c
    mov ah, 0
    mov dl, 3
    div dl
    add al, 48
    lea dx, result
    mov ah, 09 ; command to print the elements in dx
    int 21h
    mov dl, al
    mov ah, 02
    int 21h
    mov ah, 4ch
    int 21h
end start
