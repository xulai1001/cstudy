	.file	"measure.cpp"
	.section	.text.unlikely._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
.LCOLDB0:
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
.LHOTB0:
	.align 2
	.p2align 4,,15
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1157:
	.cfi_startproc
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1157:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text.unlikely._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
.LCOLDE0:
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
.LHOTE0:
	.section	.text.unlikely._ZNSt6vectorI8HugePageSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EED5Ev,comdat
	.align 2
.LCOLDB1:
	.section	.text._ZNSt6vectorI8HugePageSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EED5Ev,comdat
.LHOTB1:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt6vectorI8HugePageSaIS0_EED2Ev
	.type	_ZNSt6vectorI8HugePageSaIS0_EED2Ev, @function
_ZNSt6vectorI8HugePageSaIS0_EED2Ev:
.LFB8335:
	.cfi_startproc
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L2
	jmp	_ZdlPv
	.p2align 4,,10
	.p2align 3
.L2:
	rep ret
	.cfi_endproc
.LFE8335:
	.size	_ZNSt6vectorI8HugePageSaIS0_EED2Ev, .-_ZNSt6vectorI8HugePageSaIS0_EED2Ev
	.section	.text.unlikely._ZNSt6vectorI8HugePageSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EED5Ev,comdat
.LCOLDE1:
	.section	.text._ZNSt6vectorI8HugePageSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EED5Ev,comdat
.LHOTE1:
	.weak	_ZNSt6vectorI8HugePageSaIS0_EED1Ev
	.set	_ZNSt6vectorI8HugePageSaIS0_EED1Ev,_ZNSt6vectorI8HugePageSaIS0_EED2Ev
	.section	.text.unlikely,"ax",@progbits
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.type	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.isra.50, @function
_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.isra.50:
.LFB8918:
	.cfi_startproc
	movq	8(%rdi), %rcx
	cmpq	-16(%rdi), %rcx
	leaq	-24(%rdi), %rax
	movq	(%rdi), %r9
	movzbl	16(%rdi), %r8d
	movl	20(%rdi), %esi
	jnb	.L6
	.p2align 4,,10
	.p2align 3
.L7:
	movq	(%rax), %rdx
	movq	%rax, %rdi
	subq	$24, %rax
	movq	%rdx, 48(%rax)
	movq	32(%rax), %rdx
	movq	%rdx, 56(%rax)
	movq	40(%rax), %rdx
	movq	%rdx, 64(%rax)
	cmpq	8(%rax), %rcx
	jb	.L7
.L6:
	movq	%r9, (%rdi)
	movq	%rcx, 8(%rdi)
	movb	%r8b, 16(%rdi)
	movl	%esi, 20(%rdi)
	ret
	.cfi_endproc
.LFE8918:
	.size	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.isra.50, .-_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.isra.50
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	clock_overhead
	.type	clock_overhead, @function
clock_overhead:
.LFB8233:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%edi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	$10, %ebx
	subq	$80, %rsp
	.cfi_def_cfa_offset 128
	leaq	16(%rsp), %r13
	leaq	32(%rsp), %r12
	.p2align 4,,10
	.p2align 3
.L10:
	movq	%r13, %rsi
	movl	%ebp, %edi
	movl	%ebp, 8(%rsp)
	call	clock_gettime
	movl	8(%rsp), %edi
	movq	%r12, %rsi
	call	clock_gettime
	movq	32(%rsp), %rax
	subq	16(%rsp), %rax
	imulq	$1000000000, %rax, %rax
	subq	24(%rsp), %rax
	addq	40(%rsp), %rax
	subq	$1, %rbx
	movq	%rax, (%rsp)
	jne	.L10
	leaq	16(%rsp), %r14
	leaq	32(%rsp), %r13
	movl	$100, %ebx
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L11:
	movq	%r14, %rsi
	movl	%ebp, %edi
	movl	%ebp, 8(%rsp)
	call	clock_gettime
	movl	8(%rsp), %edi
	movq	%r13, %rsi
	call	clock_gettime
	movq	32(%rsp), %rdx
	subq	16(%rsp), %rdx
	imulq	$1000000000, %rdx, %rdx
	subq	24(%rsp), %rdx
	addq	40(%rsp), %rdx
	addq	%rdx, %r12
	subq	$1, %rbx
	movq	%rdx, (%rsp)
	jne	.L11
	shrq	$2, %r12
	movabsq	$2951479051793528259, %rdx
	addq	$80, %rsp
	.cfi_def_cfa_offset 48
	movq	%r12, %rax
	mulq	%rdx
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	movq	%rdx, %rax
	shrq	$2, %rax
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8233:
	.size	clock_overhead, .-clock_overhead
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	tsc_overhead
	.type	tsc_overhead, @function
tsc_overhead:
.LFB8234:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$10, %esi
	.p2align 4,,10
	.p2align 3
.L16:
#APP
# 83 "timing.h" 1
	cpuid 
    rdtsc 
    shlq $32, %rdx 
    orq %rdx, %rax
# 0 "" 2
# 84 "timing.h" 1
	rdtscp 
    shlq $32, %rdx 
    orq %rdx, %rax 
    movq %rax, %rdi 
    cpuid
# 0 "" 2
#NO_APP
	subq	$1, %rsi
	jne	.L16
	movl	$1000, %r8d
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L18:
#APP
# 91 "timing.h" 1
	cpuid 
    rdtsc 
    shlq $32, %rdx 
    orq %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r9
#APP
# 92 "timing.h" 1
	rdtscp 
    shlq $32, %rdx 
    orq %rdx, %rax 
    movq %rax, %rsi 
    cpuid
# 0 "" 2
#NO_APP
	subq	%r9, %rsi
	leaq	(%rdi,%rsi), %rax
	cmpq	$99, %rsi
	cmovbe	%rax, %rdi
	subq	$1, %r8
	jne	.L18
	shrq	$3, %rdi
	movabsq	$2361183241434822607, %rdx
	movq	%rdi, %rax
	mulq	%rdx
	popq	%rbx
	.cfi_def_cfa_offset 8
	movq	%rdx, %rax
	shrq	$4, %rax
	ret
	.cfi_endproc
.LFE8234:
	.size	tsc_overhead, .-tsc_overhead
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	tsc_measure_freq
	.type	tsc_measure_freq, @function
tsc_measure_freq:
.LFB8235:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
#APP
# 102 "timing.h" 1
	cpuid 
    rdtsc 
    shlq $32, %rdx 
    orq %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$1000000, %edi
	movq	%rax, %rbp
	call	usleep
#APP
# 104 "timing.h" 1
	rdtscp 
    shlq $32, %rdx 
    orq %rdx, %rax 
    movq %rax, %rsi 
    cpuid
# 0 "" 2
#NO_APP
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rsi, %rax
	subq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8235:
	.size	tsc_measure_freq, .-tsc_measure_freq
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC6:
	.string	"ASSERT error at line %d: lseek(fd, pfn_item_offset, SEEK_SET) != -1"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	" "
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"ASSERT error at line %d: read(fd, &pfn_item, sizeof(uint64_t)) == sizeof(uint64_t)"
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4,,15
	.globl	_Z3v2pPv
	.type	_Z3v2pPv, @function
_Z3v2pPv:
.LFB8236:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	shrq	$12, %rdi
	xorl	%edx, %edx
	andl	$4095, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	leaq	0(,%rdi,8), %rsi
	movl	fd(%rip), %edi
	call	lseek
	cmpq	$-1, %rax
	je	.L28
	movl	fd(%rip), %edi
	leaq	8(%rsp), %rsi
	movl	$8, %edx
	call	read
	cmpq	$8, %rax
	jne	.L29
	movabsq	$36028797018963967, %rax
	andq	8(%rsp), %rax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	salq	$12, %rax
	addq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L28:
	.cfi_restore_state
	movq	stderr(%rip), %rdi
	movq	%rax, %rbp
	movl	$42, %edx
	movl	$.LC6, %esi
	xorl	%eax, %eax
	call	fprintf
	movl	$.LC7, %edi
	call	perror
	movl	%ebp, %edi
	call	exit
.L29:
	movq	stderr(%rip), %rdi
	movl	$43, %edx
	movl	$.LC8, %esi
	xorl	%eax, %eax
	call	fprintf
	movl	$.LC7, %edi
	call	perror
	orl	$-1, %edi
	call	exit
	.cfi_endproc
.LFE8236:
	.size	_Z3v2pPv, .-_Z3v2pPv
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.section	.text.unlikely
.LCOLDB10:
	.text
.LHOTB10:
	.p2align 4,,15
	.globl	_Z3p2vm
	.type	_Z3p2vm, @function
