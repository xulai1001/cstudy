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
.LFB8336:
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
.LFE8336:
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
.LFB8919:
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
.LFE8919:
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
# 90 "timing.h" 1
	cpuid 
    rdtsc 
    shlq $32, %rdx 
    orq %rdx, %rax
# 0 "" 2
# 91 "timing.h" 1
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
# 98 "timing.h" 1
	cpuid 
    rdtsc 
    shlq $32, %rdx 
    orq %rdx, %rax
# 0 "" 2
#NO_APP
	movq	%rax, %r9
#APP
# 99 "timing.h" 1
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
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"tsc_measure_freq..."
.LC6:
	.string	"%ld MHz(Mticks/sec)\n"
	.section	.text.unlikely
.LCOLDB7:
	.text
.LHOTB7:
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
	movl	$.LC5, %edi
	xorl	%eax, %eax
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	printf
#APP
# 110 "timing.h" 1
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
# 112 "timing.h" 1
	rdtscp 
    shlq $32, %rdx 
    orq %rdx, %rax 
    movq %rax, %rsi 
    cpuid
# 0 "" 2
#NO_APP
	movq	%rsi, %rbx
	movabsq	$4835703278458516699, %rdx
	movl	$.LC6, %edi
	subq	%rbp, %rbx
	movq	%rbx, %rax
	mulq	%rdx
	xorl	%eax, %eax
	shrq	$18, %rdx
	movq	%rdx, %rsi
	call	printf
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8235:
	.size	tsc_measure_freq, .-tsc_measure_freq
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.globl	tsc_to_ns
	.type	tsc_to_ns, @function
tsc_to_ns:
.LFB8236:
	.cfi_startproc
	imulq	$1000000000, %rdi, %rax
	xorl	%edx, %edx
	divq	clk_freq(%rip)
	ret
	.cfi_endproc
.LFE8236:
	.size	tsc_to_ns, .-tsc_to_ns
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC9:
	.string	"ASSERT error at line %d: lseek(fd, pfn_item_offset, SEEK_SET) != -1"
	.section	.rodata.str1.1
.LC10:
	.string	" "
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"ASSERT error at line %d: read(fd, &pfn_item, sizeof(uint64_t)) == sizeof(uint64_t)"
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	_Z3v2pPv
	.type	_Z3v2pPv, @function
_Z3v2pPv:
.LFB8237:
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
	je	.L29
	movl	fd(%rip), %edi
	leaq	8(%rsp), %rsi
	movl	$8, %edx
	call	read
	cmpq	$8, %rax
	jne	.L30
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
.L29:
	.cfi_restore_state
	movq	stderr(%rip), %rdi
	movq	%rax, %rbp
	movl	$42, %edx
	movl	$.LC9, %esi
	xorl	%eax, %eax
	call	fprintf
	movl	$.LC10, %edi
	call	perror
	movl	%ebp, %edi
	call	exit
.L30:
	movq	stderr(%rip), %rdi
	movl	$43, %edx
	movl	$.LC11, %esi
	xorl	%eax, %eax
	call	fprintf
	movl	$.LC10, %edi
	call	perror
	orl	$-1, %edi
	call	exit
	.cfi_endproc
.LFE8237:
	.size	_Z3v2pPv, .-_Z3v2pPv
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	_Z3p2vm
	.type	_Z3p2vm, @function
_Z3p2vm:
.LFB8248:
	.cfi_startproc
	movq	pages(%rip), %rdx
	movq	pages+8(%rip), %rcx
	movq	%rdi, %rsi
	andl	$2097151, %esi
	cmpq	%rcx, %rdx
	je	.L32
	subq	%rsi, %rdi
	cmpq	%rdi, 8(%rdx)
	movq	(%rdx), %rax
	je	.L33
	addq	$24, %rdx
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L36:
	movq	(%rdx), %rax
	addq	$24, %rdx
	cmpq	%rdi, -16(%rdx)
	je	.L33
.L35:
	cmpq	%rdx, %rcx
	jne	.L36
.L32:
	rep ret
	.p2align 4,,10
	.p2align 3
.L33:
	addq	%rsi, %rax
	ret
	.cfi_endproc
.LFE8248:
	.size	_Z3p2vm, .-_Z3p2vm
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.rodata.str1.1
.LC14:
	.string	"cleanup usused pages..."
.LC15:
	.string	" pages released."
	.section	.text.unlikely
.LCOLDB16:
	.text
.LHOTB16:
	.p2align 4,,15
	.globl	_Z7cleanupb
	.type	_Z7cleanupb, @function
_Z7cleanupb:
.LFB8249:
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
	movl	$.LC14, %esi
	movl	$_ZSt4cout, %edi
	xorl	%r13d, %r13d
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	pool(%rip), %rbx
	movq	pool+8(%rip), %rbp
	cmpq	%rbp, %rbx
	jne	.L43
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L55:
	cmpb	$33, (%rdi)
	jne	.L42
.L41:
	addq	$24, %rbx
	cmpq	%rbx, %rbp
	je	.L40
.L43:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L41
	testb	%r12b, %r12b
	je	.L55
.L42:
	movl	20(%rbx), %esi
	addq	$24, %rbx
	addl	$1, %r13d
	sall	$21, %esi
	movslq	%esi, %rsi
	call	munmap
	movq	$0, -24(%rbx)
	movq	$0, -16(%rbx)
	cmpq	%rbx, %rbp
	jne	.L43
.L40:
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
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L56
	cmpb	$0, 56(%rbp)
	je	.L45
	movsbl	67(%rbp), %esi
.L46:
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
.L45:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L46
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L46
.L56:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE8249:
	.size	_Z7cleanupb, .-_Z7cleanupb
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.section	.text.unlikely
.LCOLDB17:
	.text
.LHOTB17:
	.p2align 4,,15
	.globl	_Z7latencyiii
	.type	_Z7latencyiii, @function
_Z7latencyiii:
.LFB8251:
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
	js	.L83
	movl	%esi, %ecx
	sall	%cl, %r8d
	orl	%r8d, %r14d
