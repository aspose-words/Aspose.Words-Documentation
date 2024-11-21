---
title: Trabalhando com fontes em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com fontes
linktitle: Trabalhando com fontes
description: "Formatação de fonte em detalhes usando C#. Marca de ênfase em C#. Obtenha o espaçamento entre linhas da fonte usando C#."
type: docs
weight: 230
url: /pt/net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Uma fonte é um conjunto de caracteres com determinado tamanho, cor e design. Aspose.Words permite trabalhar com fontes usando o namespace [Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) e a classe [Font](https://reference.aspose.com/words/net/aspose.words/font/).

## Formatação de fonte

A formatação atual da fonte é representada pelo objeto **Font** retornado pela propriedade [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/). A classe **Font** contém uma ampla variedade de propriedades de fontes, replicando aquelas disponíveis em Microsoft Word.

O exemplo de código a seguir mostra como definir a formatação da fonte:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

As propriedades de preenchimento também estão disponíveis para fontes para definir a formatação do preenchimento do texto. Isto permite alterar, por exemplo, a cor do primeiro plano ou a transparência do preenchimento do texto.

## Obtendo espaçamento entre linhas de fonte

O espaçamento entre linhas da fonte é a distância vertical entre as linhas de base de duas linhas consecutivas de texto. Portanto, o espaçamento entre linhas inclui o espaço em branco entre as linhas junto com a altura do próprio caractere.

A propriedade [LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/) foi introduzida na classe **Font** para obter esse valor, conforme exemplo abaixo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## Ênfase da fonteMark

Algumas línguas do Leste Asiático usam uma marca de ênfase especial para indicar ênfase. A classe **Font** fornece a propriedade [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/) para obter ou definir os valores de enumeração [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/emphasismark/) a serem aplicados durante a formatação.

O exemplo de código a seguir mostra como definir a propriedade **EphasisMark**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