_Z3p2vm:
.LFB8247:
	.cfi_startproc
	movq	pages(%rip), %rdx
	movq	pages+8(%rip), %rcx
	movq	%rdi, %rsi
	andl	$2097151, %esi
	cmpq	%rcx, %rdx
	je	.L31
	subq	%rsi, %rdi
	cmpq	%rdi, 8(%rdx)
	movq	(%rdx), %rax
	je	.L32
	addq	$24, %rdx
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L35:
	movq	(%rdx), %rax
	addq	$24, %rdx
	cmpq	%rdi, -16(%rdx)
	je	.L32
.L34:
	cmpq	%rdx, %rcx
	jne	.L35
.L31:
	rep ret
	.p2align 4,,10
	.p2align 3
.L32:
	addq	%rsi, %rax
	ret
	.cfi_endproc
.LFE8247:
	.size	_Z3p2vm, .-_Z3p2vm
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
	.section	.rodata.str1.1
.LC11:
	.string	"cleanup usused pages..."
.LC12:
	.string	" pages released."
	.section	.text.unlikely
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	_Z7cleanupb
	.type	_Z7cleanupb, @function
_Z7cleanupb:
.LFB8248:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	$23, %edx
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	%edi, %r12d
	movl	$.LC11, %esi
	movl	$_ZSt4cout, %edi
	xorl	%r13d, %r13d
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	pool(%rip), %rbx
	movq	pool+8(%rip), %rbp
	cmpq	%rbp, %rbx
	jne	.L42
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L54:
	cmpb	$33, (%rdi)
	jne	.L41
.L40:
	addq	$24, %rbx
	cmpq	%rbx, %rbp
	je	.L39
.L42:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L40
	testb	%r12b, %r12b
	je	.L54
.L41:
	movl	20(%rbx), %esi
	addq	$24, %rbx
	addl	$1, %r13d
	sall	$21, %esi
	movslq	%esi, %rsi
	call	munmap
	movq	$0, -24(%rbx)
	movq	$0, -16(%rbx)
	cmpq	%rbx, %rbp
	jne	.L42
.L39:
	movq	_ZSt4cout(%rip), %rax
	movl	%r13d, %esi
	movl	$_ZSt4cout, %edi
	movq	-24(%rax), %rdx
	movl	_ZSt4cout+24(%rdx), %eax
	andl	$-75, %eax
	orl	$2, %eax
	movl	%eax, _ZSt4cout+24(%rdx)
	call	_ZNSolsEi
	movl	$16, %edx
	movq	%rax, %rbx
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L55
	cmpb	$0, 56(%rbp)
	je	.L44
	movsbl	67(%rbp), %esi
.L45:
	movq	%rbx, %rdi
	call	_ZNSo3putEc
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv
	.p2align 4,,10
	.p2align 3
.L44:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L45
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L45
.L55:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE8248:
	.size	_Z7cleanupb, .-_Z7cleanupb
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.globl	_Z7latencyiii
	.type	_Z7latencyiii, @function
_Z7latencyiii:
.LFB8250:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$1, %r8d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r8d, %r14d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ecx
	sall	%cl, %r14d
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	pages(%rip), %rax
	testl	%esi, %esi
	movq	8(%rax), %r13
	js	.L82
	movl	%esi, %ecx
	sall	%cl, %r8d
	orl	%r8d, %r14d
.L82:
	testl	%edx, %edx
	movslq	%r14d, %r14
	js	.L59
	movl	%edx, %ecx
	movl	$1, %esi
	sall	%cl, %esi
	movslq	%esi, %rdx
	orq	%rdx, %r14
.L59:
	movq	seed+24(%rip), %rdi
	cmpq	$seed+8, %rdi
	je	.L74
	movq	%r14, %rbx
	movl	$9999, %r15d
	notq	%rbx
	movq	%rbx, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L73:
	movq	32(%rdi), %rsi
	movq	8(%rsp), %r8
	movq	pages+8(%rip), %rcx
	andq	%rsi, %r8
	addq	%r13, %r8
	movq	%r8, %rbx
	andl	$2097151, %ebx
	cmpq	%rax, %rcx
	je	.L61
	movq	8(%rax), %r11
	subq	%rbx, %r8
	movq	(%rax), %r9
	leaq	24(%rax), %rdx
	cmpq	%r8, %r11
	jne	.L64
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L66:
	movq	(%rdx), %r10
	addq	$24, %rdx
	cmpq	%r8, -16(%rdx)
	je	.L62
.L64:
	cmpq	%rcx, %rdx
	jne	.L66
	orq	%r14, %rsi
	addq	$24, %rax
	leaq	(%rsi,%r13), %rdx
	movq	%rdx, %rsi
	andl	$2097151, %esi
	subq	%rsi, %rdx
	cmpq	%r11, %rdx
	jne	.L69
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L70:
	movq	(%rax), %r9
	addq	$24, %rax
	cmpq	%rdx, -16(%rax)
	je	.L67
.L69:
	cmpq	%rax, %rcx
	jne	.L70
.L61:
#APP
# 199 "measure.cpp" 1
	cpuid 
    rdtsc 
    shlq $32, %rdx 
    orq %rdx, %rax
# 0 "" 2
#NO_APP
	movl	$200, %edx
	movq	%rax, %r8
	.p2align 4,,10
	.p2align 3
.L71:
#APP
# 213 "measure.cpp" 1
	movq (%r12), %rax 
	movq (%rbp), %rax 
	clflush (%r12) 
	clflush (%rbp) 
	mfence
# 0 "" 2
#NO_APP
	subl	$1, %edx
	jne	.L71
#APP
# 215 "measure.cpp" 1
	rdtscp 
    shlq $32, %rdx 
    orq %rdx, %rax 
    movq %rax, %rsi 
    cpuid
# 0 "" 2
#NO_APP
	movl	$1374389535, %eax
	subq	%r8, %rsi
	imull	%esi
	movq	%rsi, %rcx
	sarl	$31, %ecx
	sarl	$7, %edx
	subl	%ecx, %edx
	cmpl	%edx, %r15d
	cmovg	%edx, %r15d
	call	_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base
	cmpq	$seed+8, %rax
	movq	%rax, %rdi
	je	.L72
	movq	pages(%rip), %rax
	jmp	.L73
.L84:
	movq	%r9, %r10
.L62:
	orq	%r14, %rsi
	addq	$24, %rax
	leaq	(%r10,%rbx), %r12
	leaq	(%rsi,%r13), %rdx
	movq	%rdx, %rsi
	andl	$2097151, %esi
	subq	%rsi, %rdx
	cmpq	%r11, %rdx
	jne	.L69
.L67:
	leaq	(%r9,%rsi), %rbp
	jmp	.L61
.L72:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movslq	%r15d, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L74:
	.cfi_restore_state
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	movl	$9999, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8250:
	.size	_Z7latencyiii, .-_Z7latencyiii
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.section	.text.unlikely._ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv,comdat
	.align 2
.LCOLDB15:
	.section	.text._ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv,comdat
.LHOTB15:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv
	.type	_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv, @function
_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv:
.LFB8475:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	(%rdi), %rbx
	cmpq	%rdi, %rbx
	je	.L85
	movq	%rdi, %r12
	.p2align 4,,10
	.p2align 3
.L92:
	movq	16(%rbx), %rdi
	movq	(%rbx), %rbp
	testq	%rdi, %rdi
	je	.L87
	call	_ZdlPv
.L87:
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	call	_ZdlPv
	cmpq	%r12, %rbp
	jne	.L92
.L85:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8475:
	.size	_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv, .-_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv
	.section	.text.unlikely._ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv,comdat
.LCOLDE15:
	.section	.text._ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv,comdat
.LHOTE15:
	.section	.text.unlikely._ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev,"axG",@progbits,_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED5Ev,comdat
	.align 2
.LCOLDB16:
	.section	.text._ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev,"axG",@progbits,_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED5Ev,comdat
.LHOTB16:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev
	.type	_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev, @function
_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev:
.LFB8862:
	.cfi_startproc
	jmp	_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv
	.cfi_endproc
.LFE8862:
	.size	_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev, .-_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev
	.section	.text.unlikely._ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev,"axG",@progbits,_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED5Ev,comdat
.LCOLDE16:
	.section	.text._ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev,"axG",@progbits,_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED5Ev,comdat
.LHOTE16:
	.weak	_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED1Ev
	.set	_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED1Ev,_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev
	.section	.rodata.str1.1
.LC17:
	.string	"vector::_M_default_append"
	.section	.text.unlikely._ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm,comdat
	.align 2
.LCOLDB18:
	.section	.text._ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm,comdat
.LHOTB18:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm
	.type	_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm, @function
_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm:
.LFB8478:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L135
	movq	8(%rdi), %r8
	movq	16(%rdi), %rax
	movabsq	$-6148914691236517205, %rdx
	subq	%r8, %rax
	sarq	$3, %rax
	imulq	%rdx, %rax
	cmpq	%rax, %rsi
	ja	.L98
	movq	%rsi, %rdx
	movq	%r8, %rax
	.p2align 4,,10
	.p2align 3