.L83:
	testl	%edx, %edx
	movslq	%r14d, %r14
	js	.L60
	movl	%edx, %ecx
	movl	$1, %esi
	sall	%cl, %esi
	movslq	%esi, %rdx
	orq	%rdx, %r14
.L60:
	movq	seed+24(%rip), %rdi
	cmpq	$seed+8, %rdi
	je	.L75
	movq	%r14, %rbx
	movl	$9999, %r15d
	notq	%rbx
	movq	%rbx, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L74:
	movq	32(%rdi), %rsi
	movq	8(%rsp), %r8
	movq	pages+8(%rip), %rcx
	andq	%rsi, %r8
	addq	%r13, %r8
	movq	%r8, %rbx
	andl	$2097151, %ebx
	cmpq	%rax, %rcx
	je	.L62
	movq	8(%rax), %r11
	subq	%rbx, %r8
	movq	(%rax), %r9
	leaq	24(%rax), %rdx
	cmpq	%r8, %r11
	jne	.L65
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L67:
	movq	(%rdx), %r10
	addq	$24, %rdx
	cmpq	%r8, -16(%rdx)
	je	.L63
.L65:
	cmpq	%rcx, %rdx
	jne	.L67
	orq	%r14, %rsi
	addq	$24, %rax
	leaq	(%rsi,%r13), %rdx
	movq	%rdx, %rsi
	andl	$2097151, %esi
	subq	%rsi, %rdx
	cmpq	%r11, %rdx
	jne	.L70
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L71:
	movq	(%rax), %r9
	addq	$24, %rax
	cmpq	%rdx, -16(%rax)
	je	.L68
.L70:
	cmpq	%rax, %rcx
	jne	.L71
.L62:
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
.L72:
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
	jne	.L72
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
	je	.L73
	movq	pages(%rip), %rax
	jmp	.L74
.L85:
	movq	%r9, %r10
.L63:
	orq	%r14, %rsi
	addq	$24, %rax
	leaq	(%r10,%rbx), %r12
	leaq	(%rsi,%r13), %rdx
	movq	%rdx, %rsi
	andl	$2097151, %esi
	subq	%rsi, %rdx
	cmpq	%r11, %rdx
	jne	.L70
.L68:
	leaq	(%r9,%rsi), %rbp
	jmp	.L62
.L73:
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
.L75:
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
.LFE8251:
	.size	_Z7latencyiii, .-_Z7latencyiii
	.section	.text.unlikely
.LCOLDE17:
	.text
.LHOTE17:
	.section	.text.unlikely._ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv,comdat
	.align 2
.LCOLDB18:
	.section	.text._ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv,comdat
.LHOTB18:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv
	.type	_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv, @function
_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv:
.LFB8476:
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
	je	.L86
	movq	%rdi, %r12
	.p2align 4,,10
	.p2align 3
.L93:
	movq	16(%rbx), %rdi
	movq	(%rbx), %rbp
	testq	%rdi, %rdi
	je	.L88
	call	_ZdlPv
.L88:
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	call	_ZdlPv
	cmpq	%r12, %rbp
	jne	.L93
.L86:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8476:
	.size	_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv, .-_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv
	.section	.text.unlikely._ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv,comdat
.LCOLDE18:
	.section	.text._ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv,comdat
.LHOTE18:
	.section	.text.unlikely._ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev,"axG",@progbits,_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED5Ev,comdat
	.align 2
.LCOLDB19:
	.section	.text._ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev,"axG",@progbits,_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED5Ev,comdat
.LHOTB19:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev
	.type	_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev, @function
_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev:
.LFB8863:
	.cfi_startproc
	jmp	_ZNSt7__cxx1110_List_baseISt6vectorI8HugePageSaIS2_EESaIS4_EE8_M_clearEv
	.cfi_endproc
.LFE8863:
	.size	_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev, .-_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev
	.section	.text.unlikely._ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev,"axG",@progbits,_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED5Ev,comdat
.LCOLDE19:
	.section	.text._ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev,"axG",@progbits,_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED5Ev,comdat
.LHOTE19:
	.weak	_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED1Ev
	.set	_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED1Ev,_ZNSt7__cxx114listISt6vectorI8HugePageSaIS2_EESaIS4_EED2Ev
	.section	.rodata.str1.1
.LC20:
	.string	"vector::_M_default_append"
	.section	.text.unlikely._ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm,comdat
	.align 2
.LCOLDB21:
	.section	.text._ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm,comdat
.LHOTB21:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm
	.type	_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm, @function
_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm:
.LFB8479:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L136
	movq	8(%rdi), %r8
	movq	16(%rdi), %rax
	movabsq	$-6148914691236517205, %rdx
	subq	%r8, %rax
	sarq	$3, %rax
	imulq	%rdx, %rax
	cmpq	%rax, %rsi
	ja	.L99
	movq	%rsi, %rdx
	movq	%r8, %rax
	.p2align 4,,10
	.p2align 3
.L101:
	testq	%rax, %rax
	je	.L100
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movb	$0, 16(%rax)
	movl	$1, 20(%rax)
.L100:
	addq	$24, %rax
	subq	$1, %rdx
	jne	.L101
	leaq	(%rsi,%rsi,2), %rax
	leaq	(%r8,%rax,8), %rax
	movq	%rax, 8(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L99:
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
	ja	.L137
	cmpq	%rdx, %rsi
	movq	%rdx, %rax
	cmovnb	%rsi, %rax
	addq	%rax, %rdx
	jc	.L115
	cmpq	%rcx, %rdx
	ja	.L115
	leaq	(%rdx,%rdx,2), %r13
	salq	$3, %r13
	testq	%rdx, %rdx
	jne	.L112
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L115:
	movq	$-16, %r13
.L112:
	movq	%r13, %rdi
	call	_Znwm
	movq	8(%rbp), %r8
	movq	0(%rbp), %rdi
	movq	%rax, %r12
	addq	%rax, %r13
.L111:
	cmpq	%rdi, %r8
	je	.L113
	movq	%r12, %rcx
	movq	%rdi, %rdx
	.p2align 4,,10
	.p2align 3
.L107:
	testq	%rcx, %rcx
	je	.L106
	movq	(%rdx), %rsi
	movq	%rsi, (%rcx)
	movq	8(%rdx), %rsi
	movq	%rsi, 8(%rcx)
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rcx)
.L106:
	addq	$24, %rdx
	addq	$24, %rcx
	cmpq	%rdx, %r8
	jne	.L107
	leaq	24(%rdi), %rax
	subq	%rax, %r8
	shrq	$3, %r8
	leaq	24(%r12,%r8,8), %rax
