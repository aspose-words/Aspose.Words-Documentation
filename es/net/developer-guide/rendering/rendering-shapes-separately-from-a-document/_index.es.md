---
title: Representar formas por separado del documento
second_title: Aspose.Words para .NET
articleTitle: Representar formas por separado de un documento
linktitle: Representar formas por separado de un documento
description: "Extraiga varios objetos gráficos, como imágenes, cuadros de texto que contengan párrafos o formas de flechas, al procesar un documento, y expórtelos a una ubicación externa mediante C#."
type: docs
weight: 40
url: /es/net/rendering-shapes-separately-from-a-document/
timestamp: 2024-07-10-14-38-57
---

Al procesar documentos, una tarea común es extraer todas las imágenes que se encuentran en el documento y exportarlas a una ubicación externa. Esta tarea se vuelve sencilla con Aspose.Words API, que ya proporciona la funcionalidad para extraer y guardar datos de imágenes. Sin embargo, a veces es posible que desee extraer de manera similar otros tipos de contenido gráfico representado por un tipo diferente de objeto de dibujo, por ejemplo, un cuadro de texto que contiene párrafos, formas de flecha y una imagen pequeña. No existe una forma sencilla de representar este objeto, ya que es una combinación de elementos de contenido individuales. También puede encontrarse con un caso en el que los contenidos se hayan agrupado en un objeto que parezca una sola imagen.

Aspose.Words proporciona funcionalidad para extraer este tipo de contenido de la misma manera que puedes extraer una imagen simple de una forma como contenido renderizado. Este artículo describe cómo utilizar esta funcionalidad para representar formas independientemente del documento.

## Tipos de formas en Aspose.Words