.L100:
	testq	%rax, %rax
	je	.L99
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movl	$1, 20(%rax)
.L99:
	addq	$24, %rax
	subq	$1, %rdx
	jne	.L100
	leaq	(%rsi,%rsi,2), %rax
	leaq	(%r8,%rax,8), %rax
	movq	%rax, 8(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L98:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%r8, %rax
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbp
	movabsq	$768614336404564650, %rcx
	movq	%rsi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rdi), %rdi
	subq	%rdi, %rax
	sarq	$3, %rax
	imulq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	cmpq	%rax, %rsi
	ja	.L136
	cmpq	%rdx, %rsi
	movq	%rdx, %rax
	cmovnb	%rsi, %rax
	addq	%rax, %rdx
	jc	.L114
	cmpq	%rcx, %rdx
	ja	.L114
	leaq	(%rdx,%rdx,2), %r13
	salq	$3, %r13
	testq	%rdx, %rdx
	jne	.L111
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L114:
	movq	$-16, %r13
.L111:
	movq	%r13, %rdi
	call	_Znwm
	movq	8(%rbp), %r8
	movq	0(%rbp), %rdi
	movq	%rax, %r12
	addq	%rax, %r13
.L110:
	cmpq	%rdi, %r8
	je	.L112
	movq	%r12, %rcx
	movq	%rdi, %rdx
	.p2align 4,,10
	.p2align 3
.L106:
	testq	%rcx, %rcx
	je	.L105
	movq	(%rdx), %rsi
	movq	%rsi, (%rcx)
	movq	8(%rdx), %rsi
	movq	%rsi, 8(%rcx)
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rcx)
.L105:
	addq	$24, %rdx
	addq	$24, %rcx
	cmpq	%rdx, %r8
	jne	.L106
	leaq	24(%rdi), %rax
	subq	%rax, %r8
	shrq	$3, %r8
	leaq	24(%r12,%r8,8), %rax
.L104:
	movq	%rax, %rdx
	movq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L108:
	testq	%rdx, %rdx
	je	.L107
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movb	$0, 16(%rdx)
	movl	$1, 20(%rdx)
.L107:
	addq	$24, %rdx
	subq	$1, %rcx
	jne	.L108
	leaq	(%rbx,%rbx,2), %rdx
	testq	%rdi, %rdi
	leaq	(%rax,%rdx,8), %rbx
	je	.L109
	call	_ZdlPv
.L109:
	movq	%r12, 0(%rbp)
	movq	%rbx, 8(%rbp)
	movq	%r13, 16(%rbp)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 8
.L135:
	rep ret
.L112:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movq	%r12, %rax
	jmp	.L104
.L136:
	movl	$.LC17, %edi
	call	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE8478:
	.size	_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm, .-_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm
	.section	.text.unlikely._ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm,comdat
.LCOLDE18:
	.section	.text._ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm,comdat
.LHOTE18:
	.section	.text.unlikely._ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_,comdat
	.align 2
.LCOLDB19:
	.section	.text._ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_,comdat
.LHOTB19:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_
	.type	_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_, @function
_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_:
.LFB8488:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movabsq	$-6148914691236517205, %rax
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %r13
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movq	8(%rbx), %r8
	movq	%r8, %rdx
	subq	%rdi, %rdx
	movq	%rdx, %rcx
	sarq	$3, %rcx
	imulq	%rcx, %rax
	testq	%rax, %rax
	je	.L146
	leaq	(%rax,%rax), %rcx
	cmpq	%rcx, %rax
	jbe	.L161
.L147:
	movq	$-16, %r12
.L138:
	movq	%r12, %rdi
	call	_Znwm
	movq	8(%rbx), %r8
	movq	(%rbx), %rdi
	leaq	24(%rax), %r14
	movq	%rax, %rbp
	addq	%rax, %r12
	movq	%r8, %rdx
	subq	%rdi, %rdx
.L145:
	addq	%rbp, %rdx
	je	.L140
	movq	0(%r13), %rax
	movq	%rax, (%rdx)
	movq	8(%r13), %rax
	movq	%rax, 8(%rdx)
	movq	16(%r13), %rax
	movq	%rax, 16(%rdx)
.L140:
	cmpq	%rdi, %r8
	je	.L141
	movq	%rdi, %rdx
	movq	%rbp, %rcx
	.p2align 4,,10
	.p2align 3
.L143:
	testq	%rcx, %rcx
	je	.L142
	movq	(%rdx), %rsi
	movq	%rsi, (%rcx)
	movq	8(%rdx), %rsi
	movq	%rsi, 8(%rcx)
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rcx)
.L142:
	addq	$24, %rdx
	addq	$24, %rcx
	cmpq	%r8, %rdx
	jne	.L143
	leaq	24(%rdi), %rax
	subq	%rax, %rdx
	shrq	$3, %rdx
	leaq	48(%rbp,%rdx,8), %r14
.L141:
	testq	%rdi, %rdi
	je	.L144
	call	_ZdlPv
.L144:
	movq	%rbp, (%rbx)
	movq	%r14, 8(%rbx)
	movq	%r12, 16(%rbx)
	popq	%rbx
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L146:
	.cfi_restore_state
	movl	$24, %r12d
	jmp	.L138
.L161:
	movabsq	$768614336404564650, %rsi
	cmpq	%rsi, %rcx
	ja	.L147
	testq	%rcx, %rcx
	jne	.L162
	movl	$24, %r14d
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	jmp	.L145
.L162:
	leaq	(%rcx,%rax,4), %r12
	salq	$3, %r12
	jmp	.L138
	.cfi_endproc
.LFE8488:
	.size	_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_, .-_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_
	.section	.text.unlikely._ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_,comdat
.LCOLDE19:
	.section	.text._ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_,comdat
.LHOTE19:
	.weak	_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIIRKS0_EEEvDpOT_
	.set	_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIIRKS0_EEEvDpOT_,_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_
	.section	.text.unlikely._ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_,"axG",@progbits,_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_,comdat
	.align 2
.LCOLDB20:
	.section	.text._ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_,"axG",@progbits,_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_,comdat
.LHOTB20:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_
	.type	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_, @function
_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_:
.LFB8499:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	8(%rdi), %r12
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	16(%rdi), %rbx
	testq	%rbx, %rbx
	je	.L174
	movq	(%rsi), %rcx
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L180:
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.L166
.L181:
	movq	%rax, %rbx
.L165:
	movq	32(%rbx), %rdx
	cmpq	%rcx, %rdx
	ja	.L180
	movq	24(%rbx), %rax
	testq	%rax, %rax
	jne	.L181
.L166:
	cmpq	%rcx, %rdx
	movq	%rbx, %rax
	ja	.L164
	cmpq	%rcx, %rdx
	jb	.L170
.L178:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%edx, %edx
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L174:
	.cfi_restore_state
	movq	%r12, %rbx
	.p2align 4,,10
	.p2align 3
.L164:
	cmpq	%rbx, 24(%r13)
	je	.L170
	movq	%rbx, %rdi
	call	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	movq	(%r14), %rcx
	movq	32(%rax), %rdx
	cmpq	%rcx, %rdx
	jnb	.L178
.L170:
	cmpq	%rbx, %r12
	je	.L176
	xorl	%r15d, %r15d
	movq	32(%rbx), %rax
	cmpq	%rax, (%r14)
	setb	%r15b
.L171:
	movl	$40, %edi
	call	_Znwm
	movq	%rax, %rbp
	movq	(%r14), %rax
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%rbp, %rsi
	movl	%r15d, %edi
	movq	%rax, 32(%rbp)
	call	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	addq	$1, 40(%r13)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	movl	$1, %edx
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L176:
	.cfi_restore_state
	movl	$1, %r15d
	jmp	.L171
	.cfi_endproc
.LFE8499:
	.size	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_, .-_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_
	.section	.text.unlikely._ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_,"axG",@progbits,_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_,comdat
.LCOLDE20:
	.section	.text._ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_,"axG",@progbits,_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_,comdat
.LHOTE20:
	.section	.text.unlikely._ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE,"axG",@progbits,_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE,comdat
	.align 2
.LCOLDB21:
	.section	.text._ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE,"axG",@progbits,_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE,comdat
.LHOTB21:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE
	.type	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE, @function
_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE:
.LFB8573:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L192
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsi, %rbx
	.p2align 4,,10
	.p2align 3
.L188:
	movq	24(%rbx), %rsi
	movq	%r12, %rdi
	call	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE
	movq	16(%rbx), %rbp
	movq	%rbx, %rdi
	call	_ZdlPv
	testq	%rbp, %rbp
	movq	%rbp, %rbx
	jne	.L188
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 8
.L192:
	rep ret
	.cfi_endproc
.LFE8573:
	.size	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE, .-_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE
	.section	.text.unlikely._ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE,"axG",@progbits,_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE,comdat
.LCOLDE21:
	.section	.text._ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE,"axG",@progbits,_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE,comdat
