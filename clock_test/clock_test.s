	.file	"clock_test.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"rt"
.LC1:
	.string	"rt_coarse"
.LC2:
	.string	"mono"
.LC3:
	.string	"mono_coarse"
.LC4:
	.string	"thread"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC5:
	.string	"%s -> %ld times, total %ld ns, avg %ld ns\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB6:
	.section	.text.startup,"ax",@progbits
.LHOTB6:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movabsq	$-2972493582642298179, %r14
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	xorl	%r12d, %r12d
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	$.LC0, %r13d
	xorl	%ebp, %ebp
	addq	$-128, %rsp
	.cfi_def_cfa_offset 176
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	movl	$0, 48(%rsp)
	movl	$5, 52(%rsp)
	movl	$1, 56(%rsp)
	movl	$6, 60(%rsp)
	movl	$3, 64(%rsp)
	movq	$.LC0, 80(%rsp)
	movq	$.LC1, 88(%rsp)
	movq	$.LC2, 96(%rsp)
	movq	$.LC3, 104(%rsp)
	movq	$.LC4, 112(%rsp)
.L4:
	leaq	16(%rsp), %rsi
	movl	$2, %edi
	movl	$20000000, %ebx
	call	clock_gettime
	.p2align 4,,10
	.p2align 3
.L2:
	movq	%rsp, %rsi
	movl	%ebp, %edi
	call	clock_gettime
	subl	$1, %ebx
	jne	.L2
	leaq	32(%rsp), %rsi
	movl	$2, %edi
	addq	$4, %r12
	call	clock_gettime
	movq	32(%rsp), %r8
	subq	16(%rsp), %r8
	movl	$20000000, %ecx
	movl	$.LC5, %esi
	movl	$1, %edi
	imulq	$1000000000, %r8, %r8
	subq	24(%rsp), %r8
	addq	40(%rsp), %r8
	movq	%r8, %rax
	imulq	%r14
	movq	%r8, %rax
	sarq	$63, %rax
	leaq	(%rdx,%r8), %r9
	movq	%r13, %rdx
	sarq	$24, %r9
	subq	%rax, %r9
	xorl	%eax, %eax
	call	__printf_chk
	cmpq	$20, %r12
	je	.L3
	movl	48(%rsp,%r12), %ebp
	movq	80(%rsp,%r12,2), %r13
	jmp	.L4
.L3:
	xorl	%eax, %eax
	movq	120(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L9
	subq	$-128, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L9:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE6:
	.section	.text.startup
.LHOTE6:
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
