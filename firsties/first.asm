.model small ; initialize memory model to small
.stack 100h ; defines stack with the size
.code ; code segment begins

start:
    mov bx, @data ; move data to bx first because of mov command restriction
    mov ds, bx ; initialize data segment to ds register
    lea dx, msg ; load effective address of msg to dx
    mov ah, 9 ; dos function to output string up to $
    int 21h ; dos function call
    mov ah, 4ch ; return to dos
    int 21h ; dos function call
    
.data ; data segment begins
msg db "Hello Assembly Language Students $" ; declares msg variable as byte

end start ; end code segment