.LHOTE21:
	.section	.text.unlikely._ZNSt3setImSt4lessImESaImEED2Ev,"axG",@progbits,_ZNSt3setImSt4lessImESaImEED5Ev,comdat
	.align 2
.LCOLDB22:
	.section	.text._ZNSt3setImSt4lessImESaImEED2Ev,"axG",@progbits,_ZNSt3setImSt4lessImESaImEED5Ev,comdat
.LHOTB22:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt3setImSt4lessImESaImEED2Ev
	.type	_ZNSt3setImSt4lessImESaImEED2Ev, @function
_ZNSt3setImSt4lessImESaImEED2Ev:
.LFB8865:
	.cfi_startproc
	movq	16(%rdi), %rsi
	jmp	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE
	.cfi_endproc
.LFE8865:
	.size	_ZNSt3setImSt4lessImESaImEED2Ev, .-_ZNSt3setImSt4lessImESaImEED2Ev
	.section	.text.unlikely._ZNSt3setImSt4lessImESaImEED2Ev,"axG",@progbits,_ZNSt3setImSt4lessImESaImEED5Ev,comdat
.LCOLDE22:
	.section	.text._ZNSt3setImSt4lessImESaImEED2Ev,"axG",@progbits,_ZNSt3setImSt4lessImESaImEED5Ev,comdat
.LHOTE22:
	.weak	_ZNSt3setImSt4lessImESaImEED1Ev
	.set	_ZNSt3setImSt4lessImESaImEED1Ev,_ZNSt3setImSt4lessImESaImEED2Ev
	.section	.text.unlikely
.LCOLDB23:
	.text
.LHOTB23:
	.p2align 4,,15
	.globl	_Z7genseedii
	.type	_Z7genseedii, @function
_Z7genseedii:
.LFB8249:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	%esi, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movslq	%edi, %rbx
	xorl	%edi, %edi
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	call	time
	movl	%eax, %edi
	call	srand
	movq	seed+16(%rip), %rsi
	movl	$seed, %edi
	call	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE
	testl	%ebx, %ebx
	movq	$0, seed+16(%rip)
	movq	$seed+8, seed+24(%rip)
	movq	$seed+8, seed+32(%rip)
	movq	$0, seed+40(%rip)
	jle	.L204
	movl	$1, %ebp
	movl	%r13d, %ecx
	leaq	8(%rsp), %r12
	sall	%cl, %ebp
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L197:
	call	rand
	cltd
	movq	%r12, %rsi
	movl	$seed, %edi
	idivl	%ebp
	addl	$1, %r14d
	movslq	%edx, %rdx
	movq	%rdx, 8(%rsp)
	call	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_
	cmpl	%r14d, %ebx
	jne	.L197
	movq	seed+40(%rip), %rax
.L198:
	cmpq	%rbx, %rax
	jnb	.L194
	movl	$1, %ebp
	movl	%r13d, %ecx
	leaq	8(%rsp), %r12
	sall	%cl, %ebp
	.p2align 4,,10
	.p2align 3
.L199:
	call	rand
	cltd
	movq	%r12, %rsi
	movl	$seed, %edi
	idivl	%ebp
	movslq	%edx, %rdx
	movq	%rdx, 8(%rsp)
	call	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_
	cmpq	%rbx, seed+40(%rip)
	jb	.L199
.L194:
	addq	$16, %rsp
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
.L204:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L198
	.cfi_endproc
.LFE8249:
	.size	_Z7genseedii, .-_Z7genseedii
	.section	.text.unlikely
.LCOLDE23:
	.text
.LHOTE23:
	.section	.text.unlikely._ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
.LCOLDB24:
	.section	.text._ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag,comdat
.LHOTB24:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag, @function
_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag:
.LFB8594:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movabsq	$-6148914691236517205, %r10
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbp
	subq	%rsi, %rbp
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	movq	(%rdi), %rcx
	movq	16(%rdi), %rax
	movq	%rbp, %r8
	sarq	$3, %r8
	subq	%rcx, %rax
	sarq	$3, %rax
	imulq	%r10, %r8
	imulq	%r10, %rax
	cmpq	%r8, %rax
	jb	.L240
	movq	8(%rdi), %r9
	movq	%r9, %rbx
	subq	%rcx, %rbx
	movq	%rbx, %rax
	sarq	$3, %rax
	imulq	%rax, %r10
	cmpq	%r10, %r8
	ja	.L217
	testq	%r8, %r8
	jle	.L218
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L219:
	movq	(%rsi,%rax), %rdx
	movq	%rdx, (%rcx,%rax)
	movq	8(%rsi,%rax), %rdx
	movq	%rdx, 8(%rcx,%rax)
	movq	16(%rsi,%rax), %rdx
	movq	%rdx, 16(%rcx,%rax)
	addq	$24, %rax
	cmpq	%rbp, %rax
	jne	.L219
	addq	%rax, %rcx
