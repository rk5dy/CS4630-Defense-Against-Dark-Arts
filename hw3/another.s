	.file	"dot_product.c"
	.text
	.globl	dot_product
	.type	dot_product, @function
dot_product:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$36, %esp
	movl	$0x00000000, %eax
	movl	%eax, -4(%ebp)
	movl	$0, -8(%ebp)
	jmp	.L2
.L3:
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	8(%ebp), %eax
	movups	(%eax), %xmm0
	movl	-8(%ebp), %eax
	sall	$2, %eax
	addl	12(%ebp), %eax
	movups	(%eax), %xmm1
	mulps   %xmm0, %xmm1
	movups	%xmm1, -24(%ebp)
	flds	-24(%ebp)
	flds	-20(%ebp)
	faddp	%st, %st(1)
	flds	-16(%ebp)
	faddp	%st, %st(1)
	flds	-12(%ebp)
	faddp	%st, %st(1)
	flds	-4(%ebp)
	faddp	%st, %st(1)
	fstps	-4(%ebp)
	addl	$4, -8(%ebp)
.L2:
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	.L3
	movl	-4(%ebp), %eax
	movl	%eax, -20(%ebp)
	flds	-20(%ebp)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	dot_product, .-dot_product
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
