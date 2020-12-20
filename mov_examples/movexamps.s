@ Examples of the MOV instruction
.global	_start	@ Provide program starting address

@ Load R2 with 0x4F5D6E3A first using MOV and MOVT
_start:	MOV	R2, #0x6E3A
	MOV	R2, #0x4F5D

@ Just move R2 into R1
	MOV	R1, R2

@ Let's see all the shift versions of MOV
	MOV	R1, R2, LSL #1	@ Logical shift left
	MOV	R1, R2, LSR #1	@ Logical shift right
	MOV	R1, R2, ASR #1	@ Arighmetic shift right
	MOV	R1, R2, ROR #1	@ Rotate right
	MOV	R1, R2, RRX	@ Rotate extended right

@ Repeat the above shifts using the Assembler mnemonics
	LSL	R1, R2, #1
	LSR	R1, R2, #1
	ASR	R1, R2, #1
	ROR	R1, R2

@ Example that works with 8 bit immediate and shift
	MOV	R1, #0xAB000000	@ Too big for #imm16

@ Example that can't be represened and results in an error
@	MOV	R1, #0xABCDEF11	@ Too big for #imm16

@ Example for MVN
	MVN	R1, #45

@ Example of MOV that the Assembler will change to MVN
	MOV	R1, #0xFFFFFFFE @(-2)

@ Set up the parameters to exit the program
	MOV	R0, #0		@ 0 as return code
	MOV	R7, #1		@ Service command code 1
	SVC	0		@ Call Linux to terminate