.L218:
	movq	%rcx, 8(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L217:
	.cfi_restore_state
	xorl	%eax, %eax
	testq	%r10, %r10
	leaq	(%rsi,%rbx), %r11
	jle	.L223
	.p2align 4,,10
	.p2align 3
.L236:
	movq	(%rsi,%rax), %r8
	movq	%r8, (%rcx,%rax)
	movq	8(%rsi,%rax), %r8
	movq	%r8, 8(%rcx,%rax)
	movq	16(%rsi,%rax), %r8
	movq	%r8, 16(%rcx,%rax)
	addq	$24, %rax
	cmpq	%rax, %rbx
	jne	.L236
.L223:
	cmpq	%rdx, %r11
	movq	%r9, %rcx
	movq	%r11, %rax
	je	.L222
	.p2align 4,,10
	.p2align 3
.L232:
	testq	%rcx, %rcx
	je	.L225
	movq	(%rax), %rsi
	movq	%rsi, (%rcx)
	movq	8(%rax), %rsi
	movq	%rsi, 8(%rcx)
	movq	16(%rax), %rsi
	movq	%rsi, 16(%rcx)
.L225:
	addq	$24, %rax
	addq	$24, %rcx
	cmpq	%rdx, %rax
	jne	.L232
	addq	$24, %r11
	subq	%r11, %rax
	shrq	$3, %rax
	leaq	24(%r9,%rax,8), %r9
.L222:
	movq	%r9, 8(%rdi)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L240:
	.cfi_restore_state
	xorl	%r14d, %r14d
	testq	%r8, %r8
	movq	%rdi, %r15
	movq	%rsi, %rbx
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rcx, %rdi
	je	.L208
	movabsq	$768614336404564650, %rax
	cmpq	%rax, %r8
	ja	.L241
	movq	%rbp, %rdi
	call	_Znwm
	movq	(%r15), %rdi
	movq	%rax, %r14
.L208:
	cmpq	%r13, %r12
	movq	%r14, %rsi
	je	.L215
	.p2align 4,,10
	.p2align 3
.L231:
	testq	%rsi, %rsi
	je	.L213
	movq	(%rbx), %r8
	movq	%r8, (%rsi)
	movq	8(%rbx), %r8
	movq	%r8, 8(%rsi)
	movq	16(%rbx), %r8
	movq	%r8, 16(%rsi)
.L213:
	addq	$24, %rbx
	addq	$24, %rsi
	cmpq	%rbx, %r13
	jne	.L231
.L215:
	testq	%rdi, %rdi
	je	.L212
	call	_ZdlPv
.L212:
	addq	%r14, %rbp
	movq	%r14, (%r15)
	movq	%rbp, 8(%r15)
	movq	%rbp, 16(%r15)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L241:
	.cfi_restore_state
	call	_ZSt17__throw_bad_allocv
	.cfi_endproc
.LFE8594:
	.size	_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag, .-_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag
	.section	.text.unlikely._ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag,comdat
.LCOLDE24:
	.section	.text._ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag,comdat
.LHOTE24:
	.section	.text.unlikely._ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_,"axG",@progbits,_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_,comdat
.LCOLDB25:
	.section	.text._ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_,"axG",@progbits,_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_,comdat
.LHOTB25:
	.p2align 4,,15
	.weak	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_
	.type	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_, @function
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_:
.LFB8687:
	.cfi_startproc
	cmpq	%rdi, %rsi
	je	.L258
	leaq	24(%rdi), %rax
	cmpq	%rsi, %rax
	je	.L258
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r11
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rax, %r10
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movabsq	$-6148914691236517205, %rbp
	movq	%rsi, %rbx
	.p2align 4,,10
	.p2align 3
.L250:
	movq	8(%r10), %rdi
	cmpq	8(%r11), %rdi
	jnb	.L245
	movq	%r10, %rdx
	movq	(%r10), %r12
	movzbl	16(%r10), %r9d
	subq	%r11, %rdx
	movl	20(%r10), %esi
	leaq	24(%r10), %r8
	sarq	$3, %rdx
	leaq	-24(%r10), %rax
	imulq	%rbp, %rdx
	testq	%rdx, %rdx
	jle	.L248
	.p2align 4,,10
	.p2align 3
.L254:
	movq	(%rax), %rcx
	subq	$24, %rax
	movq	%rcx, 48(%rax)
	movq	32(%rax), %rcx
	movq	%rcx, 56(%rax)
	movq	40(%rax), %rcx
	movq	%rcx, 64(%rax)
	subq	$1, %rdx
	jne	.L254
.L248:
	movq	%r12, (%r11)
	movq	%rdi, 8(%r11)
	movb	%r9b, 16(%r11)
	movl	%esi, 20(%r11)
.L247:
	cmpq	%r8, %rbx
	movq	%r8, %r10
	jne	.L250
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 8
.L258:
	rep ret
	.p2align 4,,10
	.p2align 3
.L245:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	%r10, %rdi
	call	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.isra.50
	leaq	24(%r10), %r8
	jmp	.L247
	.cfi_endproc
.LFE8687:
	.size	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_, .-_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_
	.section	.text.unlikely._ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_,"axG",@progbits,_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_,comdat
.LCOLDE25:
	.section	.text._ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_,"axG",@progbits,_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_,comdat
.LHOTE25:
	.section	.text.unlikely._ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_,"axG",@progbits,_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_,comdat
.LCOLDB26:
	.section	.text._ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_,"axG",@progbits,_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_,comdat
.LHOTB26:
	.p2align 4,,15
	.weak	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_
	.type	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_, @function
_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_:
.LFB8754:
	.cfi_startproc
	movq	8(%rsi), %r8
	movq	8(%rdx), %rax
	movq	8(%rcx), %r9
	cmpq	%r8, %rax
	jbe	.L260
	cmpq	%r9, %rax
	jb	.L268
	cmpq	%r9, %r8
	movq	(%rdi), %r8
	jnb	.L267
	movq	8(%rdi), %rsi
.L266:
	movq	(%rcx), %r9
	movzbl	16(%rdi), %edx
	movl	20(%rdi), %eax
	movq	%r9, (%rdi)
	movq	8(%rcx), %r9
	movq	%r9, 8(%rdi)
	movq	16(%rcx), %r9
	movq	%r9, 16(%rdi)
	movq	%r8, (%rcx)
	movq	%rsi, 8(%rcx)
	movb	%dl, 16(%rcx)
	movl	%eax, 20(%rcx)
	ret
	.p2align 4,,10
	.p2align 3
.L260:
	cmpq	%r9, %r8
	movq	(%rdi), %r8
	jb	.L267
	cmpq	%r9, %rax
	movq	8(%rdi), %rsi
	jb	.L266
.L265:
	movq	(%rdx), %r9
	movzbl	16(%rdi), %ecx
	movl	20(%rdi), %eax
	movq	%r9, (%rdi)
	movq	8(%rdx), %r9
	movq	%r9, 8(%rdi)
	movq	16(%rdx), %r9
	movq	%r9, 16(%rdi)
	movq	%r8, (%rdx)
	movq	%rsi, 8(%rdx)
	movb	%cl, 16(%rdx)
	movl	%eax, 20(%rdx)
	ret
	.p2align 4,,10
	.p2align 3
.L267:
	movq	(%rsi), %r9
	movzbl	16(%rdi), %edx
	movq	8(%rdi), %rcx
	movl	20(%rdi), %eax
	movq	%r9, (%rdi)
	movq	8(%rsi), %r9
	movq	%r9, 8(%rdi)
	movq	16(%rsi), %r9
	movq	%r9, 16(%rdi)
	movq	%r8, (%rsi)
	movq	%rcx, 8(%rsi)
	movb	%dl, 16(%rsi)
	movl	%eax, 20(%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L268:
	movq	(%rdi), %r8
	movq	8(%rdi), %rsi
	jmp	.L265
	.cfi_endproc
.LFE8754:
	.size	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_, .-_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_
	.section	.text.unlikely._ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_,"axG",@progbits,_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_,comdat
.LCOLDE26:
	.section	.text._ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_,"axG",@progbits,_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_,comdat
.LHOTE26:
	.section	.text.unlikely._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_,comdat
.LCOLDB27:
	.section	.text._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_,comdat
.LHOTB27:
	.p2align 4,,15
	.weak	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_, @function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_:
.LFB8839:
	.cfi_startproc
	leaq	-1(%rdx), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %r8
	movq	%rax, %rbx
	shrq	$63, %rbx
	addq	%rax, %rbx
	sarq	%rbx
	cmpq	%rbx, %rsi
	jl	.L283
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L281:
	movq	%rcx, %r8
.L283:
	leaq	1(%r8), %r10
	leaq	(%r8,%r8,2), %r8
	leaq	(%r10,%r10), %r9
	leaq	(%rdi,%r8,8), %r8
	leaq	-1(%r9), %rcx
	leaq	(%r9,%r10,4), %r10
	leaq	(%rcx,%rcx,2), %rax
	leaq	(%rdi,%r10,8), %r10
	leaq	(%rdi,%rax,8), %rax
	movq	8(%rax), %r11
	cmpq	8(%r10), %r11
	cmovbe	%r10, %rax
	cmovbe	%r9, %rcx
	movq	(%rax), %r9
	cmpq	%rbx, %rcx
	movq	%r9, (%r8)
	movq	8(%rax), %r9
	movq	%r9, 8(%r8)
	movq	16(%rax), %r9
	movq	%r9, 16(%r8)
	jl	.L281
	testb	$1, %dl
	jne	.L275
.L271:
	subq	$2, %rdx
	movq	%rdx, %r8
	shrq	$63, %r8
	addq	%r8, %rdx
	sarq	%rdx
	cmpq	%rcx, %rdx
	je	.L291
.L275:
	cmpq	%rsi, %rcx
	movq	16(%rsp), %rbx
	movq	24(%rsp), %r9
	movzbl	32(%rsp), %r11d
	movl	36(%rsp), %r10d
	jle	.L276
	leaq	-1(%rcx), %rdx
	movq	%rdx, %r8
	shrq	$63, %r8
	addq	%r8, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %r8
	cmpq	8(%rdi,%r8,8), %r9
	jbe	.L276
	.p2align 4,,10
	.p2align 3
.L278:
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rcx,%rcx,2), %rcx
	cmpq	%rdx, %rsi
	leaq	(%rdi,%rax,8), %rax
	leaq	(%rdi,%rcx,8), %rcx
	movq	(%rax), %r8
	movq	%r8, (%rcx)
	movq	8(%rax), %r8
	movq	%r8, 8(%rcx)
	movq	16(%rax), %r8
	movq	%r8, 16(%rcx)
	jge	.L276
	leaq	-1(%rdx), %rcx
	movq	%rcx, %r8
	shrq	$63, %r8
	addq	%rcx, %r8
	movq	%rdx, %rcx
	sarq	%r8
	leaq	(%r8,%r8,2), %rdx
	cmpq	8(%rdi,%rdx,8), %r9
	jbe	.L276
	movq	%r8, %rdx
	jmp	.L278
.L290:
	leaq	(%rsi,%rsi,2), %rax
	testb	$1, %dl
	movq	%rsi, %rcx
	leaq	(%rdi,%rax,8), %rax
	je	.L271
	movzbl	32(%rsp), %r11d
	movq	16(%rsp), %rbx
	movq	24(%rsp), %r9
	movl	36(%rsp), %r10d
.L276:
	movq	%rbx, (%rax)
	movq	%r9, 8(%rax)
	movb	%r11b, 16(%rax)
	movl	%r10d, 20(%rax)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L291:
	.cfi_restore_state
	leaq	1(%rcx,%rcx), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	leaq	(%rdi,%rdx,8), %rdx
	movq	(%rdx), %r8
	movq	%r8, (%rax)
	movq	8(%rdx), %r8
	movq	%r8, 8(%rax)
	movq	16(%rdx), %r8
	movq	%r8, 16(%rax)
	movq	%rdx, %rax
	jmp	.L275
	.cfi_endproc
.LFE8839:
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_, .-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_
	.section	.text.unlikely._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_,comdat
.LCOLDE27:
	.section	.text._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_,comdat
.LHOTE27:
	.section	.text.unlikely
.LCOLDB28:
	.text
.LHOTB28:
	.p2align 4,,15
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.isra.75, @function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.isra.75:
.LFB8943:
	.cfi_startproc
	movq	%rsi, %rax
	subq	%rdi, %rax
	cmpq	$407, %rax
	jle	.L315
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r15
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	testq	%rdx, %rdx
	je	.L317
	leaq	24(%rdi), %rax
	leaq	48(%rdi), %r12
	movq	%rsi, %rbp
	movq	%rsi, %r14
	movq	%rax, 8(%rsp)
.L297:
	subq	%r15, %r14
	movabsq	$-6148914691236517205, %rax
	subq	$8, %rsp
	.cfi_def_cfa_offset 120
	sarq	$3, %r14
	pushq	$0
	.cfi_def_cfa_offset 128
	movq	24(%rsp), %rsi
	imulq	%rax, %r14
	leaq	-24(%rbp), %rcx
	movq	%r15, %rdi
	subq	$1, %rbx
	movq	%r14, %rax
	shrq	$63, %rax
	addq	%r14, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%r15,%rax,8), %rdx
	call	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_
	movq	8(%r15), %rcx
	movq	%r12, %rsi
	popq	%rax
	.cfi_def_cfa_offset 120
	popq	%rdx
	.cfi_def_cfa_offset 112
	movq	%rbp, %rdx
	.p2align 4,,10
	.p2align 3
