	.text
	.file	"main.ll"
	.globl	fn_fib                  # -- Begin function fn_fib
	.p2align	4, 0x90
	.type	fn_fib,@function
fn_fib:                                 # @fn_fib
	.cfi_startproc
# %bb.0:                                # %fn_fib_entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	cmpq	$1, %rdi
	jg	.LBB0_3
# %bb.1:                                # %fn_fib_entry.if
	movl	$1, %eax
	jmp	.LBB0_2
.LBB0_3:                                # %fn_fib_entry.endif
	movq	%rdi, %rbx
	decq	%rdi
	addq	$-2, %rbx
	callq	fn_fib
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	fn_fib
	addq	%r14, %rax
.LBB0_2:                                # %fn_fib_entry.if
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	fn_fib, .Lfunc_end0-fn_fib
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
