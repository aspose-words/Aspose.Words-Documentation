---
title: Convertir un documento en una imagen
second_title: Aspose.Words para Python via .NET
articleTitle: Convertir un documento en una imagen
linktitle: Convertir un documento en una imagen
type: docs
description: "Convierta un documento a formato de imagen (JPG, PNG, etc.). Cree una vista previa del documento o cree un escaneo de documento para enviar una factura usando Python."
weight: 43
url: /es/python-net/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

A veces es necesario obtener una imagen en lugar de documentos en otros formatos, como DOCX o PDF. Por ejemplo, necesita agregar una vista previa de cualquier página de documento a su sitio web o aplicación, o crear un "escaneo" de un documento para enviar una factura. Aquí es cuando es posible que necesites convertir un documento en cualquier [formato de carga soportado](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) a una imagen, nuevamente, en cualquier [formato de guardado admitido](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Convertir a formato de imagen {#convert-to-image-format}

Como ocurre con todos los ejemplos de conversión ya descritos, debe crear un documento nuevo o cargar uno existente en cualquier formato compatible, realizar los cambios necesarios y guardarlo en cualquier formato de imagen disponible, por ejemplo, JPEG, PNG o BMP.

El siguiente ejemplo de código muestra cómo convertir PDF a JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Especificar opciones de guardado al convertir a una imagen {#specify-save-options-when-converting-to-an-image}

Aspose.Words le proporciona la clase [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), que brinda más control sobre cómo se guardan los documentos en varios formatos de imagen. Algunas propiedades de esta clase heredan o sobrecargan propiedades de clases base como [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) o [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), pero también hay opciones específicas para guardar imágenes.

Es posible especificar las páginas que se convertirán al formato de imagen utilizando la propiedad [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/). Por ejemplo, se puede aplicar si sólo necesitas una vista previa de la primera página o de una página determinada.

También es posible controlar la calidad de la imagen de salida y el formato de píxeles utilizando las siguientes propiedades: [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), así como configurar la configuración de color de la imagen, utilizando las siguientes propiedades: [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

También hay propiedades que se aplican a un formato determinado, por ejemplo, [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) o [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

El siguiente ejemplo de código muestra cómo crear una vista previa de la primera página del documento aplicando algunas configuraciones adicionales:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