.L302:
	movq	-16(%rsi), %rdi
	leaq	-24(%rsi), %r14
	movq	%r14, %r13
	cmpq	%rcx, %rdi
	jb	.L303
	cmpq	%rcx, -16(%rdx)
	leaq	-24(%rdx), %rax
	jbe	.L309
	leaq	-48(%rdx), %rax
	.p2align 4,,10
	.p2align 3
.L305:
	movq	%rax, %rdx
	subq	$24, %rax
	cmpq	%rcx, 32(%rax)
	ja	.L305
	cmpq	%rdx, %r14
	jnb	.L318
.L306:
	movq	(%rdx), %r10
	movq	-24(%rsi), %r9
	movzbl	-8(%rsi), %ecx
	movl	-4(%rsi), %eax
	movq	%r10, -24(%rsi)
	movq	8(%rdx), %r10
	movq	%r10, -16(%rsi)
	movq	16(%rdx), %r10
	movq	%r10, -8(%rsi)
	movq	%r9, (%rdx)
	movq	%rdi, 8(%rdx)
	movb	%cl, 16(%rdx)
	movl	%eax, 20(%rdx)
	movq	8(%r15), %rcx
.L303:
	addq	$24, %rsi
	jmp	.L302
.L309:
	movq	%rax, %rdx
	cmpq	%rdx, %r14
	jb	.L306
.L318:
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.isra.75
	movq	%r14, %rax
	subq	%r15, %rax
	cmpq	$407, %rax
	jle	.L292
	testq	%rbx, %rbx
	je	.L296
	movq	%r14, %rbp
	jmp	.L297
.L296:
	sarq	$3, %rax
	movabsq	$-6148914691236517205, %r12
	imulq	%rax, %r12
.L308:
	leaq	-2(%r12), %rbx
	sarq	%rbx
	leaq	(%rbx,%rbx,2), %rax
	leaq	(%r15,%rax,8), %rbp
	jmp	.L299
	.p2align 4,,10
	.p2align 3
.L319:
	subq	$1, %rbx
.L299:
	movq	8(%rbp), %rdx
	movq	0(%rbp), %rax
	movq	%rbx, %rsi
	movq	16(%rbp), %rcx
	movq	%r15, %rdi
	subq	$24, %rbp
	movq	%rdx, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	%rcx, 32(%rsp)
	pushq	$0
	.cfi_def_cfa_offset 120
	pushq	%rcx
	.cfi_def_cfa_offset 128
	pushq	%rdx
	.cfi_def_cfa_offset 136
	movq	%r12, %rdx
	pushq	%rax
	.cfi_def_cfa_offset 144
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_
	addq	$32, %rsp
	.cfi_def_cfa_offset 112
	testq	%rbx, %rbx
	jne	.L319
	leaq	-24(%r13), %rbx
	movabsq	$-6148914691236517205, %r12
.L300:
	movq	(%r15), %rdx
	movq	(%rbx), %rax
	movq	%rbx, %rbp
	movq	8(%rbx), %rcx
	subq	%r15, %rbp
	movq	16(%rbx), %rsi
	movq	%r15, %rdi
	subq	$24, %rbx
	movq	%rdx, 24(%rbx)
	movq	8(%r15), %rdx
	movq	%rsi, 32(%rsp)
	movq	%rax, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 32(%rbx)
	movq	16(%r15), %rdx
	movq	%rdx, 40(%rbx)
	movq	%rbp, %rdx
	pushq	$0
	.cfi_def_cfa_offset 120
	sarq	$3, %rdx
	pushq	%rsi
	.cfi_def_cfa_offset 128
	pushq	%rcx
	.cfi_def_cfa_offset 136
	imulq	%r12, %rdx
	pushq	%rax
	.cfi_def_cfa_offset 144
	xorl	%esi, %esi
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_
	addq	$32, %rsp
	.cfi_def_cfa_offset 112
	cmpq	$47, %rbp
	jg	.L300
.L292:
	addq	$56, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
.L315:
	ret
.L317:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	sarq	$3, %rax
	movabsq	$-6148914691236517205, %r12
	movq	%rsi, %r13
	imulq	%rax, %r12
	jmp	.L308
	.cfi_endproc
.LFE8943:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.isra.75, .-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.isra.75
	.section	.text.unlikely
.LCOLDE28:
	.text
.LHOTE28:
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"ASSERT error at line %d: (v = (char *)mmap(0, ALLOC_SIZE * n, PROT_READ | PROT_WRITE, ALLOC_FLAG, -1, 0)) != MAP_FAILED"
	.section	.rodata.str1.1
.LC30:
	.string	"chunk "
.LC31:
	.string	": "
.LC32:
	.string	"pages"
.LC33:
	.string	"return from chunk "
.LC34:
	.string	" ("
.LC35:
	.string	" / "
.LC36:
	.string	" pages)"
	.section	.text.unlikely
.LCOLDB37:
	.text
.LHOTB37:
	.p2align 4,,15
	.globl	_Z28get_contiguous_aligned_pagesiii
	.type	_Z28get_contiguous_aligned_pagesiii, @function
_Z28get_contiguous_aligned_pagesiii:
.LFB8246:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA8246
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	sall	$21, %edx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	movl	%edx, %r14d
	pushq	%rbx
	movl	%ecx, %r12d
	subl	$1, %r14d
	movslq	%r14d, %r14
	subq	$40, %rsp
	.cfi_offset 3, -56
	movq	%rdi, -64(%rbp)
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	movl	$_Z6chunksB5cxx11, %edi
	movl	%esi, -56(%rbp)
	call	_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv
	movq	pool(%rip), %rbx
	movslq	%r12d, %rsi
	movq	$_Z6chunksB5cxx11, _Z6chunksB5cxx11(%rip)
	testq	%rsi, %rsi
	movq	$_Z6chunksB5cxx11, _Z6chunksB5cxx11+8(%rip)
	movq	$0, _Z6chunksB5cxx11+16(%rip)
	movq	%rbx, pool+8(%rip)
	jne	.L400
	testl	%r12d, %r12d
	jle	.L331
.L362:
	leal	-1(%r12), %eax
	xorl	%r15d, %r15d
	leaq	(%rax,%rax,2), %r13
	salq	$3, %r13
	jmp	.L325
	.p2align 4,,10
	.p2align 3
.L402:
	addq	$24, %rax
	movq	%rax, %r15
.L325:
	addq	%r15, %rbx
	xorl	%r9d, %r9d
	xorl	%edi, %edi
	movl	20(%rbx), %esi
	movl	$-1, %r8d
	movl	$262178, %ecx
	movl	$3, %edx
	sall	$21, %esi
	movslq	%esi, %rsi
	call	mmap
	cmpq	$-1, %rax
	movq	%rax, (%rbx)
	je	.L401
	movl	20(%rbx), %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	sall	$21, %edx
	movslq	%edx, %rdx
	call	memset
	movq	(%rbx), %rdi
.LEHB0:
	call	_Z3v2pPv
	cmpq	%r15, %r13
	movq	%rax, 8(%rbx)
	movq	%r15, %rax
	movq	pool(%rip), %rbx
	jne	.L402
.L322:
	movq	pool+8(%rip), %rax
	cmpq	%rbx, %rax
	movq	%rax, %r15
	je	.L327
	movq	%rax, %r13
	movabsq	$-6148914691236517205, %rax
	movq	%r15, %rsi
	subq	%rbx, %r13
	movq	%rbx, %rdi
	movq	%r13, %rdx
	sarq	$3, %rdx
	imulq	%rdx, %rax
	movl	$63, %edx
	bsrq	%rax, %rax
	xorq	$63, %rax
	cltq
	subq	%rax, %rdx
	addq	%rdx, %rdx
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.isra.75
	cmpq	$407, %r13
	jle	.L328
	subq	$8, %rsp
	leaq	384(%rbx), %r13
	movq	%rbx, %rdi
	pushq	$0
	movq	%r13, %rsi
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_
	cmpq	%r13, %r15
	popq	%rdi
	popq	%r8
	je	.L327
	movq	%r13, %rbx
.L330:
	movq	%rbx, %rdi
	addq	$24, %rbx
	call	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.isra.50
	cmpq	%rbx, %r15
	jne	.L330
