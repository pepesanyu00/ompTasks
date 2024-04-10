	.file	"rtmIntel.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"stats/%d.stats"
.LC1:
	.string	"Nombre del fichero: %s\n"
	.text
	.p2align 4
	.globl	_Z13statsFileInitl
	.type	_Z13statsFileInitl, @function
_Z13statsFileInitl:
.LFB5577:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	imulq	$248, %rbp, %rbx
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r12
	movl	$0, 64+g_ticketlock(%rip)
	movl	$1, 68+g_ticketlock(%rip)
	call	getpid@PLT
	movl	%eax, %r8d
	leaq	.LC0(%rip), %rcx
	movl	$25, %edx
	movl	$1, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	__sprintf_chk@PLT
	leaq	fname(%rip), %r8
	movq	%r8, %rdi
	movl	$255, %edx
	movq	%r12, %rsi
	call	strncpy@PLT
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%rbx, %rdi
	movq	%rbp, xactCount(%rip)
	call	malloc@PLT
	movq	%rax, stats(%rip)
	testq	%rax, %rax
	je	.L7
	leaq	(%rax,%rbx), %rdx
	testq	%rbp, %rbp
	jle	.L5
	.p2align 4,,10
	.p2align 3
.L4:
	movq	$0, 64(%rax)
	movq	$0, 72(%rax)
	movq	$0, 80(%rax)
	movq	$0, 88(%rax)
	movq	$0, 104(%rax)
	movq	$0, 96(%rax)
	movq	$0, 112(%rax)
	movq	$0, 120(%rax)
	movq	$0, 128(%rax)
	movq	$0, 136(%rax)
	movq	$0, 144(%rax)
	movq	$0, 152(%rax)
	movq	$0, 160(%rax)
	movq	$0, 168(%rax)
	movq	$0, 176(%rax)
	addq	$248, %rax
	cmpq	%rdx, %rax
	jne	.L4
.L5:
	movl	$1, %eax
