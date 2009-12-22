	.data
	.align	4
fib:	.long	0,1,1,0,0,0,0,0,0,0

	.text
	.align	4
	.global	main
main:
	mov	$0,		%eax # fib(n-2)
	mov	$1,		%ecx # fib(n-1)
	mov	$2,		%edx # fib(n)
	mov	$0,		%ebx
Label1:	cmp	$11,		%edx
	je	Label2
	mov	fib(,%eax,4),	%ebx 		# ebx = fib(n-2)
	add	fib(,%ecx,4),	%ebx 		# ebx += fib(n-1)
	mov	%ebx,		fib(,%edx,4)	# fib(n) = ebx
	# Increment indexes of the array
	add	$1,		%eax
	add	$1,		%ecx
	add	$1,		%edx
	jmp	Label1
Label2:	call	stop
