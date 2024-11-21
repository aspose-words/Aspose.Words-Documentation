---
title: Mesclar células de tabela em Java
second_title: Aspose.Words para Java
articleTitle: Células de mesa de fusão
linktitle: Células de mesa de fusão
description: "Como mesclar células de tabela em Java. Verifique se as células em uma tabela são mescladas usando Java."
type: docs
weight: 40
url: /pt/java/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

Às vezes certas linhas em uma tabela exigem um cabeçalho ou grandes blocos de texto que ocupam a largura total da tabela. Para o design adequado da tabela, o usuário pode mesclar várias células de tabela em uma. Aspose.Words suporta células mescladas ao trabalhar com todos os formatos de entrada, incluindo importar conteúdo HTML.

## Como Mesclar Células de Mesa

Em Aspose.Words, células mescladas são representadas pelas seguintes propriedades da [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) classe:

- Não. [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) que descreve se a célula é uma parte de uma fusão horizontal de células
- Não. [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) que descreve se a célula é uma parte de uma fusão vertical de células

Os valores dessas propriedades determinam o comportamento de mesclagem das células:

- Não. A primeira célula em uma sequência de células mescladas terá [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- Não. Quaisquer células fundidas subsequentemente terão [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- Uma célula que não está mesclada terá [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

Às vezes, ao carregar as células de documentos existentes em uma tabela, elas aparecerão mescladas. No entanto, pode realmente ser uma célula longa – às vezes Microsoft Word exporta células fundidas desta forma. Isso pode ser confuso ao tentar trabalhar com as células individuais, mas não parece haver nenhum padrão específico para quando isso acontece.

{{% /alert %}}

## Verificando se uma célula é Merged

Para verificar se uma célula faz parte de uma sequência de células mescladas, simplesmente verificamos o **HorizontalMerge** e **VerticalMerge** propriedades.

O exemplo a seguir mostra como imprimir o tipo de mesclagem horizontal e vertical da célula:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## Mesclar células da tabela ao usar o coletor de documentos

Para mesclar células em uma tabela criada com a [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), você precisa definir o tipo de mesclagem apropriado para cada célula onde a mesclagem é esperada – primeiro **CellMerge.First** e depois **CellMerge.Previous**.

Além disso, você deve se lembrar de limpar a configuração de mesclagem para essas células onde nenhuma mesclagem é necessária – isso pode ser feito definindo a primeira célula não-mistura para **CellMerge.None**. Se isso não for feito, todas as células na tabela serão fundidas.

O exemplo de código a seguir mostra como criar uma tabela com duas linhas onde as células na primeira linha são fundidas horizontalmente:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

O exemplo de código a seguir mostra como criar uma tabela de dois colunas onde as células na primeira coluna são mescladas verticalmente:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## Mesclar células de tabela em outros casos

Em outras situações em que **DocumentBuilder** não é usado, como em uma tabela existente, as células de fusão da maneira anterior podem não ser tão fáceis. Em vez disso, podemos envolver as operações básicas envolvidas na aplicação de propriedades de mesclagem para células em um método que torna a tarefa muito mais fácil. Este método é semelhante ao método de automação de fusão, que é chamado a mesclar uma gama de células em uma tabela.

O código abaixo irá mesclar as células de tabela no intervalo especificado, começando na célula dada e terminando na célula final. Neste caso, o intervalo pode abranger várias linhas ou colunas:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

O exemplo de código a seguir mostra como mesclar um intervalo de células entre duas células especificadas:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## Células trituradas verticais e horizontais na tabela HTML

Como dissemos em artigos anteriores, uma tabela em Microsoft Word é um conjunto de linhas independentes. Cada linha tem um conjunto de células que são independentes das células de outras linhas. Assim, no Microsoft Word tabela não há nenhum objeto como um "coluna", e "1a coluna" é algo como "o conjunto das 1a células de cada linha na tabela". Isso permite aos usuários ter uma tabela na qual, por exemplo, a 1a linha consiste em duas células – 2cm e 1cm, e a 2a linha consiste em duas células diferentes – 1cm e 2cm de largura. E Aspose.Words suporta este conceito de tabelas.

Uma tabela em HTML tem uma estrutura essencialmente diferente: cada linha tem o mesmo número de células e (é importante para a tarefa) cada célula tem a largura da coluna correspondente, o mesmo para todas as células em uma coluna. Se **HorizontalMerge** e **VerticalMerge** retornar um valor incorreto, use o seguinte exemplo de código:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## Converter para horizontalmente Células Merged

Às vezes não é possível detectar quais células são fundidas porque algumas versões mais recentes de Microsoft Word não mais usar as bandeiras de mesclagem quando as células são fundidas horizontalmente. Mas para situações em que as células são fundidas em uma célula horizontalmente por sua largura usando bandeiras de mesclagem, Aspose.Words fornece o `ConvertToHorizontallyMergedCells` método para converter células. Este método simplesmente transforma a tabela e adiciona novas células conforme necessário.

O exemplo de código a seguir mostra o método acima em operação:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
