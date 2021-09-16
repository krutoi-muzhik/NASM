%include "st_io.inc"
global _start
section .text
_start:
mov ebx,0
mov eax,0
mov ecx,3
l1:
movzx ax,byte[a+2*ebx]
PUSH ax
inc ebx
cmp ebx,ecx
jbe l3
jmp l1
l3:

mov ebx,0
l2:
movzx eax,word[esp+2*ebx]
inc ebx
UNSINT eax
PUTCHAR 0xA
cmp ebx,ecx
jbe l4
jmp l2
l4:

FINISH
section .data
a db 1,0,1
