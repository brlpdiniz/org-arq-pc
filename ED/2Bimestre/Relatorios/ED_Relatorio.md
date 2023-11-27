## ED 2º BIM - Desenvolvimento Linguagem Assembly

| GRR | NOME |
| ------ | ------ |
| 2017208552 | Bruno Leandro Diniz |
| 2022288588 | Luiz Gustavo Lopes |

### Desenvolvimento de programas escritos em linguagem de montagem (assembly) e comparativos de tamanho e quantidade de linhas.

## Assembly - Print Hello World
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

## C - Print Hello World
#include <stdio.h>

int main() {
    printf("Hello World");
    
    return 0;
}

## Assembly - somaNum
; Primeiro COD
; Somar numeros

START:
; Salva o 10 no registrador A:
	MOV A, 10
	MOV B, 2

; Faz a soma A + B
	ADD A, B

; Salva o 5 no registrador C:
	MOV C, 5
	MOV D, 3

; Faz a soma C + D
	ADD C, D

## C - somaNum
#include <stdio.h>

/* prints comentados p/ debug */

int main() {
    int A = 10, B = 2, C = 5, D = 3, reg = 0;
    
    reg = A + B;
    // printf ("%d\n", reg);

    reg = C + D;
    // printf ("%d", reg);

    return 0;
}

## Assembly - verificaNum
START:
; Compara os valores A e B (false)
	MOV A, 5
	MOV B, 3
	CMP A, B

; Compara os valores C e D (true)
	MOV C, 7
	MOV D, 7
	CMP C, D

## C - verificaNum
#include <stdio.h>

int main (){
	int A = 5, B = 3, C = 7, D = 7;
	if (A == B) {
		printf ("A = B, true\n");
	} else {
		printf ("A = B, false\n");
	}

	if (C == D) {
		printf ("C = D, true\n");
	} else {
		printf ("C = D, false");
	}

	return 0;
}