.L105:
	movq	%rax, %rdx
	movq	%rbx, %rcx
	.p2align 4,,10
	.p2align 3
.L109:
	testq	%rdx, %rdx
	je	.L108
	movq	$0, (%rdx)
	movq	$0, 8(%rdx)
	movb	$0, 16(%rdx)
	movl	$1, 20(%rdx)
.L108:
	addq	$24, %rdx
	subq	$1, %rcx
	jne	.L109
	leaq	(%rbx,%rbx,2), %rdx
	testq	%rdi, %rdi
	leaq	(%rax,%rdx,8), %rbx
	je	.L110
	call	_ZdlPv
.L110:
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
.L136:
	rep ret
.L113:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	movq	%r12, %rax
	jmp	.L105
.L137:
	movl	$.LC20, %edi
	call	_ZSt20__throw_length_errorPKc
	.cfi_endproc
.LFE8479:
	.size	_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm, .-_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm
	.section	.text.unlikely._ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm,comdat
.LCOLDE21:
	.section	.text._ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm,comdat
.LHOTE21:
	.section	.text.unlikely._ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_,comdat
	.align 2
.LCOLDB22:
	.section	.text._ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_,comdat
.LHOTB22:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_
	.type	_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_, @function
_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_:
.LFB8489:
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
	je	.L147
	leaq	(%rax,%rax), %rcx
	cmpq	%rcx, %rax
	jbe	.L162
.L148:
	movq	$-16, %r12
.L139:
	movq	%r12, %rdi
	call	_Znwm
	movq	8(%rbx), %r8
	movq	(%rbx), %rdi
	leaq	24(%rax), %r14
	movq	%rax, %rbp
	addq	%rax, %r12
	movq	%r8, %rdx
	subq	%rdi, %rdx
.L146:
	addq	%rbp, %rdx
	je	.L141
	movq	0(%r13), %rax
	movq	%rax, (%rdx)
	movq	8(%r13), %rax
	movq	%rax, 8(%rdx)
	movq	16(%r13), %rax
	movq	%rax, 16(%rdx)
.L141:
	cmpq	%rdi, %r8
	je	.L142
	movq	%rdi, %rdx
	movq	%rbp, %rcx
	.p2align 4,,10
	.p2align 3
.L144:
	testq	%rcx, %rcx
	je	.L143
	movq	(%rdx), %rsi
	movq	%rsi, (%rcx)
	movq	8(%rdx), %rsi
	movq	%rsi, 8(%rcx)
	movq	16(%rdx), %rsi
	movq	%rsi, 16(%rcx)
.L143:
	addq	$24, %rdx
	addq	$24, %rcx
	cmpq	%r8, %rdx
	jne	.L144
	leaq	24(%rdi), %rax
	subq	%rax, %rdx
	shrq	$3, %rdx
	leaq	48(%rbp,%rdx,8), %r14
.L142:
	testq	%rdi, %rdi
	je	.L145
	call	_ZdlPv
.L145:
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
.L147:
	.cfi_restore_state
	movl	$24, %r12d
	jmp	.L139
.L162:
	movabsq	$768614336404564650, %rsi
	cmpq	%rsi, %rcx
	ja	.L148
	testq	%rcx, %rcx
	jne	.L163
	movl	$24, %r14d
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	jmp	.L146
.L163:
	leaq	(%rcx,%rax,4), %r12
	salq	$3, %r12
	jmp	.L139
	.cfi_endproc
.LFE8489:
	.size	_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_, .-_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_
	.section	.text.unlikely._ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_,comdat
.LCOLDE22:
	.section	.text._ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_,comdat
.LHOTE22:
	.weak	_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIIRKS0_EEEvDpOT_
	.set	_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIIRKS0_EEEvDpOT_,_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_
	.section	.text.unlikely._ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_,"axG",@progbits,_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_,comdat
	.align 2
.LCOLDB23:
	.section	.text._ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_,"axG",@progbits,_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_,comdat
.LHOTB23:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_
	.type	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_, @function
_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_:
.LFB8500:
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
	je	.L175
	movq	(%rsi), %rcx
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L181:
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.L167
.L182:
	movq	%rax, %rbx
.L166:
	movq	32(%rbx), %rdx
	cmpq	%rcx, %rdx
	ja	.L181
	movq	24(%rbx), %rax
	testq	%rax, %rax
	jne	.L182
.L167:
	cmpq	%rcx, %rdx
	movq	%rbx, %rax
	ja	.L165
	cmpq	%rcx, %rdx
	jb	.L171
.L179:
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
.L175:
	.cfi_restore_state
	movq	%r12, %rbx
	.p2align 4,,10
	.p2align 3
.L165:
	cmpq	%rbx, 24(%r13)
	je	.L171
	movq	%rbx, %rdi
	call	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	movq	(%r14), %rcx
	movq	32(%rax), %rdx
	cmpq	%rcx, %rdx
	jnb	.L179
.L171:
	cmpq	%rbx, %r12
	je	.L177
	xorl	%r15d, %r15d
	movq	32(%rbx), %rax
	cmpq	%rax, (%r14)
	setb	%r15b
.L172:
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
.L177:
	.cfi_restore_state
	movl	$1, %r15d
	jmp	.L172
	.cfi_endproc
.LFE8500:
	.size	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_, .-_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_
	.section	.text.unlikely._ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_,"axG",@progbits,_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_,comdat
.LCOLDE23:
	.section	.text._ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_,"axG",@progbits,_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_,comdat
.LHOTE23:
	.section	.text.unlikely._ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE,"axG",@progbits,_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE,comdat
	.align 2
.LCOLDB24:
	.section	.text._ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE,"axG",@progbits,_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE,comdat
