---
title: Converter um documento numa imagem em Java
second_title: Aspose.Words para Java
articleTitle: Converter um documento numa imagem
linktitle: Converter um documento numa imagem
type: docs
description: "Converter um documento para o formato de imagem (JPG, PNG, etc). Crie uma pré-visualização de documento ou uma digitalização de documento para enviar uma factura utilizando Java."
weight: 35
url: /pt/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Às vezes, é necessário obter uma imagem em vez de documentos em outros formatos, como DOCX ou PDF. Por exemplo, você precisa adicionar uma visualização de qualquer página de Documento ao seu site ou aplicativo ou criar uma "digitalização" de um documento para enviar uma fatura. É quando você pode precisar converter um documento em qualquer [formato de carga suportado](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) em uma imagem, novamente, em qualquer [formato de gravação suportado](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Converter para o formato de imagem

Tal como acontece com todos os exemplos de conversão já descritos, é necessário criar um novo documento ou carregar um existente em qualquer formato suportado, fazer as alterações necessárias e guardá-lo em qualquer formato de imagem disponível, por exemplo, JPEG, PNG ou BMP.

O exemplo de código a seguir mostra como converter DOCX para JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Especificar opções de gravação ao converter para uma imagem

Aspose.Words fornece a classe [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), que dá mais controle sobre como os documentos são salvos em vários formatos de imagem. Algumas propriedades desta classe herdam ou sobrecarregam propriedades de classes base, como [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) ou [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), mas também existem opções específicas para salvar imagens.

É possível especificar as páginas a converter para o formato de imagem utilizando a propriedade [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet). Por exemplo, ele pode ser aplicado se você precisar apenas de uma visualização para a primeira ou para uma página definida.

Também é possível controlar a qualidade da imagem de saída e o formato de pixel usando as seguintes propriedades– [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), bem como definir as definições de cor da imagem, utilizando as seguintes propriedades– [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

Existem também propriedades que se aplicam a um determinado formato, por exemplo, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) ou [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

O exemplo de código a seguir mostra como criar uma visualização da primeira página do documento com a aplicação de algumas configurações adicionais:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
