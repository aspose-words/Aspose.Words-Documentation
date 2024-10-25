---
title: Converter um documento em uma imagem em C++
second_title: Aspose.Words para C++
articleTitle: Converter um documento numa imagem
linktitle: Converter um documento numa imagem
type: docs
description: "Converter um documento para o formato de imagem (JPG, PNG, etc). Crie uma pré-visualização de documento ou uma digitalização de documento para enviar uma fatura."
weight: 43
url: /pt/cpp/convert-a-document-to-an-image/
---

Às vezes, é necessário obter uma imagem em vez de documentos em outros formatos, como DOCX ou PDF. Por exemplo, você precisa adicionar uma visualização de qualquer página de Documento ao seu site ou aplicativo ou criar uma "digitalização" de um documento para enviar uma fatura. É quando você pode precisar converter um documento em qualquer [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) em uma imagem, novamente, em qualquer [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Converter para o formato de imagem

Tal como acontece com todos os exemplos de conversão já descritos, é necessário criar um novo documento ou carregar um existente em qualquer formato suportado, fazer as alterações necessárias e guardá-lo em qualquer formato de imagem disponível, por exemplo, JPEG, PNG ou BMP.

O exemplo de código a seguir mostra como converter DOCX para JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Especificar opções de gravação ao converter para uma imagem

Aspose.Words fornece a classe [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), que dá mais controle sobre como os documentos são salvos em vários formatos de imagem. Algumas propriedades desta classe herdam ou sobrecarregam propriedades de classes base, como [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) ou [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), mas também existem opções específicas para salvar imagens.

É possível especificar as páginas a converter para o formato de imagem utilizando a propriedade [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/). Por exemplo, ele pode ser aplicado se você precisar apenas de uma visualização para a primeira ou para uma página definida.

Também é possível controlar a qualidade da imagem de saída e o formato de pixel usando as seguintes propriedades– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), bem como definir as definições de cor da imagem, utilizando as seguintes propriedades– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

Existem também propriedades que se aplicam a um determinado formato, por exemplo, [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) ou [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

O exemplo de código a seguir mostra como criar uma visualização da primeira página do documento com a aplicação de algumas configurações adicionais:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
