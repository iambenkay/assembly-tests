.model small
.stack 200h

.code
start:
    mov ax, 0010h
    mov dl, 4
    div dl
    add al, 48
    mov dl, al
    mov ah, 2
    int 21h
    add ah, 48
    mov dl, ah
    mov ah, 2
    int 21h
    mov ah, 4ch
    int 21h    
end start
    