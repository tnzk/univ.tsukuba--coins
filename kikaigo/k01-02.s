	.text
	.align	4
	.global	main
main:
	mov	$1,	%eax
	mov	$0,	%ebx
Label1:	cmp	$11,	%eax
	je	Label2
	add	%eax,	%ebx
	add	$1,	%eax
	jmp	Label1
Label2:	call	stop
