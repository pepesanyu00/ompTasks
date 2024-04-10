	.file	"main.cpp"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1354:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1354:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.p2align 4
	.type	main._omp_fn.0, @function
main._omp_fn.0:
.LFB8857:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	call	GOMP_single_start@PLT
	testb	%al, %al
	jne	.L4
.L6:
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L9
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	GOMP_barrier@PLT
	.p2align 4,,10
	.p2align 3
.L4:
	.cfi_restore_state
	movq	(%rbx), %rax
	movq	%rsp, %rbp
	movq	%rax, (%rsp)
	movq	8(%rbx), %rax
	movl	$1, %r9d
	movq	%rax, 8(%rsp)
	movq	16(%rbx), %rax
	movl	$8, %r8d
	movq	%rax, 16(%rsp)
	pushq	$0
	.cfi_def_cfa_offset 72
	movl	$24, %ecx
	xorl	%edx, %edx
	pushq	$0
	.cfi_def_cfa_offset 80
	movq	%rbp, %rsi
	leaq	main._omp_fn.1(%rip), %rdi
	pushq	$0
	.cfi_def_cfa_offset 88
	pushq	$0
	.cfi_def_cfa_offset 96
	call	GOMP_task@PLT
	movq	16(%rbx), %rax
	movl	$1, %r9d
	movq	%rax, 32(%rsp)
	movq	24(%rbx), %rax
	movl	$8, %r8d
	movq	%rax, 40(%rsp)
	movq	%rbp, %rsp
	.cfi_def_cfa_offset 64
	pushq	$0
	.cfi_def_cfa_offset 72
	movl	$16, %ecx
	xorl	%edx, %edx
	pushq	$0
	.cfi_def_cfa_offset 80
	movq	%rbp, %rsi
	leaq	main._omp_fn.2(%rip), %rdi
	pushq	$0
	.cfi_def_cfa_offset 88
	pushq	$0
	.cfi_def_cfa_offset 96
	call	GOMP_task@PLT
	movq	%rbp, %rsp
	.cfi_def_cfa_offset 64
	jmp	.L6
.L9:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8857:
	.size	main._omp_fn.0, .-main._omp_fn.0
	.p2align 4
	.type	main._omp_fn.1, @function
main._omp_fn.1:
.LFB8858:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8858
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	$1, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	lock xaddq	%rbp, xIdCounter(%rip)
	xorl	%ebx, %ebx
	movl	$4294967295, %r13d
.L14:
	movq	%rbx, %r14
	incq	%rbx
	testq	%r14, %r14
	jne	.L11
.L31:
	movl	64+g_ticketlock(%rip), %eax
	movl	68+g_ticketlock(%rip), %edx
	cmpl	%eax, %edx
	ja	.L16
.L12:
	rep nop
	movl	64+g_ticketlock(%rip), %edx
	movl	68+g_ticketlock(%rip), %eax
	cmpl	%eax, %edx
	jnb	.L12
.L16:
	movl	$-1, %eax
	xbegin	.L13
.L13:
	movl	%eax, %r8d
	cmpq	%r13, %r8
	jne	.L14
	movq	%r14, %r11
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L11:
	movq	%rbp, %rsi
	movq	%r8, %rdi
	call	_Z18profileAbortStatusml@PLT
	cmpq	$6, %rbx
	jne	.L31
	movl	$1, %eax
	lock xaddl	%eax, 64+g_ticketlock(%rip)
	movl	68+g_ticketlock(%rip), %edx
	incl	%eax
	cmpl	%edx, %eax
	je	.L29
.L27:
	rep nop
	movl	68+g_ticketlock(%rip), %edx
	cmpl	%edx, %eax
	jne	.L27
.L29:
	movl	$5, %r11d
.L28:
	movq	8(%r12), %rax
	movq	16(%r12), %r15
	movq	(%r12), %r14
	leaq	40000(%rax), %r13
	xorl	%r12d, %r12d
	leaq	40400(%rax), %r9
.L23:
	leaq	(%r15,%r12), %r8
	movq	%r13, %rdi
	leaq	(%r14,%r12), %r10
.L17:
	movl	(%r8), %esi
	movq	%r10, %rcx
	leaq	-40000(%rdi), %rax
	.p2align 4,,10
	.p2align 3
.L22:
	movl	(%rcx), %edx
	addq	$400, %rax
	imull	-400(%rax), %edx
	addq	$4, %rcx
	addl	%edx, %esi
	movl	%esi, (%r8)
	cmpq	%rax, %rdi
	jne	.L22
	addq	$4, %rdi
	addq	$4, %r8
	cmpq	%rdi, %r9
	jne	.L17
	addq	$400, %r12
	cmpq	$40000, %r12
	jne	.L23
	movb	$1, doneFlag(%rip)
	cmpq	$6, %rbx
	je	.L18
	movl	64+g_ticketlock(%rip), %edx
	movl	68+g_ticketlock(%rip), %eax
	cmpl	%eax, %edx
	jnb	.L19
