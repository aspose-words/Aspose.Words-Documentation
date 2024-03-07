---
title: Trabajar con imágenes en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con imágenes
linktitle: Trabajar con imágenes
description: "Formas de imágenes en detalles y funciones avanzadas proporcionadas por Aspose.Words para .NET."
type: docs
weight: 300
url: /es/net/working-with-images/
---

Aspose.Words permite a los usuarios trabajar con imágenes de una forma muy flexible. En este artículo, puedes explorar sólo algunas de las posibilidades de trabajar con imágenes.

## Cómo insertar una imagen {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/) proporciona varias sobrecargas del método [InsertImage](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertimage/) que le permiten insertar una imagen en línea o flotante. Si la imagen es un metarchivo EMF o WMF, se insertará en el documento en formato de metarchivo. Todas las demás imágenes se almacenarán en formato PNG. El método **InsertImage** puede utilizar imágenes de diferentes fuentes:

- Desde un archivo o `URL` pasando un parámetro `String` [InsertImage](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertimage/)
- Desde una secuencia pasando un parámetro `Stream` **InsertImage**
- Desde un objeto Imagen pasando un parámetro Imagen **InsertImage**
- Desde una matriz de bytes pasando un parámetro de matriz de bytes **InsertImage**

Para cada uno de los métodos **InsertImage**, existen más sobrecargas que le permiten insertar una imagen con las siguientes opciones:
- En línea o flotante en una posición específica, por ejemplo, **InsertImage**
- Escala porcentual o tamaño personalizado, por ejemplo, **InsertImage**; Además, el método **InsertImage** devuelve un objeto [Shape](https://reference.aspose.com/words/es/net/aspose.words.drawing/shape/) que acaba de crearse e insertarse para que pueda modificar aún más las propiedades de la Forma.

### Cómo insertar una imagen {#insert-an-inline-image} en línea

Pase una sola cadena que represente un archivo que contiene la imagen a **InsertImage** para insertar la imagen en el documento como un gráfico en línea.

El siguiente ejemplo de código muestra cómo insertar una imagen en línea en la posición del cursor en un documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### Cómo insertar una imagen flotante {#insert-a-floating-image}

El siguiente ejemplo de código muestra cómo insertar una imagen flotante desde un archivo o `URL` en una posición y tamaño específicos:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## Cómo extraer imágenes de un documento {#how-to-extract-images-from-a-document}

Todas las imágenes se almacenan dentro de nodos **Shape** en un [Document](https://reference.aspose.com/words/es/net/aspose.words/document/). Para extraer todas las imágenes o imágenes que tengan un tipo específico del documento, siga estos pasos:

- Utilice el método [GetChildNodes](https://reference.aspose.com/words/es/net/aspose.words/compositenode/getchildnodes/) para seleccionar todos los nodos **Shape**.
- Iterar a través de las colecciones de nodos resultantes.
- Verifique la propiedad booleana [HasImage](https://reference.aspose.com/words/es/net/aspose.words.drawing/shape/hasimage/).
- Extraer datos de imágenes utilizando la propiedad [ImageData](https://reference.aspose.com/words/es/net/aspose.words.drawing/shape/imagedata/).
- Guardar datos de imagen en un archivo.

El siguiente ejemplo de código muestra cómo extraer imágenes de un documento y guardarlas como archivos:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Cómo insertar un código de barras en cada página del documento {#how-to-insert-barcode-on-each-documen-page}

Este ejemplo le muestra cómo agregar códigos de barras iguales o diferentes en todas o en páginas específicas de un documento de Word. No existe una forma directa de agregar códigos de barras en todas las páginas de un documento, pero puede usar los métodos **MoveToSection**, **MoveToHeaderFooter** y **InsertImage** para moverse a cualquier sección o encabezado/pie de página e insertar las imágenes de códigos de barras como puede ver en el siguiente código.

El siguiente ejemplo de código muestra cómo insertar una imagen de código de barras en cada página de un documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Bloquear relación de aspecto de imagen {#lock-aspect-ratio-of-image}

La relación de aspecto de una forma geométrica es la relación de sus tamaños en diferentes dimensiones. Puede bloquear la relación de aspecto de la imagen usando [AspectRatioLocked](https://reference.aspose.com/words/es/net/aspose.words.drawing/shapebase/aspectratiolocked/). El valor predeterminado de la relación de aspecto de la forma depende del [ShapeType](https://reference.aspose.com/words/es/net/aspose.words.drawing/shapetype/). Es *true* para `ShapeType.Image` y *false* para otros tipos de formas.

El siguiente ejemplo de código muestra cómo trabajar con la relación de aspecto:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Cómo obtener límites reales de forma en puntos {#how-to-get-actual-bounds-of-shape-in-points}

Si desea que el cuadro delimitador real de la forma se represente en la página, puede lograrlo utilizando la propiedad [BoundsInPoints](https://reference.aspose.com/words/es/net/aspose.words.rendering/noderendererbase/boundsinpoints/).

El siguiente ejemplo de código muestra cómo utilizar esta propiedad:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Recortar imágenes {#crop-images}

El recorte de una imagen generalmente se refiere a la eliminación de las partes exteriores no deseadas de una imagen para ayudar a mejorar el encuadre. También se utiliza para eliminar algunas partes de una imagen para aumentar el enfoque en un área particular.

El siguiente ejemplo de código muestra cómo lograr esto usando Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Guardar imágenes como WMF {#save-images-as-wmf}

Aspose.Words proporciona funcionalidad para guardar todas las imágenes disponibles en un documento en formato [WMF](https://docs.fileformat.com/image/wmf/) mientras convierte DOCX a RTF.

El siguiente ejemplo de código muestra cómo guardar imágenes como WMF con opciones de guardado RTF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
