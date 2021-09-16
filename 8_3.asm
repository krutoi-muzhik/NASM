%include "st_io.inc"
global _start
section .text
_start:
mov ebx,0
mov ecx,0
mov edx,0
mov eax,0
l4:
mov al,[a]
cmp [A+ebx+ecx],al
jl l2
mov al,[A+ebx+ecx]
mov [a],al
mov [b],bl
mov [c],cl
jmp l3
l2:
mov al,[a+1]
cmp [A+ebx+ecx],al
jl l1
jmp l3
l1:
mov al,[A+ebx+ecx]
mov [a+1],al
mov [b+1],bl
mov [c+1],cl
l3:
inc ebx
cmp ebx,3
jb l4
add ecx,3
mov ebx,0
cmp ecx,9
jb l4
PRINT "max"
mov al,[a]
cbw
cwde
SIGNINT eax
PUTCHAR 0xA
mov eax,0
mov al,[b]
inc eax
UNSINT eax
PUTCHAR 0xA
mov eax,0
mov al,[c]
mov cl,3
div cl
mov ecx,0
mov cl,al
inc ecx
UNSINT ecx
PUTCHAR 0xA
PRINT "min"
mov al,[a+1]
cbw
cwde
SIGNINT eax
PUTCHAR 0xA
mov eax,0
mov al,[b + 1]
inc eax
UNSINT eax
PUTCHAR 0xA
mov eax,0
mov al,[c+1]
mov cl,3
div cl
mov ecx,0
mov cl,al
inc ecx
UNSINT ecx
PUTCHAR 0xA
FINISH
section .data
A db 1,-1,2,-2,3,-3,4,-4,5
a db 0, 0
section bss
section .bss
b resb 2
c resb 2