.L1:
	movq	40(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L12
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	.L1
.L12:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5577:
	.size	_Z13statsFileInitl, .-_Z13statsFileInitl
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"long unsigned int profileAbortStatus(long unsigned int, long int)"
	.section	.rodata.str1.1
.LC3:
	.string	"lib/rtmIntel.c"
.LC4:
	.string	"0"
	.text
	.p2align 4
	.globl	_Z18profileAbortStatusml
	.type	_Z18profileAbortStatusml, @function
_Z18profileAbortStatusml:
.LFB5578:
	.cfi_startproc
	endbr64
	imulq	$248, %rsi, %rsi
	addq	stats(%rip), %rsi
	incq	64(%rsi)
	testb	$1, %dil
	je	.L15
	movq	%rdi, %rax
	shrq	$24, %rax
	movzbl	%al, %eax
	incq	72(%rsi)
	cmpq	$255, %rax
	je	.L59
.L15:
	movq	%rdi, %rcx
	movq	%rdi, %rdx
	movq	%rdi, %rax
	andl	$4, %ecx
	andl	$8, %edx
	andl	$16, %eax
	testb	$2, %dil
	je	.L46
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	incq	88(%rsi)
	testq	%rcx, %rcx
	je	.L18
	incq	96(%rsi)
.L18:
	testq	%rdx, %rdx
	je	.L19
	incq	104(%rsi)
.L19:
	testq	%rax, %rax
	jne	.L60
	testb	$32, %dil
	jne	.L61
	movq	%rdi, %r8
	andl	$32, %r8d
	testq	%rcx, %rcx
	je	.L21
	incq	112(%rsi)
.L21:
	testq	%rdx, %rdx
	je	.L22
	incq	120(%rsi)
.L22:
	testq	%rax, %rax
	je	.L23
	incq	128(%rsi)
	testq	%r8, %r8
	je	.L25
.L24:
	incq	136(%rsi)
.L25:
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L46:
	movq	%rdi, %r8
	andl	$32, %r8d
	testq	%rcx, %rcx
	je	.L48
	incq	112(%rsi)
.L48:
	testq	%rdx, %rdx
	je	.L50
	incq	120(%rsi)
.L50:
	testq	%rax, %rax
	je	.L52
	incq	128(%rsi)
	testq	%r8, %r8
	je	.L54
.L53:
	incq	136(%rsi)
.L54:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L52:
	testq	%r8, %r8
	jne	.L53
	testq	%rdi, %rdi
	jne	.L54
	incq	144(%rsi)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	.cfi_def_cfa_offset 16
	testq	%r8, %r8
	jne	.L24
	testq	%rdi, %rdi
	jne	.L25
	incq	144(%rsi)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L59:
	incq	80(%rsi)
	jmp	.L15
.L60:
	.cfi_def_cfa_offset 16
	leaq	.LC2(%rip), %rcx
	movl	$95, %edx
	leaq	.LC3(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	__assert_fail@PLT
.L61:
	leaq	.LC2(%rip), %rcx
	movl	$97, %edx
	leaq	.LC3(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE5578:
	.size	_Z18profileAbortStatusml, .-_Z18profileAbortStatusml
	.p2align 4
	.globl	_Z13profileCommitll
	.type	_Z13profileCommitll, @function
_Z13profileCommitll:
.LFB5579:
	.cfi_startproc
	endbr64
	imulq	$248, %rdi, %rdi
	addq	stats(%rip), %rdi
	incq	152(%rdi)
	addq	%rsi, 168(%rdi)
	ret
	.cfi_endproc
.LFE5579:
	.size	_Z13profileCommitll, .-_Z13profileCommitll
	.p2align 4
	.globl	_Z15profileFallbackll
	.type	_Z15profileFallbackll, @function
_Z15profileFallbackll:
.LFB5580:
	.cfi_startproc
	endbr64
	imulq	$248, %rdi, %rdi
	addq	stats(%rip), %rdi
	incq	160(%rdi)
	addq	%rsi, 176(%rdi)
	ret
	.cfi_endproc
.LFE5580:
	.size	_Z15profileFallbackll, .-_Z15profileFallbackll
	.section	.rodata.str1.1
.LC5:
	.string	"w"
.LC6:
	.string	"Writing TM stats to: %s\n"
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"-----------------------------------------\nOutput file: %s\n----------------- Stats -----------------\n"
	.section	.rodata.str1.1
.LC8:
	.string	"#Threads: %li\n"
.LC9:
	.string	"Abort Count:"
.LC10:
	.string	" XID%d: "
.LC11:
	.string	"%lu "
.LC12:
	.string	"Total: %lu\n"
.LC13:
	.string	"Explicit aborts:"
.LC14:
	.string	" Total: %lu\n"
.LC15:
	.string	"  \302\273     Subs:"
.LC16:
	.string	"Retry aborts:"
.LC17:
	.string	"  \302\273     Con:"
.LC18:
	.string	"  \302\273     Cap:"
.LC19:
	.string	"Conflict aborts:"
.LC20:
	.string	"Capacity aborts:"
.LC21:
	.string	"Debug aborts:"
.LC22:
	.string	"Nested aborts:"
.LC23:
	.string	"eax=0 aborts:"
.LC24:
	.string	"Commits:"
.LC25:
	.string	"Fallbacks:"
.LC26:
	.string	"RetriesCommited:"
.LC27:
	.string	"Total: %lu "
.LC28:
	.string	"PerXact: %f\n"
.LC29:
	.string	"RetriesFallbacked:"
.LC30:
	.string	"PerXact: %f\nRetriesAvg: %f\n"
	.text
	.p2align 4
	.globl	_Z9dumpStatsv
	.type	_Z9dumpStatsv, @function
_Z9dumpStatsv:
.LFB5581:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC5(%rip), %rsi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	fname(%rip), %r12
	movq	%r12, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	call	fopen@PLT
	testq	%rax, %rax
	je	.L96
	movq	%rax, %rbp
	movq	%r12, %rdx
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%r12, %rcx
	leaq	.LC7(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movq	xactCount(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	xorl	%eax, %eax
	leaq	.LC9(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	cmpq	$0, xactCount(%rip)
	jle	.L97
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r15d, %r15d
	leaq	.LC10(%rip), %r12
	leaq	.LC11(%rip), %rbx
	.p2align 4,,10
	.p2align 3
.L67:
	movl	%r13d, %ecx
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	movq	%rbx, %rdx
	movq	64(%rax,%r14), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	incq	%r13
	addq	64(%rax,%r14), %r15
	addq	$248, %r14
	cmpq	%r13, xactCount(%rip)
	jg	.L67
.L66:
	movq	%r15, %rcx
	leaq	.LC12(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	xorl	%eax, %eax
	leaq	.LC13(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	cmpq	$0, xactCount(%rip)
	jle	.L98
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%r15d, %r15d
	leaq	.LC10(%rip), %r12
	leaq	.LC11(%rip), %rbx
	.p2align 4,,10
	.p2align 3
.L69:
	movl	%r13d, %ecx
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	movq	%rbx, %rdx
	movq	72(%rax,%r14), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	incq	%r13
	addq	72(%rax,%r14), %r15
	addq	$248, %r14
	cmpq	%r13, xactCount(%rip)
	jg	.L69
.L68:
	movq	%r15, %rcx
	leaq	.LC14(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	xorl	%eax, %eax
	leaq	.LC15(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	cmpq	$0, xactCount(%rip)
	jle	.L99
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	leaq	.LC10(%rip), %r12
	leaq	.LC11(%rip), %rbx
	.p2align 4,,10
	.p2align 3
.L71:
	movl	%r13d, %ecx
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	movq	%rbx, %rdx
	movq	80(%rax,%r15), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	incq	%r13
	addq	80(%rax,%r15), %r14
	addq	$248, %r15
	cmpq	%r13, xactCount(%rip)
	jg	.L71
.L70:
	movq	%r14, %rcx
	leaq	.LC14(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	xorl	%eax, %eax
	leaq	.LC16(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	cmpq	$0, xactCount(%rip)
	jle	.L100
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	leaq	.LC10(%rip), %r12
	leaq	.LC11(%rip), %rbx
	.p2align 4,,10
	.p2align 3
.L73:
	movl	%r13d, %ecx
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	movq	%rbx, %rdx
	movq	88(%rax,%r15), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	incq	%r13
	addq	88(%rax,%r15), %r14
	addq	$248, %r15
	cmpq	%r13, xactCount(%rip)
	jg	.L73
.L72:
	movq	%r14, %rcx
	leaq	.LC14(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	xorl	%eax, %eax
	leaq	.LC17(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	cmpq	$0, xactCount(%rip)
	jle	.L101
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	leaq	.LC10(%rip), %r12
	leaq	.LC11(%rip), %rbx
	.p2align 4,,10
	.p2align 3
.L75:
	movl	%r13d, %ecx
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	movq	%rbx, %rdx
	movq	96(%rax,%r15), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	incq	%r13
	addq	96(%rax,%r15), %r14
	addq	$248, %r15
	cmpq	%r13, xactCount(%rip)
	jg	.L75
.L74:
	movq	%r14, %rcx
	leaq	.LC14(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	xorl	%eax, %eax
	leaq	.LC18(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	cmpq	$0, xactCount(%rip)
	jle	.L102
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	leaq	.LC10(%rip), %r12
	leaq	.LC11(%rip), %rbx
	.p2align 4,,10
	.p2align 3
.L77:
	movl	%r13d, %ecx
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	movq	%rbx, %rdx
	movq	104(%rax,%r15), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	incq	%r13
	addq	104(%rax,%r15), %r14
	addq	$248, %r15
	cmpq	%r13, xactCount(%rip)
	jg	.L77
.L76:
	movq	%r14, %rcx
	leaq	.LC14(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	xorl	%eax, %eax
	leaq	.LC19(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	cmpq	$0, xactCount(%rip)
	jle	.L103
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	leaq	.LC10(%rip), %r12
	leaq	.LC11(%rip), %rbx
	.p2align 4,,10
	.p2align 3
.L79:
	movl	%r13d, %ecx
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	movq	%rbx, %rdx
	movq	112(%rax,%r15), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	incq	%r13
	addq	112(%rax,%r15), %r14
	addq	$248, %r15
	cmpq	%r13, xactCount(%rip)
	jg	.L79
.L78:
	movq	%r14, %rcx
	leaq	.LC14(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	xorl	%eax, %eax
	leaq	.LC20(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	cmpq	$0, xactCount(%rip)
	jle	.L104
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	leaq	.LC10(%rip), %r12
	leaq	.LC11(%rip), %rbx
	.p2align 4,,10
	.p2align 3
.L81:
	movl	%r13d, %ecx
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	movq	%rbx, %rdx
	movq	120(%rax,%r15), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	incq	%r13
	addq	120(%rax,%r15), %r14
	addq	$248, %r15
	cmpq	%r13, xactCount(%rip)
	jg	.L81
.L80:
	movq	%r14, %rcx
	leaq	.LC14(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	xorl	%eax, %eax
	leaq	.LC21(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	cmpq	$0, xactCount(%rip)
	jle	.L105
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	leaq	.LC10(%rip), %r12
	leaq	.LC11(%rip), %rbx
	.p2align 4,,10
	.p2align 3
.L83:
	movl	%r13d, %ecx
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	movq	%rbx, %rdx
	movq	128(%rax,%r15), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	incq	%r13
	addq	128(%rax,%r15), %r14
	addq	$248, %r15
	cmpq	%r13, xactCount(%rip)
	jg	.L83
.L82:
	movq	%r14, %rcx
	leaq	.LC14(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	xorl	%eax, %eax
	leaq	.LC22(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	cmpq	$0, xactCount(%rip)
	jle	.L106
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	leaq	.LC10(%rip), %r12
	leaq	.LC11(%rip), %rbx
	.p2align 4,,10
	.p2align 3
.L85:
	movl	%r13d, %ecx
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	movq	%rbx, %rdx
	movq	136(%rax,%r15), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	incq	%r13
	addq	136(%rax,%r15), %r14
	addq	$248, %r15
	cmpq	%r13, xactCount(%rip)
	jg	.L85
.L84:
	movq	%r14, %rcx
	leaq	.LC14(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	xorl	%eax, %eax
	leaq	.LC23(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	cmpq	$0, xactCount(%rip)
	jle	.L107
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	leaq	.LC10(%rip), %r12
	leaq	.LC11(%rip), %rbx
	.p2align 4,,10
	.p2align 3
.L87:
	movl	%r13d, %ecx
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	movq	%rbx, %rdx
	movq	144(%rax,%r15), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	incq	%r13
	addq	144(%rax,%r15), %r14
	addq	$248, %r15
	cmpq	%r13, xactCount(%rip)
	jg	.L87
.L86:
	movq	%r14, %rcx
	leaq	.LC14(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	xorl	%eax, %eax
	leaq	.LC24(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	cmpq	$0, xactCount(%rip)
	jle	.L108
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	leaq	.LC10(%rip), %r12
	leaq	.LC11(%rip), %rbx
	.p2align 4,,10
	.p2align 3
.L89:
	movl	%r14d, %ecx
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	movq	%rbx, %rdx
	movq	152(%rax,%r13), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	incq	%r14
	addq	152(%rax,%r13), %r15
	addq	$248, %r13
	cmpq	%r14, xactCount(%rip)
	jg	.L89
.L88:
	movq	%r15, %rcx
	leaq	.LC14(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	xorl	%eax, %eax
	leaq	.LC25(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	cmpq	$0, xactCount(%rip)
	jle	.L109
	movq	$0, 24(%rsp)
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	leaq	.LC10(%rip), %r12
	leaq	.LC11(%rip), %rbx
	.p2align 4,,10
	.p2align 3
.L91:
	movl	%r14d, %ecx
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	movq	%rbx, %rdx
	movq	160(%rax,%r13), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	incq	%r14
	movq	160(%rax,%r13), %rax
	addq	$248, %r13
	addq	%rax, 24(%rsp)
	cmpq	%r14, xactCount(%rip)
	jg	.L91
	addq	24(%rsp), %r15
.L90:
	movq	24(%rsp), %rcx
	leaq	.LC14(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	xorl	%eax, %eax
	leaq	.LC26(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	cmpq	$0, xactCount(%rip)
	jle	.L110
	xorl	%r13d, %r13d
	xorl	%r8d, %r8d
	xorl	%r14d, %r14d
	leaq	.LC10(%rip), %r12
	leaq	.LC11(%rip), %rbx
	.p2align 4,,10
	.p2align 3
.L93:
	movl	%r8d, %ecx
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	movq	%r8, 8(%rsp)
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	movq	%rbx, %rdx
	movq	168(%rax,%r13), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	movq	8(%rsp), %r8
	movq	stats(%rip), %rax
	incq	%r8
	addq	168(%rax,%r13), %r14
	addq	$248, %r13
	cmpq	%r8, xactCount(%rip)
	jg	.L93
.L92:
	movq	%r14, %rcx
	leaq	.LC27(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
	vxorps	%xmm4, %xmm4, %xmm4
	vcvtusi2ssq	%r14, %xmm4, %xmm1
	vcvtsi2ssq	xactCount(%rip), %xmm4, %xmm0
	leaq	.LC28(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	vdivss	%xmm0, %xmm1, %xmm0
	movl	$1, %eax
	vmovd	%xmm1, %ebx
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	call	__fprintf_chk@PLT
	xorl	%eax, %eax
	leaq	.LC29(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	cmpq	$0, xactCount(%rip)
	jle	.L111
	xorl	%r13d, %r13d
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	leaq	.LC10(%rip), %r12
	leaq	.LC11(%rip), %rbx
	.p2align 4,,10
	.p2align 3
.L95:
	movl	%r8d, %ecx
	movq	%r12, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	movq	%r9, 16(%rsp)
	movq	%r8, 8(%rsp)
	call	__fprintf_chk@PLT
	movq	stats(%rip), %rax
	movq	%rbx, %rdx
	movq	176(%rax,%r13), %rcx
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	__fprintf_chk@PLT
	movq	8(%rsp), %r8
	movq	stats(%rip), %rax
	movq	16(%rsp), %r9
	incq	%r8
	addq	176(%rax,%r13), %r9
	addq	$248, %r13
	cmpq	%r8, xactCount(%rip)
	jg	.L95
	addq	%r9, %r14
	vxorps	%xmm7, %xmm7, %xmm7
	vcvtusi2ssq	%r14, %xmm7, %xmm1
	vmovd	%xmm1, %ebx
.L94:
	movq	%r9, %rcx
	leaq	.LC27(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	movq	%r9, 8(%rsp)
	call	__fprintf_chk@PLT
	vxorps	%xmm3, %xmm3, %xmm3
	vcvtusi2ssq	%r15, %xmm3, %xmm0
	movq	8(%rsp), %r9
	vmovd	%ebx, %xmm6
	vcvtusi2ssq	24(%rsp), %xmm3, %xmm2
	vdivss	%xmm0, %xmm6, %xmm1
	vcvtusi2ssq	%r9, %xmm3, %xmm0
	leaq	.LC30(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movl	$2, %eax
	vdivss	%xmm2, %xmm0, %xmm0
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	call	__fprintf_chk@PLT
	movq	%rbp, %rdi
	call	fclose@PLT
	movq	stats(%rip), %rdi
	call	free@PLT
	movl	$1, %eax
.L64:
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
	.p2align 4,,10
	.p2align 3
.L97:
	.cfi_restore_state
	xorl	%r15d, %r15d
	jmp	.L66
	.p2align 4,,10
	.p2align 3
.L98:
	xorl	%r15d, %r15d
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L99:
	xorl	%r14d, %r14d
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L100:
	xorl	%r14d, %r14d
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L101:
	xorl	%r14d, %r14d
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L102:
	xorl	%r14d, %r14d
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L103:
	xorl	%r14d, %r14d
	jmp	.L78
	.p2align 4,,10
	.p2align 3
.L104:
	xorl	%r14d, %r14d
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L105:
	xorl	%r14d, %r14d
	jmp	.L82
	.p2align 4,,10
	.p2align 3
.L106:
	xorl	%r14d, %r14d
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L107:
	xorl	%r14d, %r14d
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L108:
	xorl	%r15d, %r15d
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L109:
	movq	$0, 24(%rsp)
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L110:
	xorl	%r14d, %r14d
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L111:
	xorl	%r9d, %r9d
	jmp	.L94
.L96:
	xorl	%eax, %eax
	jmp	.L64
	.cfi_endproc
.LFE5581:
	.size	_Z9dumpStatsv, .-_Z9dumpStatsv
	.globl	g_fallback_lock
	.data
	.align 64
	.type	g_fallback_lock, @object
	.size	g_fallback_lock, 64
g_fallback_lock:
	.long	0
	.long	1
	.zero	56
	.globl	global_lock
	.bss
	.align 32
	.type	global_lock, @object
	.size	global_lock, 40
global_lock:
	.zero	40
	.globl	bar_lock
	.align 32
	.type	bar_lock, @object
	.size	bar_lock, 40
bar_lock:
	.zero	40
	.globl	count
	.align 4
	.type	count, @object
	.size	count, 4
count:
	.zero	4
	.globl	sense
	.align 4
	.type	sense, @object
	.size	sense, 4
sense:
	.zero	4
	.globl	g_ticketlock
	.align 32
	.type	g_ticketlock, @object
	.size	g_ticketlock, 136
g_ticketlock:
	.zero	136
	.globl	stats
	.align 8
	.type	stats, @object
	.size	stats, 8
stats:
	.zero	8
	.globl	xactCount
	.align 8
	.type	xactCount, @object
	.size	xactCount, 8
xactCount:
	.zero	8
	.globl	fname
	.align 32
	.type	fname, @object
	.size	fname, 256
fname:
	.zero	256
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
