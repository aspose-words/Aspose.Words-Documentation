---
title: Rendering Shapes Por separado de un documento
second_title: Aspose.Words para Java
articleTitle: Rendering Shapes Por separado de un documento
linktitle: Rendering Shapes Por separado de un documento
description: "Extraiga diversos objetos gráficos, tales como imágenes, cuadro de texto que contiene párrafos, o formas de flecha, al procesar un documento, y exportarlos a una ubicación externa utilizando Java."
type: docs
weight: 40
url: /es/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Al procesar documentos, una tarea común es extraer todas las imágenes encontradas en el documento y exportarlas a una ubicación externa. Esta tarea se vuelve sencilla con la Aspose.Words API, que ya proporciona la funcionalidad para extraer y guardar datos de imagen. Sin embargo, a veces puede querer extraer de forma similar otros tipos de contenido gráfico que están representados por un tipo diferente de objeto de dibujo, por ejemplo, una caja de texto que contiene párrafos, formas de flecha y una imagen pequeña. No hay una manera sencilla de hacer este objeto ya que es una combinación de elementos de contenido individuales. También puede encontrar un caso cuando el contenido se ha agrupado en el objeto que parece una sola imagen.

Aspose.Words proporciona funcionalidad para extraer este tipo de contenido de la misma manera que puede extraer una imagen simple de la forma como el contenido renderizado. Este artículo describe cómo utilizar esta funcionalidad para dar formas independientemente del documento.

## Tipos de Forma en Aspose.Words

Todo el contenido en una capa de dibujo de documento está representado por [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) o [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) nodo en el Aspose.Words Módulo de Objetos de DocumentosDOM). Tal contenido puede ser cajas de texto, imágenes, AutoShapes, objetos OLE, etc. Algunos campos también se importan como formas, por ejemplo, `INCLUDEPICTURE` campo.

