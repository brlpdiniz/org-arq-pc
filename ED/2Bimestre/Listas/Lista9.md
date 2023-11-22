## Lista 9 - Memória Secundária

| GRR | NOME |
| ------ | ------ |
| 2017208552 | Bruno Leandro Diniz |

## 1 - Descreva o que é tempo de busca (seek) em um acesso de disco magnético.
- É a medida que indica o tempo necessário, para que a cabeça de leitura e gravação se posicione na trilha que contém o setor do disco que deve ser lido ou mesmo gravado, valores entre 5 a 10 ms.

## 2 - Como se obtém redundância (espelhamento) em sistemas RAID?
- Combinar vários HDs de modo a se constituírem em uma única unidade logica, onde os mesmos dados podem ser armazenados em todos eles, chamado de espelhamento, pois o mesmo dado de uma unidade, existe na outra, como uma cópia.

## 3 - Explique os níveis estabelecidos em um sistema RAID.
- Nível 0: 
    * Armazenamento de um único arquivo por dois ou mais discos, obtendo-se mais rapidez na transferência.
    * Este modo não implementa a redundância, pois é divido o arquivo pelos discos, havendo algum problema em um dos discos, parte nele armazenada pode ser pedida.
    * Aplicações com grandes volumes de dados, como tratamento de imagens, vídeo e áudio.
- Nível 1: 
    * Consiste na implementação da redundância, a qual é utilizada através da duplicação, triplicação ou mais de um determinado volume de dados por vários discos (espelhamento).
    * É possível combinar os dois níveis, 0 e 1, afim de obter rapidez e confiabilidade.
    * Servidores de arquivos ou sistemas gerenciadores de grandes bancos de dados.
- Nível 2:
    * Este tipo de RAID adapta o mecanismo de detecção de falhas, para funcionar com a memória principal e através do emprego do acesso paralelo.
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

## 4 - Cite os componentes internos de um disco rigido, ao menos três componentes devem ser citados.
- Trilhas
- Setor
- Prato
- Superfícies
- Cilindro
- Cabeça de Leitura
- Cabeça de Gravação