.LHOTB24:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE
	.type	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE, @function
_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE:
.LFB8574:
	.cfi_startproc
	testq	%rsi, %rsi
	je	.L193
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
.L189:
	movq	24(%rbx), %rsi
	movq	%r12, %rdi
	call	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE
	movq	16(%rbx), %rbp
	movq	%rbx, %rdi
	call	_ZdlPv
	testq	%rbp, %rbp
	movq	%rbp, %rbx
	jne	.L189
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 8
.L193:
	rep ret
	.cfi_endproc
.LFE8574:
	.size	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE, .-_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE
	.section	.text.unlikely._ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE,"axG",@progbits,_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE,comdat
.LCOLDE24:
	.section	.text._ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE,"axG",@progbits,_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE,comdat
.LHOTE24:
	.section	.text.unlikely._ZNSt3setImSt4lessImESaImEED2Ev,"axG",@progbits,_ZNSt3setImSt4lessImESaImEED5Ev,comdat
	.align 2
.LCOLDB25:
	.section	.text._ZNSt3setImSt4lessImESaImEED2Ev,"axG",@progbits,_ZNSt3setImSt4lessImESaImEED5Ev,comdat
.LHOTB25:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt3setImSt4lessImESaImEED2Ev
	.type	_ZNSt3setImSt4lessImESaImEED2Ev, @function
_ZNSt3setImSt4lessImESaImEED2Ev:
.LFB8866:
	.cfi_startproc
	movq	16(%rdi), %rsi
	jmp	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE
	.cfi_endproc
.LFE8866:
	.size	_ZNSt3setImSt4lessImESaImEED2Ev, .-_ZNSt3setImSt4lessImESaImEED2Ev
	.section	.text.unlikely._ZNSt3setImSt4lessImESaImEED2Ev,"axG",@progbits,_ZNSt3setImSt4lessImESaImEED5Ev,comdat
.LCOLDE25:
	.section	.text._ZNSt3setImSt4lessImESaImEED2Ev,"axG",@progbits,_ZNSt3setImSt4lessImESaImEED5Ev,comdat
.LHOTE25:
	.weak	_ZNSt3setImSt4lessImESaImEED1Ev
	.set	_ZNSt3setImSt4lessImESaImEED1Ev,_ZNSt3setImSt4lessImESaImEED2Ev
	.section	.text.unlikely
.LCOLDB26:
	.text
.LHOTB26:
	.p2align 4,,15
	.globl	_Z7genseedii
	.type	_Z7genseedii, @function
_Z7genseedii:
.LFB8250:
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
	jle	.L205
	movl	$1, %ebp
	movl	%r13d, %ecx
	leaq	8(%rsp), %r12
	sall	%cl, %ebp
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L198:
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
	jne	.L198
	movq	seed+40(%rip), %rax
.L199:
	cmpq	%rbx, %rax
	jnb	.L195
	movl	$1, %ebp
	movl	%r13d, %ecx
	leaq	8(%rsp), %r12
	sall	%cl, %ebp
	.p2align 4,,10
	.p2align 3
.L200:
	call	rand
	cltd
	movq	%r12, %rsi
	movl	$seed, %edi
	idivl	%ebp
	movslq	%edx, %rdx
	movq	%rdx, 8(%rsp)
	call	_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE16_M_insert_uniqueImEESt4pairISt17_Rb_tree_iteratorImEbEOT_
	cmpq	%rbx, seed+40(%rip)
	jb	.L200
.L195:
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
.L205:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L199
	.cfi_endproc
.LFE8250:
	.size	_Z7genseedii, .-_Z7genseedii
	.section	.text.unlikely
.LCOLDE26:
	.text
.LHOTE26:
	.section	.text.unlikely._ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
.LCOLDB27:
	.section	.text._ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag,comdat
.LHOTB27:
	.align 2
	.p2align 4,,15
	.weak	_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag, @function
_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag:
.LFB8595:
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
	jb	.L241
	movq	8(%rdi), %r9
	movq	%r9, %rbx
	subq	%rcx, %rbx
	movq	%rbx, %rax
	sarq	$3, %rax
	imulq	%rax, %r10
	cmpq	%r10, %r8
	ja	.L218
	testq	%r8, %r8
	jle	.L219
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L220:
	movq	(%rsi,%rax), %rdx
	movq	%rdx, (%rcx,%rax)
	movq	8(%rsi,%rax), %rdx
	movq	%rdx, 8(%rcx,%rax)
	movq	16(%rsi,%rax), %rdx
	movq	%rdx, 16(%rcx,%rax)
	addq	$24, %rax
	cmpq	%rbp, %rax
	jne	.L220
	addq	%rax, %rcx
.L219:
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
.L218:
	.cfi_restore_state
	xorl	%eax, %eax
	testq	%r10, %r10
	leaq	(%rsi,%rbx), %r11
	jle	.L224
	.p2align 4,,10
	.p2align 3
.L237:
	movq	(%rsi,%rax), %r8
	movq	%r8, (%rcx,%rax)
	movq	8(%rsi,%rax), %r8
	movq	%r8, 8(%rcx,%rax)
	movq	16(%rsi,%rax), %r8
	movq	%r8, 16(%rcx,%rax)
	addq	$24, %rax
	cmpq	%rax, %rbx
	jne	.L237
.L224:
	cmpq	%rdx, %r11
	movq	%r9, %rcx
	movq	%r11, %rax
	je	.L223
	.p2align 4,,10
	.p2align 3
.L233:
	testq	%rcx, %rcx
	je	.L226
	movq	(%rax), %rsi
	movq	%rsi, (%rcx)
	movq	8(%rax), %rsi
	movq	%rsi, 8(%rcx)
	movq	16(%rax), %rsi
	movq	%rsi, 16(%rcx)
.L226:
	addq	$24, %rax
	addq	$24, %rcx
	cmpq	%rdx, %rax
	jne	.L233
	addq	$24, %r11
	subq	%r11, %rax
	shrq	$3, %rax
	leaq	24(%r9,%rax,8), %r9
