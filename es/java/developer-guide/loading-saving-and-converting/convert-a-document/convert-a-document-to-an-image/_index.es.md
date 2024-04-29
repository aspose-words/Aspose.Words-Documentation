---
title: Convertir un documento en una imagen en Java
second_title: Aspose.Words para Java
articleTitle: Convertir un documento en una imagen
linktitle: Convertir un documento en una imagen
type: docs
description: "Convertir un documento en formato de imagen (JPG, PNG, etc). Crear una vista previa de documento o crear un escaneo de documento para enviar una factura usando Java."
weight: 35
url: /es/java/convert-a-document-to-an-image/
---

A veces se requiere obtener una imagen en lugar de documentos en otros formatos, como DOCX o PDF. Por ejemplo, debe añadir una vista previa de cualquier página de documento a su sitio web o aplicación o crear una "escan" de un documento para enviar una factura. Esto es cuando es posible que necesite convertir un documento en cualquier [formato de carga compatible](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) a una imagen, de nuevo, en cualquier [soporte para guardar formato](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Convertir en Formato de imagen

Como con todos los ejemplos de conversión ya descritos, necesita crear un nuevo documento o cargar uno existente en cualquier formato compatible, hacer los cambios necesarios, y guardarlo en cualquier formato de imagen disponible, por ejemplo, JPEG, PNG o BMP.

El siguiente ejemplo de código muestra cómo convertir DOCX a JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Especifique Guardar opciones al convertir en una imagen

Aspose.Words le proporciona el [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) clase, que da más control sobre cómo se guardan los documentos en varios formatos de imagen. Algunas propiedades de esta clase heredan o sobrecargan propiedades de las clases base como [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) o [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), pero también hay opciones específicas para guardar imágenes.

Es posible especificar las páginas a convertir en formato de imagen usando el [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) propiedad. Por ejemplo, se puede aplicar si sólo necesita una vista previa para la primera o para una página definida.

También es posible controlar la calidad de imagen de salida y el formato pixel utilizando las siguientes propiedades – [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), así como configurar la configuración de color de imagen, utilizando las siguientes propiedades – [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

También hay propiedades que se aplican a un determinado formato, por ejemplo, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) o [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

El siguiente ejemplo de código muestra cómo crear una vista previa de la primera página de documento con la aplicación de algunos ajustes adicionales:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
