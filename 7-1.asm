%include "st_io.inc" 
global _start
section .text
_start:

mov ecx, 100
mov ax, 231
mov bx, 10
mov edi, 0

M: mov dx, 0
div bx
inc edi
add ax, 0
loopne M

UNSINT edi
PUTCHAR 10
FINISH