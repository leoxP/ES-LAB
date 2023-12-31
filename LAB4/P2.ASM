	AREA RESET, DATA, READONLY
	 EXPORT __Vectors
	 
__Vectors
	DCD 0x10010000
	DCD Reset_Handler
	
	ALIGN
	AREA CODE_SEG, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
	
Reset_Handler
	LDR R6,=NUM
	LDR R7,=RES
	LDR R0,[R6]
	MOV R2,#1
LOOP
	MUL R2,R0
	SUBS R0,#1
	BEQ EXIT
	B LOOP
EXIT
	STR R2,[R7]
STOP
	B STOP
NUM DCD 5
	AREA data, DATA, READWRITE
RES DCD 0