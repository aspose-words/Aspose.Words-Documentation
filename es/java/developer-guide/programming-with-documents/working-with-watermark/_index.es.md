---
title: Trabajando con Watermark en Java
second_title: Aspose.Words para Java
articleTitle: Trabajar con Watermark
linktitle: Trabajar con Watermark
type: docs
description: "Manipulación de marca de agua mediante Java."
weight: 70
url: /es/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

Este tema discute cómo trabajar programáticamente con una marca de agua utilizando Aspose.Words. Una marca de agua es una imagen de fondo que se muestra detrás del texto en un documento. Una marca de agua puede contener un texto o una imagen representada por el [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) clase.

{{% alert color="primary" %}}

**Pruebe en línea**

Puede probar esta funcionalidad con nuestra [Documento de agua gratis en línea](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Añadir un Watermark a un documento

In Microsoft Word, una marca de agua se puede insertar fácilmente en un documento utilizando el comando Insert Watermark. Aspose.Words proporciona el [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) clase para añadir o eliminar marca de agua en documentos. Aspose.Words proporciona el [Watermark Tipo](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)enumeración que define tres posibles tipos de marcas de agua (Texto, Imagen y Ninguno) para trabajar con

### Agregar texto Watermark

El siguiente ejemplo de código muestra cómo insertar una marca de agua de texto en un documento definiendo [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) usando el [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) método:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Agregar imagen Watermark

El siguiente ejemplo de código muestra cómo insertar una marca de imagen en un documento definiendo [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) usando el [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) método:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

La marca de agua también se puede insertar usando la clase de forma. Es muy fácil insertar cualquier forma o imagen en un encabezado o un pie de página y crear así una marca de agua de cualquier tipo imaginable.

El siguiente ejemplo de código inserta una marca de agua en un documento de Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Eliminar Watermark de un documento

El [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) la clase proporciona `Remove` método para eliminar la marca de agua de un documento.

Los siguientes ejemplos de código muestran cómo eliminar una marca de agua de los documentos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Para eliminar la marca de agua de un documento hay que establecer sólo el nombre de la forma de marca de agua durante la inserción y luego eliminar la forma de marca de agua por un nombre asignado.

El siguiente ejemplo de código le muestra cómo establecer el nombre de la forma de marca de agua y eliminarlo del documento:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Añadir una marca de agua en una celda de mesa

A veces necesitas insertar una marca de agua/imagen en la celda de una mesa y mostrarla fuera de la mesa, puedes usar [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) propiedad. Esta propiedad obtiene o establece una bandera indicando si la forma se muestra dentro de una tabla o fuera de ella. Tenga en cuenta que esta propiedad funciona sólo cuando optimiza el documento para Microsoft Word 2010 utilizando el [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) método

El siguiente ejemplo de código muestra cómo utilizar esta propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
