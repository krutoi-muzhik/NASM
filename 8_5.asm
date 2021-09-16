%include "st_io.inc"
N equ 10
global _start
section .text
_start: 
mov ebx,0
mov ecx,0
q1:
mov eax,[a]
mov esi,[s]
cmp eax, esi
jae l1
mov edi,eax
mov eax,esi
mov esi,edi
l1:
mov edx,0
div esi
mov eax,esi
mov esi,edx
cmp esi,0
je l4
cmp esi,1
je l5
jmp l1
l5:
mov dword[A+ebx+ecx],1
jmp q2
l4:
mov [A+ebx+ecx],eax
q2:
UNSINT [A+ebx+ecx]
PUTCHAR ' '
add ebx,4
inc dword[a]
cmp ebx,4*N
jb q1
PUTCHAR 0xA
add ecx,4*N
mov ebx,0
inc dword[s]
mov dword[a],1
cmp ecx,4*N*N
jb q1
FINISH
section .data
s dd 1
a dd 1
section .bss
A resd N*N