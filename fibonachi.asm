%include "st_io.inc"
global _start

section .data

section .bss

section .text
_start:

mov ecx, 9
mov eax, 1
mov ebx, 0

L: add ebx, eax
mov esi, ebx
mov ebx, eax
mov eax, esi
loop L

UNSINT eax
PUTCHAR 10
FINISH