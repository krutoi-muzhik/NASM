%include "st_io.inc"
global _start
section .data
section .bss
a resb 3
b resb 3
c resb 3
d resb 3
Q resb 4
section .text
_start:
GETUN eax
mov [Q],eax
;обход память память 
mov bx,[Q]
mov word [a],bx
mov bl,[Q+2]
mov byte [a+2],bl
;сделаем тоже самое с остальными переменными
GETUN eax
mov [Q],eax
mov bx,[Q]
mov word[b],bx
mov bl,[Q+2]
mov byte [b+2],bl
GETUN eax
mov [Q],eax
mov bx,[Q]
mov word [c],bx
mov bl,[Q+2]
mov byte [c+2],bl
sub byte[b],1
;если произошло переполнение то мы при помощи нижней строки вычтем флаг который у нас получили на предыдущей 
sbb byte[b+1],0
sbb byte[b+2],0
mov al,[a]
add [b],al
mov al,[a+1]
adc [b+1],al
mov al,[a+2]
adc [b+2],al
mov al,[c]
sub [b],al
mov al,[c+1]
sbb [b+1],al
mov al,[c+2]
sbb [b+2],al
mov al, [b]
mov byte[d], al
mov al, [b+1]
mov byte[d+1], al
mov al, [b+2]
mov byte[d+2], al
mov byte[d+3], 0
UNSINT [d]
PUTCHAR 0xA
FINISH
