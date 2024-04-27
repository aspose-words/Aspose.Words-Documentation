---
title: Trabalhe com colunas e linhas em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com colunas e linhas
linktitle: Trabalhar com colunas e linhas
description: "Trabalhando com partes de uma tabela – linhas, colunas e células usando Java. Especificar linha de cabeçalho Java."
type: docs
weight: 30
url: /pt/java/working-with-columns-and-rows/
---

Para mais controle sobre como as tabelas funcionam, aprenda a manipular colunas e linhas.

## Encontre o Índice de Elemento de Tabela

Colunas, linhas e células são gerenciadas acessando o nó do documento selecionado pelo seu índice. Encontrar o índice de qualquer nó envolve reunir todos os nós da criança do tipo elemento do nó pai, e depois usar o [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) método para encontrar o índice do nó desejado na coleção.

### Encontre o índice de uma tabela em um documento

Às vezes você pode precisar fazer alterações em uma tabela específica em um documento. Para fazer isso, você pode se referir a uma tabela pelo seu índice.

O exemplo de código a seguir mostra como recuperar o índice de uma tabela em um documento:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Encontrar o índice de uma linha em uma tabela

Da mesma forma, você pode precisar fazer alterações em uma linha específica em uma tabela selecionada. Para fazer isso, você também pode se referir a uma linha pelo seu índice.

O exemplo de código a seguir mostra como recuperar o índice de uma linha em uma tabela:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Encontrar o índice de uma célula em uma linha

Finalmente, você pode precisar fazer alterações em uma célula específica, e você também pode fazer isso pelo índice de células.

O exemplo de código a seguir mostra como recuperar o índice de uma célula em uma linha:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Trabalho com colunas

No Aspose.Words Document Object Model (DOM), o [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) node consiste em [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) nós e depois [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) nós. Assim, no `Document` Modelo de objeto de Aspose.Words, como em documentos do Word, não há conceito de uma coluna.

Por design, as linhas de tabela em Microsoft Word e Aspose.Words são completamente independentes, e as propriedades e operações básicas são contidas apenas nas linhas e células da tabela. Isso dá às tabelas a capacidade de ter alguns atributos interessantes:

- Cada linha de tabela pode ter um número completamente diferente de células
- verticalmente, as células de cada linha podem ter diferentes larguras
- Não. É possível juntar tabelas com diferentes formatos de linha e número de células

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Quaisquer operações realizadas em colunas são realmente "cortes de atalho" que executam a operação mudando coletivamente células de linha de tal forma que parece que estão sendo aplicados em colunas. Ou seja, você pode executar operações em colunas simplesmente iterando sobre o mesmo índice de células de linha de tabela.

O exemplo de código a seguir simplifica essas operações comprovando uma classe de fachada que coleta as células que compõem uma "coluna" de uma tabela:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

O exemplo de código a seguir mostra como inserir uma coluna em branco em uma tabela:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

O exemplo de código a seguir mostra como remover uma coluna de uma tabela em um documento:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Especificar linhas como linhas de cabeçalho

Você pode optar por repetir a primeira linha na tabela como a linha de cabeçalho apenas na primeira página ou em cada página se a tabela for dividida em várias. Em Aspose.Words, você pode repetir a linha de cabeçalho em cada página usando o [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) propriedade.

Você também pode marcar várias linhas de cabeçalho se tais linhas estiverem localizadas uma após a outra no início da tabela. Para fazer isso, você precisa aplicar o **HeadingFormat** propriedades para estas linhas.

{{% alert color="primary" %}}

Note que Header Rows não funcionam em tabelas aninhadas. Isto é, se você tem uma tabela dentro de outra tabela, esta configuração não terá efeito. É uma limitação Microsoft Word que não permite isso, não Aspose.Words.

{{% /alert %}}

O exemplo de código a seguir mostra como construir uma tabela que inclui linhas de cabeçalho que repetem em páginas subseqüentes:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Mantenha tabelas e linhas de quebra em páginas diferentes {#keep-tables-and-rows-from-breaking-across-pages}

Há momentos em que o conteúdo de uma tabela não deve ser dividido em páginas. Por exemplo, se um título estiver acima de uma tabela, o título e a tabela devem sempre ser mantidos juntos na mesma página para preservar a aparência adequada.

Existem duas técnicas separadas que são úteis para alcançar essa funcionalidade:

- Não. `Allow row break across pages`, que é aplicado em linhas de tabela
- Não. `Keep with next`, que é aplicado a parágrafos em células de tabela

Por padrão, as propriedades acima são desativadas.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Mantenha uma linha de quebrar páginas diferentes {#keep-a-row-from-breaking-across-pages}

Isso envolve restringir o conteúdo dentro das células de uma linha de ser dividido em uma página. Em Microsoft Word, Isso pode ser encontrado em Propriedades da Tabela como a opção "Permitir linha para quebrar em páginas". Em Aspose.Words isto é encontrado sob o [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) objeto de um [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) como a propriedade [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

O exemplo de código a seguir mostra como desativar linhas de quebra em páginas para cada linha em uma tabela:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Mantenha uma tabela de quebra de páginas diferentes {#keep-a-table-from-breaking-across-pages}

Para parar a tabela de dividir em páginas, precisamos especificar que queremos que o conteúdo contido dentro da tabela fique juntos.

Para fazer isto, Aspose.Words usa um método, que permite aos usuários selecionar uma tabela e ativar o [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) parâmetro para true para cada parágrafo dentro das células da tabela. A excepção é o último parágrafo da tabela, que deve ser definido como false.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

O exemplo de código a seguir mostra como definir uma tabela para ficar juntos na mesma página:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}