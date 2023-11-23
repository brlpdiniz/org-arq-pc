## Revisão Prova 2º Bimestre

| GRR | NOME |
| ------ | ------ |
| 2017208552 | Bruno Leandro Diniz |

## Memória Cache

### Organização
- Criada por causa de um problema que existe nos sistemas computacionais, entre a velocidade do processador e memória principal
- Memória cache de ram, cache de disco, cache de browser web, cache de aplicações (API)
- Organizada em linhas de X bytes
- MP organizada em blocos de X células (1 byte)
- Cache organizada em linhas de X bytes
	* Tag ou rótulo indica o endereço do bloco da MP

### Funcionamento
- Cache possui uma velocidade de acesso alta e capacidade para armazenar partes de um programa a aproveitar o princípio da localidade.
- Processador > Cache > MP (e volta a flecha <);
- Processador inicia operação de leitura e coloca endereço da MP no BE;
- Sistema de controle de cache (chipset) intercepta o endereço, interpreta o conteúdo e verifica se o dado está ou não em cache;
    * Se estiver, acerto (hit) => cópia do dado é transferido da cache para o processador pelo BD.
	* Se não estiver, falta (miss) => controle da MP é acionado para recuperar o bloco da MP e transferi-lo para cache, para em	seguida, transferir ao processador pelo BD;
- Um linha da cache pode armazenar diferentes blocos da MP, por isso precisa identificar que bloco armazena em cada momento (Tag ou rótulo da linha). Como determinar em que linha da cache cada bloco de memória será armazenado? (mapeamento)

### Principio da Localidade
- Programa executável tem instruções ordenadas sequencialmente. Programas não são executados de modo que a MP seja acessada randomicamente como seu nome sugere (RAM)
- Quando o programa executa, processador busca instruções sequencialmente em memória, exceto quando ocorre um loop ou comando de desvio, em que a sequência de acesso é alterada abruptamente.
    * Localidade espacial
        * Se ele acessa uma palavra da memória, há uma boa probabilidade de que o acesso seguinte seja uma palavra subsequente ou de endereço adjacente àquela palavra que ele acabou de acessar
    * Localidade temporal
        * Se um programa acessa uma palavra da memória, há uma boa probabilidade de que ele em breve acesse a mesma palavra novamente (loops)

### Mapeamentos (Método para mapear blocos da MP em linhas da cache)
- Direto
    * Cada bloco da cache é armazenado em uma linha especifica da cache de acordo com a função de mapeamento
    * Endereço é composto por BIT para TAG, LINHA e BYTE (PALAVRA). Não utiliza algoritmos de substituição.
    * Algumas linhas da cache não são utilizadas devido a função de mapeamento
    * Simples e de baixo custo de implementação, Processamento rápido do endereço, Problema da localização fixa dos blocos em cache
    * Se o programa fizer sucessivos acessos (loop) a palavra situada em blocos alocados na mesma linha, haverá necessidade de sucessivos acessos a MP (misses)
	- Relação acerto/faltas será baixa => baixo desempenho
- Associativo
    * Oposto do mapeamento direto, não existe posição fixa para cada bloco de memória em cache
    * Um bloco de memória pode ser armazenado em qualquer linha da cache
    * Necessidade de escolha de qual bloco será substituído
        * Politicas de substituição de linhas
    * Sistema de controle compara endereço do bloco completo com a tag de cada linha
    * Para verificação rápida. * Deve realizar comparação simultânea em todas as linhas
    * Flexibilidade na alocação e armazenamento de blocos em cache
    * Para cache com milhares de linhas, teríamos milhares de circuitos comparadores
- Associativo por conjunto
    * Tenta resolver o problema de conflito de blocos na mesma linha (mapeamento direto) e problema de custo da comparação do campo tag (mapeamento associativo)
    * Divide-se o espaço de linhas da cache em conjuntos de N linhas
    * Cada conjunto é tratado pelo sistema como método direto
    * Dentro de cada conjunto, o método é o associativo
    * A maioria dos sistemas emprega mapeamento associativo por conjunto, variando o valor de N * Conjuntos de 4, 6 e 16.
    * Facilidade de identificação do conjunto e flexibilidade da posição do bloco no conjunto

