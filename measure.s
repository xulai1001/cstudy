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
.LFB1210:
	.cfi_startproc
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1210:
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
.LFB8420:
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
.LFE8420:
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
	.type	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.isra.49, @function
_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.isra.49:
.LFB8996:
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
.LFE8996:
	.size	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.isra.49, .-_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.isra.49
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
.LFB8318:
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
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
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
	movq	%r12, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$2, %rax
	movq	72(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L16
	addq	$80, %rsp
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
.L16:
	.cfi_restore_state
	call	__stack_chk_fail
	.cfi_endproc
.LFE8318:
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
.LFB8319:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$10, %esi
	.p2align 4,,10
	.p2align 3
.L18:
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
	jne	.L18
	movl	$1000, %r8d
	xorl	%edi, %edi
	.p2align 4,,10
	.p2align 3
.L20:
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
	jne	.L20
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
.LFE8319:
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
.LFB8320:
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
.LFE8320:
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
.LFB8321:
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
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	call	lseek
	cmpq	$-1, %rax
	je	.L31
	movl	fd(%rip), %edi
	movl	$8, %edx
	movq	%rsp, %rsi
	call	read
	cmpq	$8, %rax
	jne	.L32
	movabsq	$36028797018963967, %rax
	andq	(%rsp), %rax
	salq	$12, %rax
	addq	%rbx, %rax
	movq	8(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L33
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L31:
	.cfi_restore_state
	movq	stderr(%rip), %rdi
	movq	%rax, %rbp
	movl	$42, %ecx
	movl	$.LC6, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
	movl	$.LC7, %edi
	call	perror
	movl	%ebp, %edi
	call	exit
.L33:
	call	__stack_chk_fail
.L32:
	movq	stderr(%rip), %rdi
	movl	$43, %ecx
	movl	$.LC8, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
	movl	$.LC7, %edi
	call	perror
	orl	$-1, %edi
	call	exit
	.cfi_endproc
.LFE8321:
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
.LFB8332:
	.cfi_startproc
	movq	pages(%rip), %rdx
	movq	pages+8(%rip), %rcx
	movq	%rdi, %rsi
	andl	$2097151, %esi
	cmpq	%rcx, %rdx
	je	.L35
	subq	%rsi, %rdi
	cmpq	%rdi, 8(%rdx)
	movq	(%rdx), %rax
	je	.L36
	addq	$24, %rdx
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L39:
	movq	(%rdx), %rax
	addq	$24, %rdx
	cmpq	%rdi, -16(%rdx)
	je	.L36
.L38:
	cmpq	%rdx, %rcx
	jne	.L39
.L35:
	rep ret
	.p2align 4,,10
	.p2align 3
.L36:
	addq	%rsi, %rax
	ret
	.cfi_endproc
.LFE8332:
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
.LFB8333:
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
	jne	.L46
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L58:
	cmpb	$33, (%rdi)
	jne	.L45
.L44:
	addq	$24, %rbx
	cmpq	%rbx, %rbp
	je	.L43
.L46:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L44
	testb	%r12b, %r12b
	je	.L58
.L45:
	movl	20(%rbx), %esi
	addq	$24, %rbx
	addl	$1, %r13d
	sall	$21, %esi
	movslq	%esi, %rsi
	call	munmap
	movq	$0, -24(%rbx)
	movq	$0, -16(%rbx)
	cmpq	%rbx, %rbp
	jne	.L46
.L43:
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
	je	.L59
	cmpb	$0, 56(%rbp)
	je	.L48
	movsbl	67(%rbp), %esi
.L49:
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
.L48:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L49
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L49
.L59:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE8333:
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
.LFB8335:
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
	movl	%r8d, %r13d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ecx
	sall	%cl, %r13d
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	pages(%rip), %rax
	testl	%esi, %esi
	movq	8(%rax), %r12
	js	.L89
	movl	%esi, %ecx
	sall	%cl, %r8d
	orl	%r8d, %r13d
.L89:
	testl	%edx, %edx
	movslq	%r13d, %r13
	js	.L63
	movl	%edx, %ecx
	movl	$1, %esi
	sall	%cl, %esi
	movslq	%esi, %rdx
	orq	%rdx, %r13
.L63:
	movq	seed+24(%rip), %rdi
	cmpq	$seed+8, %rdi
	je	.L81
	movq	%r13, %rbx
	movl	$9999, %r15d
	notq	%rbx
	movq	%rbx, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L79:
	movq	32(%rdi), %rsi
	movq	8(%rsp), %r8
	movq	pages+8(%rip), %rcx
	andq	%rsi, %r8
	addq	%r12, %r8
	movq	%r8, %rbx
	andl	$2097151, %ebx
	cmpq	%rax, %rcx
	je	.L65
	movq	8(%rax), %r11
	subq	%rbx, %r8
	movq	(%rax), %r9
	leaq	24(%rax), %rdx
	cmpq	%r8, %r11
	jne	.L68
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L70:
	movq	(%rdx), %r10
	addq	$24, %rdx
	cmpq	%r8, -16(%rdx)
	je	.L66
.L68:
	cmpq	%rdx, %rcx
	jne	.L70
.L90:
	orq	%r13, %rsi
	addq	$24, %rax
	movq	%rbp, 24(%rsp)
	leaq	(%rsi,%r12), %rdx
	movq	%rdx, %rsi
	andl	$2097151, %esi
	subq	%rsi, %rdx
	cmpq	%r11, %rdx
	jne	.L73
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L75:
	movq	(%rax), %r9
	addq	$24, %rax
	cmpq	%rdx, -16(%rax)
	je	.L71
.L73:
	cmpq	%rax, %rcx
	jne	.L75
.L74:
	movq	%r14, 32(%rsp)
#APP
# 199 "measure.cpp" 1
	cpuid 
    rdtsc 
    shlq $32, %rdx 
    orq %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %rsi
	movq	%r14, %rcx
	movq	%rbp, %rdx
	movl	$200, %eax
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L94:
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rcx
.L77:
	subq	$1, (%rdx)
	subq	$1, (%rcx)
#APP
# 212 "measure.cpp" 1
	clflush 24(%rsp) 
	clflush 32(%rsp) 
	mfence
# 0 "" 2
#NO_APP
	subl	$1, %eax
	jne	.L94
#APP
# 214 "measure.cpp" 1
	rdtscp 
    shlq $32, %rdx 
    orq %rdx, %rax 
    movq %rax, %r8 
    cpuid
# 0 "" 2
#NO_APP
	movq	%r8, %rcx
	movl	$1374389535, %eax
	subq	%rsi, %rcx
	imull	%ecx
	sarl	$31, %ecx
	sarl	$6, %edx
	subl	%ecx, %edx
	cmpl	%edx, %r15d
	cmovg	%edx, %r15d
	call	_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base
	cmpq	$seed+8, %rax
	movq	%rax, %rdi
	je	.L78
	movq	pages(%rip), %rax
	jmp	.L79
.L71:
	leaq	(%r9,%rsi), %r14
	jmp	.L74
.L93:
	movq	%r9, %r10
.L66:
	leaq	(%r10,%rbx), %rbp
	jmp	.L90
.L78:
	movslq	%r15d, %rax
.L64:
	movq	40(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L95
	addq	$56, %rsp
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
.L65:
	.cfi_restore_state
	movq	%rbp, 24(%rsp)
	jmp	.L74
.L81:
	movl	$9999, %eax
	jmp	.L64
.L95:
	call	__stack_chk_fail
	.cfi_endproc
.LFE8335:
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
.LFB8560:
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
	je	.L96
	movq	%rdi, %r12
	.p2align 4,,10
	.p2align 3
.L103:
	movq	16(%rbx), %rdi
	movq	(%rbx), %rbp
	testq	%rdi, %rdi
	je	.L98
	call	_ZdlPv
.L98:
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	call	_ZdlPv
	cmpq	%r12, %rbp
	jne	.L103
.L96:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8560:
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
.LFB8941:
	.cfi_startproc
	jmp	_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv
	.cfi_endproc
.LFE8941:
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
.LFB8563:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L146
	movq	8(%rdi), %r8
	movq	16(%rdi), %rax
	movabsq	$-6148914691236517205, %rdx
	subq	%r8, %rax
	sarq	$3, %rax
	imulq	%rdx, %rax
	cmpq	%rax, %rsi
	ja	.L109
	movq	%rsi, %rdx
	movq	%r8, %rax
	.p2align 4,,10
	.p2align 3
.L111:
	testq	%rax, %rax
	je	.L110
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movl	$1, 20(%rax)
.L110:
	addq	$24, %rax
	subq	$1, %rdx
	jne	.L111
	leaq	(%rsi,%rsi,2), %rax
	leaq	(%r8,%rax,8), %rax
	movq	%rax, 8(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L109:
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
	ja	.L147
	cmpq	%rdx, %rsi
	movq	%rdx, %rax
	cmovnb	%rsi, %rax
	addq	%rax, %rdx
	jc	.L125
	cmpq	%rcx, %rdx
	ja	.L125
	leaq	(%rdx,%rdx,2), %r13
	salq	$3, %r13
	testq	%rdx, %rdx
	jne	.L122
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L125:
	movq	$-16, %r13
.L122:
	movq	%r13, %rdi
	call	_Znwm
	movq	8(%rbp), %r8
	movq	0(%rbp), %rdi
	movq	%rax, %r12
	addq	%rax, %r13
.L121:
	cmpq	%rdi, %r8
	je	.L123
	movq	%r12, %rcx
	movq	%rdi, %rdx
	.p2align 4,,10
	.p2align 3
.L117:
	testq	%rcx, %rcx
	je	.L116
	movq	(%rdx), %rsi
	movq	%rsi, (%rcx)
	movq	8(%rdx), %rsi
	movq	%rsi, 8(%rcx)
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rcx)
.L116:
	addq	$24, %rdx
	addq	$24, %rcx
	cmpq	%rdx, %r8
	jne	.L117
	leaq	24(%rdi), %rax
	subq	%rax, %r8
	shrq	$3, %r8
	leaq	24(%r12,%r8,8), %rax
.L115:
	movq	%rax, %rdx
	movq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L119:
	testq	%rdx, %rdx
	je	.L118
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movb	$0, 16(%rdx)
	movl	$1, 20(%rdx)
.L118:
	addq	$24, %rdx
	subq	$1, %rcx
	jne	.L119
	leaq	(%rbx,%rbx,2), %rdx
	testq	%rdi, %rdi
	leaq	(%rax,%rdx,8), %rbx
	je	.L120
	call	_ZdlPv
.L120:
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
.L146:
	rep ret
.L123:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movq	%r12, %rax
	jmp	.L115
.L147:
	movl	$.LC17, %edi
	call	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE8563:
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
.LFB8573:
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
	je	.L157
	leaq	(%rax,%rax), %rcx
	cmpq	%rcx, %rax
	jbe	.L172
.L158:
	movq	$-16, %r12
.L149:
	movq	%r12, %rdi
	call	_Znwm
	movq	8(%rbx), %r8
	movq	(%rbx), %rdi
	leaq	24(%rax), %r14
	movq	%rax, %rbp
	addq	%rax, %r12
	movq	%r8, %rdx
	subq	%rdi, %rdx
.L156:
	addq	%rbp, %rdx
	je	.L151
	movq	0(%r13), %rax
	movq	%rax, (%rdx)
	movq	8(%r13), %rax
	movq	%rax, 8(%rdx)
	movq	16(%r13), %rax
	movq	%rax, 16(%rdx)
.L151:
	cmpq	%rdi, %r8
	je	.L152
	movq	%rdi, %rdx
	movq	%rbp, %rcx
	.p2align 4,,10
	.p2align 3
.L154:
	testq	%rcx, %rcx
	je	.L153
	movq	(%rdx), %rsi
	movq	%rsi, (%rcx)
	movq	8(%rdx), %rsi
	movq	%rsi, 8(%rcx)
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rcx)
.L153:
	addq	$24, %rdx
	addq	$24, %rcx
	cmpq	%r8, %rdx
	jne	.L154
	leaq	24(%rdi), %rax
	subq	%rax, %rdx
	shrq	$3, %rdx
	leaq	48(%rbp,%rdx,8), %r14
.L152:
	testq	%rdi, %rdi
	je	.L155
	call	_ZdlPv
.L155:
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
.L157:
	.cfi_restore_state
	movl	$24, %r12d
	jmp	.L149
.L172:
	movabsq	$768614336404564650, %rsi
	cmpq	%rsi, %rcx
	ja	.L158
	testq	%rcx, %rcx
	jne	.L173
	movl	$24, %r14d
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	jmp	.L156
.L173:
	leaq	(%rcx,%rax,4), %r12
	salq	$3, %r12
	jmp	.L149
	.cfi_endproc
.LFE8573:
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
.LFB8584:
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
	je	.L185
	movq	(%rsi), %rcx
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L191:
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.L177
.L192:
	movq	%rax, %rbx
.L176:
	movq	32(%rbx), %rdx
	cmpq	%rcx, %rdx
	ja	.L191
	movq	24(%rbx), %rax
	testq	%rax, %rax
	jne	.L192
.L177:
	cmpq	%rcx, %rdx
	movq	%rbx, %rax
	ja	.L175
	cmpq	%rcx, %rdx
	jb	.L181
.L189:
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
.L185:
	.cfi_restore_state
	movq	%r12, %rbx
	.p2align 4,,10
	.p2align 3
.L175:
	cmpq	%rbx, 24(%r13)
	je	.L181
	movq	%rbx, %rdi
	call	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	movq	(%r14), %rcx
	movq	32(%rax), %rdx
	cmpq	%rcx, %rdx
	jnb	.L189
.L181:
	cmpq	%rbx, %r12
	je	.L187
	xorl	%r15d, %r15d
	movq	32(%rbx), %rax
	cmpq	%rax, (%r14)
	setb	%r15b
.L182:
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
.L187:
	.cfi_restore_state
	movl	$1, %r15d
	jmp	.L182
	.cfi_endproc
.LFE8584:
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
.LFB8658:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L203
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
.L199:
	movq	24(%rbx), %rsi
	movq	%r12, %rdi
	call	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE
	movq	16(%rbx), %rbp
	movq	%rbx, %rdi
	call	_ZdlPv
	testq	%rbp, %rbp
	movq	%rbp, %rbx
	jne	.L199
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 8
.L203:
	rep ret
	.cfi_endproc
.LFE8658:
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
.LFB8944:
	.cfi_startproc
	movq	16(%rdi), %rsi
	jmp	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE
	.cfi_endproc
.LFE8944:
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
.LFB8334:
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
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
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
	jle	.L216
	movl	$1, %ebp
	movl	%r13d, %ecx
	xorl	%r14d, %r14d
	sall	%cl, %ebp
	movq	%rsp, %r12
	.p2align 4,,10
	.p2align 3
.L208:
	call	rand
	cltd
	movq	%r12, %rsi
	movl	$seed, %edi
	idivl	%ebp
	addl	$1, %r14d
	movslq	%edx, %rdx
	movq	%rdx, (%rsp)
	call	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_
	cmpl	%r14d, %ebx
	jne	.L208
	movq	seed+40(%rip), %rax
.L209:
	cmpq	%rbx, %rax
	jnb	.L205
	movl	$1, %ebp
	movl	%r13d, %ecx
	movq	%rsp, %r12
	sall	%cl, %ebp
	.p2align 4,,10
	.p2align 3
.L210:
	call	rand
	cltd
	movq	%r12, %rsi
	movl	$seed, %edi
	idivl	%ebp
	movslq	%edx, %rdx
	movq	%rdx, (%rsp)
	call	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_
	cmpq	%rbx, seed+40(%rip)
	jb	.L210
.L205:
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L217
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
.L216:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L209
.L217:
	call	__stack_chk_fail
	.cfi_endproc
.LFE8334:
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
.LFB8679:
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
	jb	.L253
	movq	8(%rdi), %r9
	movq	%r9, %rbx
	subq	%rcx, %rbx
	movq	%rbx, %rax
	sarq	$3, %rax
	imulq	%rax, %r10
	cmpq	%r10, %r8
	ja	.L230
	testq	%r8, %r8
	jle	.L231
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L232:
	movq	(%rsi,%rax), %rdx
	movq	%rdx, (%rcx,%rax)
	movq	8(%rsi,%rax), %rdx
	movq	%rdx, 8(%rcx,%rax)
	movq	16(%rsi,%rax), %rdx
	movq	%rdx, 16(%rcx,%rax)
	addq	$24, %rax
	cmpq	%rbp, %rax
	jne	.L232
	addq	%rax, %rcx
.L231:
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
.L230:
	.cfi_restore_state
	xorl	%eax, %eax
	testq	%r10, %r10
	leaq	(%rsi,%rbx), %r11
	jle	.L236
	.p2align 4,,10
	.p2align 3
.L249:
	movq	(%rsi,%rax), %r8
	movq	%r8, (%rcx,%rax)
	movq	8(%rsi,%rax), %r8
	movq	%r8, 8(%rcx,%rax)
	movq	16(%rsi,%rax), %r8
	movq	%r8, 16(%rcx,%rax)
	addq	$24, %rax
	cmpq	%rax, %rbx
	jne	.L249
.L236:
	cmpq	%rdx, %r11
	movq	%r9, %rcx
	movq	%r11, %rax
	je	.L235
	.p2align 4,,10
	.p2align 3
.L245:
	testq	%rcx, %rcx
	je	.L238
	movq	(%rax), %rsi
	movq	%rsi, (%rcx)
	movq	8(%rax), %rsi
	movq	%rsi, 8(%rcx)
	movq	16(%rax), %rsi
	movq	%rsi, 16(%rcx)
.L238:
	addq	$24, %rax
	addq	$24, %rcx
	cmpq	%rdx, %rax
	jne	.L245
	addq	$24, %r11
	subq	%r11, %rax
	shrq	$3, %rax
	leaq	24(%r9,%rax,8), %r9
.L235:
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
.L253:
	.cfi_restore_state
	xorl	%r14d, %r14d
	testq	%r8, %r8
	movq	%rdi, %r15
	movq	%rsi, %rbx
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rcx, %rdi
	je	.L221
	movabsq	$768614336404564650, %rax
	cmpq	%rax, %r8
	ja	.L254
	movq	%rbp, %rdi
	call	_Znwm
	movq	(%r15), %rdi
	movq	%rax, %r14
.L221:
	cmpq	%r13, %r12
	movq	%r14, %rsi
	je	.L228
	.p2align 4,,10
	.p2align 3
.L244:
	testq	%rsi, %rsi
	je	.L226
	movq	(%rbx), %r8
	movq	%r8, (%rsi)
	movq	8(%rbx), %r8
	movq	%r8, 8(%rsi)
	movq	16(%rbx), %r8
	movq	%r8, 16(%rsi)
.L226:
	addq	$24, %rbx
	addq	$24, %rsi
	cmpq	%rbx, %r13
	jne	.L244
.L228:
	testq	%rdi, %rdi
	je	.L225
	call	_ZdlPv
.L225:
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
.L254:
	.cfi_restore_state
	call	_ZSt17__throw_bad_allocv
	.cfi_endproc
.LFE8679:
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
.LFB8772:
	.cfi_startproc
	cmpq	%rdi, %rsi
	je	.L271
	leaq	24(%rdi), %rax
	cmpq	%rsi, %rax
	je	.L271
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
.L263:
	movq	8(%r10), %rdi
	cmpq	8(%r11), %rdi
	jnb	.L258
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
	jle	.L261
	.p2align 4,,10
	.p2align 3
.L267:
	movq	(%rax), %rcx
	subq	$24, %rax
	movq	%rcx, 48(%rax)
	movq	32(%rax), %rcx
	movq	%rcx, 56(%rax)
	movq	40(%rax), %rcx
	movq	%rcx, 64(%rax)
	subq	$1, %rdx
	jne	.L267
.L261:
	movq	%r12, (%r11)
	movq	%rdi, 8(%r11)
	movb	%r9b, 16(%r11)
	movl	%esi, 20(%r11)
.L260:
	cmpq	%r8, %rbx
	movq	%r8, %r10
	jne	.L263
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 8
.L271:
	rep ret
	.p2align 4,,10
	.p2align 3
.L258:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	%r10, %rdi
	call	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.isra.49
	leaq	24(%r10), %r8
	jmp	.L260
	.cfi_endproc
.LFE8772:
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
.LFB8838:
	.cfi_startproc
	movq	8(%rsi), %r8
	movq	8(%rdx), %rax
	movq	8(%rcx), %r9
	cmpq	%r8, %rax
	jbe	.L273
	cmpq	%r9, %rax
	jb	.L281
	cmpq	%r9, %r8
	movq	(%rdi), %r8
	jnb	.L280
	movq	8(%rdi), %rsi
.L279:
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
.L273:
	cmpq	%r9, %r8
	movq	(%rdi), %r8
	jb	.L280
	cmpq	%r9, %rax
	movq	8(%rdi), %rsi
	jb	.L279
.L278:
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
.L280:
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
.L281:
	movq	(%rdi), %r8
	movq	8(%rdi), %rsi
	jmp	.L278
	.cfi_endproc
.LFE8838:
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
.LFB8920:
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
	jl	.L296
	jmp	.L303
	.p2align 4,,10
	.p2align 3
.L294:
	movq	%rcx, %r8
.L296:
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
	jl	.L294
	testb	$1, %dl
	jne	.L288
.L284:
	subq	$2, %rdx
	movq	%rdx, %r8
	shrq	$63, %r8
	addq	%r8, %rdx
	sarq	%rdx
	cmpq	%rcx, %rdx
	je	.L304
.L288:
	cmpq	%rsi, %rcx
	movq	16(%rsp), %rbx
	movq	24(%rsp), %r9
	movzbl	32(%rsp), %r11d
	movl	36(%rsp), %r10d
	jle	.L289
	leaq	-1(%rcx), %rdx
	movq	%rdx, %r8
	shrq	$63, %r8
	addq	%r8, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %r8
	cmpq	8(%rdi,%r8,8), %r9
	jbe	.L289
	.p2align 4,,10
	.p2align 3
.L291:
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
	jge	.L289
	leaq	-1(%rdx), %rcx
	movq	%rcx, %r8
	shrq	$63, %r8
	addq	%rcx, %r8
	movq	%rdx, %rcx
	sarq	%r8
	leaq	(%r8,%r8,2), %rdx
	cmpq	8(%rdi,%rdx,8), %r9
	jbe	.L289
	movq	%r8, %rdx
	jmp	.L291
.L303:
	leaq	(%rsi,%rsi,2), %rax
	testb	$1, %dl
	movq	%rsi, %rcx
	leaq	(%rdi,%rax,8), %rax
	je	.L284
	movzbl	32(%rsp), %r11d
	movq	16(%rsp), %rbx
	movq	24(%rsp), %r9
	movl	36(%rsp), %r10d
.L289:
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
.L304:
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
	jmp	.L288
	.cfi_endproc
.LFE8920:
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
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.isra.74, @function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.isra.74:
.LFB9021:
	.cfi_startproc
	movq	%rsi, %rax
	subq	%rdi, %rax
	cmpq	$407, %rax
	jle	.L328
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
	je	.L330
	leaq	24(%rdi), %rax
	leaq	48(%rdi), %r12
	movq	%rsi, %rbp
	movq	%rsi, %r14
	movq	%rax, 8(%rsp)
.L310:
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
.L315:
	movq	-16(%rsi), %rdi
	leaq	-24(%rsi), %r14
	movq	%r14, %r13
	cmpq	%rcx, %rdi
	jb	.L316
	cmpq	%rcx, -16(%rdx)
	leaq	-24(%rdx), %rax
	jbe	.L322
	leaq	-48(%rdx), %rax
	.p2align 4,,10
	.p2align 3
.L318:
	movq	%rax, %rdx
	subq	$24, %rax
	cmpq	%rcx, 32(%rax)
	ja	.L318
	cmpq	%rdx, %r14
	jnb	.L331
.L319:
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
.L316:
	addq	$24, %rsi
	jmp	.L315
.L322:
	movq	%rax, %rdx
	cmpq	%rdx, %r14
	jb	.L319
.L331:
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.isra.74
	movq	%r14, %rax
	subq	%r15, %rax
	cmpq	$407, %rax
	jle	.L305
	testq	%rbx, %rbx
	je	.L309
	movq	%r14, %rbp
	jmp	.L310
.L309:
	sarq	$3, %rax
	movabsq	$-6148914691236517205, %r12
	imulq	%rax, %r12
.L321:
	leaq	-2(%r12), %rbx
	sarq	%rbx
	leaq	(%rbx,%rbx,2), %rax
	leaq	(%r15,%rax,8), %rbp
	jmp	.L312
	.p2align 4,,10
	.p2align 3
.L332:
	subq	$1, %rbx
.L312:
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
	jne	.L332
	leaq	-24(%r13), %rbx
	movabsq	$-6148914691236517205, %r12
.L313:
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
	jg	.L313
.L305:
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
.L328:
	ret
.L330:
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
	jmp	.L321
	.cfi_endproc
.LFE9021:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.isra.74, .-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.isra.74
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
.LFB8331:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA8331
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
	jne	.L413
	testl	%r12d, %r12d
	jle	.L344
.L375:
	leal	-1(%r12), %eax
	xorl	%r15d, %r15d
	leaq	(%rax,%rax,2), %r13
	salq	$3, %r13
	jmp	.L338
	.p2align 4,,10
	.p2align 3
.L415:
	addq	$24, %rax
	movq	%rax, %r15
.L338:
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
	je	.L414
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
	jne	.L415
.L335:
	movq	pool+8(%rip), %rax
	cmpq	%rbx, %rax
	movq	%rax, %r15
	je	.L340
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
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.isra.74
	cmpq	$407, %r13
	jle	.L341
	subq	$8, %rsp
	leaq	384(%rbx), %r13
	movq	%rbx, %rdi
	pushq	$0
	movq	%r13, %rsi
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_
	cmpq	%r13, %r15
	popq	%rdi
	popq	%r8
	je	.L340
	movq	%r13, %rbx
.L343:
	movq	%rbx, %rdi
	addq	$24, %rbx
	call	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.isra.49
	cmpq	%rbx, %r15
	jne	.L343
.L340:
	testl	%r12d, %r12d
	jle	.L344
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L373:
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
	je	.L345
	testq	%rax, %rax
	je	.L346
	movq	(%rsi), %rcx
	movq	%rcx, (%rax)
	movq	8(%rsi), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rsi), %rcx
	movq	%rcx, 16(%rax)
.L346:
	addq	$24, %rax
	movq	%rax, 24(%rdx)
.L347:
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	jle	.L344
	movq	pool(%rip), %rsi
	leaq	24(%r13), %rax
	movq	%rax, %r15
	movq	32(%rsi,%r13), %rax
	subq	8(%rsi,%r13), %rax
	cmpq	$2097152, %rax
	jne	.L373
	.p2align 4,,10
	.p2align 3
.L349:
	movq	_Z6chunksB5cxx11+8(%rip), %rdi
	addl	$1, %ebx
	addq	%r15, %rsi
	movq	24(%rdi), %rax
	cmpq	32(%rdi), %rax
	je	.L416
	testq	%rax, %rax
	je	.L351
	movq	(%rsi), %rdx
	movq	%rdx, (%rax)
	movq	8(%rsi), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rsi), %rdx
	movq	%rdx, 16(%rax)
