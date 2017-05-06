	.file	"timing_test.c"
	.text
	.globl	clock_overhead
	.type	clock_overhead, @function
clock_overhead:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	jmp	.L2
.L3:
	movl	-100(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	leaq	-80(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	clock_gettime
	movl	-72(%rbp), %eax
	leaq	-80(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	clock_gettime
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	imulq	$1000000000, %rax, %rax
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	%rax, -88(%rbp)
	addq	$1, -96(%rbp)
.L2:
	cmpq	$9, -96(%rbp)
	jbe	.L3
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	jmp	.L4
.L5:
	movl	-100(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	leaq	-80(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	clock_gettime
	movl	-72(%rbp), %eax
	leaq	-80(%rbp), %rdx
	addq	$32, %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	clock_gettime
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	imulq	$1000000000, %rax, %rax
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	%rax, -88(%rbp)
	addq	$1, -96(%rbp)
.L4:
	cmpq	$99, -96(%rbp)
	jbe	.L5
	movq	-88(%rbp), %rax
	shrq	$2, %rax
	movabsq	$2951479051793528259, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$2, %rax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L7
	call	__stack_chk_fail
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	clock_overhead, .-clock_overhead
	.globl	tsc_overhead
	.type	tsc_overhead, @function
tsc_overhead:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	jmp	.L9
.L10:
#APP
# 83 "timing.h" 1
	cpuid 
    rdtsc 
    shlq $32, %rdx 
    orq %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, -32(%rbp)
#APP
# 84 "timing.h" 1
	rdtscp 
    shlq $32, %rdx 
    orq %rdx, %rax 
    movq %rax, %rsi 
    cpuid
# 0 "" 2
#NO_APP
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -96(%rbp)
	addq	$1, -104(%rbp)
.L9:
	cmpq	$9, -104(%rbp)
	jbe	.L10
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	jmp	.L11
.L12:
#APP
# 91 "timing.h" 1
	cpuid 
    rdtsc 
    shlq $32, %rdx 
    orq %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, -32(%rbp)
#APP
# 92 "timing.h" 1
	rdtscp 
    shlq $32, %rdx 
    orq %rdx, %rax 
    movq %rax, %rsi 
    cpuid
# 0 "" 2
#NO_APP
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -96(%rbp)
	addq	$1, -104(%rbp)
.L11:
	cmpq	$999, -104(%rbp)
	jbe	.L12
	movq	-96(%rbp), %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	tsc_overhead, .-tsc_overhead
	.globl	tsc_measure_freq
	.type	tsc_measure_freq, @function
tsc_measure_freq:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
#APP
# 101 "timing.h" 1
	cpuid 
    rdtsc 
    shlq $32, %rdx 
    orq %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, -40(%rbp)
	movl	$1000000, %edi
	call	usleep
#APP
# 103 "timing.h" 1
	rdtscp 
    shlq $32, %rdx 
    orq %rdx, %rax 
    movq %rax, %rsi 
    cpuid
# 0 "" 2
#NO_APP
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	tsc_measure_freq, .-tsc_measure_freq
	.section	.rodata
.LC0:
	.string	"clock_overhead = %ld ns\n"
.LC1:
	.string	"tsc_overhead = %ld ticks\n"
.LC2:
	.string	"CPU freq = %ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %edi
	call	clock_overhead
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	call	tsc_overhead
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	call	tsc_measure_freq
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
