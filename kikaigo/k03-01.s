	.data
	.align	4
x:	.long	2
y:	.long	14

	.text
	.align	4
	.global	main
main:
	mov	$0,	%eax
Label1:	cmp	$0,	y
	je	Label2
	mov	y,	%ebx	# +--------
	and	$1,	%ebx	# | if(y.0)
	jz	Zero		# |   %ebx += x
	add	x,	%eax	# +--------
Zero:	mov	y,	%ebx	# +---------
	shr	$1,	%ebx	# | y >> 1
	mov	%ebx,	y	# +---------
	mov	x,	%ebx	# +---------
	shl	$1,	%ebx	# | x << 1
	mov	%ebx,	x	# +---------
	jmp	Label1
Label2:
	call	stop
