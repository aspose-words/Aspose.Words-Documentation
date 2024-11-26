---
title: Convertir un Documento en una imagen en Java
second_title: Aspose.Words por Java
articleTitle: Convertir un Documento en una imagen
linktitle: Convertir un Documento en una imagen
type: docs
description: "Convierta un documento a formato de imagen (JPG, PNG, etc.). Cree una vista previa del documento o cree un escaneo del documento para enviar una factura usando Java."
weight: 35
url: /es/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

A veces es necesario obtener una imagen en lugar de documentos en otros formatos, como DOCX o PDF. Por ejemplo, debe agregar una vista previa de cualquier página de documento a su sitio web o aplicación o crear un "escaneo" de un documento para enviar una factura. Aquí es cuando es posible que deba convertir un documento en cualquier [formato de carga admitido](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) en una imagen, nuevamente, en cualquier [formato de guardado compatible](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Convertir a Formato de Imagen

Al igual que con todos los ejemplos de conversión ya descritos, debe crear un documento nuevo o cargar uno existente en cualquier formato compatible, realizar los cambios necesarios y guardarlo en cualquier formato de imagen disponible, por ejemplo, JPEG, PNG o BMP.

El siguiente ejemplo de código muestra cómo convertir DOCX a JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Especifique las Opciones de guardado al Convertir a una imagen

Aspose.Words le proporciona la clase [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), que le da más control sobre cómo se guardan los documentos en varios formatos de imagen. Algunas propiedades de esta clase heredan o sobrecargan propiedades de clases base como [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) o [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), pero también hay opciones específicas para guardar imágenes..

Es posible especificar las páginas que se convertirán a formato de imagen utilizando la propiedad [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet). Por ejemplo, se puede aplicar si solo necesita una vista previa de la primera página o de una página definida.

También es posible controlar la calidad de la imagen de salida y el formato de píxeles utilizando las siguientes propiedades– [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), además de configurar los ajustes de color de la imagen, utilizando las siguientes propiedades– [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

También hay propiedades que se aplican a un formato determinado, por ejemplo, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) o [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

El siguiente ejemplo de código muestra cómo crear una vista previa de la primera página del documento aplicando algunas configuraciones adicionales:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