.L327:
	testl	%r12d, %r12d
	jle	.L331
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L360:
	movl	$40, %edi
	call	_Znwm
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movl	$_Z6chunksB5cxx11, %esi
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	%rax, %rdi
	movq	$0, 32(%rax)
	call	_ZNSt8__detail15_List_node_base7_M_hookEPS0_
	movslq	%ebx, %rax
	movq	_Z6chunksB5cxx11+8(%rip), %rdx
	addq	$1, _Z6chunksB5cxx11+16(%rip)
	leaq	(%rax,%rax,2), %r13
	salq	$3, %r13
	movq	24(%rdx), %rax
	movq	%r13, %rsi
	addq	pool(%rip), %rsi
	cmpq	32(%rdx), %rax
	je	.L332
	testq	%rax, %rax
	je	.L333
	movq	(%rsi), %rcx
	movq	%rcx, (%rax)
	movq	8(%rsi), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rsi), %rcx
	movq	%rcx, 16(%rax)
.L333:
	addq	$24, %rax
	movq	%rax, 24(%rdx)
.L334:
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	jle	.L331
	movq	pool(%rip), %rsi
	leaq	24(%r13), %rax
	movq	%rax, %r15
	movq	32(%rsi,%r13), %rax
	subq	8(%rsi,%r13), %rax
	cmpq	$2097152, %rax
	jne	.L360
	.p2align 4,,10
	.p2align 3
.L336:
	movq	_Z6chunksB5cxx11+8(%rip), %rdi
	addl	$1, %ebx
	addq	%r15, %rsi
	movq	24(%rdi), %rax
	cmpq	32(%rdi), %rax
	je	.L403
	testq	%rax, %rax
	je	.L338
	movq	(%rsi), %rdx
	movq	%rdx, (%rax)
	movq	8(%rsi), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rsi), %rdx
	movq	%rdx, 16(%rax)
.L338:
	addq	$24, %rax
	movq	%rax, 24(%rdi)
.L339:
	cmpl	%ebx, %r12d
	je	.L331
	movq	pool(%rip), %rsi
	leaq	24(%r15), %rdx
	movq	8(%rsi,%rdx), %rax
	subq	8(%rsi,%r15), %rax
	cmpq	$2097152, %rax
	jne	.L360
	movq	%rdx, %r15
	jmp	.L336
	.p2align 4,,10
	.p2align 3
.L331:
	movq	_Z6chunksB5cxx11(%rip), %rbx
	cmpq	$_Z6chunksB5cxx11, %rbx
	je	.L320
	movl	$0, -52(%rbp)
	movabsq	$-6148914691236517205, %r12
	jmp	.L343
	.p2align 4,,10
	.p2align 3
.L406:
	movsbl	67(%r15), %esi
.L342:
	movq	%r13, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movq	(%rbx), %rbx
	cmpq	$_Z6chunksB5cxx11, %rbx
	je	.L404
	.p2align 4,,10
	.p2align 3
.L343:
	movq	24(%rbx), %r13
	subq	16(%rbx), %r13
	movl	$6, %edx
	addl	$1, -52(%rbp)
	movl	$.LC30, %esi
	movl	$_ZSt4cout, %edi
	movl	-52(%rbp), %r15d
	sarq	$3, %r13
	imulq	%r12, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r15d, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$2, %edx
	movl	$.LC31, %esi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	_ZNSo9_M_insertImEERSoT_
	movl	$5, %edx
	movl	$.LC32, %esi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	0(%r13), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %r15
	testq	%r15, %r15
	je	.L405
	cmpb	$0, 56(%r15)
	jne	.L406
	movq	%r15, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r15), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L342
	movq	%r15, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L342
.L408:
	movl	$0, -52(%rbp)
.L346:
	movl	$18, %edx
	movl	$.LC33, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	-68(%rbp), %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$2, %edx
	movl	$.LC34, %esi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	-56(%rbp), %esi
	movq	%r14, %rdi
	call	_ZNSolsEi
	movl	$3, %edx
	movl	$.LC35, %esi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	_ZNSo9_M_insertImEERSoT_
	movl	$7, %edx
	movl	$.LC36, %esi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %r12
	testq	%r12, %r12
	je	.L407
	cmpb	$0, 56(%r12)
	je	.L350
	movsbl	67(%r12), %esi
.L351:
	movq	%r14, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	addq	16(%r13), %rbx
	leaq	(%r15,%r15,2), %rax
	subq	$8, %rsp
	movq	-64(%rbp), %rdi
	pushq	$0
	leaq	(%rbx,%rax,8), %rdx
	movq	%rbx, %rsi
	.cfi_escape 0x2e,0x10
	call	_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag
	movl	-52(%rbp), %ebx
	popq	%rax
	popq	%rdx
	movl	-56(%rbp), %edx
	addl	%ebx, %edx
	cmpl	%ebx, %edx
	jle	.L320
	subl	%ebx, %edx
	movslq	%ebx, %rcx
	subl	$1, %edx
	leaq	(%rcx,%rcx,2), %rax
	leaq	1(%rcx,%rdx), %rdx
	salq	$3, %rax
	leaq	(%rdx,%rdx,2), %rcx
	salq	$3, %rcx
.L353:
	movq	16(%r13), %rdx
	movq	(%rdx,%rax), %rdx
	testq	%rdx, %rdx
	je	.L352
	movb	$33, (%rdx)
.L352:
	addq	$24, %rax
	cmpq	%rax, %rcx
	jne	.L353
.L320:
	movq	-64(%rbp), %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L403:
	.cfi_restore_state
	addq	$16, %rdi
	.cfi_escape 0x2e,0
	call	_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_
	jmp	.L339
.L332:
	leaq	16(%rdx), %rdi
	call	_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_
	jmp	.L334
.L404:
	movq	_Z6chunksB5cxx11(%rip), %r13
	cmpq	$_Z6chunksB5cxx11, %r13
	je	.L320
	movslq	-56(%rbp), %r15
	movl	$0, -68(%rbp)
	movabsq	$-6148914691236517205, %rdi
.L355:
	movq	16(%r13), %rcx
	movq	24(%r13), %r12
	subq	%rcx, %r12
	sarq	$3, %r12
	imulq	%rdi, %r12
	cmpq	%r12, %r15
	ja	.L345
	movq	%r12, %rsi
	addl	$1, -68(%rbp)
	subq	%r15, %rsi
	je	.L345
	movq	%r14, %rbx
	andq	8(%rcx), %rbx
	je	.L408
	subq	$1, %rsi
	movl	$24, %ebx
	xorl	%eax, %eax
	movl	$0, -52(%rbp)
	jmp	.L348
	.p2align 4,,10
	.p2align 3
.L354:
	addq	$1, %rax
	testq	%r14, 8(%rcx,%rbx)
	leaq	24(%rbx), %rdx
	je	.L346
	movq	%rdx, %rbx
.L348:
	addl	$1, -52(%rbp)
	cmpq	%rsi, %rax
	jne	.L354
.L345:
	movq	0(%r13), %r13
	cmpq	$_Z6chunksB5cxx11, %r13
	jne	.L355
	jmp	.L320
.L328:
	subq	$8, %rsp
	movq	%r15, %rsi
	movq	%rbx, %rdi
	pushq	$0
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_
	popq	%rcx
	popq	%rsi
	jmp	.L327
.L350:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L351
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L351
.L400:
	movl	$pool, %edi
	call	_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm
	testl	%r12d, %r12d
	movq	pool(%rip), %rbx
	jg	.L362
	jmp	.L322
.L407:
	call	_ZSt16__throw_bad_castv
.L401:
	movq	stderr(%rip), %rdi
	movl	$64, %edx
	movl	$.LC29, %esi
	xorl	%eax, %eax
	call	fprintf
	movl	$.LC7, %edi
	call	perror
.LEHE0:
	movl	$-1, %edi
	call	exit
.L368:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.L357
	call	_ZdlPv
.L357:
	movq	%rbx, %rdi
.LEHB1:
	call	_Unwind_Resume
.LEHE1:
.L405:
.LEHB2:
	call	_ZSt16__throw_bad_castv
.LEHE2:
	.cfi_endproc
.LFE8246:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8246:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8246-.LLSDACSB8246
.LLSDACSB8246:
	.uleb128 .LEHB0-.LFB8246
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L368-.LFB8246
	.uleb128 0
	.uleb128 .LEHB1-.LFB8246
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB8246
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L368-.LFB8246
	.uleb128 0
.LLSDACSE8246:
	.text
	.size	_Z28get_contiguous_aligned_pagesiii, .-_Z28get_contiguous_aligned_pagesiii
	.section	.text.unlikely
.LCOLDE37:
	.text
.LHOTE37:
	.section	.rodata.str1.1
.LC38:
	.string	"/proc/self/pagemap"
	.section	.rodata.str1.8
	.align 8
.LC39:
	.string	"ASSERT error at line %d: (fd = open(\"/proc/self/pagemap\", O_RDONLY)) > 0"
	.section	.rodata.str1.1
.LC40:
	.string	"HugePage v=0x"