.L21:
	xend
	movq	%rbp, %rdi
	movq	%r11, %rsi
	call	_Z13profileCommitll@PLT
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
.L19:
	.cfi_restore_state
	xabort	$255
	jmp	.L21
.L18:
	lock incl	68+g_ticketlock(%rip)
	movq	%rbp, %rdi
	movq	%r11, %rsi
	call	_Z15profileFallbackll@PLT
	addq	$8, %rsp
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
	.cfi_endproc
.LFE8858:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA8858:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8858-.LLSDACSB8858
.LLSDACSB8858:
.LLSDACSE8858:
	.text
	.size	main._omp_fn.1, .-main._omp_fn.1
	.p2align 4
	.type	main._omp_fn.2, @function
main._omp_fn.2:
.LFB8859:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8859
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	$1, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	lock xaddq	%rbp, xIdCounter(%rip)
	xorl	%ebx, %ebx
	movl	$4294967295, %r12d
.L50:
	movq	%rbx, %r14
	incq	%rbx
	testq	%r14, %r14
	je	.L82
	jmp	.L47
.L48:
	rep nop
.L82:
	movl	64+g_ticketlock(%rip), %edx
	movl	68+g_ticketlock(%rip), %eax
	cmpl	%eax, %edx
	jnb	.L48
	movl	$-1, %eax
	xbegin	.L49
.L49:
	movl	%eax, %r9d
	cmpq	%r12, %r9
	jne	.L50
	movq	%r14, %r8
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L47:
	movq	%rbp, %rsi
	movq	%r9, %rdi
	call	_Z18profileAbortStatusml@PLT
	cmpq	$6, %rbx
	jne	.L82
	movl	$1, %eax
	lock xaddl	%eax, 64+g_ticketlock(%rip)
	movl	68+g_ticketlock(%rip), %edx
	incl	%eax
	cmpl	%eax, %edx
	je	.L66
.L64:
	rep nop
	movl	68+g_ticketlock(%rip), %edx
	cmpl	%edx, %eax
	jne	.L64
.L66:
	movl	$5, %r8d
.L65:
	movq	0(%r13), %rdi
	movq	8(%r13), %rsi
	movl	$400, %ecx
.L61:
	leaq	-400(%rcx), %rax
	.p2align 4,,10
	.p2align 3
.L53:
	movl	(%rdi,%rax), %edx
	incl	%edx
	movl	%edx, (%rsi,%rax)
	addq	$4, %rax
	cmpq	%rax, %rcx
	jne	.L53
	addq	$400, %rcx
	cmpq	$40400, %rcx
	jne	.L61
	cmpb	$0, doneFlag(%rip)
	jne	.L84
.L54:
	xsusldtrk
	rep nop
	xresldtrk
	cmpb	$0, doneFlag(%rip)
	je	.L54
.L84:
	cmpq	$6, %rbx
	je	.L85
	movl	64+g_ticketlock(%rip), %edx
	movl	68+g_ticketlock(%rip), %eax
	cmpl	%eax, %edx
	jnb	.L58
.L59:
	xend
	movq	%rbp, %rdi
	movq	%r8, %rsi
	call	_Z13profileCommitll@PLT
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
.L58:
	.cfi_restore_state
	xabort	$255
	jmp	.L59
.L85:
	lock incl	68+g_ticketlock(%rip)
	movq	%rbp, %rdi
	movq	%r8, %rsi
	call	_Z15profileFallbackll@PLT
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
	.cfi_endproc
.LFE8859:
	.section	.gcc_except_table
.LLSDA8859:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8859-.LLSDACSB8859
.LLSDACSB8859:
.LLSDACSE8859:
	.text
	.size	main._omp_fn.2, .-main._omp_fn.2
	.p2align 4
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB8863:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %r12
	testq	%r12, %r12
	je	.L92
	cmpb	$0, 56(%r12)
	movq	%rdi, %rbp
	je	.L88
	movsbl	67(%r12), %esi
.L89:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	movq	%rax, %rdi
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT
.L88:
	.cfi_restore_state
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	movl	$10, %esi
	cmpq	%rdx, %rax
	je	.L89
	movl	$10, %esi
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L89
.L92:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE8863:
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	.p2align 4
	.globl	_Z11fill_matrixPA100_i
	.type	_Z11fill_matrixPA100_i, @function