### Algoritmos de Substituição
- Qual dos blocos armazenados deve ser substituído por um novo bloco? Decisão necessária quando método de mapeamento é associativo:
    * LRU – Least Recently Used
        * Escolhe o bloco que não é usado há mais tempo
        * Quando uma das linhas for acessada, bit é setado (1) e o bit da outra linha do conjunto é zerado
    * FIFO – First-in, First-Out
        * Esquema de fila - Primeira a chegar é o primeiro a sair
    * LFU – Least Frequently Used
        * Bloco que teve menos acessos pelo processador é 	escolhido
    * Escolha aleatória (já diz)
- (Associativo p/ conjunto) - Simples de implementar - Aleatório é mais simples e barato em termos de hardware

### Políticas de Escrita
- Operações de escrita do processador são feitas em cache
- Necessário atualizar MP para sistema manter correção e integridade
- Antes de substituir o bloco em cache, é necessário verificar se foi alterado e se alterações já foram feitas na MP
- MP pode ser acessada pela cache ou E/S (DMA – Direct Memory Access)
    * Cache pode ter sido alterada e MP ainda não - * MP pode ter sido alterada e cache está desatualizada
- MP pode ser acessada por vários processadores, cada um com sua cache
	* MP pode ser alterada e outras caches estarem desatualizadas

- Write through – escrita em ambas
    * Cada escrita em cache acarreta escrita em MP * Caso haja outros processadores, estes também alteram suas caches
    * Mesmo conteúdo sempre nas duas memórias
    * Pode haver grande quantidade de escritas desnecessárias em MP
    * Reduz desempenho do sistema
- Write back – escrita somente em retorno
    * Escrita só é atualizada em MP quando o bloco for substituído e se foi atualizado
    * Bit adicional é setado (1) se bloco foi atualizado em cache
    * Quando for substituído, se bit correspondente estiver setado, escrita é feita na MP
    * Minimiza desvantagem anterior
    * MP pode ser desatualizada para utilização por outros dispositivos E/S, o que os obriga a acessar o dado através da cache
- Write once – escrita uma vez
    * Apropriada para sistema multiprocessados (cada um com sua cache) compartilhando mesmo barramento
    * Controlador da cache atualiza MP quando bloco foi atualizado pela primeira vez (write through)  e alerta outros componentes que compartilham o barramento
    * Eles são notificados sobre alteração e impedem o uso da palavra específica
    * Próximas alterações são feitas somente em cache local e o bloco é atualizado em MP quando for substituído (write back)
    * Conveniente para sistemas multiprocessados * Não é muito usada ainda

### Níveis da cache
- Nível 1 (Level 1) ou L1
    * Sempre localizada no interior do processador
    * Cache primária
	* Cache L1 de instruções e Cache L1 de dados
- Nível 2 (level 2) ou L2
    * Normalmente localizada no exterior do processador (placa mãe)
	* Cache secundária
    * Alguns processadores tem L2 interna a pastilha do processador
- Nível 3 (Level 3) ou L3
Quando processador possui L1 e L2 interna, é a cache externa ao processador (placa mãe)



## Processadores

### Organização
- Responsável, por realizar qualquer operação feita no computador. Isto quer dizer que o processador comanda não somente as ações efetuadas internamente, ele emite sinais de controle para os demais componentes.
- Área funcional de processamento:
    * UAL – Unidade Lógica e Aritmética
        - Executa as operações matemáticas com os dados (soma, subtração, operação lógica, deslocamentos, incrementos e decrementos)
    * ACC (Acumulador – Armazena números a serem operadores pela ULA) e Registrador de dados
        - Registrador genéricos R0 até Rn-1