.L351:
	addq	$24, %rax
	movq	%rax, 24(%rdi)
.L352:
	cmpl	%ebx, %r12d
	je	.L344
	movq	pool(%rip), %rsi
	leaq	24(%r15), %rdx
	movq	8(%rsi,%rdx), %rax
	subq	8(%rsi,%r15), %rax
	cmpq	$2097152, %rax
	jne	.L373
	movq	%rdx, %r15
	jmp	.L349
	.p2align 4,,10
	.p2align 3
.L344:
	movq	_Z6chunksB5cxx11(%rip), %rbx
	cmpq	$_Z6chunksB5cxx11, %rbx
	je	.L333
	movl	$0, -52(%rbp)
	movabsq	$-6148914691236517205, %r12
	jmp	.L356
	.p2align 4,,10
	.p2align 3
.L419:
	movsbl	67(%r15), %esi
.L355:
	movq	%r13, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movq	(%rbx), %rbx
	cmpq	$_Z6chunksB5cxx11, %rbx
	je	.L417
	.p2align 4,,10
	.p2align 3
.L356:
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
	je	.L418
	cmpb	$0, 56(%r15)
	jne	.L419
	movq	%r15, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r15), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L355
	movq	%r15, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L355
.L421:
	movl	$0, -52(%rbp)
