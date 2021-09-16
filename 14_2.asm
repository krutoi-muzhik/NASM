global main
extern printf
extern exit
extern scanf

section .text

main:


mov rax, 0
mov rdi, format_str
mov rsi, str_to_vivod
call scanf 

mov rdi, 0
call exit

mov rax, 0
mov rdi, format_str
mov rsi, str_to_vivod
call printf

mov rdi, 0
call exit

section .bss
str_to_vivod resq 1

section .data
format_str db "%d", 0


;scanf("%d", &a);