%include "st_io.inc"
global _start
section .text
_start:
mov eax,0
mov ebx,9
l2:

mov cl,[a+ebx]
cmp cl,[a-1+ ebx]
jge l1
mov dl,[a-1+ ebx]
mov [a -1 + ebx],cl
mov [a +ebx],dl
;swap
l1:
dec ebx
cmp ebx,eax
ja l2
;last 
inc eax
mov ebx,9
cmp eax,9
jbe l2
;new circle
mov edx,0
l3:
mov eax,0
mov al,[a+edx]
cbw
cwde
;expand al->ax->eax with sign 
SIGNINT eax
PUTCHAR ' '
inc edx
cmp edx,9
jbe l3
PUTCHAR 0xA
FINISH
section .data
a db 1,-1,2,-2,3,-3,4,-4,5,-5
section .bss