_Z11fill_matrixPA100_i:
.LFB8473:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	addq	$40400, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	leaq	400(%rdi), %rbx
.L94:
	leaq	-400(%rbx), %r12
	.p2align 4,,10
	.p2align 3
.L95:
	call	rand@PLT
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	movl	%eax, %ecx
	sarl	$31, %ecx
	sarq	$37, %rdx
	subl	%ecx, %edx
	imull	$100, %edx, %edx
	addq	$4, %r12
	subl	%edx, %eax
	movl	%eax, -4(%r12)
	cmpq	%rbx, %r12
	jne	.L95
	leaq	400(%r12), %rbx
	cmpq	%rbp, %rbx
	jne	.L94
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE8473:
	.size	_Z11fill_matrixPA100_i, .-_Z11fill_matrixPA100_i
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	" "
	.text
	.p2align 4
	.globl	_Z12print_matrixPA100_i
	.type	_Z12print_matrixPA100_i, @function
_Z12print_matrixPA100_i:
.LFB8474:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	addq	$40400, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	.LC0(%rip), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	_ZSt4cout(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	leaq	400(%rdi), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
.L101:
	leaq	-400(%rbp), %rbx
	.p2align 4,,10
	.p2align 3
.L102:
	movl	(%rbx), %esi
	movq	%r12, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	movl	$1, %edx
	movq	%r13, %rsi
	addq	$4, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpq	%rbp, %rbx
	jne	.L102
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.L111
	cmpb	$0, 56(%rbx)
	je	.L104
	movsbl	67(%rbx), %esi
.L105:
	movq	%r12, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	addq	$400, %rbp
	call	_ZNSo5flushEv@PLT
	cmpq	%rbp, %r14
	jne	.L101
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
.L104:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	%r15, %rax
	je	.L105
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L105
.L111:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE8474:
	.size	_Z12print_matrixPA100_i, .-_Z12print_matrixPA100_i
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Error abriendo o inicializando el archivo de estad\303\255sticas."
	.align 8
.LC3:
	.string	"Error volcando las estad\303\255sticas."
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB8475:
	.cfi_startproc
	endbr64
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
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	leaq	-159744(%rsp), %r11
	.cfi_def_cfa 11, 159792
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	.cfi_def_cfa_register 7
	subq	$304, %rsp
	.cfi_def_cfa_offset 160096
	xorl	%esi, %esi
	movl	$40000, %edx
	leaq	80032(%rsp), %rbp
	movq	%rbp, %rdi
	leaq	120032(%rsp), %rbx
	movq	%fs:40, %rax
	movq	%rax, 160040(%rsp)
	xorl	%eax, %eax
	leaq	32(%rsp), %r13
	call	memset@PLT
	xorl	%esi, %esi
	movl	$40000, %edx
	movq	%rbx, %rdi
	call	memset@PLT
	leaq	40032(%rsp), %r12
	movq	%r13, %rdi
	call	_Z11fill_matrixPA100_i
	movq	%r12, %rdi
	call	_Z11fill_matrixPA100_i
	movl	$2, %edi
	call	_Z13statsFileInitl@PLT
	testl	%eax, %eax
	je	.L119
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movq	%rsp, %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	main._omp_fn.0(%rip), %rdi
	movq	%rax, %r14
	movq	%rbp, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%r13, (%rsp)
	movq	%r12, 8(%rsp)
	call	GOMP_parallel@PLT
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	subq	%r14, %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	leaq	_ZSt4cout(%rip), %rbp
	vdivsd	.LC2(%rip), %xmm0, %xmm1
	vmovq	%xmm1, %rbx
	call	_Z9dumpStatsv@PLT
	testl	%eax, %eax
	je	.L120
.L115:
	movl	123668(%rsp), %esi
	movq	%rbp, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movq	%rbp, %rdi
	vmovq	%rbx, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.L114:
	movq	160040(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L121
	addq	$160048, %rsp
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
	xorl	%eax, %eax
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L120:
	.cfi_restore_state
	movq	%rbp, %rdi
	leaq	.LC3(%rip), %rsi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	jmp	.L115
.L119:
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	jmp	.L114
.L121:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE8475:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I__Z11fill_matrixPA100_i, @function
_GLOBAL__sub_I__Z11fill_matrixPA100_i:
.LFB8856:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	_ZStL8__ioinit(%rip), %rbp
	movq	%rbp, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq	%rbp, %rsi
	leaq	__dso_handle(%rip), %rdx
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE8856:
	.size	_GLOBAL__sub_I__Z11fill_matrixPA100_i, .-_GLOBAL__sub_I__Z11fill_matrixPA100_i
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z11fill_matrixPA100_i
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1104006501
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
