	.data
	.align	4
x:	.long	0x80000009
y:	.long	0x80000008
	.text
	.global	main
main:	mov	$0,	%eax
	mov	x,	%ebx
	add	%ebx,	y
	jno	fin
ovrflw:	mov	$1,	%eax
fin:	mov	y,	%ebx
	call	stop
