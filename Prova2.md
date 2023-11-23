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

## Pipeline (Linha de montagem)

### Funcionamento
- Técnica de design que organiza a execução de instruções em etapas sequenciais. O pipeline permite que várias instruções sejam processadas simultaneamente, melhorando assim o desempenho do processador
- É também utilizada na execução dos ciclos de instrução dos processadores. O primeiro microprocessador a utilizar esta metodologia foi o intel 8086/8088, dividindo o ciclo de instrução em dois estágios: Busca de instrução
Execução da operação (UAL, Dados, UC)
- Tendência é, aumentar a concorrência (quantidade de instruções simultaneamente em execução), reduzindo o período de tempo para completar as instruções e aumentando o desempenho do sistema global.
- (Pipe de 6 estágios) - Busca Intera, Calcula CI, Decodificador C.Op, Busca Operando, Executa Operação, Escreve Resultado

### Tipos de pipeline 
- Pipelines de instruções
    > Estruturas em processadores que dividem a execução de instruções em estágios sequenciais para melhorar o desempenho.
    > Cada estágio executa uma parte específica da instrução, permitindo a execução simultânea de várias instruções.
    > Busca, Decodificação, Execução, Memória, Escrita de Resultados.
    > Melhora a taxa de instruções por ciclo de clock, aumentando o desempenho do processador.

- Pipelines de operação aritmética.
    > São construídos em processadores para melhorar o desempenho de unidades de cálculo que realizam complexas operações aritméticas.
    > Soma, subtração, multiplicação e divisão de números representados em ponto flutuante.
    > Unidades especializadas, FPU – Float Point Unit

### Problemas do pipeline e Hazards
- Pipeline aumenta o desempenho dos processadores, mas gera problemas de concorrência.
    > Problema durante a busca das instruções;
    > Problema de gargalo em um estágio de pipeline;
    > Problema de execução de uma instrução.

- Existe a possibilidade de ocorrer gargalo em um estágio, acarreta a espera em estágios precedentes e o restante do pipeline vai engarrafando.
    > Possível solução é dividir o estágio em mais partes

- HAZARDs
    - Problema gerado quando uma instrução entra no pipeline e não pode ser executada por alguma razão
    - Hazard Estrutural
        > Quando 2 estágios requisitam um mesmo recurso, ou seja, dois ou + estágios querendo acesso na mesma memória
    - Hazard de Dados
        > Causado por dependência de dados, ou seja, uma determinada instrução precisa do dado resultante da execução de outra instrução
    - Hazard de Controle
        > Uma instrução de desvio pode alterar a sequência de controle do processamento (próxima instrução a ser executada)
        > Sempre que ocorre um desvio, haverá uma grande redução da vazão do sistema. Neste processo o pipeline interrompe o trabalho, precisa ser esvaziado das instruções para ser carregado com as instruções da nova sequência.

## Memória Secundária

### Organização
- Trilhas
- Setor
- Prato
- Superfícies
- Cilindro
- Cabeça de Leitura
- Cabeça de Gravação

### Funcionamento do disco rígido
- Constituído de uma ou mais superfícies denominadas pratos. Cada superfície é circular, fina e coberta com uma camada de material magnetizável
- Cada superfície de um prato é organizada em áreas circulares concêntricas, denominadas trilhas, as quais são numeradas de 0 até T-1, todas elas armazenam a mesma quantidade de bytes
- Para evitar erros, não há trilhas próxima a borda do prato e nem próximo ao orifício do eixo de rotação
- As trilhas são divididas em parte menores, de tamanho fixo, denominadas setores, os quais servem de unidades de armazenamento
- Um cluster é composto de vários setores (conceito de agrupar). Os setores são identificados por um endereço, de 0 até S-1, a partir da data de início da trilha, definida em todas elas na ocasião da formatação do disco

### RAIDs e (objetivos)
- Combinar vários HDs de modo a se constituírem em uma única unidade logica, onde os mesmos dados podem ser armazenados em todos eles, chamado de espelhamento, pois o mesmo dado de uma unidade, existe na outra, como uma cópia.
- Dividir o armazenamento de um grande volume de dados em mais de um disco, reduzindo o tempo de transferência, por usar múltiplos discos em paralelos, como se fossem um só.

