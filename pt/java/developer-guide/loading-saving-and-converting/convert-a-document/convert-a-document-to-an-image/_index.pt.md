---
title: Converter um documento para uma imagem em Java
second_title: Aspose.Words para Java
articleTitle: Converter um documento para uma imagem
linktitle: Converter um documento para uma imagem
type: docs
description: "Converta um documento em formato de imagem (JPG, PNG, etc). Criar uma visualização de documentos ou criar uma verificação de documentos para enviar uma fatura usando Java."
weight: 35
url: /pt/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Às vezes é necessário obter uma imagem em vez de documentos em outros formatos, como DOCX ou PDF. Por exemplo, você precisa adicionar uma visualização de qualquer página de documento ao seu site ou aplicativo ou criar um "scan" de um documento para enviar uma fatura. É quando você pode precisar converter um documento em qualquer [Forma de carga](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) a uma imagem, novamente, em qualquer [forma de recuperação](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Converter para formato de imagem

Como com todos os exemplos de conversão já descritos, você precisa criar um novo documento ou carregar um existente em qualquer formato suportado, fazer as mudanças necessárias e salvá-lo em qualquer formato de imagem disponível, por exemplo, JPEG, PNG ou BMP.

O exemplo a seguir mostra como converter DOCX para JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Especificar Salvar opções ao converter para uma imagem

Aspose.Words fornece-lhe com o [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) classe, que dá mais controle sobre como os documentos são salvos em vários formatos de imagem. Algumas propriedades desta classe herdam ou sobrecarga propriedades de classes de base como [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) ou [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), mas também há opções específicas para salvar imagens.

É possível especificar as páginas a serem convertidas em formato de imagem usando o [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) propriedade. Por exemplo, ele pode ser aplicado se você só precisa de uma visualização para o primeiro ou para uma página definida.

Também é possível controlar a qualidade da imagem de saída e o formato de pixel usando as seguintes propriedades – [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), bem como configurar configurações de cor de imagem, usando as seguintes propriedades – [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

Há também propriedades que se aplicam a um determinado formato, por exemplo, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) ou [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

O exemplo de código a seguir mostra como criar uma visualização da primeira página de documento com a aplicação de algumas configurações adicionais:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
