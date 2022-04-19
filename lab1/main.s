	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"%f"
	.text
	.globl	inner2
	.type	inner2, @function
inner2:
.LFB509:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movl	%edx, -276(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-264(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -240(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -192(%rbp)
	movl	$0, -252(%rbp)
	jmp	.L3
.L6:
	movl	-252(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-240(%rbp), %rax
	addq	%rdx, %rax
	movaps	(%rax), %xmm0
	movl	-252(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	addq	%rdx, %rax
	movaps	(%rax), %xmm1
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	-144(%rbp), %xmm0
	mulps	-128(%rbp), %xmm0
	movaps	%xmm0, -208(%rbp)
	movaps	-192(%rbp), %xmm0
	movaps	%xmm0, -176(%rbp)
	movaps	-208(%rbp), %xmm0
	movaps	%xmm0, -160(%rbp)
	movaps	-176(%rbp), %xmm0
	addps	-160(%rbp), %xmm0
	movaps	%xmm0, -192(%rbp)
	addl	$1, -252(%rbp)
.L3:
	movl	-276(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	cmpl	%eax, -252(%rbp)
	jl	.L6
	movaps	-208(%rbp), %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	-192(%rbp), %xmm0
	movaps	%xmm0, -32(%rbp)
	movaps	-48(%rbp), %xmm0
	movlps	-24(%rbp), %xmm0
	nop
	movaps	%xmm0, -208(%rbp)
	movaps	-192(%rbp), %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	-208(%rbp), %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	-80(%rbp), %xmm0
	addps	-64(%rbp), %xmm0
	movaps	%xmm0, -192(%rbp)
	movaps	-192(%rbp), %xmm0
	movaps	-192(%rbp), %xmm1
	shufps	$1, %xmm1, %xmm0
	movaps	%xmm0, -208(%rbp)
	movaps	-192(%rbp), %xmm0
	movaps	%xmm0, -112(%rbp)
	movaps	-208(%rbp), %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	-112(%rbp), %xmm0
	addss	-96(%rbp), %xmm0
	nop
	movaps	%xmm0, -192(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -232(%rbp)
	movaps	-192(%rbp), %xmm0
	movaps	%xmm0, -224(%rbp)
	movss	-224(%rbp), %xmm0
	movq	-232(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
	movss	-256(%rbp), %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movss	-256(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	inner2, .-inner2
	.section	.rodata
.LC10:
	.string	"Time taken: %lf sec.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB510:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -272(%rbp)
	movl	$4, -284(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -76(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -72(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -68(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -40(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -36(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -20(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -264(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -256(%rbp)
#APP
# 47 "main.c" 1
	rdtsc

# 0 "" 2
#NO_APP
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movq	$0, -280(%rbp)
	jmp	.L13
.L16:
	movq	-256(%rbp), %rax
	movaps	(%rax), %xmm0
	movq	-264(%rbp), %rax
	movaps	(%rax), %xmm1
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	-112(%rbp), %xmm0
	divps	-96(%rbp), %xmm0
	movaps	%xmm0, -176(%rbp)
	movq	-256(%rbp), %rax
	addq	$64, %rax
	movaps	(%rax), %xmm0
	movq	-264(%rbp), %rax
	addq	$64, %rax
	movaps	(%rax), %xmm1
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	-144(%rbp), %xmm0
	divps	-128(%rbp), %xmm0
	movaps	%xmm0, -160(%rbp)
	movaps	-176(%rbp), %xmm0
	divps	-160(%rbp), %xmm0
	movaps	%xmm0, -192(%rbp)
	addq	$1, -280(%rbp)
.L13:
	cmpq	$999999999, -280(%rbp)
	jle	.L16
#APP
# 54 "main.c" 1
	rdtsc

# 0 "" 2
#NO_APP
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-224(%rbp), %rax
	movq	-240(%rbp), %rdx
	subq	%rdx, %rax
	testq	%rax, %rax
	js	.L17
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L18
.L17:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L18:
	divsd	-272(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	leaq	-288(%rbp), %rax
	movq	%rax, -248(%rbp)
	movaps	-192(%rbp), %xmm0
	movaps	%xmm0, -208(%rbp)
	movss	-208(%rbp), %xmm0
	movq	-248(%rbp), %rax
	movss	%xmm0, (%rax)
	nop
	movss	-288(%rbp), %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1106103653
	.align 4
.LC2:
	.long	1073741824
	.align 4
.LC3:
	.long	1082130432
	.align 4
.LC4:
	.long	1086324736
	.align 4
.LC5:
	.long	1090519040
	.align 4
.LC6:
	.long	1092616192
	.align 4
.LC7:
	.long	1094713344
	.align 4
.LC8:
	.long	1096810496
	.align 4
.LC9:
	.long	1098907648
	.ident	"GCC: (Ubuntu 11.2.0-7ubuntu2) 11.2.0"
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