.L359:
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
	je	.L420
	cmpb	$0, 56(%r12)
	je	.L363
	movsbl	67(%r12), %esi
.L364:
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
	cmpl	%edx, %ebx
	jge	.L333
	subl	%ebx, %edx
	movslq	%ebx, %rcx
	subl	$1, %edx
	leaq	(%rcx,%rcx,2), %rax
	leaq	1(%rcx,%rdx), %rdx
	salq	$3, %rax
	leaq	(%rdx,%rdx,2), %rcx
	salq	$3, %rcx
.L366:
	movq	16(%r13), %rdx
	movq	(%rdx,%rax), %rdx
	testq	%rdx, %rdx
	je	.L365
	movb	$33, (%rdx)
.L365:
	addq	$24, %rax
	cmpq	%rax, %rcx
	jne	.L366
.L333:
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
.L416:
	.cfi_restore_state
	addq	$16, %rdi
	.cfi_escape 0x2e,0
	call	_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_
	jmp	.L352
.L345:
	leaq	16(%rdx), %rdi
	call	_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_
	jmp	.L347
.L417:
	movq	_Z6chunksB5cxx11(%rip), %r13
	cmpq	$_Z6chunksB5cxx11, %r13
	je	.L333
	movslq	-56(%rbp), %r15
	movl	$0, -68(%rbp)
	movabsq	$-6148914691236517205, %rdi
