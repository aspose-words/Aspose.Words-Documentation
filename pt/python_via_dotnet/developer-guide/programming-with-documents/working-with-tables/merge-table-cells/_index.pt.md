---
title: Mesclar células da tabela
second_title: Aspose.Words para Python via .NET
articleTitle: Mesclar células da tabela
linktitle: Mesclar células da tabela
description: "Como mesclar células de tabela em Python. Verifique se as células de uma tabela foram mescladas usando Python."
type: docs
weight: 40
url: /pt/python-net/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

Às vezes, certas linhas de uma tabela exigem um título ou grandes blocos de texto que ocupam toda a largura da tabela. Para um design adequado da tabela, o usuário pode mesclar várias células da tabela em uma. Aspose.Words oferece suporte a células mescladas ao trabalhar com todos os formatos de entrada, incluindo a importação de conteúdo HTML.

## Como mesclar células de tabela

No Aspose.Words, as células mescladas são representadas pelas seguintes propriedades da classe [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/horizontal_merge/) que descreve se a célula faz parte de uma mesclagem horizontal de células
- [VerticalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/vertical_merge/) que descreve se a célula faz parte de uma mesclagem vertical de células

Os valores dessas propriedades determinam o comportamento de mesclagem das células:

- A primeira célula de uma sequência de células mescladas terá [CellMerge.First](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#first)
- Quaisquer células mescladas posteriormente terão [CellMerge.Previous](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#previous)
- Uma célula que não for mesclada terá [CellMerge.None](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#none)

{{% alert color="primary" %}}

Às vezes, ao carregar células de documentos existentes em uma tabela, elas aparecerão mescladas. No entanto, na verdade pode ser uma célula longa – às vezes o Microsoft Word exporta células mescladas dessa forma. Isso pode ser confuso ao tentar trabalhar com células individuais, mas não parece haver nenhum padrão específico de quando isso acontece.

{{% /alert %}}

## Verifique se a célula está mesclada

Para verificar se uma célula faz parte de uma sequência de células mescladas, basta verificar as propriedades **HorizontalMerge** e **VerticalMerge**.

O exemplo de código a seguir mostra como imprimir o tipo de mesclagem de células horizontal e vertical:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "check-cells-merged.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Mesclar células da tabela ao usar o DocumentBuilder

Para mesclar células em uma tabela criada com [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), você precisa definir o tipo de mesclagem apropriado para cada célula onde a mesclagem é esperada – primeiro **CellMerge.First** e depois **CellMerge.Previous**.

Além disso, você deve se lembrar de limpar a configuração de mesclagem para as células onde nenhuma mesclagem é necessária – isso pode ser feito definindo a primeira célula sem mesclagem como **CellMerge.None**. Caso contrário, todas as células da tabela serão mescladas.

O exemplo de código a seguir mostra como criar uma tabela com duas linhas onde as células da primeira linha são mescladas horizontalmente:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "horizontal-merge.py" >}}

O exemplo de código a seguir mostra como criar uma tabela de duas colunas onde as células da primeira coluna são mescladas verticalmente:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "vertical-merge.py" >}}

## Mesclar células da tabela em outros casos

Em outras situações onde o **DocumentBuilder** não é utilizado, como em uma tabela existente, mesclar células da forma anterior pode não ser tão fácil. Em vez disso, podemos agrupar as operações básicas envolvidas na aplicação de propriedades de mesclagem às células em um método que torna a tarefa muito mais fácil. Este método é semelhante ao método de automação Merge, que é chamado para mesclar um intervalo de células em uma tabela.

O código abaixo irá mesclar as células da tabela no intervalo especificado, começando na célula fornecida e terminando na célula final. Nesse caso, o intervalo pode abranger várias linhas ou colunas:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cells.py" >}}

O exemplo de código a seguir mostra como mesclar um intervalo de células entre duas células especificadas:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cell-range.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

Dependendo da versão do Framework que você está usando, você pode refinar esse método transformando-o em um método de extensão. Nesse caso, você pode chamar esse método diretamente em uma célula para mesclar um intervalo de células, como `cell1.Merge(cell2)`.

## Converter em células mescladas horizontalmente

Às vezes não é possível detectar quais células são mescladas porque algumas versões mais recentes do Microsoft Word não usam mais os sinalizadores de mesclagem quando as células são mescladas horizontalmente. Mas para situações em que as células são mescladas horizontalmente em uma célula por sua largura usando sinalizadores de mesclagem, o Aspose.Words fornece o método `ConvertToHorizontallyMergedCells` para converter células. Este método simplesmente transforma a tabela e adiciona novas células conforme necessário.

O exemplo de código a seguir mostra o método acima em operação:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "convert-to-horizontally-merged-cells.py" >}}