.L223:
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
.L241:
	.cfi_restore_state
	xorl	%r14d, %r14d
	testq	%r8, %r8
	movq	%rdi, %r15
	movq	%rsi, %rbx
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rcx, %rdi
	je	.L209
	movabsq	$768614336404564650, %rax
	cmpq	%rax, %r8
	ja	.L242
	movq	%rbp, %rdi
	call	_Znwm
	movq	(%r15), %rdi
	movq	%rax, %r14
.L209:
	cmpq	%r13, %r12
	movq	%r14, %rsi
	je	.L216
	.p2align 4,,10
	.p2align 3
.L232:
	testq	%rsi, %rsi
	je	.L214
	movq	(%rbx), %r8
	movq	%r8, (%rsi)
	movq	8(%rbx), %r8
	movq	%r8, 8(%rsi)
	movq	16(%rbx), %r8
	movq	%r8, 16(%rsi)
.L214:
	addq	$24, %rbx
	addq	$24, %rsi
	cmpq	%rbx, %r13
	jne	.L232
.L216:
	testq	%rdi, %rdi
	je	.L213
	call	_ZdlPv
.L213:
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
.L242:
	.cfi_restore_state
	call	_ZSt17__throw_bad_allocv
	.cfi_endproc
.LFE8595:
	.size	_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag, .-_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag
	.section	.text.unlikely._ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag,comdat
.LCOLDE27:
	.section	.text._ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorI8HugePageSaIS0_EE13_M_assign_auxIN9__gnu_cxx17__normal_iteratorIPS0_S2_EEEEvT_S8_St20forward_iterator_tag,comdat
.LHOTE27:
	.section	.text.unlikely._ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_,"axG",@progbits,_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_,comdat
.LCOLDB28:
	.section	.text._ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_,"axG",@progbits,_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_,comdat
.LHOTB28:
	.p2align 4,,15
	.weak	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_
	.type	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_, @function
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_:
.LFB8688:
	.cfi_startproc
	cmpq	%rdi, %rsi
	je	.L259
	leaq	24(%rdi), %rax
	cmpq	%rsi, %rax
	je	.L259
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
.L251:
	movq	8(%r10), %rdi
	cmpq	8(%r11), %rdi
	jnb	.L246
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
	jle	.L249
	.p2align 4,,10
	.p2align 3
.L255:
	movq	(%rax), %rcx
	subq	$24, %rax
	movq	%rcx, 48(%rax)
	movq	32(%rax), %rcx
	movq	%rcx, 56(%rax)
	movq	40(%rax), %rcx
	movq	%rcx, 64(%rax)
	subq	$1, %rdx
	jne	.L255
.L249:
	movq	%r12, (%r11)
	movq	%rdi, 8(%r11)
	movb	%r9b, 16(%r11)
	movl	%esi, 20(%r11)
.L248:
	cmpq	%r8, %rbx
	movq	%r8, %r10
	jne	.L251
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 8
.L259:
	rep ret
	.p2align 4,,10
	.p2align 3
.L246:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	movq	%r10, %rdi
	call	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.isra.50
	leaq	24(%r10), %r8
	jmp	.L248
	.cfi_endproc
.LFE8688:
	.size	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_, .-_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_
	.section	.text.unlikely._ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_,"axG",@progbits,_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_,comdat
.LCOLDE28:
	.section	.text._ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_,"axG",@progbits,_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_,comdat
.LHOTE28:
	.section	.text.unlikely._ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_,"axG",@progbits,_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_,comdat
.LCOLDB29:
	.section	.text._ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_,"axG",@progbits,_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_,comdat
.LHOTB29:
	.p2align 4,,15
	.weak	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_
	.type	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_, @function
_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_:
.LFB8755:
	.cfi_startproc
	movq	8(%rsi), %r8
	movq	8(%rdx), %rax
	movq	8(%rcx), %r9
	cmpq	%r8, %rax
	jbe	.L261
	cmpq	%r9, %rax
	jb	.L269
	cmpq	%r9, %r8
	movq	(%rdi), %r8
	jnb	.L268
	movq	8(%rdi), %rsi
.L267:
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
.L261:
	cmpq	%r9, %r8
	movq	(%rdi), %r8
	jb	.L268
	cmpq	%r9, %rax
	movq	8(%rdi), %rsi
	jb	.L267
.L266:
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
.L268:
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
.L269:
	movq	(%rdi), %r8
	movq	8(%rdi), %rsi
	jmp	.L266
	.cfi_endproc
.LFE8755:
	.size	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_, .-_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_
	.section	.text.unlikely._ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_,"axG",@progbits,_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_,comdat
.LCOLDE29:
	.section	.text._ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_,"axG",@progbits,_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_,comdat
.LHOTE29:
	.section	.text.unlikely._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_,comdat
.LCOLDB30:
	.section	.text._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_,comdat
.LHOTB30:
	.p2align 4,,15
	.weak	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_, @function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_:
.LFB8840:
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
	jl	.L284
	jmp	.L291
	.p2align 4,,10
	.p2align 3
.L282:
	movq	%rcx, %r8
.L284:
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
	jl	.L282
	testb	$1, %dl
	jne	.L276
.L272:
	subq	$2, %rdx
	movq	%rdx, %r8
	shrq	$63, %r8
	addq	%r8, %rdx
	sarq	%rdx
	cmpq	%rcx, %rdx
	je	.L292
.L276:
	cmpq	%rsi, %rcx
	movq	16(%rsp), %rbx
	movq	24(%rsp), %r9
	movzbl	32(%rsp), %r11d
	movl	36(%rsp), %r10d
	jle	.L277
	leaq	-1(%rcx), %rdx
	movq	%rdx, %r8
	shrq	$63, %r8
	addq	%r8, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %r8
	cmpq	8(%rdi,%r8,8), %r9
	jbe	.L277
	.p2align 4,,10
	.p2align 3
.L279:
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
	jge	.L277
	leaq	-1(%rdx), %rcx
	movq	%rcx, %r8
	shrq	$63, %r8
	addq	%rcx, %r8
	movq	%rdx, %rcx
	sarq	%r8
	leaq	(%r8,%r8,2), %rdx
	cmpq	8(%rdi,%rdx,8), %r9
	jbe	.L277
	movq	%r8, %rdx
	jmp	.L279
