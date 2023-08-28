## *Exercício de sala*

# Tabela:
0 0 0 = 0
0 0 1 = 1
0 1 0 = 2
0 1 1 = 3
1 0 0 = 4
1 0 1 = 5
1 1 0 = 6
1 1 1 = 7

* Regra geral de formação: Soma-se os pesos de todos os bits que são 1 e descarte todos os pesos dos bits que são 0

### Binário para Decimal:
número: 101101
base:   2

`= 2⁵ + 2⁴ + 2³ + 2² + 2¹ + 2⁰ (ñ conta os binários "0")
= 2⁵ + 2³ + 2² + 2⁰
= 32 + 8  + 4  + 1
= 45`


### Decimal para Binário:
número:  9 =      8 + 1        // 9 = 8 + 1, com base no resultado de cada número: 2⁰ 2¹ 2²... tem que representar o 8... até o 1
base:   10        2³+ 2⁰       // Os que estão representados são considerados como 1, os que estão "invisíveis" contam como 0 

`2³ + 2² + 2¹ + 2⁰ = 1 0 0 1`

número: 12 =      8 + 4        // 12 = 8 + 4, com base no resultado de cada número: 2⁰ 2¹ 2²... tem que representar o 8... até o 4
base:   10        2³+ 2²       // Os que estão representados são considerados como 1, os que estão "invisíveis" contam como 0

2³ + 2² + 2¹ + 2⁰ = 1 1 0 0


### Método de divisões sucessivas por 2:
* número 12 
= 12/2 -> 6 e sobra 0
= 6/2  -> 3 e sobra 0
= 3/2  -> 1 e sobra 1
= 1/2  -> não é divisível e ñ coloca vírgula, então... sobra 0 e desce 1 de resto
O ÚLTIMO NÚMERO BINÁRIO É O MAIS SIGNIFICATIVO
= 1 1 0 0


* número 19
= 19/2 -> 9 e sobra 1
= 9/2  -> 4 e sobra 1
= 4/2  -> 2 e sobra 0
= 2/2  -> 1 e sobra 0
= 1/2  -> não é divisível e ñ coloca vírgula, então... sobra 0 e desce 1 de resto
O ÚLTIMO NÚMERO BINÁRIO É O MAIS SIGNIFICATIVO
= 1 0 0 1 1


### Octal para Binário (cada número convertido para binário)
número: 13
base: 8
= 1 (0 0 1) + 3 (0 1 1)
= 0 0 1 0 1 1

### Binário para Octal (conta de 3 em 3 bits)
número: 


### Binário para Hexadecimal
número: 1 1 0 0 1 0 1 0 0 1 0 1 0 1 1 1 1
= (1 1 0 0 ) - ( 1 0 1 0 ) - ( 0 1 0 1 ) - ( 0 1 1 1 )
= C - A - 5 - 7
número: CA57
base:   16


### Contas com binário

#### Soma
* Regra:
0 + 0 = 0
1 + 0 = 1
0 + 1 = 1
1 + 1 = 1 0

* Exemplo:
3 + 1 = (0 1 1) + (0 0 1)
        0 1 1
      + 0 0 1
      = 1 0 0       \\ em decimal = 4

número: 1 1 + 1 1
base: 2
    1 1
  + 1 1
= 1 1 0              \\ em decimal = 6


#### Subtração
* Regra:
0 - 0 = 0
1 - 1 = 0
1 - 0 = 1
10- 1 = 1

* Exemplo:
  1 1                 \\ 3
- 0 1                 \\-1
= 1 0                 \\=2

#### Multiplicação
* Regra:
0 x 0 = 0
0 x 1 = 0
1 x 0 = 0
1 x 1 = 1

* Exemplo:
    1 0 1
x   1 1 1

=      1 0 1
     1 0 1
   1 0 1
= 1 0 0 0 1 1

#### Divisão
* Exemplo:

  1 1 0 % 1 1
= 1 0