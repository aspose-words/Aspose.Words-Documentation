---
title: Converter um documento em uma imagem em C#
second_title: Aspose.Words para .NET
articleTitle: Converter um documento em uma imagem
linktitle: Converter um documento em uma imagem
type: docs
description: "Converta um documento em formato de imagem (JPG, PNG, etc). Crie uma visualização do documento ou crie uma digitalização do documento para enviar uma fatura usando C#."
weight: 43
url: /pt/net/convert-a-document-to-an-image/
timestamp: 2024-07-09-19-00-42
---

Às vezes é necessário obter uma imagem em vez de documentos em outros formatos, como DOCX ou PDF. Por exemplo, você precisa adicionar uma visualização de qualquer página do documento ao seu site ou aplicativo, ou criar uma "digitalização" de um documento para enviar uma fatura. É quando você pode precisar converter um documento em qualquer [formato de carregamento suportado](https://reference.aspose.com/words/net/aspose.words/loadformat/) para uma imagem, novamente, em qualquer [formato de salvamento suportado](https://reference.aspose.com/words/net/aspose.words/saveformat/).

## Converter para imagem {#convert-to-image-format}

Tal como acontece com todos os exemplos de conversão já descritos, você precisa criar um novo documento ou carregar um existente em qualquer formato suportado, fazer as alterações necessárias e salvá-lo em qualquer formato de imagem disponível, por exemplo, JPEG, PNG ou BMP.

O exemplo de código a seguir mostra como converter PDF em JPEG:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## Especifique as opções de salvamento ao converter para imagem {#specify-save-options-when-converting-to-an-image}

Aspose.Words fornece a classe [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), que oferece mais controle sobre como os documentos são salvos em vários formatos de imagem. Algumas propriedades desta classe herdam ou sobrecarregam propriedades de classes base como [FixedPageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/) ou [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), mas também existem opções específicas para salvar imagens.

É possível especificar as páginas a serem convertidas para formato de imagem utilizando a propriedade [PageSet](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pageset/). Por exemplo, pode ser aplicado se você precisar apenas de uma visualização da primeira página ou de uma página definida.

Também é possível controlar a qualidade da imagem de saída e o formato de pixel usando as seguintes propriedades – [HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/), bem como definir configurações de cores da imagem, usando as seguintes propriedades – [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/).

Também existem propriedades que se aplicam a um determinado formato, por exemplo, [JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/) ou [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/).

O exemplo de código a seguir mostra como criar uma visualização da primeira página do documento aplicando algumas configurações adicionais:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
