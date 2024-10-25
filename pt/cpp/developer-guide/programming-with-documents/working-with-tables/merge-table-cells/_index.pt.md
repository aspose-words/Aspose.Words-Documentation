---
title: Mesclar células da tabela em C++
second_title: Aspose.Words para C++
articleTitle: Mesclar Células Da Tabela
linktitle: Mesclar Células Da Tabela
description: "Como mesclar células de tabela em C++. Verifique se as células em uma tabela são mescladas usando C++."
type: docs
weight: 40
url: /pt/cpp/merge-table-cells/
---

Às vezes, certas linhas de uma tabela requerem um título ou grandes blocos de texto que ocupam toda a largura da tabela. Para o design adequado da tabela, o usuário pode mesclar várias células da tabela em uma. Aspose.Words suporta células mescladas ao trabalhar com todos os formatos de entrada, incluindo a importação de conteúdo HTML.

## Como mesclar células da tabela

Em Aspose.Words, as células mescladas são representadas pelas seguintes propriedades da classe [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_horizontalmerge/) que descreve se a célula faz parte de uma fusão horizontal de células
- [VerticalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_verticalmerge/) que descreve se a célula faz parte de uma fusão vertical de células

Os valores dessas propriedades determinam o comportamento de mesclagem das células:

- A primeira célula em uma sequência de células mescladas terá [CellMerge.First](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Quaisquer células posteriormente mescladas terão [CellMerge.Previous](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Uma célula que não é mesclada terá [CellMerge.None](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

Às vezes, ao carregar células de Documento existentes em uma tabela, elas aparecerão mescladas. No entanto, pode realmente ser uma célula longa – às vezes Microsoft Word exporta células mescladas dessa maneira. Isso pode ser confuso ao tentar trabalhar com células individuais, mas não parece haver nenhum padrão específico sobre quando isso acontece.

{{% /alert %}}

## Verifique se a célula foi mesclada

Para verificar se uma célula faz parte de uma sequência de células mescladas, basta verificar as propriedades **HorizontalMerge** e **VerticalMerge**.

O exemplo de código a seguir mostra como imprimir o tipo de mesclagem de células horizontal e vertical:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "check-cells-merged.h" >}}

## Células mescladas em uma tabela {#merge-cells-in-a-table}

Para mesclar células em uma tabela criada com o [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), você precisa definir o tipo de mesclagem apropriado para cada célula em que a mesclagem é esperada – primeiro **CellMerge.First** e depois **CellMerge.Previous**.

Além disso, você deve se lembrar de limpar a configuração de mesclagem para as células em que nenhuma mesclagem é necessária – isso pode ser feito definindo a primeira célula sem mesclagem como **CellMerge.None**. Se isso não for feito, todas as células da tabela serão mescladas.

O exemplo de código a seguir mostra como criar uma tabela com duas linhas onde as células da primeira linha são mescladas horizontalmente:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-merge.h" >}}

O exemplo de código a seguir mostra como criar uma tabela de duas colunas onde as células da primeira coluna são mescladas verticalmente:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "vertical-merge.h" >}}

## Mesclar células da tabela em outros casos

Em outras situações em que o **DocumentBuilder** não é usado, como em uma tabela existente, mesclar células da maneira anterior pode não ser tão fácil. Em vez disso, podemos envolver as operações básicas envolvidas na aplicação de propriedades de mesclagem às células em um método que torna a tarefa muito mais fácil. Este método é semelhante ao método de automação de mesclagem, que é chamado para mesclar um intervalo de células em uma tabela.

O código abaixo irá mesclar as células da tabela no intervalo especificado, começando na célula dada e terminando na célula final. Nesse caso, o intervalo pode abranger várias linhas ou colunas:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cells.h" >}}

O exemplo de código a seguir mostra como mesclar um intervalo de células entre duas células especificadas:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cell-range.h" >}}

Dependendo da versão da estrutura que você está usando, convém refinar esse método transformando-o em um método de extensão. Nesse caso, você pode chamar esse método diretamente em uma célula para mesclar um intervalo de células, como `cell1.Merge(cell2)`.

## Células mescladas verticais e horizontais em uma tabela {#vertical-and-Horizontal-merged-cells-in-the-table}

Como dissemos em artigos anteriores, uma tabela em Microsoft Word é um conjunto de linhas independentes. Cada linha tem um conjunto de células que são independentes das células de outras linhas. Assim, na tabela Microsoft Word não existe um objeto como uma "coluna", e "1st coluna" é algo como "o conjunto das 1st células de cada linha na tabela". Isso permite que os usuários tenham uma tabela na qual, por exemplo, a linha 1st consiste em duas células – 2cm e 1cm, e a linha 2nd consiste em duas células diferentes – 1cm e 2cm de largura. E Aspose.Words apoia este conceito de tabelas.

Uma tabela em HTML tem uma estrutura essencialmente diferente: cada linha tem o mesmo número de células e (é importante para a tarefa) cada célula tem a largura da coluna correspondente, a mesma para todas as células de uma coluna. Portanto, se **HorizontalMerge** e **VerticalMerge** retornarem um valor incorreto, use o seguinte exemplo de código:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "print-horizontal-and-vertical-merged.h" >}}

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-and-vertical-merge-helper-classes.h" >}}

## Converter em células mescladas horizontalmente {#convert-to-horizontally-merged-cells}

Às vezes, não é possível detectar quais células são mescladas porque algumas versões mais recentes de Microsoft Word não usam mais os sinalizadores de mesclagem quando as células são mescladas horizontalmente. Mas para situações em que as células são mescladas em uma célula horizontalmente por sua largura usando sinalizadores de mesclagem, Aspose.Words fornece o método `ConvertToHorizontallyMergedCells` para converter células. Este método simplesmente transforma a tabela e adiciona novas células conforme necessário.

O exemplo de código a seguir mostra o método acima em operação:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "convert-to-horizontally-merged-cells.h" >}}