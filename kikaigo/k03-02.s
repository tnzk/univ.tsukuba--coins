	.data
	.align	4
x:	.long	0x87001240, 0x00124011, 0x8130ffff, 0x1234
y:	.long	0x07001245, 0x12f01348, 0x8230ffff, 0x12
	.text
	.global	main
main:	mov	x + 12,	%edx	
	mov	x + 8,	%ecx
	mov	x + 4,	%ebx
	mov	x,	%eax

	adc	y,	%eax
	adc	y + 4,	%ebx
	adc	y + 8,	%ecx
	adc	y + 12,	%edx

	call	stop
