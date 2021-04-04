%include "st_io.inc"
global _start

section .data

a db -1, 2, -3, 4, -5, 6, -7, 8, -9, 10, -11, 12, -13, 14, -15, 16, -17, 18, -19, -20

section .bss

section .text
_start:

GETSIG ebx

mov ecx, 20
sub ecx, ebx
mov edx, 0

L:
mov esi, [a + ebx]
cmp esi, 0
jbe J

J: add edx, esi

inc ebx
mov esi, 0
loop L

SIGNINT edx
PUTCHAR 10
FINISH
