---
title: Trabalhando com marca d'água em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com marca d'água
linktitle: Trabalhando com marca d'água
description: "Crie e gerencie marcas d'água em um documento usando Python."
type: docs
weight: 340
url: /pt/python-net/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

Este tópico discute como trabalhar programaticamente com marca d’água usando Aspose.Words. Uma marca d'água é uma imagem de fundo exibida atrás do texto em um documento. Uma marca d’água pode conter um texto ou uma imagem representada pela classe [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/).

{{% alert color="primary" %}}

**Experimente on-line**

Você pode experimentar esta funcionalidade com nosso [Marca d'água de documento online gratuita](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Como adicionar uma marca d'água a um documento

No Microsoft Word, uma marca d'água pode ser facilmente inserida em um documento usando o comando Inserir marca d'água. Aspose.Words fornece a classe [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) para adicionar ou remover marcas d’água em documentos. Aspose.Words fornece a enumeração [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) que define três tipos possíveis de marcas d'água ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image) e [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) para trabalhar

### Adicionar marca d'água de texto

O exemplo de código a seguir demonstra como inserir uma marca d’água de texto em um documento definindo [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) usando o método [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### Adicionar marca d'água de imagem

O exemplo de código a seguir demonstra como inserir uma marca d’água de imagem em um documento definindo [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) usando o método [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

A marca d'água também pode ser inserida usando a classe de forma. É muito fácil inserir qualquer forma ou imagem em um cabeçalho ou rodapé e assim criar uma marca d’água de qualquer tipo imaginável.

O exemplo de código a seguir insere uma marca d'água em um documento do Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [aqui](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}


## Remover marca d'água de um documento

A classe [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) fornece o método remove para remover a marca d'água de um documento.

O exemplo de código a seguir mostra como remover uma marca d'água de documentos:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

Se as marcas d'água forem adicionadas usando o objeto de classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), para remover a marca d'água de um documento, você deverá definir apenas o nome do formato da marca d'água durante a inserção e, em seguida, remover o formato da marca d'água por um nome atribuído.

O exemplo de código a seguir mostra como definir o nome da forma da marca d'água e removê-la do documento:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## Adicionar uma marca d'água na célula da tabela

Às vezes você precisa inserir uma marca d’água/imagem na célula de uma tabela e exibi-la fora da tabela, você pode usar a propriedade [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/). Esta propriedade obtém ou define um sinalizador que indica se a forma é exibida dentro ou fora de uma tabela. Observe que esta propriedade funciona somente quando você otimiza o documento para Microsoft Word 2010 usando o método [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/).

O exemplo de código a seguir mostra como usar essa propriedade:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
