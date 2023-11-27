; Simples Example
; Soma dois valores atribuidos a variaveis

	JMP START
num1: DB 10
num2: DB 15

START:
	MOV C, num1	; moveu para o reg C, o end de num1
	MOV D, num2	; moveu para o reg D, o end de num2

	PUSH A		; joga na pilha o reg A
	PUSH B		; joga na pilha o reg B

	MOV B, [C]	; transfere o valor do reg C 
	MOV A, [D]	; transfere o valor do reg D

	ADD A, B	; soma os dois valores e armazena o reg A

	HLT			; Stop execution