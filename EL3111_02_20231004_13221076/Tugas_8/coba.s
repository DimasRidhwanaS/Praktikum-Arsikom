	.file	"coba.c"
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
	subl	$16, %esp			; Alokasiin memory sampe ebp-16
	movl	8(%ebp), %eax		; Ambil nilai yang ada di ebp+8 ke eax
	movl	(%eax), %eax		; --- update nilai dalam address eax
	movl	%eax, -4(%ebp)		; Masukin nilai dalem eax ke ebp-4
	movl	12(%ebp), %eax		; Ambil nilai yang ada di ebp+12 ke eax
	movl	(%eax), %eax		; ---
	movl	%eax, -8(%ebp)		; Masukin nilai dalem eax ke ebp-8
	movl	16(%ebp), %eax		; Ambil nilai yg ada di ebp+16 ke eax
	movl	(%eax), %eax		; ---
	movl	%eax, -12(%ebp)		; Masukin nilai dalem eax ke ebp-12
	movl	-4(%ebp), %edx		; Masukin nilai dalem ebp-4 ke edx
	movl	-8(%ebp), %eax		; Masukin nilai dalem ebp-8 ke eax
	addl	%edx, %eax			; nilai di eax = edx+eax
	movl	%eax, -16(%ebp)		; Masukin nilai eax ke ebp-16
	movl	12(%ebp), %eax		; Masukin nilai dalem ebp+12 ke eax
	movl	-16(%ebp), %edx		; Masukin nilai dalem ebp-16 ke edx
	movl	%edx, (%eax)		; Masukin nilai dalem edx ke alamat eax (ebp+12)
	movl	16(%ebp), %eax		; Masukin nilai dalem ebp+16 ke eax 
	movl	-8(%ebp), %edx		; Masukin nilai dalem ebp-8 ke edx
	movl	%edx, (%eax)		; Masukin nilai edx ke eax
	movl	8(%ebp), %eax		; Masukin nilai dalem ebp+8 ke eax
	movl	-12(%ebp), %edx		; Masukin nilai dalem ebp-12 ke edx
	movl	%edx, (%eax)		; Masukin nilai edx ke eax
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
