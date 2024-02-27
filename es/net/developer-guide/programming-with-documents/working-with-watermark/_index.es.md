---
title: Trabajar con marca de agua en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con marca de agua
linktitle: Trabajar con marca de agua
description: "Manipulación de marcas de agua de documentos mediante C#."
type: docs
weight: 340
url: /es/net/working-with-watermark/
---

Este tema analiza cómo trabajar mediante programación con marcas de agua usando Aspose.Words. Una marca de agua es una imagen de fondo que se muestra detrás del texto en un documento. Una marca de agua puede contener un texto o una imagen representada por la clase [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/).

{{% alert color="primary" %}}

**Pruebe en línea**

Puedes probar esta funcionalidad con nuestro [Marca de agua gratuita para documentos en línea](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Agregar una marca de agua a un documento

En Microsoft Word, se puede insertar fácilmente una marca de agua en un documento usando el comando Insertar marca de agua. Aspose.Words proporciona la clase [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) para agregar o eliminar marcas de agua en documentos. Aspose.Words proporciona la enumeración [Tipo de marca de agua](https://reference.aspose.com/words/net/aspose.words/watermark/type/) que define tres tipos posibles de marcas de agua (Texto, Imagen y Ninguna) con las que trabajar.

### Agregar marca de agua de texto

El siguiente ejemplo de código demuestra cómo insertar una marca de agua de texto en un documento definiendo [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) usando el método [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Agregar marca de agua de imagen

El siguiente ejemplo de código demuestra cómo insertar una marca de agua de imagen en un documento definiendo [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) usando el método [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

La marca de agua también se puede insertar utilizando la clase de forma. Es muy fácil insertar cualquier forma o imagen en un encabezado o pie de página y así crear una marca de agua de cualquier tipo imaginable.

El siguiente ejemplo de código inserta una marca de agua en un documento de Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## Eliminar marca de agua de un documento

La clase [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) proporciona el método de eliminación para eliminar la marca de agua de un documento.

El siguiente ejemplo de código muestra cómo eliminar una marca de agua de los documentos:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

Si las marcas de agua se agregan utilizando el objeto de clase [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), para eliminar la marca de agua de un documento, debe establecer solo el nombre de la forma de la marca de agua durante la inserción y luego eliminar la forma de la marca de agua mediante un nombre asignado.

El siguiente ejemplo de código le muestra cómo establecer el nombre de la forma de la marca de agua y eliminarla del documento:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## Agregar una marca de agua a una celda de tabla

A veces es necesario insertar una marca de agua/imagen en la celda de una tabla y mostrarla fuera de la tabla; puede usar la propiedad [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/). Esta propiedad obtiene o establece una bandera que indica si la forma se muestra dentro o fuera de una tabla. Tenga en cuenta que esta propiedad solo funciona cuando optimiza el documento para Microsoft Word 2010 utilizando el método [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/).

El siguiente ejemplo de código muestra cómo utilizar esta propiedad:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
