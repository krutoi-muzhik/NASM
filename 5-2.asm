%include "st_io.inc"
global _start

section .data

x db 2
a db 7

section .bss

section .text
_start:

mov cx, 0
mov ax, x
mul x
mov bx, ax
mul 10
add ax, 5
sub cx, ax
mov ax, bx
mul x
sub cx, ax
mov ax, cx
div a

UNSINT al
PUTCHAR 10
UNSINT ah
PUTCHAR 10
FINISH
