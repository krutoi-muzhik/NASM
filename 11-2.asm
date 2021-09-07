%include "st_io.inc" 
global _start
section .data

section .bss 

section .text
_start:

mov dx, 8
mov ecx, 16
M: shl dx, 1
jc K
PUTCHAR 48
loop M

K:
L: shl dx, 1
jc N
PUTCHAR 49
jmp N1
N: PUTCHAR 48
N1: loop L

PUTCHAR 10
FINISH

