---
title: Trabalhando com fontes em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com fontes
linktitle: Trabalhando com fontes
description: "Personalize as configurações de fonte usando Python."
type: docs
weight: 230
url: /pt/python-net/working-with-fonts/
---

Uma fonte é um conjunto de caracteres com determinado tamanho, cor e design. Aspose.Words permite trabalhar com fontes usando o módulo [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) e a classe [Font](https://reference.aspose.com/words/python-net/aspose.words/font/).

## Formatação de fonte

A formatação atual da fonte é representada pelo objeto **Font** retornado pela propriedade [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/). A classe **Font** contém uma ampla variedade de propriedades de fontes, replicando aquelas disponíveis em Microsoft Word.

O exemplo de código a seguir mostra como definir a formatação da fonte:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

As propriedades de preenchimento agora também estão disponíveis para fontes para definir a formatação de preenchimento do texto. Permite alterar, por exemplo, a cor do primeiro plano ou a transparência do preenchimento do texto.

## Obtendo espaçamento entre linhas de fonte

O espaçamento entre linhas da fonte é a distância vertical entre as linhas de base de duas linhas consecutivas de texto. Portanto, o espaçamento entre linhas inclui o espaço em branco entre as linhas junto com a altura do próprio caractere.

A propriedade [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) foi introduzida na classe [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) para obter este valor conforme mostrado no exemplo abaixo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## Ênfase da fonteMark

Algumas línguas do Leste Asiático usam uma marca de ênfase especial para indicar ênfase. A classe **Font** fornece a propriedade [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) para obter ou definir valores de enumeração [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) a serem aplicados na formatação.

O exemplo de código a seguir mostra como definir a propriedade **EphasisMark**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
