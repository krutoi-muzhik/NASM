%include "st_io.inc" 
global _start
section .data

a db 12, 5, 8, 4, 6, 5, -4, -2, 7, 3, -4, 7, 6, -2, 7, 5, 2, 40, 8, 73, -4, -57, 70, -7, 68, 3, 57, 6, -37, -7, 3, 0

section .bss 

section .text
_start:

mov bh, 0
mov ecx 2
mov al, 0
mov ah, 0

L:
inc ecx
mov bl, [a + bh * 4]
cmp bl, 0
jl M
je N
N: xor ecx
M: inc al 
inc bh
loop L

