## Lista 5 – Memória Principal

| GRR | NOME |
| ------ | ------ |
| 2017208552 | Bruno Leandro Diniz |

## 1 - Explique o conceito da Localidade Espacial e Localidade Temporal.
- Localidade Temporal:
    > Se um programa acessa uma palavra da memória, há uma boa probabilidade de que ele em breve acesse a mesma palavra novamente.

- Localidade Espacial:
    > Se um programa acessa uma palavra da memória, há uma boa probabilidade de que o acesso seguinte seja uma palavra subsequente ou de endereço adjacente àquela palavra que ele acabou de acessar.

## 2 - Cite e explique os tipos de mapeamentos existentes para a memória cache?
- Mapeamento Direto:
    > Cada bloco da memória principal é mapeado para um local específico na memória cache.
    > Simples, eficiente em termos de hardware, mas pode levar a conflitos de cache.

- Mapeamento Associativo:
    > Os blocos da memória principal podem ser armazenados em qualquer local disponível na memória cache.
    > Oferece flexibilidade, mas requer hardware adicional para gerenciar a localização dos blocos.

- Mapeamento Associativo por Conjunto:
    > A cache é dividida em conjuntos, e os blocos podem ser armazenados em qualquer local dentro de um conjunto.
    > Combina flexibilidade com simplicidade, equilibrando os benefícios dos dois métodos.

## 3 - Cite os algoritmos de substituição da memória cache?
- Least Recently Used (LRU):
    > O algoritmo LRU substitui o bloco que não foi acessado há mais tempo.
    > Mantém um registro do histórico de acessos aos blocos para tomar decisões de substituição.
    > É eficaz na minimização de conflitos de cache, mas requer mais hardware para implementação.

- First-In, First-Out (FIFO):
    > O algoritmo FIFO remove o bloco que entrou na cache primeiro.
    > É simples de implementar, pois segue uma ordem de fila.
    > No entanto, pode não ser eficaz em termos de desempenho, pois não leva em consideração os padrões de acesso.

- Least Frequently Used (LFU):
    > O algoritmo LFU substitui o bloco que foi acessado com menos frequência.
    > Mantém um contador de frequência de acesso para cada bloco.
    > É eficaz em sistemas com padrões de acesso variáveis.

- Random Replacement (Aleatório):
    > O algoritmo de substituição aleatória escolhe aleatoriamente um bloco da cache para remoção quando necessário.
    > É simples e requer menos hardware em comparação com outros algoritmos.
    > No entanto, não leva em consideração o histórico de acesso e pode não otimizar o desempenho.

## 4 - Por que a memória cache é um dispositivo de armazenamento volátil?
- Porque os dados armazenados nela não são permanentes e são perdidos quando a energia é desligada.

## 5 - Considere um sistema de armazenamento constituído de uma memória principal, que é endereçada por byte e que tem uma capacidade 64B e a memória cache tem uma capacidade de 16B, utilizando o mapeamento direto construa como será interpretado o endereço pela cache.
- MemoriaPrincipal: 64B Endereçada por Byte -> 2⁶
- Tamanho máximo da MemoriaCache: 6 Bits
- MemoriaCache: 16B -> 2⁴
- Quantidade de Byte por Bloco: 64B / 16B = 4 Bytes por Bloco -> 2²
- Quantidade de Blocos: 64B/4B = 16 Blocos -> 2⁴
- Quantidade de Linhas da MemoriaCache: 16 / 4 = 4 Linhas -> 2²
-
| Tag | Linha | Byte |
| ------ | ------ | ------ |
| 2 Bits | 2 Bits | 2 Bits |

## 6 - Considere um sistema de armazenamento constituído de uma memória principal, que é endereçada por byte e que tem uma capacidade 32B e a memória cache tem uma capacidade de 16B, utilizando o mapeamento associativo construa como será interpretado o endereço pela cache.
- MemoriaPrincipal: 32B Endereçada por Byte -> 2⁵
- Tamanho máximo da MemoriaCache: 6 Bits
- MemoriaCache: 16B -> 2⁴
- Quantidade de Byte por Bloco: 32B / 16B = 2 Bytes por Bloco -> 2¹
- Quantidade de Blocos: 32B/2B = 16 Blocos -> 2⁴
- Quantidade de Linhas da MemoriaCache: 16 / 4 = 4 Linhas -> 2²
-
| Tag | Byte |
| ------ | ------ |
| 4 Bits | 1 Bits |

## 7 - Cite e explique os 3 níveis de uma memória cache.
- L1 Cache (Primeiro Nível de Cache):
    > O L1 cache é o nível mais próximo da CPU (Central Processing Unit).
    > É pequeno, rápido e integrado diretamente na CPU, projetado para oferecer acesso ultra-rápido aos dados e instruções.
    > É dividido em duas partes: L1 de dados (para armazenar dados) e L1 de instruções (para armazenar instruções).
    > Geralmente é um cache de mapeamento direto, o que significa que os dados/instruções são mapeados em locais específicos na cache.
    > O L1 cache é o mais rápido, mas também o menor dos três níveis, devido à sua proximidade com a CPU.

- L2 Cache (Segundo Nível de Cache):
    > O L2 cache está localizado entre o L1 cache e a memória principal (RAM).
    > É maior em capacidade do que o L1 cache e é mais lento em comparação com o L1, mas ainda mais rápido que a RAM.
    > Pode ser compartilhado entre núcleos de CPU em sistemas multiprocessadores (multicore) ou existir como caches individuais por núcleo.
    > O L2 cache tem uma capacidade maior do que o L1, mas é mais lento.

- L3 Cache (Terceiro Nível de Cache):
    > O L3 cache é um nível de cache adicional que fica entre o L2 cache e a memória principal.
    > Geralmente é compartilhado entre todos os núcleos da CPU em sistemas multiprocessadores (multicore).
    > É ainda maior em capacidade do que o L2 cache, mas é mais lento que os níveis L1 e L2.
    > O L3 cache ajuda a reduzir gargalos de acesso à memória principal em sistemas com vários núcleos.

## 8 - Cite e explique as políticas de escrita de uma memória cache.
- Write-Through (Escrita Direta):
    > Na política de escrita direta, todos os dados escritos na cache são imediatamente escritos na memória principal.
    > Isso garante que a memória principal sempre contenha uma cópia atualizada dos dados, mas também pode gerar uma alta sobrecarga de escrita, já que cada operação de escrita na cache requer uma operação adicional de escrita na memória principal.
    > A vantagem dessa política é a consistência dos dados, mas pode reduzir o desempenho de escrita devido à sobrecarga.

- Write-Back (Escrita Adiada):
    > Na política de escrita adiada, os dados são inicialmente escritos apenas na cache, e a memória principal é atualizada somente quando o bloco de dados é substituído na cache.
    > Isso reduz a sobrecarga de escrita na memória principal e melhora o desempenho de escrita. No entanto, pode levar a uma inconsistência temporária entre a cache e a memória principal.
    > Para manter a consistência, a cache deve manter um bit de modificado (dirty bit) para acompanhar quais blocos de dados foram alterados e precisam ser escritos de volta na memória principal.

- Write-Once (Escrita Única):
    > A política de escrita única é uma variação do Write-Back.
    > Nessa política, um bloco de dados é escrito na cache, mas, uma vez escrito, ele não pode ser atualizado. Isso é comumente usado em caches de instruções, onde as instruções não mudam durante a execução de um programa.
    > Essa política é útil para minimizar a sobrecarga de controle e manter a consistência, mas não é adequada para dados que precisam ser alterados.