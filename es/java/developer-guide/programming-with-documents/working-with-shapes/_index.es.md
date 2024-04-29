---
title: Trabajando con las formas en Java
second_title: Aspose.Words para Java
articleTitle: Trabajando con Formas
linktitle: Trabajando con Formas
type: docs
description: "Introducción al lenguaje de marcación de forma, creando formas de diferentes tipos Java."
weight: 280
url: /es/java/working-with-shapes/
---

Este tema discute cómo trabajar programáticamente con formas usando Aspose.Words.

Las formas en Aspose.Words representar un objeto en la capa de dibujo, como un AutoShape, cuadro de texto, freeform, objeto OLE, control ActiveX o imagen. Un documento de Word puede contener una o más formas diferentes. Las formas del documento están representadas por [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) clase.

## Insertar Forma utilizando el Editor de Documentos

Puede insertar la forma en línea con el tipo y el tamaño especificados y la forma libre flotante con el tipo de posición, tamaño y texto especificado en un documento utilizando el [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) método. El **InsertShape** método permite insertar la forma DML en el modelo de documento. El documento debe guardarse en el formato, que admite formas DML, de lo contrario, tales nodos se convertirán en forma VML, mientras que el ahorro de documentos.

El siguiente ejemplo de código muestra cómo insertar estos tipos de formas en el documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Fijar la relación de aspecto bloqueado

Uso Aspose.Words, puede especificar si la relación de aspecto de la forma está bloqueada a través de la [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) propiedad.

El siguiente ejemplo de código muestra cómo trabajar con el **AspectRatioLocked** propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Configurar el diseño de forma en celda

También puede especificar si la forma se muestra dentro de una tabla o fuera de ella utilizando la [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) propiedad.

El siguiente ejemplo de código muestra cómo trabajar con el **IsLayoutInCell** propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Añadir Corners Snipped

Usted puede crear un rectángulo de esquina chispa usando Aspose.Words. Los tipos de formas son *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* y *DiagonalCornersRounded.*

La forma DML se crea utilizando **InsertShape** método con estos tipos de forma. Estos tipos no pueden utilizarse para crear formas VML. El intento de crear forma utilizando el constructor público de la clase "Shape" eleva la excepción "NotSupportedException".

El siguiente ejemplo de código muestra cómo insertar este tipo de formas en el documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Obtenga puntos de la forma real

Uso Aspose.Words API, puede obtener la ubicación y el tamaño de la forma que contiene bloque en puntos, en relación con el ancla de la forma más alta. Para hacer esto, utilice el [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) propiedad.

El siguiente ejemplo de código muestra cómo trabajar con el **BoundsInPoints** propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Especificar ancla vertical

Puede especificar la alineación vertical del texto dentro de una forma usando la [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) propiedad.

El siguiente ejemplo de código muestra cómo trabajar con el **VerticalAnchor** propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Detectar Smart Forma de arte

Aspose.Words también permite detectar si la Forma tiene una `SmartArt` objeto. Para hacer esto, utilice el [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) propiedad.

El siguiente ejemplo de código muestra cómo trabajar con el **HasSmartArt** propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Formato de Regla Horizontal

Puede insertar la forma de regla horizontal en un documento usando el [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) método.

Aspose.Words API Prestaciones [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) propiedad para acceder a las propiedades de la forma de regla horizontal. El [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) clase expone propiedades básicas como Altura, Color, NoShade, etc. para el formato de una regla horizontal.

El siguiente ejemplo de código muestra cómo establecer **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
