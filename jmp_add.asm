%include "st_io.inc"
global _start
section .bss
adr resb 1
section .data 
a dw 1
b dw 2
section .text
_start:

mov ecx,m
mov [adr],ecx
mov eax,0
mov ebx,0
mov ax, [a]
mov bx, [b]
jmp pp
m:

UNSINT eax
PUTCHAR 0xA

mov eax,1
mov ebx,0
int 0x80


pp:
add ax,bx
jmp m


