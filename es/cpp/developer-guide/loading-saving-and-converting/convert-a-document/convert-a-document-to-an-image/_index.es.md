---
title: Convertir un documento en una imagen en C++
second_title: Aspose.Words para C++
articleTitle: Convertir un Documento en una imagen
linktitle: Convertir un Documento en una imagen
type: docs
description: "Convierta un documento a formato de imagen (JPG, PNG, etc.). Cree una vista previa del documento o cree un escaneo del documento para enviar una factura."
weight: 43
url: /es/cpp/convert-a-document-to-an-image/
timestamp: 2024-01-30-16-22-34
---

A veces es necesario obtener una imagen en lugar de documentos en otros formatos, como DOCX o PDF. Por ejemplo, debe agregar una vista previa de cualquier página de documento a su sitio web o aplicación, o crear un "escaneo" de un documento para enviar una factura. Aquí es cuando es posible que deba convertir un documento en cualquier [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) en una imagen, nuevamente, en cualquier [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Convertir a Formato de Imagen

Al igual que con todos los ejemplos de conversión ya descritos, debe crear un documento nuevo o cargar uno existente en cualquier formato compatible, realizar los cambios necesarios y guardarlo en cualquier formato de imagen disponible, por ejemplo, JPEG, PNG o BMP.

El siguiente ejemplo de código muestra cómo convertir DOCX a JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Especifique las Opciones de guardado al Convertir a una imagen

Aspose.Words le proporciona la clase [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), que le da más control sobre cómo se guardan los documentos en varios formatos de imagen. Algunas propiedades de esta clase heredan o sobrecargan las propiedades de las clases base, como [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) o [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), pero también hay opciones específicas para guardar imágenes.

Es posible especificar las páginas que se convertirán a formato de imagen utilizando la propiedad [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/). Por ejemplo, se puede aplicar si solo necesita una vista previa de la primera página o de una página definida.

También es posible controlar la calidad de la imagen de salida y el formato de píxeles utilizando las siguientes propiedades– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), además de configurar los ajustes de color de la imagen, utilizando las siguientes propiedades– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

También hay propiedades que se aplican a un formato determinado, por ejemplo, [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) o [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

El siguiente ejemplo de código muestra cómo crear una vista previa de la primera página del documento aplicando algunas configuraciones adicionales:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