.LC41:
	.string	" p=0x"
.LC42:
	.string	"HugePage "
.LC43:
	.string	"pages:"
.LC44:
	.string	"\t v=0x"
.LC45:
	.string	"Min Latency for bit #"
.LC46:
	.string	" = "
	.section	.text.unlikely
.LCOLDB47:
	.section	.text.startup,"ax",@progbits
.LHOTB47:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB8251:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	xorl	%esi, %esi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	xorl	%eax, %eax
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	$.LC38, %edi
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	call	open
	testl	%eax, %eax
	movl	%eax, fd(%rip)
	jle	.L461
	movq	%rsp, %rdi
	movl	$128, %ecx
	movl	$32, %edx
	movl	$32, %esi
	call	_Z28get_contiguous_aligned_pagesiii
	movq	(%rsp), %rax
	movq	pages(%rip), %rdi
	movq	$0, (%rsp)
	movq	%rax, pages(%rip)
	movq	8(%rsp), %rax
	testq	%rdi, %rdi
	movq	$0, 8(%rsp)
	movq	%rax, pages+8(%rip)
	movq	16(%rsp), %rax
	movq	$0, 16(%rsp)
	movq	%rax, pages+16(%rip)
	je	.L411
	call	_ZdlPv
.L411:
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L412
	call	_ZdlPv
.L412:
	xorl	%edi, %edi
	call	_Z7cleanupb
	movq	pages+8(%rip), %r14
	movq	pages(%rip), %r13
	cmpq	%r14, %r13
	je	.L429
	.p2align 4,,10
	.p2align 3
.L447:
	movl	20(%r13), %ebp
	movq	0(%r13), %rbx
	cmpl	$1, %ebp
	je	.L462
	movl	$9, %edx
	movl	$.LC42, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$6, %edx
	movq	%rax, %r12
	movl	$.LC43, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %r15
	testq	%r15, %r15
	je	.L420
	cmpb	$0, 56(%r15)
	je	.L421
	movsbl	67(%r15), %esi
.L422:
	movq	%r12, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	testl	%ebp, %ebp
	jle	.L419
	leal	-1(%rbp), %r12d
	addq	$1, %r12
	salq	$21, %r12
	addq	%rbx, %r12
	jmp	.L427
	.p2align 4,,10
	.p2align 3
.L463:
	movsbl	67(%rbp), %esi
.L425:
	movq	%r15, %rdi
	addq	$2097152, %rbx
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	cmpq	%r12, %rbx
	je	.L419
.L427:
	movq	%rbx, %rdi
	call	_Z3v2pPv
	movl	$6, %edx
	movl	$.LC44, %esi
	movl	$_ZSt4cout, %edi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	%rbx, %rsi
	movl	$_ZSt4cout, %edi
	movq	-24(%rax), %rdx
	movl	_ZSt4cout+24(%rdx), %eax
	andl	$-75, %eax
	orl	$8, %eax
	movl	%eax, _ZSt4cout+24(%rdx)
	call	_ZNSo9_M_insertImEERSoT_
	movl	$5, %edx
	movq	%rax, %r15
	movl	$.LC41, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbp, %rsi
	movq	%r15, %rdi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %r15
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbp
	testq	%rbp, %rbp
	je	.L420
	cmpb	$0, 56(%rbp)
	jne	.L463
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L425
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L425
	.p2align 4,,10
	.p2align 3
.L462:
	movl	$13, %edx
	movl	$.LC40, %esi
	movl	$_ZSt4cout, %edi
	movq	8(%r13), %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	%rbx, %rsi
	movl	$_ZSt4cout, %edi
	movq	-24(%rax), %rdx
	movl	_ZSt4cout+24(%rdx), %eax
	andl	$-75, %eax
	orl	$8, %eax
	movl	%eax, _ZSt4cout+24(%rdx)
	call	_ZNSo9_M_insertImEERSoT_
	movl	$5, %edx
	movq	%rax, %rbx
	movl	$.LC41, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L420
	cmpb	$0, 56(%rbx)
	je	.L417
	movsbl	67(%rbx), %esi
.L418:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.L419:
	addq	$24, %r13
	cmpq	%r13, %r14
	jne	.L447
.L429:
	movl	$25, %esi
	movl	$100, %edi
	movl	$2, %r12d
	call	_Z7genseedii
.L414:
	xorl	%ebx, %ebx
	jmp	.L432
	.p2align 4,,10
	.p2align 3
.L465:
	movsbl	67(%rbp), %esi
.L431:
	movq	%r13, %rdi
	addl	$1, %ebx
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	cmpl	$26, %ebx
	je	.L464
.L432:
	movl	$-1, %edx
	movl	%ebx, %edi
	movl	%edx, %esi
	call	_Z7latencyiii
	movq	%rax, %rbp
	movq	_ZSt4cout(%rip), %rax
	movl	$.LC45, %esi
	movl	$_ZSt4cout, %edi
	movq	-24(%rax), %rdx
	movl	_ZSt4cout+24(%rdx), %eax
	andl	$-75, %eax
	orl	$2, %eax
	movl	%eax, _ZSt4cout+24(%rdx)
	movl	$21, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebx, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$3, %edx
	movq	%rax, %r13
	movl	$.LC46, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %rbp
	testq	%rbp, %rbp
	je	.L420
	cmpb	$0, 56(%rbp)
	jne	.L465
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L431
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L431
	.p2align 4,,10
	.p2align 3
.L421:
	movq	%r15, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r15), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L422
	movq	%r15, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L422
	.p2align 4,,10
	.p2align 3
.L464:
	subl	$1, %r12d
	jne	.L414
	movl	$1, %edi
	call	_Z7cleanupb
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L417:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L418
	movl	$10, %esi
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L418
.L420:
	call	_ZSt16__throw_bad_castv
.L461:
	movq	stderr(%rip), %rdi
	movl	$225, %edx
	movl	$.LC39, %esi
	xorl	%eax, %eax
	call	fprintf
	movl	$.LC7, %edi
	call	perror
	orl	$-1, %edi
	call	exit
	.cfi_endproc
.LFE8251:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE47:
	.section	.text.startup
.LHOTE47:
	.section	.text.unlikely
.LCOLDB48:
	.section	.text.startup
.LHOTB48:
	.p2align 4,,15
	.type	_GLOBAL__sub_I_clock_overhead, @function
_GLOBAL__sub_I_clock_overhead:
.LFB8867:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
	movl	$__dso_handle, %edx
	movl	$_Z6chunksB5cxx11, %esi
	movl	$_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED1Ev, %edi
	movq	$0, _Z6chunksB5cxx11+16(%rip)
	movq	$_Z6chunksB5cxx11, _Z6chunksB5cxx11(%rip)
	movq	$_Z6chunksB5cxx11, _Z6chunksB5cxx11+8(%rip)
	call	__cxa_atexit
	movl	$__dso_handle, %edx
	movl	$pages, %esi
	movl	$_ZNSt6vectorI8HugePageSaIS0_EED1Ev, %edi
	movq	$0, pages(%rip)
	movq	$0, pages+8(%rip)
	movq	$0, pages+16(%rip)
	call	__cxa_atexit
	movl	$__dso_handle, %edx
	movl	$pool, %esi
	movl	$_ZNSt6vectorI8HugePageSaIS0_EED1Ev, %edi
	movq	$0, pool(%rip)
	movq	$0, pool+8(%rip)
	movq	$0, pool+16(%rip)
	call	__cxa_atexit
	movl	$0, seed+8(%rip)
	movq	$0, seed+16(%rip)
	movl	$__dso_handle, %edx
	movq	$0, seed+40(%rip)
	movq	$seed+8, seed+24(%rip)
	movl	$seed, %esi
	movq	$seed+8, seed+32(%rip)
	movl	$_ZNSt3setImSt4lessImESaImEED1Ev, %edi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit
	.cfi_endproc
.LFE8867:
	.size	_GLOBAL__sub_I_clock_overhead, .-_GLOBAL__sub_I_clock_overhead
	.section	.text.unlikely
.LCOLDE48:
	.section	.text.startup
.LHOTE48:
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_clock_overhead
	.globl	seed
	.bss
	.align 32
	.type	seed, @object
	.size	seed, 48
seed:
	.zero	48
	.globl	pool
	.align 16
	.type	pool, @object
	.size	pool, 24
pool:
	.zero	24
	.globl	pages
	.align 16
	.type	pages, @object
	.size	pages, 24
pages:
	.zero	24
	.globl	_Z6chunksB5cxx11
	.align 16
	.type	_Z6chunksB5cxx11, @object
	.size	_Z6chunksB5cxx11, 24
_Z6chunksB5cxx11:
	.zero	24
	.globl	fd
	.align 4
	.type	fd, @object
	.size	fd, 4
fd:
	.zero	4
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 5.1.1 20150618 (Red Hat 5.1.1-4)"
	.section	.note.GNU-stack,"",@progbits
