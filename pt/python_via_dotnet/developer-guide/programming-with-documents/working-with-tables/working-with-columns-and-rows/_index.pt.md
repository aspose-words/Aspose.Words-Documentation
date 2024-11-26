---
title: Trabalhar com colunas e linhas
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhar com colunas e linhas
linktitle: Trabalhar com colunas e linhas
description: "Trabalhar com partes de uma tabela – linhas, colunas e células usando Python. Especifique a linha de cabeçalho Python."
type: docs
weight: 30
url: /pt/python-net/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Para ter mais controle sobre o funcionamento das tabelas, aprenda como manipular colunas e linhas.

## Encontrando o índice do elemento da tabela

Colunas, linhas e células são gerenciadas acessando o nó do documento selecionado por meio de seu índice. Encontrar o índice de qualquer nó envolve reunir todos os nós filhos do tipo de elemento do nó pai e, em seguida, usar o método [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/) para encontrar o índice do nó desejado na coleção.

### Encontrando o índice de uma tabela em um documento

Às vezes, pode ser necessário fazer alterações em uma tabela específica de um documento. Para fazer isso, você pode consultar uma tabela pelo seu índice.

O exemplo de código a seguir mostra como recuperar o índice de uma tabela em um documento:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-table-index.py" >}}

### Encontrando o índice de uma linha em uma tabela

Da mesma forma, pode ser necessário fazer alterações em uma linha específica de uma tabela selecionada. Para fazer isso, você também pode referir-se a uma linha pelo seu índice.

O exemplo de código a seguir mostra como recuperar o índice de uma linha em uma tabela:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-row-index.py" >}}

### Encontrando o índice de uma célula consecutiva

Finalmente, pode ser necessário fazer alterações em uma célula específica, e você também pode fazer isso por índice de célula.

O exemplo de código a seguir mostra como recuperar o índice de uma célula em uma linha:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-cell-index.py" >}}

## Trabalhar com colunas

No Aspose.Words Document Object Model (DOM), o nó [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) consiste em nós [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) e depois em nós [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/). Assim, no Modelo de Objeto `Document` do Aspose.Words, assim como nos documentos Word, não existe o conceito de coluna.

Por design, as linhas da tabela em Microsoft Word e Aspose.Words são completamente independentes e as propriedades e operações básicas estão contidas apenas nas linhas e células da tabela. Isso dá às tabelas a capacidade de ter alguns atributos interessantes:

- Cada linha da tabela pode ter um número de células completamente diferente
- Verticalmente, as células de cada linha podem ter larguras diferentes
- É possível unir tabelas com diferentes formatos de linha e número de células

Quaisquer operações executadas em colunas são, na verdade, "atalhos" que executam a operação alterando coletivamente as células da linha de forma que pareça que estão sendo aplicadas às colunas. Ou seja, você pode realizar operações em colunas simplesmente iterando no mesmo índice de célula de linha da tabela.

O exemplo de código a seguir simplifica tais operações provando uma classe de fachada que coleta as células que compõem uma "coluna" de uma tabela:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "column-class.py" >}}

O exemplo de código a seguir mostra como inserir uma coluna em branco em uma tabela:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "insert-blank-column.py" >}}

O exemplo de código a seguir mostra como remover uma coluna de uma tabela em um documento:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "remove-column.py" >}}

## Especifique linhas como linhas de cabeçalho

Você pode optar por repetir a primeira linha da tabela como linha de cabeçalho somente na primeira página ou em cada página se a tabela estiver dividida em várias. No Aspose.Words, você pode repetir a linha do cabeçalho em todas as páginas usando a propriedade [HeadingFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/heading_format/).

Você também pode marcar várias linhas de cabeçalho se essas linhas estiverem localizadas uma após a outra no início da tabela. Para fazer isso, você precisa aplicar as propriedades **HeadingFormat** a essas linhas.

{{% alert color="primary" %}}

Observe que as linhas de cabeçalho não funcionam em tabelas aninhadas. Ou seja, se você tiver uma tabela dentro de outra tabela, essa configuração não terá efeito. É uma limitação do Microsoft Word que não permite isso, não do Aspose.Words.

{{% /alert %}}

O exemplo de código a seguir mostra como construir uma tabela que inclui linhas de cabeçalho que se repetem nas páginas subsequentes:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "repeat-rows-on-subsequent-pages.py" >}}

## Evite que tabelas e linhas se quebrem nas páginas

Há momentos em que o conteúdo de uma tabela não deve ser dividido em páginas. Por exemplo, se um título estiver acima de uma tabela, o título e a tabela deverão ser sempre mantidos juntos na mesma página para preservar a aparência adequada.

Existem duas técnicas distintas que são úteis para obter essa funcionalidade:

- `Allow row break across pages`, que é aplicado às linhas da tabela
- `Keep with next`, que é aplicado a parágrafos em células de tabela

Por padrão, as propriedades acima estão desativadas.

### Evite que uma linha se espalhe pelas páginas

Isso envolve impedir que o conteúdo dentro das células de uma linha seja dividido em uma página. No Microsoft Word, isso pode ser encontrado em Propriedades da tabela como a opção "Permitir que a linha se quebre nas páginas". Em Aspose.Words, isso é encontrado no objeto [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) de um [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) como propriedade [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/allow_break_across_pages/).

O exemplo de código a seguir mostra como desabilitar a quebra de linhas nas páginas para cada linha de uma tabela:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "row-format-disable-break-across-pages.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### Evite que uma tabela se quebre nas páginas

Para impedir que a tabela se divida entre páginas, precisamos especificar que queremos que o conteúdo contido na tabela permaneça junto.

Para fazer isso, Aspose.Words usa um método que permite aos usuários selecionar uma tabela e habilitar o parâmetro [KeepWithNext](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/keep_with_next/) para true para cada parágrafo dentro das células da tabela. A exceção é o último parágrafo da tabela, que deve ser definido como false.

O exemplo de código a seguir mostra como configurar uma tabela para permanecer junta na mesma página:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "keep-table-together.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}