.L291:
	leaq	(%rsi,%rsi,2), %rax
	testb	$1, %dl
	movq	%rsi, %rcx
	leaq	(%rdi,%rax,8), %rax
	je	.L272
	movzbl	32(%rsp), %r11d
	movq	16(%rsp), %rbx
	movq	24(%rsp), %r9
	movl	36(%rsp), %r10d
.L277:
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
.L292:
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
	jmp	.L276
	.cfi_endproc
.LFE8840:
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_, .-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_
	.section	.text.unlikely._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_,comdat
.LCOLDE30:
	.section	.text._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_,comdat
.LHOTE30:
	.section	.text.unlikely
.LCOLDB31:
	.text
.LHOTB31:
	.p2align 4,,15
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.isra.75, @function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.isra.75:
.LFB8944:
	.cfi_startproc
	movq	%rsi, %rax
	subq	%rdi, %rax
	cmpq	$407, %rax
	jle	.L316
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
	je	.L318
	leaq	24(%rdi), %rax
	leaq	48(%rdi), %r12
	movq	%rsi, %rbp
	movq	%rsi, %r14
	movq	%rax, 8(%rsp)
.L298:
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
.L303:
	movq	-16(%rsi), %rdi
	leaq	-24(%rsi), %r14
	movq	%r14, %r13
	cmpq	%rcx, %rdi
	jb	.L304
	cmpq	%rcx, -16(%rdx)
	leaq	-24(%rdx), %rax
	jbe	.L310
	leaq	-48(%rdx), %rax
	.p2align 4,,10
	.p2align 3
.L306:
	movq	%rax, %rdx
	subq	$24, %rax
	cmpq	%rcx, 32(%rax)
	ja	.L306
	cmpq	%rdx, %r14
	jnb	.L319
.L307:
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
.L304:
	addq	$24, %rsi
	jmp	.L303
.L310:
	movq	%rax, %rdx
	cmpq	%rdx, %r14
	jb	.L307
.L319:
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.isra.75
	movq	%r14, %rax
	subq	%r15, %rax
	cmpq	$407, %rax
	jle	.L293
	testq	%rbx, %rbx
	je	.L297
	movq	%r14, %rbp
	jmp	.L298
.L297:
	sarq	$3, %rax
	movabsq	$-6148914691236517205, %r12
	imulq	%rax, %r12
.L309:
	leaq	-2(%r12), %rbx
	sarq	%rbx
	leaq	(%rbx,%rbx,2), %rax
	leaq	(%r15,%rax,8), %rbp
	jmp	.L300
	.p2align 4,,10
	.p2align 3
.L320:
	subq	$1, %rbx
.L300:
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
	jne	.L320
	leaq	-24(%r13), %rbx
	movabsq	$-6148914691236517205, %r12
.L301:
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
	jg	.L301
.L293:
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
.L316:
	ret
.L318:
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
	jmp	.L309
	.cfi_endproc
.LFE8944:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.isra.75, .-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_.isra.75
	.section	.text.unlikely
.LCOLDE31:
	.text
.LHOTE31:
	.section	.rodata.str1.8
	.align 8
.LC32:
	.string	"ASSERT error at line %d: (v = (char *)mmap(0, ALLOC_SIZE * n, PROT_READ | PROT_WRITE, ALLOC_FLAG, -1, 0)) != MAP_FAILED"
	.section	.rodata.str1.1
.LC33:
	.string	"chunk "
.LC34:
	.string	": "
.LC35:
	.string	"pages"
.LC36:
	.string	"return from chunk "
.LC37:
	.string	" ("
.LC38:
	.string	" / "
.LC39:
	.string	" pages)"
	.section	.text.unlikely
.LCOLDB40:
	.text
.LHOTB40:
	.p2align 4,,15
	.globl	_Z28get_contiguous_aligned_pagesiii
	.type	_Z28get_contiguous_aligned_pagesiii, @function
_Z28get_contiguous_aligned_pagesiii:
.LFB8247:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA8247
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
	jne	.L401
	testl	%r12d, %r12d
	jle	.L332
.L363:
	leal	-1(%r12), %eax
	xorl	%r15d, %r15d
	leaq	(%rax,%rax,2), %r13
	salq	$3, %r13
	jmp	.L326
	.p2align 4,,10
	.p2align 3
.L403:
	addq	$24, %rax
	movq	%rax, %r15
.L326:
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
	je	.L402
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
	jne	.L403
.L323:
	movq	pool+8(%rip), %rax
	cmpq	%rbx, %rax
	movq	%rax, %r15
	je	.L328
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
	jle	.L329
	subq	$8, %rsp
	leaq	384(%rbx), %r13
	movq	%rbx, %rdi
	pushq	$0
	movq	%r13, %rsi
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_
	cmpq	%r13, %r15
	popq	%rdi
	popq	%r8
	je	.L328
	movq	%r13, %rbx
.L331:
	movq	%rbx, %rdi
	addq	$24, %rbx
	call	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.isra.50
	cmpq	%rbx, %r15
	jne	.L331
.L328:
	testl	%r12d, %r12d
	jle	.L332
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L361:
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
	je	.L333
	testq	%rax, %rax
	je	.L334
	movq	(%rsi), %rcx
	movq	%rcx, (%rax)
	movq	8(%rsi), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rsi), %rcx
	movq	%rcx, 16(%rax)
.L334:
	addq	$24, %rax
	movq	%rax, 24(%rdx)
.L335:
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	jle	.L332
	movq	pool(%rip), %rsi
	leaq	24(%r13), %rax
	movq	%rax, %r15
	movq	32(%rsi,%r13), %rax
	subq	8(%rsi,%r13), %rax
	cmpq	$2097152, %rax
	jne	.L361
	.p2align 4,,10
	.p2align 3
