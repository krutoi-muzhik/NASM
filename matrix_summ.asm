%include "st_io.inc"
global _start

section .data
a db 1, 1, 1, 2, 2, 2, 3, 3, 3
b db 4, 4, 4, 5, 5, 5, 6, 6, 6

section .bss

section .text
_start:

mov eax, 0
mov ecx, 3

L: mov esi, ecx
mov ebx, 0
mov ecx, 3

L1: mov dh, [a + eax + ebx]
mov dl, [b + eax + ebx]

add dl, dh
mov [b + eax + ebx], dl
inc ebx

loop L1
add eax, 3
mov ecx, esi

loop L


mov eax, 0
mov ecx, 3

M: mov esi, ecx
mov ebx, 0
mov ecx, 3

M1: 

UNSINT [b + eax + ebx]
PUTCHAR ' '
inc ebx

loop M1
add eax, 3
mov ecx, esi

PUTCHAR [10]

loop M

FINISH