Todo el contenido de una capa de dibujo de documento está representado por el nodo [Shape](https://reference.aspose.com/words/es/net/aspose.words.drawing/shape/) o [GroupShape](https://reference.aspose.com/words/es/net/aspose.words.drawing/groupshape/) en el Módulo de objetos de documento Aspose.Words (DOM). Dichos contenidos pueden ser cuadros de texto, imágenes, autoformas, objetos OLE, etc. Algunos campos también se importan como formas, por ejemplo, el campo `INCLUDEPICTURE`.

Una imagen simple está representada por un nodo **Shape** de [ShapeType.Image](https://reference.aspose.com/words/es/net/aspose.words.drawing/shapetype/). Este nodo de forma no tiene nodos secundarios, pero la propiedad [Shape.ImageData](https://reference.aspose.com/words/es/net/aspose.words.drawing/shape/imagedata/) puede acceder a los datos de imagen contenidos en este nodo de forma. Por otro lado, una forma también puede estar formada por muchos nodos secundarios. Por ejemplo, la forma de un cuadro de texto, representada por la propiedad [ShapeType.TextBox](https://reference.aspose.com/words/es/net/aspose.words.drawing/shapetype/), puede estar formada por muchos nodos, como [Paragraph](https://reference.aspose.com/words/es/net/aspose.words/paragraph/) y [Table](https://reference.aspose.com/words/es/net/aspose.words.tables/table/). La mayoría de las formas pueden incluir nodos a nivel de bloque **Paragraph** y **Table**. Estos son los mismos nodos que aparecen en el cuerpo principal. Las formas siempre son partes de algún párrafo, ya sea incluidas directamente en línea o ancladas al **Párrafo,** pero "flotando" en cualquier parte de la página del documento.

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Un documento también puede contener formas agrupadas. La agrupación se puede habilitar en Microsoft Word seleccionando varios objetos y haciendo clic en "Agrupar" en el menú contextual.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

En Aspose.Words, estos grupos de formas están representados por el nodo [GroupShape](https://reference.aspose.com/words/es/net/aspose.words.drawing/groupshape/). Estos también se pueden invocar de la misma manera para representar todo el grupo en una imagen.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

El formato DOCX puede contener tipos especiales de imágenes, como diagramas o gráficos. Estas formas también se representan a través del nodo **Shape** en Aspose.Words, que también proporciona un método similar para representarlas como imágenes. Por diseño, una forma no puede contener otra forma secundaria, a menos que esa forma sea una imagen (**ShapeType.Image**). Por ejemplo, Microsoft Word no le permite insertar un cuadro de texto dentro de otro cuadro de texto.

Los tipos de formas descritos anteriormente proporcionan un método especial para representar las formas a través de la clase [ShapeRenderer](https://reference.aspose.com/words/es/net/aspose.words.rendering/shaperenderer/). Se recupera una instancia de la clase **ShapeRenderer** para un **Shape** o **GroupShape** mediante el método **GetShapeRenderer** o pasando el **Shape** al constructor de la clase **ShapeRenderer**. Esta clase proporciona acceso a miembros que permiten representar una forma para lo siguiente:

- Archivo en el disco usando la sobrecarga del método [Save](https://reference.aspose.com/words/es/net/aspose.words.rendering/noderendererbase/save/).
- Transmitir usando la sobrecarga del método [Save](https://reference.aspose.com/words/es/net/aspose.words.rendering/noderendererbase/save/)
- Objeto de gráficos .NET mediante el uso de los métodos [RenderToSize](https://reference.aspose.com/words/es/net/aspose.words.rendering/noderendererbase/rendertosize/) y [RenderToScale](https://reference.aspose.com/words/es/net/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

Al renderizar un **Shape**, debe ser parte de la jerarquía del documento. Si el **Shape** no forma parte del árbol del documento, la salida representada estará en blanco después de invocar los métodos **ShapeRenderer**.

{{% /alert %}}

## Renderizado a archivo o transmisión

El método [Save](https://reference.aspose.com/words/es/net/aspose.words.rendering/noderendererbase/save/) proporciona sobrecargas que representan una forma directamente en un archivo o secuencia. Ambas sobrecargas aceptan una instancia de la clase [ImageSaveOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/), que permite definir opciones para representar la forma. Esto funciona de la misma manera que el método [Document.Save](https://reference.aspose.com/words/es/net/aspose.words/document/save/#save). Aunque este parámetro es obligatorio, puede pasar un valor nulo, especificando que no hay opciones personalizadas.

La forma se puede exportar en cualquier formato de imagen especificado en la enumeración [SaveFormat](https://reference.aspose.com/words/es/net/aspose.words/saveformat/). Por ejemplo, la imagen se puede representar como una imagen rasterizada, como JPEG, especificando la enumeración [SaveFormat.Jpeg](https://reference.aspose.com/words/es/net/aspose.words/saveformat/), o como una imagen vectorial, como EMF, especificando [SaveFormat.Emf](https://reference.aspose.com/words/es/net/aspose.words/saveformat/).

El siguiente ejemplo de código ilustra cómo representar una forma en una imagen EMF por separado del documento y guardarla en el disco:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

El siguiente ejemplo de código ilustra cómo representar una forma en una imagen JPEG por separado del documento y guardarla en una secuencia:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

La clase **ImageSaveOptions** le permite especificar una variedad de opciones que controlan cómo se representa la imagen. La funcionalidad descrita anteriormente se puede aplicar de la misma manera a los nodos **GroupShape** y **Shape**.

## Representación en un objeto de gráficos .NET

Renderizar directamente en un objeto **Graphics** le permite definir su propia configuración y el estado del objeto **Graphics**. Un escenario común implica representar una forma directamente en un objeto **Graphics** recuperado de un formulario Windows o un mapa de bits. Cuando se renderiza el nodo **Shape**, la configuración afectará la apariencia de la forma. Por ejemplo, puede rotar o escalar la forma utilizando los métodos **RotateTransform** o **ScaleTransform** para el objeto **Graphics**.

El siguiente ejemplo muestra cómo representar una forma en un objeto .**NET Graphics** por separado del documento y aplicar rotación a la imagen renderizada:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

De manera similar, al método [RenderToSize](https://reference.aspose.com/words/es/net/aspose.words/document/rendertosize/), el método [Renderizar un tamaño](https://reference.aspose.com/words/es/net/aspose.words.rendering/noderendererbase/rendertosize/) heredado del [NodeRendererBase](https://reference.aspose.com/words/es/net/aspose.words.rendering/noderendererbase/) es útil para crear miniaturas del contenido de un documento. El tamaño de la forma se especifica a través del constructor. El método **RenderToSize** acepta el objeto **Graphics**, las coordenadas X e Y de la posición de la imagen y el tamaño de la imagen (ancho y alto) que se dibujará en el objeto **Graphics**.

El **Shape** se puede representar a cierta escala utilizando el método [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/es/net/aspose.words.rendering/noderendererbase/rendertoscale/) heredado de la clase [NodeRendererBase](https://reference.aspose.com/words/es/net/aspose.words.rendering/noderendererbase/). Esto es similar al método [Document.RenderToScale](https://reference.aspose.com/words/es/net/aspose.words/document/rendertoscale/) que acepta los mismos parámetros principales. La diferencia entre estos dos métodos es que con el método **ShapeRenderer.RenderToScale**, en lugar de un tamaño literal, eliges un valor flotante que escala la forma durante su renderizado. Si el valor flotante es igual a 1,0, la forma se representará al 100% de su tamaño original. Un valor flotante de 0,5 reducirá el tamaño de la imagen a la mitad.

## Representar una imagen de forma

La clase [Shape](https://reference.aspose.com/words/es/net/aspose.words.drawing/shape/) representa objetos en la capa de dibujo, como una autoforma, un cuadro de texto, una forma libre, un objeto OLE, un control ActiveX o una imagen. Con la clase **Shape**, puede crear o modificar formas en un documento Microsoft de Word. Una propiedad importante de una forma es su [ShapeType](https://reference.aspose.com/words/es/net/aspose.words.drawing/shape/base/properties/shapetype). Las formas de diferentes tipos pueden tener diferentes capacidades en un documento de Word. Por ejemplo, solo las imágenes y las formas OLE pueden tener imágenes dentro, mientras que la mayoría de las formas solo pueden tener texto.

El siguiente ejemplo muestra cómo renderizar una imagen de forma en una imagen JPEG por separado del documento y guardarla en el disco:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## Recuperar el tamaño de una forma

La clase [ShapeRenderer](https://reference.aspose.com/words/es/net/aspose.words.rendering/shaperenderer/) también proporciona funcionalidad para recuperar el tamaño de la forma en píxeles mediante el método [GetSizeInPixels](https://reference.aspose.com/words/es/net/aspose.words.rendering/noderendererbase/getsizeinpixels/). Este método acepta dos parámetros flotantes (únicos): la escala y el DPI, que se utilizan para calcular el tamaño de la forma cuando se representa la forma. El método devuelve el objeto [Size](https://reference.aspose.com/words/es/net/aspose.words.rendering/noderendererbase/getsizeinpixels/), que contiene el ancho y el alto del tamaño calculado. Esto es útil cuando se requiere conocer de antemano el tamaño de la forma renderizada, por ejemplo al crear un nuevo mapa de bits a partir de la salida renderizada.

El siguiente ejemplo muestra cómo crear un nuevo objeto de mapa de bits y gráficos con el ancho y alto de la forma que se va a representar:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

Cuando se utilizan los métodos **RenderToSize** o **RenderToScale**, el tamaño de la imagen renderizada también se devuelve en el objeto [SizeF](https://reference.aspose.com/words/es/net/aspose.words.rendering/noderendererbase/rendertoscale/). Esto se puede asignar a una variable y utilizarlo si es necesario.

La propiedad **SizeInPoints** devuelve el tamaño de la forma medido en puntos (ver [ShapeRenderer](https://reference.aspose.com/words/es/net/aspose.words.rendering/shaperenderer/properties/index). El resultado es un objeto `SizeF` que contiene el ancho y el alto.
