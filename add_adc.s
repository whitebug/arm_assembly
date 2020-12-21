@ Example of 64 bit addition
.global	_start			@ Provide program starting address
@ Load the registers with some data
@ First add 64 bit number is 0x00000003FFFFFFFF
_start:	MOV	R2, #0x00000003
	MOV	R3, #0xFFFFFFFF
@ Second 64 number is 0x0000000500000001
	MOV	R4, #0x00000005
	MOV	R5, #0x00000001
	
	ADDS	R1, R3, R5	@ Lower order word
	ADC	R0, R2, R4	@ Higher order word
@ Set up and exit
	MOV	R7, #1		@ Service command code 1
	SVC	0		@ Call Linux to terminate
