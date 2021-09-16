%include "st_io.inc"
global _start
section .text
_start:
mov eax,1
mov ebx,2
mov ecx,3
mov edx,4
mov edi,5
mov esi,6
mov ebp,7
pushad
add [esp+4*7],eax
popad
UNSINT eax 
PUTCHAR 0xA
FINISH
section .data
section .bss
