	.file	"coba (modifikasi).c"
	.text
	.globl	_coba
	.def	_coba;	.scl	2;	.type	32;	.endef
_coba:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp			; Alokasikan memory sampai ebp-32
	movl	8(%ebp), %eax		; 
	fldl	(%eax)				; 
	fstpl	-8(%ebp)			; 
	movl	12(%ebp), %eax		; 
	fldl	(%eax)				; 
	fstpl	-16(%ebp)			; 
	movl	16(%ebp), %eax		; 
	fldl	(%eax)				; 
	fstpl	-24(%ebp)			; 
	fldl	-8(%ebp)			; 
	faddl	-16(%ebp)			; 
	fstpl	-32(%ebp)			; 
	movl	12(%ebp), %eax		; 
	fldl	-32(%ebp)			; 
	fstpl	(%eax)				; 
	movl	16(%ebp), %eax		; 
	fldl	-16(%ebp)			; 
	fstpl	(%eax)				; 
	movl	8(%ebp), %eax		; 
	fldl	-24(%ebp)			; 
	fstpl	(%eax)				; 
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
