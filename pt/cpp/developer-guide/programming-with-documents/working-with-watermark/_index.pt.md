---
title: Trabalhando com marca D'Água Em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhando com marca D'água
linktitle: Trabalhando com marca D'água
type: docs
description: "Manipulação de marca d'água de documentos usando C++."
weight: 340
url: /pt/cpp/working-with-watermark/
timestamp: 2024-01-30-16-22-34
---

Este tópico discute como trabalhar programaticamente com marca d'água usando Aspose.Words. Uma marca d'água é uma imagem de fundo que é exibida atrás do texto em um documento. Uma marca d'água pode conter um texto ou uma imagem representada pela classe [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/).

## Adicionar uma marca D'água a um documento

Em Microsoft Word, uma marca d'água pode ser facilmente inserida em um documento usando o comando Inserir marca d'água. Aspose.Words fornece a classe [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) para adicionar ou remover marca d'água em documentos. Aspose.Words fornece a enumeração [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)definindo três tipos possíveis de marcas d'água (texto, imagem e nenhum) para trabalhar.

### Adicionar Marca D'Água De Texto

O exemplo de código a seguir demonstra como inserir uma marca d'água de texto em um documento definindo [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) usando o método [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### Adicionar Marca D'Água De Imagem

O exemplo de código a seguir demonstra como inserir uma marca d'água de imagem em um documento definindo [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) usando o método [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

A marca d'água também pode ser inserida usando a classe shape. É muito fácil inserir qualquer forma ou imagem em um cabeçalho ou rodapé e, assim, criar uma marca d'água de qualquer tipo imaginável. O exemplo de código a seguir insere uma marca d'água em um documento do Word.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## Remover marca D'água de um documento

A classe [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) fornece o método remove Para remover a marca d'água de um documento.

O exemplo de código a seguir mostra como remover uma marca d'água de documentos:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

Se as marcas d'água forem adicionadas usando o objeto de classe [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/), para remover a marca d'água de um documento, você deve definir apenas o nome da forma da marca d'água durante a inserção e, em seguida, remover a forma da marca d'água por um nome atribuído.

O exemplo de código a seguir mostra como definir o nome da forma da marca d'água e removê-la do documento:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## Adicionar uma marca D'água na célula da tabela

Às vezes, você precisa inserir uma marca d'água/Imagem na célula de uma tabela e exibi-la fora da tabela, você pode usar a propriedade [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/). Esta propriedade obtém ou define um sinalizador indicando se a forma é exibida dentro ou fora de uma tabela. Observe que essa propriedade só funciona quando você otimiza o documento para Microsoft Word 2010 usando o método [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/).

O exemplo de código a seguir mostra como usar essa propriedade:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