.L368:
	movq	16(%r13), %rcx
	movq	24(%r13), %r12
	subq	%rcx, %r12
	sarq	$3, %r12
	imulq	%rdi, %r12
	cmpq	%r15, %r12
	jb	.L358
	movq	%r12, %rsi
	addl	$1, -68(%rbp)
	subq	%r15, %rsi
	je	.L358
	movq	%r14, %rbx
	andq	8(%rcx), %rbx
	je	.L421
	subq	$1, %rsi
	movl	$24, %ebx
	xorl	%eax, %eax
	movl	$0, -52(%rbp)
	jmp	.L361
	.p2align 4,,10
	.p2align 3
.L367:
	addq	$1, %rax
	testq	%r14, 8(%rcx,%rbx)
	leaq	24(%rbx), %rdx
	je	.L359
	movq	%rdx, %rbx
.L361:
	addl	$1, -52(%rbp)
	cmpq	%rax, %rsi
	jne	.L367
.L358:
	movq	0(%r13), %r13
	cmpq	$_Z6chunksB5cxx11, %r13
	jne	.L368
	jmp	.L333
.L341:
	subq	$8, %rsp
	movq	%r15, %rsi
	movq	%rbx, %rdi
	pushq	$0
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_
	popq	%rcx
	popq	%rsi
	jmp	.L340
