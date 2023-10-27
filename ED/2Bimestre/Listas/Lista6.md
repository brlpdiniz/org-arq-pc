## Lista 5 – Memória Principal

| GRR | NOME |
| ------ | ------ |
| 2017208552 | Bruno Leandro Diniz |

## 1 - Explique o conceito da Localidade Espacial e Localidade Temporal.
- Localidade Temporal: Se um programa acessa uma palavra da memória, há uma boa probabilidade de que ele em breve acesse a mesma palavra novamente.

- Localidade Espacial: Se um programa acessa uma palavra da memória, há uma boa probabilidade de que o acesso seguinte seja uma palavra subsequente ou de endereço adjacente àquela palavra que ele acabou de acessar.

## 2 - Cite e explique os tipos de mapeamentos existentes para a memória cache?
- Mapeamento Associativo:

- Mapeamento Direto:

## 3 - Cite os algoritmos de substituição da memória cache?
- 

## 4 - Por que a memória cache é um dispositivo de armazenamento volátil?
- 

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
- 

## 8 - Cite e explique as políticas de escrita de uma memória cache.
- 
