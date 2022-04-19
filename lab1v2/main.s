	.file	"main.c"
	.text
	.type	hardCalculate, @function
hardCalculate:
.LFB4379:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L3:
	movsd	-8(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -12(%rbp)
.L2:
	cmpl	$9999998, -12(%rbp)
	jle	.L3
	movsd	-8(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4379:
	.size	hardCalculate, .-hardCalculate
	.section	.rodata
.LC4:
	.string	"\nTicks: %lld\nLatency: %lf\n"
	.text
	.globl	calculateLatency
	.type	calculateLatency, @function
calculateLatency:
.LFB4380:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, %eax
	call	hardCalculate
	leaq	-52(%rbp), %rax
	movq	%rax, -16(%rbp)
	rdtscp
	movl	%ecx, %esi
	movq	-16(%rbp), %rcx
	movl	%esi, (%rcx)
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, -48(%rbp)
#APP
# 20 "main.c" 1
	mov $0, %ecx;.L5:divps    %xmm2, %xmm1;divps    %xmm2, %xmm1;divps    %xmm2, %xmm1;divps    %xmm2, %xmm1;divps    %xmm2, %xmm1;inc    %ecx;cmp    $9999999, %ecx;jl     .L5;
# 0 "" 2
#NO_APP
	leaq	-52(%rbp), %rax
	movq	%rax, -24(%rbp)
	rdtscp
	movl	%ecx, %esi
	movq	-24(%rbp), %rcx
	movl	%esi, (%rcx)
	salq	$32, %rdx
	orq	%rdx, %rax
	subq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	js	.L8
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L9
.L8:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L9:
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %xmm0
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movsd	-32(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4380:
	.size	calculateLatency, .-calculateLatency
	.section	.rodata
.LC5:
	.string	"\nTicks: %lld\nThroughput: %lf\n"
	.text
	.globl	calculateThroughput
	.type	calculateThroughput, @function
calculateThroughput:
.LFB4381:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, %eax
	call	hardCalculate
	leaq	-52(%rbp), %rax
	movq	%rax, -16(%rbp)
	rdtscp
	movl	%ecx, %esi
	movq	-16(%rbp), %rcx
	movl	%esi, (%rcx)
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, -48(%rbp)
#APP
# 47 "main.c" 1
	mov $0, %ecx;.L10:divps    %xmm0, %xmm0;divps    %xmm1, %xmm1;divps    %xmm2, %xmm2;divps    %xmm3, %xmm3;divps    %xmm4, %xmm4;inc    %ecx;cmp    $9999999, %ecx;jl     .L10;
# 0 "" 2
#NO_APP
	leaq	-52(%rbp), %rax
	movq	%rax, -24(%rbp)
	rdtscp
	movl	%ecx, %esi
	movq	-24(%rbp), %rcx
	movl	%esi, (%rcx)
	salq	$32, %rdx
	orq	%rdx, %rax
	subq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	js	.L15
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L16
.L15:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L16:
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %xmm0
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movsd	-32(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4381:
	.size	calculateThroughput, .-calculateThroughput
	.globl	main
	.type	main, @function
main:
.LFB4382:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	call	calculateLatency
	movl	$0, %eax
	call	calculateThroughput
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4382:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	-1717986918
	.long	1072798105
	.align 8
.LC2:
	.long	-671088640
	.long	1099421571
	.align 8
.LC3:
	.long	1717986918
	.long	1073374822
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
