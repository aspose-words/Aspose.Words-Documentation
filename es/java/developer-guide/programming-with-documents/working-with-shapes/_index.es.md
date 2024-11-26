---
title: Trabajar con formas en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con Formas
linktitle: Trabajar con Formas
type: docs
description: "Introducción al lenguaje de marcado de formas, creando formas de diferentes tipos usando Java."
weight: 280
url: /es/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

En este tema se analiza cómo trabajar programáticamente con formas usando Aspose.Words.

Las formas de Aspose.Words representan un objeto en la capa de dibujo, como AutoShape, cuadro de texto, forma libre, OLE objeto, control ActiveX o imagen. Un documento de Word puede contener una o más formas diferentes. Las formas del documento están representadas por la clase [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/).

## Insertar Forma Usando el Generador de Documentos

Puede insertar una forma en línea con el tipo y tamaño especificados y una forma flotante con la posición, el tamaño y el tipo de ajuste de texto especificados en un documento mediante el método [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double). El método **InsertShape** permite insertar la forma DML en el modelo de documento. El documento debe guardarse en el formato que admita DML formas; de lo contrario, dichos nodos se convertirán a VML formas, mientras se guarda el documento.

El siguiente ejemplo de código muestra cómo insertar estos tipos de formas en el documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Establecer Relación de Aspecto Bloqueada

Con Aspose.Words, puede especificar si la relación de aspecto de la forma está bloqueada a través de la propiedad [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **AspectRatioLocked**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Establecer El Diseño De La Forma En La Celda

También puede especificar si la forma se muestra dentro de una tabla o fuera de ella utilizando la propiedad [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **IsLayoutInCell**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Añadir Esquinas Recortadas

Puedes crear un rectángulo de esquina recortada usando Aspose.Words. Los tipos de forma son *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* y *DiagonalCornersRounded.*

La forma DML se crea utilizando el método **InsertShape** con estos tipos de formas. Estos tipos no se pueden usar para crear VML formas. Intentar crear shape utilizando el constructor público de la clase" Shape "genera la excepción" NotSupportedException".

El siguiente ejemplo de código muestra cómo insertar este tipo de formas en el documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Obtener Puntos de Límites de Forma Reales

Usando Aspose.Words API, puede obtener la ubicación y el tamaño del bloque que contiene la forma en puntos, en relación con el ancla de la forma más alta. Para hacer esto, use la propiedad [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **BoundsInPoints**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Especificar Anclaje Vertical

Puede especificar la alineación vertical del texto dentro de una forma utilizando la propiedad [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **VerticalAnchor**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Detectar SmartArt Forma

Aspose.Words también permite detectar si la Forma tiene un objeto `SmartArt`. Para hacer esto, use la propiedad [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **HasSmartArt**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Formato de Regla Horizontal

Puede insertar una forma de regla horizontal en un documento utilizando el método [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule).

Aspose.Words API proporciona la propiedad [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) para acceder a las propiedades de la forma de regla horizontal. La clase [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) expone propiedades básicas como Altura, Color, NoShade, etc. para formatear una regla horizontal.

El siguiente ejemplo de código muestra cómo establecer **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
