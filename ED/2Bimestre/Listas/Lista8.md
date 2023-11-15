## Lista 8 - Pipeline

| GRR | NOME |
| ------ | ------ |
| 2017208552 | Bruno Leandro Diniz |

## 1 - Cite e explique o conceito de pipeline utilizado nos ciclos de instrução do processador.
- Pipeline é um processo de divisão das tarefas realizadas pelo processador de forma consecutiva, onde o fim de uma tarefa caracteriza o início da outra.
- Cada etapa realiza uma função específica, como buscar a instrução, decodificar, executar e assim por diante, antes de passar para a próxima instrução. 

## 2 - Quais os tipos de pipelining, cite e explique as suas caracteristicas.
- Pipeline de Instruções
    > Divide o processo de execução de uma instrução em várias etapas, como busca, decodificação, execução e escrita de volta.
    > Cada estágio executa uma parte específica do processamento da instrução, permitindo que várias instruções se movam através do pipeline simultaneamente. Isso resulta em uma taxa de execução mais rápida e melhor aproveitamento dos recursos do processador.
- Pipeline de Operação Aritmética
    > São construídos em processadores para melhorar o desempenho de unidades de cálculo que realizam complexas operações aritméticas.
    > Soma, subtração, multiplicação e divisão de números representados em ponto flutuante.

## 3 - Cite os três problemas decorrentes da utilização da metodologia do pipeline.
- Problema durante a busca das instruções;
    > Pode ocorrer quando há um desvio condicional, e a instrução a ser executada seguinte não é conhecida até que a condição seja avaliada. Isso pode resultar em instruções desnecessárias sendo buscadas e descartadas posteriormente.
- Problema de gargalo em um estágio de pipeline;
    > Existe a possibilidade de ocorrer gargalo em um estágio, que leva o tempo de execução longo demais. Este fato acarreta a espera em estágios precedentes, e o restante do pipeline vai engarrafando.
- Problema de execução de uma instrução;
    > Trata-se do problema gerado pelo fato de uma determinada instrução entrar no pipeline e não poder ser executada por alguma razão. Este tipo de problema é denominado como hazard.

## 4 - Cite e explique brevemente os três tipos de hazards.
- Hazard Estrutural
    > Problema quando dois estágios requisitam um mesmo, recurso, ou seja, dois ou mais estágios querendo acesso a uma mesma memória.
- Hazard de Dados
    > Este problema ocorre em geral, causado por dependência de dados, ou seja, uma determinada instrução dentro do pipeline precisa, para ser executada, do dado resultante da execução de outra instrução.
- Hazard de Controle
    > Uma instrução de desvio pode alterar a sequência de controle do processamento, pode alterar qual será a próxima instrução a ser executada.