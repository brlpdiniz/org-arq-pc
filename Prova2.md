## Revisão Prova 2º Bimestre

| GRR | NOME |
| ------ | ------ |
| 2017208552 | Bruno Leandro Diniz |

## Memória Cache

### Organização
- 

### Funcionamento
- 

### Principio da Localidade
- 

### Mapeamentos
- 

### Algoritmos de Substituição
- 

### Políticas de Escrita
- 

### Níveis da cache
- 



## Processadores

### Organização
- Responsável, por realizar qualquer operação feita no computador. Isto quer dizer que o processador comanda não somente as ações efetuadas internamente, ele emite sinais de controle para os demais componentes.
- Área funcional de processamento:
    > UAL – Unidade Lógica e Aritmética
        - Executa as operações matemáticas com os dados (soma, subtração, operação lógica, deslocamentos, incrementos e decrementos)
    > ACC (Acumulador – Armazena números a serem operadores pela ULA) e Registrador de dados
        - Registrador genéricos R0 até Rn-1

- Área funciona de controle:
    > UC – Unidade de Controle
        - Dispositivo mais complexo do processador, possui lógica necessário para realizar movimentação de dados e de instruções, através de sinais de controles.
    > RI – Registrador de instrução
        - Tem função especifica de armazenar a instrução a ser executada pelo processador.
        - Ao iniciar-se o ciclo de instrução, a UC emite sinal de controle de modo que realize uma operação de leitura para buscar a instrução na memória.

    > CI (PC – Program Counter)
        - Função é armazenar o endereço da próxima instrução a ser executada.
        - Assim que a instrução é armazenada no RI, logo é armazenado no CI a próxima instrução que vai ser executada
    > Decodificador de instrução
        - Dispositivo utilizado para identificar qual operação será realizada, correlacionado a instrução cujo código de operação foi decodificado.
        - Decodifica a instrução de máquina, cada instrução tem um valor próprio e um código de operação.

    > REM (MAR) – Registrador de endereços de memória e RDM (MBR) – Registrador de dados de memória
        - Para que um dado possa ser transferido para a UAL é necessário da utilização dos registradores para que seja possível armazenar brevemente esses valores.
        - São registradores utilizados pelo processador e memória para comunicação e transferência de informações.

### Funcionamento
- Processador é projetado e fabricado com o propósito único de executar sucessivamente pequenas operações matemáticas na ordem e na sequencia definidas pela organização do programa.
    > 1 – Buscar uma instrução na memória, uma vez que o endereço deve estar armazenado no registrador existente na UCP especifico para este fim;
    > 2 – Interpretar que a operação a instrução esta explicitando ( pode ser uma soma de dois números, multiplicação, operação de E/S etc..);
    > 3 – Buscar os dados onde estiverem armazenados, para trazê-los até o processador;
    > 4 – Executar efetivamente a operação com os dados;
    > 5 – Guardar resultado (se houver algum) no local definido na instrução;
    > 6 – Reiniciar o processo buscando uma nova instrução.

- Função de processamento se encarrega de realizar as atividades relacionadas com a efetiva execução de uma operação.

- Função do processador que se encarregam das atividades de busca, controle é exercida pelos componentes enterpretação e controle da execução das instruções.

- Um dos elementos fundamentais para a capacidade de processamento do processador é o tamanho da palavra.

- Com a inserção da memória cache interna aos processadores, tornou-se vantajoso buscar mais dados de cada vez das memórias externas ao processador. Desta forma, os barramentos de dados passaram a ter uma largura, em bits, maior que o tamanho da palavra, atualmente há barramentos com 128 bits.

- Clock
    > O relógio pode ser entendido como um dispositivo de controle, como um maestro em uma Orquesta, que sincroniza e cadencia a ação dos músicos.
    > Frequência é a quantidade de ciclos por segundo de um relógio, sendo usualmente medida em Hertz (HZ) onde 1 HZ = 1 ciclo/s

### Instruções de máquina
- É a formalização de uma operação básica, simples ou primitiva que o hardware é capaz de realizar diretamente.
Por exemplo uma ULA capaz de somar ou de multiplicar dois números.
- Antes do surgimento direto das linguagens de programação os computadores eram programados apenas utilizando 0 e 1s, denominada linguagem de máquina.
- Com a evolução dos sistemas, foi necessário a criação de linguagens de alto nível para auxiliar o programador a criar instruções para a máquina realizar, tais como, Cobol, Pascal, C
- A linguagem assembly é um linguagem de baixo nível, onde está relacionado em 1 para 1 com a linguagem de máquina e torna-se a execução do código muito mais rápido do que uma linguagem de alto nível.
- Na linguagem assembly utilizando as instruções de máquina disponibilizadas pela arquitetura do processador, tais como;
ADD - Adição
SUB – Subtração
MUL - Multiplicação
HLT – Parada de execução do processador
MOV – Movimentação/Transferência de dados
Registradores (EAX, EBX, ECX, EDX etc..)
JMP - Desvios



## Pipeline

### Funcionamento
- 

### Tipos de pipeline 
- 

### Problemas do pipeline e Hazards
- 


## Memória Secundária

### Organização
- 

### Funcionamento do disco rígido
- 


## Arquitetura Risc x Cisc

### Organização
- 

### Gap semântico
- 

### Funcionamento e Características das Arquiteturas
- 