.L363:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L364
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L364
.L413:
	movl	$pool, %edi
	call	_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm
	testl	%r12d, %r12d
	movq	pool(%rip), %rbx
	jg	.L375
	jmp	.L335
.L420:
	call	_ZSt16__throw_bad_castv
.L414:
	movq	stderr(%rip), %rdi
	movl	$64, %ecx
	movl	$.LC29, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
	movl	$.LC7, %edi
	call	perror
.LEHE0:
	movl	$-1, %edi
	call	exit
.L381:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.L370
	call	_ZdlPv
.L370:
	movq	%rbx, %rdi
.LEHB1:
	call	_Unwind_Resume
.LEHE1:
.L418:
.LEHB2:
	call	_ZSt16__throw_bad_castv
.LEHE2:
	.cfi_endproc
.LFE8331:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8331:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8331-.LLSDACSB8331
.LLSDACSB8331:
	.uleb128 .LEHB0-.LFB8331
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L381-.LFB8331
	.uleb128 0
	.uleb128 .LEHB1-.LFB8331
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB8331
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L381-.LFB8331
	.uleb128 0
.LLSDACSE8331:
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
.LFB8336:
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
	movl	$.LC38, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	call	open
	testl	%eax, %eax
	movl	%eax, fd(%rip)
	jle	.L473
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
	je	.L424
	call	_ZdlPv
