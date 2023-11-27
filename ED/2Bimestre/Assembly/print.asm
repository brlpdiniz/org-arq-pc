; print de Hello World

	JMP start
hello: DB "Hello World!" ; variavel
       DB 0

start:
	MOV C, hello    ; aponta p/ variavel
	MOV D, 232	; aponta p/ output
	CALL print
        HLT             ; para a exec

print:			; print(C:*from, D:*to)
	PUSH A
	PUSH B
	MOV B, 0
.loop:
	MOV A, [C]
	MOV [D], A
	INC C
	INC D  
	CMP B, [C]	; check o fim
	JNZ .loop	; pula se nao for

	POP B
	POP A
	RET