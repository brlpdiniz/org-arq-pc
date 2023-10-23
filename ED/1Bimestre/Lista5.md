## Lista 5 – Memória Principal

| GRR | NOME |
| ------ | ------ |
| 2017208552 | Bruno Leandro Diniz |

## 1 - Um computador possui uma memória principal com capacidade para armazenar palavras de 16 bits em cada uma de suas N células, e o seu barramento de endereços tem 12 bits de tamanho. Sabendo-se que em cada célula pode-se armazenar o valor exato de uma palavra, quantos bytes poderão ser armazena-dos nessa memória?

T = N.M
M = 16
N = 2¹² = 4096

T = 4096 x 16
T = 65536 bits

= 1 Byte = 8 bits
= 65536/8
= 8192 Bytes ou 8KB

## 2 - O que você entende por acesso à memória? Caracterize o tempo de acesso nos diversos tipos de memória.
- O acesso à memória envolve recuperar informações de diferentes tipos de memória.
    - A memória cache é a mais rápida, com tempos de acesso de menos de 1 nanossegundo.
    - A RAM é mais lenta, com tempos na faixa de 10 a 100 nanossegundos.
    - A memória ROM é mais lenta, na faixa de microssegundos, usada para armazenar dados permanentes.
    - A memória de armazenamento (HDD, SSD) é a mais lenta, com tempos na faixa de milissegundos para discos rígidos e microssegundos para SSDs.

## 3 - Quais são as possíveis operações que podem ser realizadas em uma memória?
* Leitura
* Escrita
* Cópia
* Inicialização
* Alocação
* Desalocação
* Busca
* Mapeamento
* Proteção
* Carregamento/Armazenamento

## 4 - Qual é a diferença conceitual entre uma memória do tipo SRAM e outra do tipo DRAM? Cite vantagens e desvantagens de cada uma.
> SRAM - É uma memória estática que armazena cada bit de dados em um flip-flop, que é um circuito de estado sólido. Ele mantém o estado enquanto a energia estiver presente.
    - Vantagens:
        * Velocidade: SRAM é mais rápida do que a DRAM, uma vez que não requer atualizações periódicas para manter os dados.
        * Acesso Aleatório Rápido: Oferece acesso aleatório rápido aos dados.
        * Menos Energia: Requer menos energia para manter os dados, uma vez que não precisa ser atualizada continuamente.
    - Desvantagens:
        * Custo: SRAM é mais caro de fabricar devido à complexidade de seus circuitos.
        * Maior Tamanho: Os circuitos SRAM são maiores, tornando-os inadequados para armazenamento de grande capacidade.
        * Menos Densidade: Em comparação com a DRAM, a SRAM é menos densa em termos de armazenamento de bits por unidade de área.


> DRAM - É uma memória dinâmica que armazena dados em capacitores. Ela requer atualizações periódicas (refresh) para manter os dados, devido à descarga gradual dos capacitores.
        - Vantagens:
    - Alta Densidade: A DRAM é mais densa em termos de armazenamento de bits por unidade de área, o que a torna adequada para grandes capacidades de memória.
    - Custo Menor: É mais econômica de fabricar em comparação com a SRAM.
    - Menor Tamanho Físico: Os circuitos da DRAM são menores, tornando-a mais apropriada para memória principal de computadores.
    
        - Desvantagens:
    - Velocidade Relativa Inferior: A DRAM é mais lenta do que a SRAM, devido às atualizações de refresh necessárias.
    - Consumo de Energia Maior: Devido às atualizações frequentes, consome mais energia do que a SRAM.
    - Acesso Sequencial: Melhor para acesso sequencial do que para acesso aleatório devido à latência de leitura e escrita.


## 5 -Qual é a diferença, em termos de endereço, conteúdo e total de bits, entre as seguintes organizações de MP:
> a) memória A: 32K células de 8 bits cada;

> b) memória B: 16K células de 16 bits cada;

> c) memória C: 16K células de 8 bits cada?

| TP | ENDEREÇO | CÉLULAS | T |
| ------ | ------ | ------ | ------ |
| A | 15B | 8B | 262K |
| B | 14B | 16B | 262K |
| C | 14B | 8B | 131K |

## 6 - Qual é a função do registrador de endereços de memória (REM)? E do registrador de dados de memória (RDM)?
- O Registrador de Endereços de Memória (REM) é usado para armazenar o endereço de memória onde a CPU deseja ler ou escrever dados.

- O Registrador de Dados de Memória (RDM) é usado para armazenar temporariamente os dados lidos ou escritos na memória. Ele atua como uma interface entre a CPU e a memória, permitindo a transferência de dados entre os dois.