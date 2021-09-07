%include "st_io.inc" 
global _start
section .text
_start:

mov eax, 1
mov ecx, 100
mov bx, 1

M: add ax, 0
mul bx
add bx, 1
add al, 0
loopne M

UNSINT eax
PUTCHAR 10
FINISH