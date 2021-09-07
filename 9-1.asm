%include "st_io.inc" 
global _start
section .data

section .bss 

section .text
_start:

mov eax, 12
mov ecx, 10

L:
push eax
inc eax
loop L

pop esi
pop ebx
push esi
push ebx


UNSINT ebx
PUTCHAR 10
UNSINT esi
PUTCHAR 10
FINISH