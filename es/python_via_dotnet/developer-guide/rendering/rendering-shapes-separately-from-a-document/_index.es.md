---
title: Formas por separado del documento
second_title: Aspose.Words para Python via .NET
articleTitle: Representar formas por separado de un documento
linktitle: Representar formas por separado de un documento
description: "Extraiga varios objetos gráficos, como imágenes, cuadros de texto que contienen párrafos o formas de flechas, al procesar un documento, y expórtelos a una ubicación externa mediante Python."
type: docs
weight: 40
url: /es/python-net/rendering-shapes-separately-from-a-document/
---

Al procesar documentos, una tarea común es extraer todas las imágenes que se encuentran en el documento y exportarlas a una ubicación externa. Esta tarea se vuelve sencilla con Aspose.Words API, que ya proporciona la funcionalidad para extraer y guardar datos de imágenes. Sin embargo, a veces es posible que desee extraer de manera similar otros tipos de contenido gráfico representado por un tipo diferente de objeto de dibujo, por ejemplo, un cuadro de texto que contiene párrafos, formas de flecha y una imagen pequeña. No existe una forma sencilla de representar este objeto, ya que es una combinación de elementos de contenido individuales. También puede encontrarse con un caso en el que los contenidos se hayan agrupado en un objeto que parezca una sola imagen.

Aspose.Words proporciona funcionalidad para extraer este tipo de contenido de la misma manera que puedes extraer una imagen simple de una forma como contenido renderizado. Este artículo describe cómo utilizar esta funcionalidad para representar formas independientemente del documento.

## Tipos de formas en Aspose.Words

Todo el contenido de una capa de dibujo de documento está representado por el nodo [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) o [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) en el Módulo de objetos de documento Aspose.Words (DOM). Dichos contenidos pueden ser cuadros de texto, imágenes, autoformas, objetos OLE, etc. Algunos campos también se importan como formas, por ejemplo, el campo `INCLUDEPICTURE`.

Una imagen simple está representada por un nodo [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) de [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image). Este nodo de forma no tiene nodos secundarios, pero la propiedad [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) puede acceder a los datos de imagen contenidos en este nodo de forma. Por otro lado, una forma también puede estar formada por muchos nodos secundarios. Por ejemplo, la forma de un cuadro de texto, representada por la propiedad [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box), puede estar formada por muchos nodos, como [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) y [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). La mayoría de las formas pueden incluir nodos a nivel de bloque [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) y [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Estos son los mismos nodos que aparecen en el cuerpo principal. Las formas siempre son partes de algún párrafo, ya sea incluidas directamente en línea o ancladas al [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), pero "flotando" en cualquier parte de la página del documento.

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Un documento también puede contener formas agrupadas. La agrupación se puede habilitar en Microsoft Word seleccionando varios objetos y haciendo clic en "Agrupar" en el menú contextual.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

En Aspose.Words, estos grupos de formas están representados por el nodo [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). Estos también se pueden invocar de la misma manera para representar todo el grupo en una imagen.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

El formato DOCX puede contener tipos especiales de imágenes, como diagramas o gráficos. Estas formas también se representan a través del nodo [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) en Aspose.Words, que también proporciona un método similar para representarlas como imágenes. Por diseño, una forma no puede contener otra forma secundaria, a menos que esa forma sea una imagen ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). Por ejemplo, Microsoft Word no le permite insertar un cuadro de texto dentro de otro cuadro de texto.

Los tipos de formas descritos anteriormente proporcionan un método especial para representar las formas a través de la clase [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Se recupera una instancia de la clase [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) para un [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) o [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) mediante el método [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) o pasando el [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) al constructor de la clase [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Esta clase proporciona acceso a miembros que permiten representar una forma para lo siguiente:

- Archivo en el disco
- Arroyo

{{% alert color="primary" %}}

Al renderizar un [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), debe ser parte de la jerarquía del documento. Si el [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) no forma parte del árbol del documento, la salida representada estará en blanco después de invocar los métodos [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).

{{% /alert %}}

## Renderizado a archivo o transmisión

El método [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) proporciona sobrecargas que representan una forma directamente en un archivo o secuencia. Ambas sobrecargas aceptan una instancia de la clase [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), que permite definir opciones para representar la forma. Esto funciona de la misma manera que el método [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Aunque este parámetro es obligatorio, puede pasar un valor nulo, especificando que no hay opciones personalizadas.

La forma se puede exportar en cualquier formato de imagen especificado en la enumeración [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). Por ejemplo, la imagen se puede representar como una imagen rasterizada, como JPEG, especificando la enumeración [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg), o como una imagen vectorial, como EMF, especificando [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf).

El siguiente ejemplo de código ilustra cómo representar una forma en una imagen EMF por separado del documento y guardarla en el disco:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

El siguiente ejemplo de código ilustra cómo representar una forma en una imagen JPEG por separado del documento y guardarla en una secuencia:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the vector format EMF.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
        
# Output the image in gray scale
imageOptions.image_color_mode = aw.saving.ImageColorMode.GRAYSCALE

# Reduce the brightness a bit (default is 0.5f).
imageOptions.image_brightness = 0.45
        
stream =  io.FileIO(docs_base.artifacts_dir + "TestFile.RenderToStream_out.jpg", "w+b")

# Save the rendered image to the stream using different options.
r.save(stream, imageOptions)

# Close the stream
stream.close()
{{< /highlight >}}

La clase [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) le permite especificar una variedad de opciones que controlan cómo se representa la imagen. La funcionalidad descrita anteriormente se puede aplicar de la misma manera a los nodos [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) y [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Representar una imagen de forma

La clase [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) representa objetos en la capa de dibujo, como una autoforma, un cuadro de texto, una forma libre, un objeto OLE, un control ActiveX o una imagen. Con la clase [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), puede crear o modificar formas en un documento Microsoft de Word. Una propiedad importante de una forma es su [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/). Las formas de diferentes tipos pueden tener diferentes capacidades en un documento de Word. Por ejemplo, solo las imágenes y las formas OLE pueden tener imágenes dentro, mientras que la mayoría de las formas solo pueden tener texto.

El siguiente ejemplo muestra cómo renderizar una imagen de forma en una imagen JPEG por separado del documento y guardarla en el disco:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Recuperar el tamaño de una forma

La clase [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) también proporciona funcionalidad para recuperar el tamaño de la forma en píxeles mediante el método [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/). Este método acepta dos parámetros flotantes (únicos): la escala y el DPI, que se utilizan para calcular el tamaño de la forma cuando se representa la forma. El método devuelve el objeto **Size**, que contiene el ancho y el alto del tamaño calculado. Esto es útil cuando se requiere conocer de antemano el tamaño de la forma renderizada. La propiedad [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) devuelve el tamaño de la forma medido en puntos. El resultado es un objeto **SizeF** que contiene el ancho y el alto. También puedes usar la propiedad [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) para obtener límites reales de la forma.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


