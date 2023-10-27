## Lista 2 – Sistemas da Computação

| GRR | NOME |
| ------ | ------ |
| 2017208552 | Bruno Leandro Diniz |

### 1.Descreva as funções de uma Unidade Central de Processamento.
* Capaz de entender e executar uma operação definida por instruções de máquina;
* Lê as funções da memória;

### 2.Faça o mesmo para a memória de um computador.
* Faz o armazenamento de informações;

### 3.Para que servem os dispositivos de entrada e de saída de um computador? Cite alguns exemplos.
* Entrada: Introdução dos dados no sistema - Teclado e Mouse;
* Saída: Apresenta os resultados do programa ao usuário - HD, Monitor, Pen-drive, Impressora;

### 4.Conceitue o bit, o byte e a palavra.
* Bit: A menor unidade de informação, representando um valor binário de 0 ou 1;
* Byte: Composto por 8 bits. Um byte é comparável a uma única letra em uma palavra. Assim como uma palavra é formada por várias letras, um byte é composto por 8 bits;
* Palavra: Pode ser comparada a uma frase completa. Geralmente composta por 4 bytes (32 bits) ou 8 bytes (64 bits);

### 5.O que é vazão em um sistema de computação? E tempo de resposta? Em que circunstâncias são utilizadas estas informações?
* Vazão: Refere-se à quantidade de trabalho que um sistema pode processar em um período de tempo, medido em unidades como bytes por segundo;
* Tempo de Resposta: É o intervalo de tempo entre a emissão de um comando e a obtenção da resposta correspondente do sistema;
* Essas métricas são usadas para avaliar o desempenho de sistemas computacionais, dimensionar recursos adequados e identificar problemas de desempenho em tempo real. A vazão é crucial para cenários de processamento em massa, enquanto o tempo de resposta é vital para interações rápidas com o usuário;

### 6.Qual é a diferença entre a linguagem de alto nível e linguagem de máquina?
* Linguagem de alto nível é compreensível por humanos, próxima à linguagem humana, enquanto linguagem de máquina é a linguagem compreendida diretamente pelos computadores, em códigos binários;

### 7.Se um barramento de endereços possui 17 fios condutores, qual deverá ser o maior endereço que pode ser transportado nesse barramento?
* Contagem começa em 0: (2^17)-1 = 131,071;

### 8.Cite exemplos de processadores (UCP) comerciais.
* Intel Core i5, AMD Ryzen 5;

### 9.Os barramentos são fioscondutores que interligam os componentes de um sistema de computação (SC) e permitem a comunicação entre eles. Eles são organizados em três grupos de fios, cada um deles com funções separadas. Quais são esses grupos? Indique, para cada grupo: sua função.
* Barramento de Dados (Data Bus): Responsável por transportar os dados entre a memória, a CPU e os dispositivos de entrada/saída. Ele permite a transferência de informações como números, caracteres e instruções de um local para outro dentro do sistema;
* Barramento de Endereços (Address Bus): Carrega os endereços que indicam a localização de memória específica onde os dados devem ser lidos ou escritos. Ele permite que a CPU acesse locais de memória ou dispositivos de E/S, selecionando o local correto;
* Barramento de Controle (Control Bus): Carrega sinais de controle e comandos que coordenam as operações entre diferentes partes do sistema. Esses sinais incluem solicitações de leitura/escrita, sinais de sincronização, sinais de interrupção e outros comandos de controle que direcionam as operações da CPU, memória e dispositivos periféricos;

### 10.Cite uma das razões principais pela qual os atuais sistemas de computação possuem uma hierarquia de barramentos interligando os diversos componentes, em vez de utilizar um único conjunto de barramentos, interligando todos os componentes do sistema.
* Otimização do desempenho e da eficiência do sistema, segmentando a comunicação entre os componentes. Isso evita congestionamentos, adapta-se às diferentes demandas de largura de banda e latência, melhora o acesso à memória e facilita a expansão modular do sistema;