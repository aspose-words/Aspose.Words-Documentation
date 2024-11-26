---
title: Trabajar con Marca de agua en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Marca de Agua
linktitle: Trabajar con Marca de Agua
type: docs
description: "Manipulación de marcas de agua de documentos usando C++."
weight: 340
url: /es/cpp/working-with-watermark/
timestamp: 2024-01-30-16-22-34
---

En este tema se analiza cómo trabajar mediante programación con watermark usando Aspose.Words. Una marca de agua es una imagen de fondo que se muestra detrás del texto de un documento. Una marca de agua puede contener un texto o una imagen representada por la clase [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/).

## Agregar una marca de agua a un Documento

En Microsoft Word, se puede insertar fácilmente una marca de agua en un documento mediante el comando Insertar marca de agua. Aspose.Words proporciona la clase [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) para agregar o eliminar marcas de agua en documentos. Aspose.Words proporciona la enumeración [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)que define tres tipos posibles de marcas de agua (Texto, Imagen y Ninguna) con las que trabajar.

### Agregar Marca de Agua de Texto

El siguiente ejemplo de código demuestra cómo insertar una marca de agua de texto en un documento definiendo [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) con el método [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### Agregar Marca de Agua de Imagen

El siguiente ejemplo de código demuestra cómo insertar una marca de agua de imagen en un documento definiendo [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) utilizando el método [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

La marca de agua también se puede insertar usando la clase shape. Es muy fácil insertar cualquier forma o imagen en un encabezado o pie de página y así crear una marca de agua de cualquier tipo imaginable. El siguiente ejemplo de código inserta una marca de agua en un documento de Word.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## Eliminar marca de agua de un Documento

La clase [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) proporciona el método remove para eliminar la marca de agua de un documento.

El siguiente ejemplo de código muestra cómo eliminar una marca de agua de los documentos:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

Si las marcas de agua se agregan usando el objeto de clase [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/), para eliminar la marca de agua de un documento, debe establecer solo el nombre de la forma de la marca de agua durante la inserción y luego eliminar la forma de la marca de agua con un nombre asignado.

El siguiente ejemplo de código le muestra cómo establecer el nombre de la forma de la marca de agua y eliminarla del documento:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## Agregar una Marca de Agua en la Celda de la Tabla

A veces necesita insertar una marca de agua/imagen en la celda de una tabla y mostrarla fuera de la tabla, puede usar la propiedad [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/). Esta propiedad obtiene o establece un indicador que indica si la forma se muestra dentro de una tabla o fuera de ella. Tenga en cuenta que esta propiedad solo funciona cuando optimiza el documento para Microsoft Word 2010 mediante el método [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/).

El siguiente ejemplo de código muestra cómo usar esta propiedad:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