.L337:
	movq	_Z6chunksB5cxx11+8(%rip), %rdi
	addl	$1, %ebx
	addq	%r15, %rsi
	movq	24(%rdi), %rax
	cmpq	32(%rdi), %rax
	je	.L404
	testq	%rax, %rax
	je	.L339
	movq	(%rsi), %rdx
	movq	%rdx, (%rax)
	movq	8(%rsi), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rsi), %rdx
	movq	%rdx, 16(%rax)
.L339:
	addq	$24, %rax
	movq	%rax, 24(%rdi)
.L340:
	cmpl	%ebx, %r12d
	je	.L332
	movq	pool(%rip), %rsi
	leaq	24(%r15), %rdx
	movq	8(%rsi,%rdx), %rax
	subq	8(%rsi,%r15), %rax
	cmpq	$2097152, %rax
	jne	.L361
	movq	%rdx, %r15
	jmp	.L337
	.p2align 4,,10
	.p2align 3
.L332:
	movq	_Z6chunksB5cxx11(%rip), %rbx
	cmpq	$_Z6chunksB5cxx11, %rbx
	je	.L321
	movl	$0, -52(%rbp)
	movabsq	$-6148914691236517205, %r12
	jmp	.L344
	.p2align 4,,10
	.p2align 3
.L407:
	movsbl	67(%r15), %esi
.L343:
	movq	%r13, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movq	(%rbx), %rbx
	cmpq	$_Z6chunksB5cxx11, %rbx
	je	.L405
	.p2align 4,,10
	.p2align 3
.L344:
	movq	24(%rbx), %r13
	subq	16(%rbx), %r13
	movl	$6, %edx
	addl	$1, -52(%rbp)
	movl	$.LC33, %esi
	movl	$_ZSt4cout, %edi
	movl	-52(%rbp), %r15d
	sarq	$3, %r13
	imulq	%r12, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r15d, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$2, %edx
	movl	$.LC34, %esi
	movq	%rax, %rdi
	movq	%rax, %r15
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	_ZNSo9_M_insertImEERSoT_
	movl	$5, %edx
	movl	$.LC35, %esi
	movq	%rax, %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	0(%r13), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %r15
	testq	%r15, %r15
	je	.L406
	cmpb	$0, 56(%r15)
	jne	.L407
	movq	%r15, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r15), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L343
	movq	%r15, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L343
.L409:
	movl	$0, -52(%rbp)
.L347:
	movl	$18, %edx
	movl	$.LC36, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	-68(%rbp), %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$2, %edx
	movl	$.LC37, %esi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	-56(%rbp), %esi
	movq	%r14, %rdi
	call	_ZNSolsEi
	movl	$3, %edx
	movl	$.LC38, %esi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	_ZNSo9_M_insertImEERSoT_
	movl	$7, %edx
	movl	$.LC39, %esi
	movq	%rax, %rdi
	movq	%rax, %r14
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %r12
	testq	%r12, %r12
	je	.L408
	cmpb	$0, 56(%r12)
	je	.L351
	movsbl	67(%r12), %esi
.L352:
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
	jle	.L321
	subl	%ebx, %edx
	movslq	%ebx, %rcx
	subl	$1, %edx
	leaq	(%rcx,%rcx,2), %rax
	leaq	1(%rcx,%rdx), %rdx
	salq	$3, %rax
	leaq	(%rdx,%rdx,2), %rcx
	salq	$3, %rcx
.L354:
	movq	16(%r13), %rdx
	movq	(%rdx,%rax), %rdx
	testq	%rdx, %rdx
	je	.L353
	movb	$33, (%rdx)
.L353:
	addq	$24, %rax
	cmpq	%rax, %rcx
	jne	.L354
.L321:
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
.L404:
	.cfi_restore_state
	addq	$16, %rdi
	.cfi_escape 0x2e,0
	call	_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_
	jmp	.L340
.L333:
	leaq	16(%rdx), %rdi
	call	_ZNSt6vectorI8HugePageSaIS0_EE19_M_emplace_back_auxIJRKS0_EEEvDpOT_
	jmp	.L335
.L405:
	movq	_Z6chunksB5cxx11(%rip), %r13
	cmpq	$_Z6chunksB5cxx11, %r13
	je	.L321
	movslq	-56(%rbp), %r15
	movl	$0, -68(%rbp)
	movabsq	$-6148914691236517205, %rdi
.L356:
	movq	16(%r13), %rcx
	movq	24(%r13), %r12
	subq	%rcx, %r12
	sarq	$3, %r12
	imulq	%rdi, %r12
	cmpq	%r12, %r15
	ja	.L346
	movq	%r12, %rsi
	addl	$1, -68(%rbp)
	subq	%r15, %rsi
	je	.L346
	movq	%r14, %rbx
	andq	8(%rcx), %rbx
	je	.L409
	subq	$1, %rsi
	movl	$24, %ebx
	xorl	%eax, %eax
	movl	$0, -52(%rbp)
	jmp	.L349
	.p2align 4,,10
	.p2align 3
.L355:
	addq	$1, %rax
	testq	%r14, 8(%rcx,%rbx)
	leaq	24(%rbx), %rdx
	je	.L347
	movq	%rdx, %rbx
.L349:
	addl	$1, -52(%rbp)
	cmpq	%rsi, %rax
	jne	.L355
.L346:
	movq	0(%r13), %r13
	cmpq	$_Z6chunksB5cxx11, %r13
	jne	.L356
	jmp	.L321
.L329:
	subq	$8, %rsp
	movq	%r15, %rsi
	movq	%rbx, %rdi
	pushq	$0
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP8HugePageSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_
	popq	%rcx
	popq	%rsi
	jmp	.L328
.L351:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r12), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L352
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L352
.L401:
	movl	$pool, %edi
	call	_ZNSt6vectorI8HugePageSaIS0_EE17_M_default_appendEm
	testl	%r12d, %r12d
	movq	pool(%rip), %rbx
	jg	.L363
	jmp	.L323
.L408:
	call	_ZSt16__throw_bad_castv
.L402:
	movq	stderr(%rip), %rdi
	movl	$64, %edx
	movl	$.LC32, %esi
	xorl	%eax, %eax
	call	fprintf
	movl	$.LC10, %edi
	call	perror
.LEHE0:
	movl	$-1, %edi
	call	exit
