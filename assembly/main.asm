section	.data
format:
	db	"%lu", 10, 0

section .text

default	rel
extern	printf

global main
main:
	mov		edi, 40
	call	fib

	lea		rdi, [format]
	mov		rsi, rax
	xor		eax, eax
	call	printf wrt ..plt

	mov		rax, 60
	xor		rdi, rdi
	syscall


fib:
	mov		eax, edi
	sub		edi, 1
	jle		fib_done
	xor		ecx, ecx
	mov		eax, 1
fib_loop:
	xadd	rax, rcx
	sub		edi, 1
	jnz		fib_loop
fib_done:
	ret