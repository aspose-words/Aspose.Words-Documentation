---
title: Mesclar células da tabela em Java
second_title: Aspose.Words para Java
articleTitle: Mesclar Células Da Tabela
linktitle: Mesclar Células Da Tabela
description: "Como mesclar células da tabela em Java. Verifique se as células de uma tabela são mescladas usando Java."
type: docs
weight: 40
url: /pt/java/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

Às vezes, certas linhas de uma tabela requerem um título ou grandes blocos de texto que ocupam toda a largura da tabela. Para o design adequado da tabela, o usuário pode mesclar várias células da tabela em uma. Aspose.Words suporta células mescladas ao trabalhar com todos os formatos de entrada, incluindo a importação de conteúdo HTML.

## Como mesclar células da tabela

Em Aspose.Words, as células mescladas são representadas pelas seguintes propriedades da classe [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) que descreve se a célula faz parte de uma fusão horizontal de células
- [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) que descreve se a célula faz parte de uma fusão vertical de células

Os valores dessas propriedades determinam o comportamento de mesclagem das células:

- A primeira célula em uma sequência de células mescladas terá [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- Quaisquer células posteriormente mescladas terão [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- Uma célula que não é mesclada terá [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

Às vezes, ao carregar células de Documento existentes em uma tabela, elas aparecerão mescladas. No entanto, pode realmente ser uma célula longa – às vezes Microsoft Word exporta células mescladas dessa maneira. Isso pode ser confuso ao tentar trabalhar com células individuais, mas não parece haver nenhum padrão específico sobre quando isso acontece.

{{% /alert %}}

## Verificando se uma célula foi mesclada

Para verificar se uma célula faz parte de uma sequência de células mescladas, basta verificar as propriedades **HorizontalMerge** e **VerticalMerge**.

O exemplo de código a seguir mostra como imprimir o tipo de mesclagem de células horizontal e vertical:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## Mesclar Células Da Tabela Ao Usar DocumentBuilder

Para mesclar células em uma tabela criada com o [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), você precisa definir o tipo de mesclagem apropriado para cada célula em que a mesclagem é esperada – primeiro **CellMerge.First** e depois **CellMerge.Previous**.

Além disso, você deve se lembrar de limpar a configuração de mesclagem para as células em que nenhuma mesclagem é necessária – isso pode ser feito definindo a primeira célula sem mesclagem como **CellMerge.None**. Se isso não for feito, todas as células da tabela serão mescladas.

O exemplo de código a seguir mostra como criar uma tabela com duas linhas onde as células da primeira linha são mescladas horizontalmente:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

O exemplo de código a seguir mostra como criar uma tabela de duas colunas onde as células da primeira coluna são mescladas verticalmente:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## Mesclar células da tabela em outros casos

Em outras situações em que o **DocumentBuilder** não é usado, como em uma tabela existente, mesclar células da maneira anterior pode não ser tão fácil. Em vez disso, podemos envolver as operações básicas envolvidas na aplicação de propriedades de mesclagem às células em um método que torna a tarefa muito mais fácil. Este método é semelhante ao método de automação de mesclagem, que é chamado para mesclar um intervalo de células em uma tabela.

O código abaixo irá mesclar as células da tabela no intervalo especificado, começando na célula dada e terminando na célula final. Nesse caso, o intervalo pode abranger várias linhas ou colunas:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

O exemplo de código a seguir mostra como mesclar um intervalo de células entre duas células especificadas:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## Células combinadas verticais e horizontais na tabela HTML

Como dissemos em artigos anteriores, uma tabela em Microsoft Word é um conjunto de linhas independentes. Cada linha tem um conjunto de células que são independentes das células de outras linhas. Assim, na tabela Microsoft Word não existe um objeto como uma "coluna", e" 1a coluna "é algo como"o conjunto das 1AS células de cada linha da tabela". Isso permite que os usuários tenham uma tabela na qual, por exemplo, a 1a linha consiste em duas células – 2cm e 1cm, e a 2a linha consiste em duas células diferentes – 1cm e 2cm de largura. E Aspose.Words apoia este conceito de tabelas.

Uma tabela em HTML tem uma estrutura essencialmente diferente: cada linha tem o mesmo número de células e (é importante para a tarefa) cada célula tem a largura da coluna correspondente, a mesma para todas as células de uma coluna. Portanto, se **HorizontalMerge** e **VerticalMerge** retornarem um valor incorreto, use o seguinte exemplo de código:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## Converter em células mescladas horizontalmente

Às vezes, não é possível detectar quais células são mescladas porque algumas versões mais recentes de Microsoft Word não usam mais os sinalizadores de mesclagem quando as células são mescladas horizontalmente. Mas para situações em que as células são mescladas em uma célula horizontalmente por sua largura usando sinalizadores de mesclagem, Aspose.Words fornece o método `ConvertToHorizontallyMergedCells` para converter células. Este método simplesmente transforma a tabela e adiciona novas células conforme necessário.

O exemplo de código a seguir mostra o método acima em operação:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
