## Lista 10 - Arquiteturas RISC x CISC

| GRR | NOME |
| ------ | ------ |
| 2017208552 | Bruno Leandro Diniz |

## 1 - O que caracteriza o chamado “gap semântico”, denominação utilizada em estudos sobre processadores na década de 1980?
- Problema da diferença de compreensão entre os comandos de linguagens de alto nível e de instruções de máquina

## 2 - Quais as possíveis providências que podem ser tomadas para reduzir aquele “gap”?
- Aumento da quantidade de instruções nos processadores
- Facilitar a construção e o serviço dos compiladores
- Necessário uma solução para se obter maior rapidez na operação dos processadores com a definição de arquiteturas simples do que as mais complexas

## 3 - Quais as principais características das arquiteuturas RISC e compare-as com as das arquiteturas CISC.
- Arquiteturas RISC:
    * Conjunto de Instruções Reduzido.
    * Execução Mais Rápida.
    * Pipeline Profundo.
    * Registradores Gerais em Número Elevado.
    * Acesso à Memória Através de Load/Store.

- Arquiteturas CISC:
    * Conjunto de Instruções Complexo e Diversificado.
    * Instruções de Tamanhos Variados.
    * Modos de Endereçamento Variados.
    * Menor Número de Registradores Gerais.
    * Operações Diretas com a Memória.

## 4 - Qual é a vantagem de os processadores, possuírem, como acontece em grande parte das máquinas RISC, todas as intruções com tamanho igual?
- Decodificação Simples.
- Ciclos de Clock Preditíveis.
- Facilita o Projeto do Pipeline.
- Simplifica o Hardware.