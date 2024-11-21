---
title: Converter um documento em uma imagem
second_title: Aspose.Words para Python via .NET
articleTitle: Converter um documento em uma imagem
linktitle: Converter um documento em uma imagem
type: docs
description: "Converta um documento em formato de imagem (JPG, PNG, etc). Crie uma visualização do documento ou crie uma digitalização do documento para enviar uma fatura usando Python."
weight: 43
url: /pt/python-net/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Às vezes é necessário obter uma imagem em vez de documentos em outros formatos, como DOCX ou PDF. Por exemplo, você precisa adicionar uma visualização de qualquer página do documento ao seu site ou aplicativo, ou criar uma "digitalização" de um documento para enviar uma fatura. É quando você pode precisar converter um documento em qualquer [formato de carregamento suportado](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) para uma imagem, novamente, em qualquer [formato de salvamento suportado](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Converter para formato de imagem {#convert-to-image-format}

Tal como acontece com todos os exemplos de conversão já descritos, você precisa criar um novo documento ou carregar um existente em qualquer formato suportado, fazer as alterações necessárias e salvá-lo em qualquer formato de imagem disponível, por exemplo, JPEG, PNG ou BMP.

O exemplo de código a seguir mostra como converter PDF em JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Especifique as opções de salvamento ao converter para uma imagem {#specify-save-options-when-converting-to-an-image}

Aspose.Words fornece a classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), que oferece mais controle sobre como os documentos são salvos em vários formatos de imagem. Algumas propriedades desta classe herdam ou sobrecarregam propriedades de classes base como [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) ou [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), mas também existem opções específicas para salvar imagens.

É possível especificar as páginas a serem convertidas para formato de imagem utilizando a propriedade [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/). Por exemplo, pode ser aplicado se você precisar apenas de uma visualização da primeira página ou de uma página definida.

Também é possível controlar a qualidade da imagem de saída e o formato de pixel usando as seguintes propriedades – [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), bem como definir configurações de cores da imagem, usando as seguintes propriedades – [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

Também existem propriedades que se aplicam a um determinado formato, por exemplo, [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) ou [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

O exemplo de código a seguir mostra como criar uma visualização da primeira página do documento aplicando algumas configurações adicionais:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
