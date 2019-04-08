; Executable name : EATSYSCALL
; Version : 1.0
; Created Date : 1/7/2009
; Last Update : 1/7/2009
; Author : Jeff Duntemann
; Description : A simple assembly app for Linux, using NASM, demonstrating
;               the use of Linux INT 80H syscalls to display text
;
; Build using these commands: 
;   nasm -f elf -g -F stabs eatsyscall.asm
;   ld -o eatsyscall eatsyscall.o

section  .data ; Section containing initialized data

EatMsg: db "Eat at Joe's", 10
EatLen: equ $-EatMsg

section .bss ; Section containing uninitialized data
section .text ; Section containing code

global _start ; Linker needs this to find the entry point

_start:
nop
mov eax, 4 ; Specify sys_write syscall
mov ebx, 1 ; Specify File descriptor 1: Standard Output
mov ecx, EatMsg ; Pass offset of the message
mov edx, EatLen ; Pass the length of the message
int 80h ; Make syscall to output the text to stdout

mov eax, 1 ; Specify the exit call
mov ebx, 0 ; Return a code of zero
int 80h ; Make syscall to terminate the program