### Níveis
- Sete diferentes níveis (de 0-6)
- Nível 0: 
    * Armazenamento de um único arquivo por dois ou mais discos, obtendo-se mais rapidez na transferência.
    * Este modo não implementa a redundância, é divido o arquivo pelos discos, havendo algum problema em um dos discos, parte nele armazenada pode ser pedida.
    * Aplicações com grandes volumes de dados, como tratamento de imagens, vídeo e áudio.
- Nível 1: 
    * Consiste na implementação da redundância, a qual é utilizada através da duplicação, ou mais de um determinado volume de dados por vários discos (espelhamento).
    * É possível combinar os dois níveis, 0 e 1, afim de obter rapidez e confiabilidade.
    * Servidores de arquivos ou sistemas gerenciadores de grandes bancos de dados.
- Nível 2:
    * Adapta o mecanismo de detecção de falhas, para funcionar com a memória principal e através do emprego do acesso paralelo.
    * Trata-se de uma especificação nunca implementada em face do seu elevado custo para um benefício já implantando nos discos (tolerância a falhas) e por visar um tipo de problema (muitos erros em acessos a discos) raramente encontrado.
- Nível 3:
    * Este nível, semelhante ao nível 2, os dados são divididos pelos vários discos e se usa um disco adicional para armazenar os dados de paridade (detecção de erros).
    * Através da verificação dessa informação (paridade) pode-se garantia maior integridade dos dados, em caso de recuperação.
    * Para usar o RAID 3 são necessários pelo menos três discos.
- Nível 4: 
    * Neste tipo, basicamente semelhante ao nível 3, os dados são igualmente divididos entre todos os discos, menos um, que servirá exclusivamente para inserir os elementos de paridade.
    * A diferença é que no nível 4 o tamanho dos blocos a serem armazenados é grande, maior que no nível 3.
    * Obtém-se um rendimento maior em leitura.
    * Indicado para arquivos grandes, onde se requer maior integridade das informações.
- Nível 5:
    * Semelhante ao nível 4, exceto pelo fato de que a paridade não se destina a um só disco, mas toda a matriz. Nesse caso, o tempo de gravação é menor, pois não é necessário acessar o disco de paridade em cada operação de escrita.
    * Precisa de pelo menos 3 discos para funcionar.
    * É um dos mais utilizados em aplicações não muito pesadas.
- Nível 6:
    * Este nível, foi acrescentado ao mercado posteriormente, é baseado no nível 5, porem com a diferença de que nele há uma segunda gravação de paridade em todos os discos utilizados no sistema, aumentando, desse modo a confiabilidade das informações.

## Arquitetura Risc x Cisc

### Organização
- CISC: Geralmente tem uma organização mais complexa, com microcódigo para realizar instruções complexas diretamente.
- RISC: Tende a ter uma organização mais simples, com ênfase em um pipeline eficiente e execução rápida de instruções simples.

### Gap semântico
- Problema da diferença de compreensão entre os comandos de linguagens de alto nível e de instruções de máquina (baixo nível)
- Possíveis Soluções:
    * Aumento da quantidade de instruções nos processadores
    * Facilitar a construção e o serviço dos compiladores

### Funcionamento e Características das Arquiteturas
#### RISC (Reduced Instruction Set Computing)
- Simples, com instruções reduzidas e execução mais rápida
- Pequeno conjunto de instruções, todas com larguras fixas
- A maioria das instruções é realizada em 1 ciclo de relógio
- Execução otimizada de chamada de funções
- Menor quantidade de modos de endereçamento
- Uso intenso do pipelining
- Execução rápida de cada instrução

#### CISC (Complex Instruction Set Computers)
- Grande quantidade de instruções
- Facilitar a construção e o serviço dos compiladores, procurando reduzir o referido gap semântico, embora isso não ocorresse na maioria dos casos, visto que os compiladores desprezavam a maior parte das instruções e modos de endereçamento.
- Uso de microcódigo
- Construção de conjuntos com instruções completas e eficientes
- Formato de 2 operandos – campos de origem e destino (ADD reg1, reg2);
- Uso de modos registrador p/ registrador; registrador p/ memória e vice-versa;
- Uso de múltiplos modos de endereçamento para memória;
- Instruções com largura variável, quantidade de bytes de acordo com modo de endereçamento;
- Instruções complexas, requerem múltiplos ciclos de relógio para completa execução.
- Hardware possui poucos registradores devido ao fato de possuir muitas instruções com acesso a memória, por causa da limitação de espaço no chip utilizado para memória de controle (microcódigo);
- Além disso, há também registradores especializados, registradores de controle, segmento, ponteiro de pilha, interrupção etc.