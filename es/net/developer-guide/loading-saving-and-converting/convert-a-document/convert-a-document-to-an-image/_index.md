---
title: Convertir un documento en una imagen en C#
second_title: Aspose.Words para .NET
articleTitle: Convertir un documento en una imagen
linktitle: Convertir un documento en una imagen
type: docs
description: "Convierta un documento a formato de imagen (JPG, PNG, etc.). Cree una vista previa del documento o cree un escaneo de documento para enviar una factura usando C#."
weight: 43
url: /es/net/convert-a-document-to-an-image/
---

A veces es necesario obtener una imagen en lugar de documentos en otros formatos, como DOCX o PDF. Por ejemplo, necesita agregar una vista previa de cualquier página de documento a su sitio web o aplicación, o crear un "escaneo" de un documento para enviar una factura. Aquí es cuando es posible que necesites convertir un documento en cualquier [formato de carga soportado](https://reference.aspose.com/words/net/aspose.words/loadformat/) a una imagen, nuevamente, en cualquier [formato de guardado admitido](https://reference.aspose.com/words/net/aspose.words/saveformat/).

## Convertir a imagen {#convert-to-image-format}

Como ocurre con todos los ejemplos de conversión ya descritos, debe crear un documento nuevo o cargar uno existente en cualquier formato compatible, realizar los cambios necesarios y guardarlo en cualquier formato de imagen disponible, por ejemplo, JPEG, PNG o BMP.

El siguiente ejemplo de código muestra cómo convertir PDF a JPEG:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## Especificar opciones de guardado al convertir a imagen {#specify-save-options-when-converting-to-an-image}

Aspose.Words le proporciona la clase [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), que brinda más control sobre cómo se guardan los documentos en varios formatos de imagen. Algunas propiedades de esta clase heredan o sobrecargan propiedades de clases base como [FixedPageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/) o [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), pero también hay opciones específicas para guardar imágenes.

Es posible especificar las páginas que se convertirán al formato de imagen utilizando la propiedad [PageSet](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pageset/). Por ejemplo, se puede aplicar si sólo necesitas una vista previa de la primera página o de una página determinada.

También es posible controlar la calidad de la imagen de salida y el formato de píxeles utilizando las siguientes propiedades: [HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/), así como configurar la configuración de color de la imagen, utilizando las siguientes propiedades: [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/).

También hay propiedades que se aplican a un formato determinado, por ejemplo, [JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/) o [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/).

El siguiente ejemplo de código muestra cómo crear una vista previa de la primera página del documento aplicando algunas configuraciones adicionales:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
