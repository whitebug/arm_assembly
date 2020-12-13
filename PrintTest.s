@ Assembler program to print a phrase to stdout
@ R0-R2 - parameters to linux function services
@ R7 - linux function number

.global	_start			@ Provide program starting
@ address to linker
@ set up the parameters to print the phrase
@ and then call Linux to do it

_start:	mov	R0, #1		@ 1 = StdOut
	ldr	R1, =hellotest	@ string to print
	mov	R2, #26		@ length of string
	mov	R7, #4		@ linux write system call
	svc	0		@ call linux to print
@ set up the parameters to exit the program
@ and then call linux to do it
	
	mov	R0, #0		@ use 0 return code
	mov	R7, #1		@ service command code 1 that terminates all
	svc	0		@ call linux to terminate
.data
hellotest:	.ascii		"Just some strange phrase!\n"
