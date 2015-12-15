	.file	"dumbledore.c"
	.globl	grade
	.data
	.type	grade, @object
	.size	grade, 1
grade:
	.byte	67
	.comm	Name,98,32
	.comm	f,4,4
	.text
	.globl	readString
	.type	readString, @function
readString:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$136, %esp
	movl	8(%ebp), %eax
	movl	%eax, -124(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	$0, -120(%ebp)
.L3:
	call	getchar
	movl	%eax, -116(%ebp)
	cmpl	$-1, -116(%ebp)
	je	.L2
	cmpl	$10, -116(%ebp)
	je	.L2
	movl	-116(%ebp), %eax
	movl	%eax, %edx
	leal	-110(%ebp), %eax
	addl	-120(%ebp), %eax
	movb	%dl, (%eax)
	addl	$1, -120(%ebp)
	jmp	.L3
.L2:
	leal	-110(%ebp), %eax
	addl	-120(%ebp), %eax
	movb	$0, (%eax)
	movl	$0, -120(%ebp)
	jmp	.L4
.L5:
	movl	-120(%ebp), %eax
	addl	-124(%ebp), %eax
	leal	-110(%ebp), %edx
	addl	-120(%ebp), %edx
	movzbl	(%edx), %edx
	movb	%dl, (%eax)
	addl	$1, -120(%ebp)
.L4:
	cmpl	$97, -120(%ebp)
	jle	.L5
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L6
	call	__stack_chk_fail
.L6:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	readString, .-readString
	.section	.rodata
.LC0:
	.string	"Wizard in Training"
.LC1:
	.string	"Thank you, %s.\n"
	.align 4
.LC2:
	.string	"I recommend that you get a grade of %c on this assignment.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	andl	$-16, %esp
	subl	$16, %esp
	movl	$Name, %eax
	andl	$-4096, %eax
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	mprotect
	movl	$Name, (%esp)
	call	readString
	movl	$Name, %edx
	movl	$.LC0, %eax
	movl	$19, %ecx
	movl	%edx, %esi
	movl	%eax, %edi
	repz cmpsb
	seta	%dl
	setb	%al
	movl	%edx, %ecx
	subb	%al, %cl
	movl	%ecx, %eax
	movsbl	%al, %eax
	testl	%eax, %eax
	jne	.L8
	movb	$66, grade
.L8:
	movl	$.LC1, %eax
	movl	$Name, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	movzbl	grade, %eax
	movsbl	%al, %edx
	movl	$.LC2, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	$0, (%esp)
	call	exit
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
