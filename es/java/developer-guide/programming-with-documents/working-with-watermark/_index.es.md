---
title: Trabajar con marca de agua en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con Marca de Agua
linktitle: Trabajar con Marca de Agua
type: docs
description: "Manipulación de marcas de agua de documentos usando Java."
weight: 70
url: /es/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

En este tema se analiza cómo trabajar mediante programación con una marca de agua utilizando Aspose.Words. Una marca de agua es una imagen de fondo que se muestra detrás del texto de un documento. Una marca de agua puede contener un texto o una imagen representada por la clase [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/).

{{% alert color="primary" %}}

**Pruébalo en línea**

Puede probar esta funcionalidad con nuestro [Marca de agua gratuita para documentos en línea](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Agregar una marca de agua a un Documento

En Microsoft Word, se puede insertar fácilmente una marca de agua en un documento mediante el comando Insertar marca de agua. Aspose.Words proporciona la clase [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) para agregar o eliminar marcas de agua en documentos. Aspose.Words proporciona la enumeración [WatermarkType](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)que define tres tipos posibles de marcas de agua (Texto, Imagen y Ninguna) con las que trabajar.

### Agregar Marca de Agua de Texto

El siguiente ejemplo de código demuestra cómo insertar una marca de agua de texto en un documento definiendo [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) con el método [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Agregar Marca de Agua de Imagen

El siguiente ejemplo de código demuestra cómo insertar una marca de agua de imagen en un documento definiendo [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) con el método [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

La marca de agua también se puede insertar usando la clase shape. Es muy fácil insertar cualquier forma o imagen en un encabezado o pie de página y así crear una marca de agua de cualquier tipo imaginable.

El siguiente ejemplo de código inserta una marca de agua en un documento de Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Eliminar marca de agua de un Documento

La clase [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) proporciona el método `Remove` para eliminar la marca de agua de un documento.

Los siguientes ejemplos de código muestran cómo eliminar una marca de agua de los documentos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Para eliminar la marca de agua de un documento, debe establecer solo el nombre de la forma de la marca de agua durante la inserción y luego eliminar la forma de la marca de agua con un nombre asignado.

El siguiente ejemplo de código le muestra cómo establecer el nombre de la forma de la marca de agua y eliminarla del documento:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Agregar una Marca de Agua a una Celda de la tabla

A veces necesita insertar una marca de agua/imagen en la celda de una tabla y mostrarla fuera de la tabla, puede usar la propiedad [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean). Esta propiedad obtiene o establece un indicador que indica si la forma se muestra dentro de una tabla o fuera de ella. Tenga en cuenta que esta propiedad solo funciona cuando optimiza el documento para Microsoft Word 2010 utilizando el método [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int).

El siguiente ejemplo de código muestra cómo usar esta propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
