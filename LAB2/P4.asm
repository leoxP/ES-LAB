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
	MOV R0,#5
	MOV R1,R0
	ADD R1,#1
	MOV R2,#0
	MLA R0,R0,R1,R2
	MOVS R0,R0,LSR#1
STOP
	B STOP
	AREA DATA_SEG, DATA, READWRITE
DST DCD 0 
	END