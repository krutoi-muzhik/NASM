%include "st_io.inc" 
global _start
section .data

section .bss 

section .text
_start:

mov ax, 0
GETUN edx
mov ecx, 16
M:
shl dx, 1
jnc P
add ax, 1
P: loop M

UNSINT eax
PUTCHAR 10
FINISH