.L424:
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L425
	call	_ZdlPv
.L425:
	xorl	%edi, %edi
	call	_Z7cleanupb
	movq	pages+8(%rip), %r14
	movq	pages(%rip), %r13
	cmpq	%r14, %r13
	je	.L442
	.p2align 4,,10
	.p2align 3
.L460:
	movl	20(%r13), %ebp
	movq	0(%r13), %rbx
	cmpl	$1, %ebp
	je	.L474
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
	je	.L433
	cmpb	$0, 56(%r15)
	je	.L434
	movsbl	67(%r15), %esi
.L435:
	movq	%r12, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	testl	%ebp, %ebp
	jle	.L432
	leal	-1(%rbp), %r12d
	addq	$1, %r12
	salq	$21, %r12
	addq	%rbx, %r12
	jmp	.L440
	.p2align 4,,10
	.p2align 3
.L475:
	movsbl	67(%rbp), %esi
.L438:
	movq	%r15, %rdi
	addq	$2097152, %rbx
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	cmpq	%rbx, %r12
	je	.L432
.L440:
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
	je	.L433
	cmpb	$0, 56(%rbp)
	jne	.L475
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L438
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L438
	.p2align 4,,10
	.p2align 3
.L474:
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
	je	.L433
	cmpb	$0, 56(%rbx)
	je	.L430
	movsbl	67(%rbx), %esi
