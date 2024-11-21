---
title: Trabalhando com fontes em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhar com fontes
linktitle: Trabalhar com fontes
description: "Formatação de fontes em detalhes usando C++."
type: docs
weight: 230
url: /pt/cpp/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Uma fonte é um conjunto de caracteres com um determinado tamanho, cor e design. Aspose.Words permite que você trabalhe com fontes usando o namespace [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) e a classe [Font](https://reference.aspose.com/words/cpp/aspose.words/font/).

## Formatação Da Fonte

A formatação da fonte atual é representada pelo objeto **Font** retornado pela propriedade [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/). A classe **Font** contém uma grande variedade de propriedades de fonte, replicando as disponíveis em Microsoft Word.

O exemplo de código a seguir mostra como definir a formatação da fonte:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

As propriedades de preenchimento agora também estão disponíveis para fontes para definir a formatação de preenchimento do texto. Permite alterar, por exemplo, a cor do primeiro plano ou a transparência do preenchimento do texto.

## Obtendo O Espaçamento Entre Linhas Da Fonte

O espaçamento entre linhas de fonte é a distância vertical entre as linhas de base de duas linhas consecutivas de texto. Portanto, o espaçamento entre linhas inclui o espaço em branco entre as linhas junto com a altura do próprio caractere.

A propriedade [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) foi introduzida na classe **Font** para obter esse valor, conforme mostrado no exemplo abaixo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Fonte EmphasisMark

Algumas línguas do leste asiático usam uma marca de ênfase especial para indicar uma ênfase. A classe **Font** fornece a propriedade [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) para obter ou definir os valores de enumeração `EmphasisMark` a serem aplicados durante a formatação.

O exemplo de código a seguir mostra como definir a propriedade **EphasisMark**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
