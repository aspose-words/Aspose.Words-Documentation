---
title: Trabalhar com colunas e linhas em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com colunas e linhas
linktitle: Trabalhar com colunas e linhas
description: "Trabalhando com partes de uma tabela – linhas, colunas e células usando Java. Especifique A Linha Do Cabeçalho Java."
type: docs
weight: 30
url: /pt/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Para obter mais controle sobre como as tabelas funcionam, saiba como manipular colunas e linhas.

## Encontre o índice do elemento da tabela

As colunas, linhas e células são geridas acedendo ao nó do documento seleccionado pelo respectivo índice. Encontrar o índice de qualquer nó envolve reunir todos os nós filhos do tipo de elemento do nó pai e, em seguida, usar o método [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) para encontrar o índice do nó desejado na coleção.

### Encontrar o Índice de uma tabela num documento

Às vezes, pode ser necessário fazer alterações em uma tabela específica em um documento. Para fazer isso, você pode consultar uma tabela por seu índice.

O exemplo de código a seguir mostra como recuperar o índice de uma tabela em um documento:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Encontrando o Índice de uma linha em uma tabela

Da mesma forma, pode ser necessário fazer alterações em uma linha específica em uma tabela selecionada. Para fazer isso, você também pode consultar uma linha por seu índice.

O exemplo de código a seguir mostra como recuperar o índice de uma linha em uma tabela:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Encontrando o Índice de uma célula em uma linha

Finalmente, você pode precisar fazer alterações em uma célula específica, e você pode fazer isso por índice de célula também.

O exemplo de código a seguir mostra como recuperar o índice de uma célula em uma linha:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Trabalhar com colunas

No modelo de objeto de Documento Aspose.Words (DOM), o nó [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) consiste em nós [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) e depois em nós [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/). Assim, no modelo de objeto `Document` de Aspose.Words, Como nos documentos do Word, não existe o conceito de coluna.

Por design, as linhas da tabela em Microsoft Word e Aspose.Words são completamente independentes, e as propriedades e Operações básicas estão contidas apenas nas linhas e células da tabela. Isso dá às tabelas a capacidade de ter alguns atributos interessantes:

- Cada linha da tabela pode ter um número completamente diferente de células
- Verticalmente, as células de cada linha podem ter larguras diferentes
- É possível juntar tabelas com diferentes formatos de linha e número de células

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Quaisquer operações realizadas em colunas são, na verdade," atalhos " que executam a operação alterando coletivamente as células de linha de forma que pareça que estão sendo aplicadas às colunas. Ou seja, você pode executar operações em colunas simplesmente iterando sobre o mesmo índice de célula da linha da tabela.

O exemplo de código a seguir simplifica essas operações, provando uma classe de fachada que coleta as células que compõem uma" coluna " de uma tabela:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

O exemplo de código a seguir mostra como inserir uma coluna em branco em uma tabela:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

O exemplo de código a seguir mostra como remover uma coluna de uma tabela em um documento:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Especificar linhas como linhas de cabeçalho

Pode optar por repetir a primeira linha da tabela como linha de cabeçalho apenas na primeira página ou em cada página se a tabela estiver dividida em várias. Em Aspose.Words, você pode repetir a linha do cabeçalho em cada página usando a propriedade [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat).

Você também pode marcar várias linhas de cabeçalho se essas linhas estiverem localizadas uma após a outra no início da tabela. Para fazer isso, você precisa aplicar as propriedades **HeadingFormat** a essas linhas.

{{% alert color="primary" %}}

Observe que as linhas de cabeçalho não funcionam em tabelas aninhadas. Ou seja, se você tiver uma tabela dentro de outra tabela, essa configuração não terá efeito. É uma limitação de Microsoft Word que não permite isso, não Aspose.Words.

{{% /alert %}}

O exemplo de código a seguir mostra como construir uma tabela que inclui linhas de cabeçalho que se repetem nas páginas subsequentes:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Impedir que tabelas e linhas se separem das páginas {#keep-tables-and-rows-from-breaking-across-pages}

Há momentos em que o conteúdo de uma tabela não deve ser dividido entre páginas. Por exemplo, se um título estiver acima de uma tabela, o Título e a tabela devem ser sempre mantidos juntos na mesma página para preservar a aparência adequada.

Existem duas técnicas separadas que são úteis para alcançar esta funcionalidade:

- `Allow row break across pages`, que é aplicado às linhas da tabela
- `Keep with next`, que é aplicado aos parágrafos nas células da tabela

Por padrão, as propriedades acima estão desativadas.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Impedir que uma linha atravesse as páginas {#keep-a-row-from-breaking-across-pages}

Isso envolve restringir o conteúdo dentro das células de uma linha de ser dividido em uma página. Em Microsoft Word, isso pode ser encontrado em Propriedades da tabela como a opção"Permitir que a linha atravesse as páginas". Em Aspose.Words Isso é encontrado sob o objeto [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) de a [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) como a propriedade [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

O exemplo de código a seguir mostra como desativar a quebra de linhas nas páginas para cada linha em uma tabela:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Impedir que uma tabela atravesse páginas {#keep-a-table-from-breaking-across-pages}

Para impedir que a tabela se divida entre páginas, temos de especificar que queremos que o conteúdo contido na tabela permaneça Unido.

Para fazer isso, Aspose.Words usa um método, que permite aos usuários selecionar uma tabela e habilitar o parâmetro [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) como true para cada parágrafo dentro das células da tabela. A excepção é o último parágrafo do quadro, que deve ser definido como falso.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

O exemplo de código a seguir mostra como definir uma tabela para permanecer juntos na mesma página:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
