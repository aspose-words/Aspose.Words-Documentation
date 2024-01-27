---
title: Trabajar con marca de agua en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con marca de agua
linktitle: Trabajar con marca de agua
description: "Cree y administre marcas de agua en un documento usando Python."
type: docs
weight: 340
url: /es/python-net/working-with-watermark/
---

Este tema analiza cómo trabajar mediante programación con marcas de agua usando Aspose.Words. Una marca de agua es una imagen de fondo que se muestra detrás del texto en un documento. Una marca de agua puede contener un texto o una imagen representada por la clase [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/).

{{% alert color="primary" %}}

**Pruebe en línea**

Puedes probar esta funcionalidad con nuestro [Marca de agua gratuita para documentos en línea](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Cómo agregar una marca de agua a un documento

En Microsoft Word, se puede insertar fácilmente una marca de agua en un documento usando el comando Insertar marca de agua. Aspose.Words proporciona la clase [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) para agregar o eliminar marcas de agua en documentos. Aspose.Words proporciona la enumeración [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) que define tres tipos posibles de marcas de agua ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image) y [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) con las que trabajar.

### Agregar marca de agua de texto

El siguiente ejemplo de código demuestra cómo insertar una marca de agua de texto en un documento definiendo [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) mediante el método [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### Agregar marca de agua de imagen

El siguiente ejemplo de código demuestra cómo insertar una marca de agua de imagen en un documento definiendo [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) usando el método [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

La marca de agua también se puede insertar utilizando la clase de forma. Es muy fácil insertar cualquier forma o imagen en un encabezado o pie de página y así crear una marca de agua de cualquier tipo imaginable.

El siguiente ejemplo de código inserta una marca de agua en un documento de Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [aquí](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## Eliminar marca de agua de un documento

La clase [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) proporciona el método de eliminación para eliminar la marca de agua de un documento.

El siguiente ejemplo de código muestra cómo eliminar una marca de agua de los documentos:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

Si las marcas de agua se agregan utilizando el objeto de clase [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), para eliminar la marca de agua de un documento, debe establecer solo el nombre de la forma de la marca de agua durante la inserción y luego eliminar la forma de la marca de agua mediante un nombre asignado.

El siguiente ejemplo de código le muestra cómo establecer el nombre de la forma de la marca de agua y eliminarla del documento:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## Agregar una marca de agua en la celda de la tabla

A veces es necesario insertar una marca de agua/imagen en la celda de una tabla y mostrarla fuera de la tabla; puede usar la propiedad [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/). Esta propiedad obtiene o establece una bandera que indica si la forma se muestra dentro o fuera de una tabla. Tenga en cuenta que esta propiedad solo funciona cuando optimiza el documento para Microsoft Word 2010 utilizando el método [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/).

El siguiente ejemplo de código muestra cómo utilizar esta propiedad:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