- Área funciona de controle:
    * UC – Unidade de Controle
        - Dispositivo mais complexo do processador, possui lógica necessário para realizar movimentação de dados e de instruções, através de sinais de controles.
    * RI – Registrador de instrução
        - Tem função especifica de armazenar a instrução a ser executada pelo processador.
        - Ao iniciar-se o ciclo de instrução, a UC emite sinal de controle de modo que realize uma operação de leitura para buscar a instrução na memória.

    * CI (PC – Program Counter)
        - Função é armazenar o endereço da próxima instrução a ser executada.
        - Assim que a instrução é armazenada no RI, logo é armazenado no CI a próxima instrução que vai ser executada
    * Decodificador de instrução
        - Dispositivo utilizado para identificar qual operação será realizada, correlacionado a instrução cujo código de operação foi decodificado.
        - Decodifica a instrução de máquina, cada instrução tem um valor próprio e um código de operação.

    * REM (MAR) – Registrador de endereços de memória e RDM (MBR) – Registrador de dados de memória
        - Para que um dado possa ser transferido para a UAL é necessário da utilização dos registradores para que seja possível armazenar brevemente esses valores.
        - São registradores utilizados pelo processador e memória para comunicação e transferência de informações.

### Funcionamento
- Processador é projetado e fabricado com o propósito único de executar sucessivamente pequenas operações matemáticas na ordem e na sequencia definidas pela organização do programa.
    * 1 – Buscar uma instrução na memória, uma vez que o endereço deve estar armazenado no registrador existente na UCP especifico para este fim;
    * 2 – Interpretar que a operação a instrução esta explicitando ( pode ser uma soma de dois números, multiplicação, operação de E/S etc..);
    * 3 – Buscar os dados onde estiverem armazenados, para trazê-los até o processador;
    * 4 – Executar efetivamente a operação com os dados;
    * 5 – Guardar resultado (se houver algum) no local definido na instrução;
    * 6 – Reiniciar o processo buscando uma nova instrução.

- Função de processamento se encarrega de realizar as atividades relacionadas com a efetiva execução de uma operação.

- Função do processador que se encarregam das atividades de busca, controle é exercida pelos componentes enterpretação e controle da execução das instruções.

- Um dos elementos fundamentais para a capacidade de processamento do processador é o tamanho da palavra.

- Com a inserção da memória cache interna aos processadores, tornou-se vantajoso buscar mais dados de cada vez das memórias externas ao processador. Desta forma, os barramentos de dados passaram a ter uma largura, em bits, maior que o tamanho da palavra, atualmente há barramentos com 128 bits.

- Clock
    * O relógio pode ser entendido como um dispositivo de controle, como um maestro em uma Orquesta, que sincroniza e cadencia a ação dos músicos.
    * Frequência é a quantidade de ciclos por segundo de um relógio, sendo usualmente medida em Hertz (HZ) onde 1 HZ = 1 ciclo/s

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
    * Estruturas em processadores que dividem a execução de instruções em estágios sequenciais para melhorar o desempenho.
    * Cada estágio executa uma parte específica da instrução, permitindo a execução simultânea de várias instruções.
    * Busca, Decodificação, Execução, Memória, Escrita de Resultados.
    * Melhora a taxa de instruções por ciclo de clock, aumentando o desempenho do processador.

- Pipelines de operação aritmética.
    * São construídos em processadores para melhorar o desempenho de unidades de cálculo que realizam complexas operações aritméticas.
    * Soma, subtração, multiplicação e divisão de números representados em ponto flutuante.
    * Unidades especializadas, FPU – Float Point Unit

### Problemas do pipeline e Hazards
- Pipeline aumenta o desempenho dos processadores, mas gera problemas de concorrência.
    * Problema durante a busca das instruções;
    * Problema de gargalo em um estágio de pipeline;
    * Problema de execução de uma instrução.

- Existe a possibilidade de ocorrer gargalo em um estágio, acarreta a espera em estágios precedentes e o restante do pipeline vai engarrafando.
    * Possível solução é dividir o estágio em mais partes

- HAZARDs
    - Problema gerado quando uma instrução entra no pipeline e não pode ser executada por alguma razão
    - Hazard Estrutural
        * Quando 2 estágios requisitam um mesmo recurso, ou seja, dois ou + estágios querendo acesso na mesma memória
    - Hazard de Dados
        * Causado por dependência de dados, ou seja, uma determinada instrução precisa do dado resultante da execução de outra instrução
    - Hazard de Controle
        * Uma instrução de desvio pode alterar a sequência de controle do processamento (próxima instrução a ser executada)
        * Sempre que ocorre um desvio, haverá uma grande redução da vazão do sistema. Neste processo o pipeline interrompe o trabalho, precisa ser esvaziado das instruções para ser carregado com as instruções da nova sequência.

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