.L431:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.L432:
	addq	$24, %r13
	cmpq	%r13, %r14
	jne	.L460
.L442:
	movl	$25, %esi
	movl	$100, %edi
	xorl	%ebx, %ebx
	call	_Z7genseedii
	jmp	.L427
	.p2align 4,,10
	.p2align 3
.L477:
	movsbl	67(%rbp), %esi
.L444:
	movq	%r12, %rdi
	addl	$1, %ebx
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	cmpl	$26, %ebx
	je	.L476
.L427:
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
	movq	%rax, %r12
	movl	$.LC46, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbp
	testq	%rbp, %rbp
	je	.L433
	cmpb	$0, 56(%rbp)
	jne	.L477
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L444
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L444
	.p2align 4,,10
	.p2align 3
.L434:
	movq	%r15, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r15), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L435
	movq	%r15, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L435
	.p2align 4,,10
	.p2align 3
.L476:
	movl	$1, %edi
	call	_Z7cleanupb
	xorl	%eax, %eax
	movq	24(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L478
	addq	$40, %rsp
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
.L430:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L431
	movl	$10, %esi
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L431
.L433:
	call	_ZSt16__throw_bad_castv
.L473:
	movq	stderr(%rip), %rdi
	movl	$224, %ecx
	movl	$.LC39, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk
	movl	$.LC7, %edi
	call	perror
	orl	$-1, %edi
	call	exit
.L478:
	call	__stack_chk_fail
	.cfi_endproc
.LFE8336:
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
.LFB8946:
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
.LFE8946:
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
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