Una imagen simple está representada por una **Shape** nodo de [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). Este nodo de forma no tiene ganglios infantiles pero los datos de imagen contenidos en este nodo de forma pueden ser accedidos por el [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) propiedad. Por otro lado, también se puede formar una forma de muchos nodos infantiles. Por ejemplo, una forma del cuadro de texto, que está representada por el [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) propiedad, se puede componer de muchos nodos, como [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) y [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). La mayoría de las formas pueden incluir **Paragraph** y **Table** Nodos de nivel de bloque. Estos son los mismos nodos que los que aparecen en el cuerpo principal. Las formas son siempre partes de algún párrafo, ya sea directamente en línea o ancladas a la **Párrafo,** pero "flotando" en cualquier lugar de la página de documento.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Un documento también puede contener formas agrupadas. Grouping se puede activar en Microsoft Word seleccionando múltiples objetos y haciendo clic en "Group" en el menú de clic derecho.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In Aspose.Words, estos grupos de formas están representados por [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Nodo. Estos también pueden ser invocados de la misma manera para hacer que todo el grupo a la imagen.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

El formato DOCX puede contener tipos especiales de imágenes, como diagramas o gráficos. Estas formas también están representadas a través de **Shape** nodo en Aspose.Words, que también proporciona un método similar para renderizarlas como imágenes. Por diseño, una forma no puede contener otra forma como niño, a menos que esa forma sea una imagen (**ShapeType.Image**). Por ejemplo, Microsoft Word no le permite insertar una caja de texto dentro de otra caja de texto.

Los tipos de formas descritos anteriormente proporcionan un método especial para renderizar las formas a través de [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) clase. Una instancia del **ShapeRenderer** clase es recuperada para un **Shape** o **GroupShape** a través de **GetShapeRenderer** método o pasando el **Shape** al constructor del **ShapeRenderer** clase. Esta clase proporciona acceso a los miembros, que permiten dar forma a lo siguiente:

- Archivo en el disco usando el [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) método sobrecarga
- Corriente usando el [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) método sobrecarga
- Gráficos Objeto utilizando el [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) y [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) métodos

{{% alert color="primary" %}}

Al renderizar un <span notrans="<span notrans=" **Shape**"=""></span>," debe ser parte de la jerarquía de documentos. Si **Shape** no es una parte del árbol del documento, entonces la salida renderizada estará en blanco después de invocar **ShapeRenderer** métodos.

{{% /alert %}}

## Rendering to File or Stream

El [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) método proporciona sobrecargas que hacen una forma directamente a un archivo o flujo. Ambas sobrecargas aceptan una instancia de la [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) clase, que permite definir opciones para renderizar la forma. Esto funciona de la misma manera que el [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) método. A pesar de que este parámetro es necesario, puede pasar un valor nulo, especificando que no hay opciones personalizadas.

La forma se puede exportar en cualquier formato de imagen especificado en el [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) enumeración. Por ejemplo, la imagen puede ser renderizada como una imagen de mapa, como JPEG especificando la imagen [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) enumeración, o como imagen vectorial, como EMF especificando el [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

El ejemplo de código a continuación ilustra la forma de una imagen EMF separada del documento, y el ahorro al disco:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

El ejemplo de código que figura a continuación ilustra la forma de una imagen JPEG separadamente del documento y el ahorro a una secuencia:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

El **ImageSaveOptions** clase le permite especificar una variedad de opciones que controlan cómo se renderiza la imagen. La funcionalidad descrita anteriormente puede aplicarse de la misma manera a la **GroupShape** y **Shape** nodos.

## Rendering a a `Graphics` Objeto

Rendering directly to a **Graphics** objeto le permite definir su propia configuración y el estado para el **Graphics** objeto. Un escenario común implica convertir una forma directamente en un **Graphics** objeto recuperado de un Windows Forma o un Bitmap. Cuando el **Shape** el nodo se hace, la configuración afectará la apariencia de la forma. Por ejemplo, puede girar o escalar la forma utilizando la **RotateTransform** o **ScaleTransform** métodos para **Graphics** objeto.

El ejemplo a continuación muestra cómo hacer una forma a una **Graphics** objeto separado del documento y aplicar rotación a la imagen renderizada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

Del mismo modo, al [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) método, el [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)método heredado del [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) es útil para crear miniaturas de contenido de documentos. El tamaño de la forma se especifica a través del constructor. El **RenderToSize** método acepta el **Graphics** objeto, las coordenadas X y Y de la posición de la imagen, y el tamaño de la imagen (anchura y altura) que se dibujará sobre la **Graphics** objeto.

El **Shape** se puede hacer a cierta escala utilizando [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) método heredado del [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) clase. Esto es similar al [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) método que acepta los mismos parámetros principales. La diferencia entre estos dos métodos es que con **ShapeRenderer.RenderToScale** método, en lugar de un tamaño literal, usted elige un valor flotante que escala la forma durante su renderización. Si el valor flotante es igual a 1.0 hace que la forma sea renderizada al 100% de su tamaño original. Un valor flotante de 0,5 reducirá el tamaño de la imagen a la mitad.

## Rendering a Shape Image

El [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) clase representa objetos en la capa de dibujo, como una AutoShape, cuadro de texto, freeform, objeto OLE, control ActiveX o una imagen. Usando el **Shape** clase, puede crear o modificar formas en una Microsoft Word documento. Una propiedad importante de una forma es su [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Las formas de diferentes tipos pueden tener diferentes capacidades en un documento de Word. Por ejemplo, sólo imágenes y formas OLE pueden tener imágenes dentro de ellas mientras que la mayoría de las formas pueden tener texto solamente.

El siguiente ejemplo muestra cómo hacer una imagen de Forma a una imagen JPEG separada del documento y guardarla en el disco:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Recuperar un tamaño de forma

El [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) clase también proporciona funcionalidad para recuperar el tamaño de la forma en píxeles a través de la [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) método. Este método acepta dos parámetros de flotación (Single) – la escala y DPI, que se utilizan en el cálculo del tamaño de la forma cuando se produce la forma. El método devuelve el [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) objeto, que contiene el ancho y la altura del tamaño calculado. Esto es útil cuando se requiere conocer el tamaño de la forma renderizada de antemano, por ejemplo al crear un nuevo Bitmap de la salida renderizada.

El siguiente ejemplo muestra cómo crear un nuevo objeto Bitmap y Graphics con el ancho y la altura de la forma a ser renderizado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

Al utilizar el **RenderToSize** o **RenderToScale** métodos, el tamaño de imagen renderizado también se devuelve en el [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) objeto. Esto se puede asignar a una variable y utilizar si es necesario.

El **SizeInPoints** propiedad devuelve el tamaño de la Forma medida en puntos (ver [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). El resultado es un `SizeF` objeto que contiene el ancho y la altura.