.L369:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.L358
	call	_ZdlPv
.L358:
	movq	%rbx, %rdi
.LEHB1:
	call	_Unwind_Resume
.LEHE1:
.L406:
.LEHB2:
	call	_ZSt16__throw_bad_castv
.LEHE2:
	.cfi_endproc
.LFE8247:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8247:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8247-.LLSDACSB8247
.LLSDACSB8247:
	.uleb128 .LEHB0-.LFB8247
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L369-.LFB8247
	.uleb128 0
	.uleb128 .LEHB1-.LFB8247
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB8247
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L369-.LFB8247
	.uleb128 0
.LLSDACSE8247:
	.text
	.size	_Z28get_contiguous_aligned_pagesiii, .-_Z28get_contiguous_aligned_pagesiii
	.section	.text.unlikely
.LCOLDE40:
	.text
.LHOTE40:
	.section	.rodata.str1.1
.LC41:
	.string	"/proc/self/pagemap"
	.section	.rodata.str1.8
	.align 8
.LC42:
	.string	"ASSERT error at line %d: (fd = open(\"/proc/self/pagemap\", O_RDONLY)) > 0"
	.section	.rodata.str1.1
.LC43:
	.string	"HugePage v=0x"
.LC44:
	.string	" p=0x"
.LC45:
	.string	"HugePage "
.LC46:
	.string	"pages:"
.LC47:
	.string	"\t v=0x"
.LC48:
	.string	"Min Latency for bit #"
.LC49:
	.string	" = "
	.section	.text.unlikely
.LCOLDB50:
	.section	.text.startup,"ax",@progbits
.LHOTB50:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB8252:
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
	movl	$.LC41, %edi
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	call	open
	testl	%eax, %eax
	movl	%eax, fd(%rip)
	jle	.L462
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
	je	.L412
	call	_ZdlPv
.L412:
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L413
	call	_ZdlPv
.L413:
	xorl	%edi, %edi
	call	_Z7cleanupb
	movq	pages+8(%rip), %r14
	movq	pages(%rip), %r13
	cmpq	%r14, %r13
	je	.L430
	.p2align 4,,10
	.p2align 3
.L448:
	movl	20(%r13), %ebp
	movq	0(%r13), %rbx
	cmpl	$1, %ebp
	je	.L463
	movl	$9, %edx
	movl	$.LC45, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%ebp, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$6, %edx
	movq	%rax, %r12
	movl	$.LC46, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %r15
	testq	%r15, %r15
	je	.L421
	cmpb	$0, 56(%r15)
	je	.L422
	movsbl	67(%r15), %esi
.L423:
	movq	%r12, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	testl	%ebp, %ebp
	jle	.L420
	leal	-1(%rbp), %r12d
	addq	$1, %r12
	salq	$21, %r12
	addq	%rbx, %r12
	jmp	.L428
	.p2align 4,,10
	.p2align 3
.L464:
	movsbl	67(%rbp), %esi
.L426:
	movq	%r15, %rdi
	addq	$2097152, %rbx
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	cmpq	%r12, %rbx
	je	.L420
.L428:
	movq	%rbx, %rdi
	call	_Z3v2pPv
	movl	$6, %edx
	movl	$.LC47, %esi
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
	movl	$.LC44, %esi
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
	je	.L421
	cmpb	$0, 56(%rbp)
	jne	.L464
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L426
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L426
	.p2align 4,,10
	.p2align 3
.L463:
	movl	$13, %edx
	movl	$.LC43, %esi
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
	movl	$.LC44, %esi
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
	je	.L421
	cmpb	$0, 56(%rbx)
	je	.L418
	movsbl	67(%rbx), %esi
.L419:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
.L420:
	addq	$24, %r13
	cmpq	%r13, %r14
	jne	.L448
.L430:
	movl	$25, %esi
	movl	$100, %edi
	movl	$2, %r12d
	call	_Z7genseedii
.L415:
	xorl	%ebx, %ebx
	jmp	.L433
	.p2align 4,,10
	.p2align 3
.L466:
	movsbl	67(%rbp), %esi
.L432:
	movq	%r13, %rdi
	addl	$1, %ebx
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	cmpl	$26, %ebx
	je	.L465
.L433:
	movl	$-1, %edx
	movl	%ebx, %edi
	movl	%edx, %esi
	call	_Z7latencyiii
	movq	%rax, %rbp
	movq	_ZSt4cout(%rip), %rax
	movl	$.LC48, %esi
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
	movl	$.LC49, %esi
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
	je	.L421
	cmpb	$0, 56(%rbp)
	jne	.L466
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L432
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L432
	.p2align 4,,10
	.p2align 3
.L422:
	movq	%r15, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r15), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L423
	movq	%r15, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L423
	.p2align 4,,10
	.p2align 3
.L465:
	subl	$1, %r12d
	jne	.L415
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
.L418:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L419
	movl	$10, %esi
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L419
.L421:
	call	_ZSt16__throw_bad_castv
.L462:
	movq	stderr(%rip), %rdi
	movl	$225, %edx
	movl	$.LC42, %esi
	xorl	%eax, %eax
	call	fprintf
	movl	$.LC10, %edi
	call	perror
	orl	$-1, %edi
	call	exit
	.cfi_endproc
.LFE8252:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE50:
	.section	.text.startup
.LHOTE50:
	.section	.text.unlikely
.LCOLDB51:
	.section	.text.startup
.LHOTB51:
	.p2align 4,,15
	.type	_GLOBAL__sub_I_clk_freq, @function
_GLOBAL__sub_I_clk_freq:
.LFB8868:
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
.LFE8868:
	.size	_GLOBAL__sub_I_clk_freq, .-_GLOBAL__sub_I_clk_freq
	.section	.text.unlikely
.LCOLDE51:
	.section	.text.startup
.LHOTE51:
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_clk_freq
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
	.globl	clk_freq
	.data
	.align 8
	.type	clk_freq, @object
	.size	clk_freq, 8
clk_freq:
	.quad	-1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 5.1.1 20150618 (Red Hat 5.1.1-4)"
	.section	.note.GNU-stack,"",@progbits
