---
title: Trabajar con formas en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con formas
linktitle: Trabajar con formas
description: "Introducción al lenguaje de marcado de formas, creando formas de diferentes tipos usando C#."
type: docs
weight: 280
url: /es/net/working-with-shapes/
---

Este tema analiza cómo trabajar mediante programación con formas usando Aspose.Words.

Las formas en Aspose.Words representan un objeto en la capa de dibujo, como una autoforma, un cuadro de texto, una forma libre, un objeto OLE, un control ActiveX o una imagen. Un documento de Word puede contener una o más formas diferentes. Las formas en Aspose.Words están representadas por la clase [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/).

## Insertar formas usando el Generador de documentos

Puede insertar una forma en línea con el tipo y tamaño especificados y una forma flotante con la posición, el tamaño y el tipo de ajuste de texto especificados en un documento utilizando el método [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/). El método **InsertShape** permite insertar formas DML en el modelo del documento. El documento debe guardarse en un formato que admita formas DML; de lo contrario, dichos nodos se convertirán a formas VML mientras se guarda el documento.

El siguiente ejemplo de código muestra cómo insertar estos tipos de formas en el documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## Establecer relación de aspecto bloqueada

Usando Aspose.Words, puede especificar si la relación de aspecto de la forma está bloqueada a través de la propiedad [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **AspectRatioLocked**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Establecer diseño de forma en celda

También puede especificar si la forma se muestra dentro o fuera de una tabla usando la propiedad [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **IsLayoutInCell**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Crear rectángulo de esquina recortada

Puede crear un rectángulo de esquina recortada usando Aspose.Words. Los tipos de formas son *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded* y *DiagonalCornersRounded.*

La forma DML se crea utilizando el método **InsertShape** con estos tipos de formas. Estos tipos no se pueden utilizar para crear formas VML. El intento de crear una forma utilizando el constructor público de la clase "Shape" genera la excepción "NotSupportedException".

El siguiente ejemplo de código muestra cómo insertar este tipo de formas en el documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Obtener puntos de límites de forma reales

Usando Aspose.Words API, puede obtener la ubicación y el tamaño de la forma que contiene el bloque en puntos, en relación con el ancla de la forma superior. Para hacer esto, use la propiedad [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **BoundsInPoints**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Especificar anclaje vertical

Puede especificar la alineación vertical del texto dentro de una forma utilizando la propiedad [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **VerticalAnchor**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## Detectar forma SmartArt

Aspose.Words también permite detectar si la Forma tiene un objeto `SmartArt`. Para hacer esto, use la propiedad [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **HasSmartArt**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Insertar regla horizontal en el documento

Puede insertar una forma de regla horizontal en un documento utilizando el método [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/).

El siguiente ejemplo de código muestra cómo hacer esto:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API proporciona la propiedad [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) para acceder a las propiedades de la forma de regla horizontal. La clase [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) expone propiedades básicas como Altura, Color, NoShade, etc. para el formato de una regla horizontal.

El siguiente ejemplo de código muestra cómo configurar **HorizontalRuleFormat**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Importar formas con XML matemático como formas en DOM

Puede utilizar la propiedad [ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) para convertir las formas con EquationXML en objetos de Office Math. El valor predeterminado de esta propiedad corresponde al comportamiento de Microsoft Word, es decir, las formas con ecuación XML no se convierten en objetos matemáticos de Office.

El siguiente ejemplo de código muestra cómo convertir formas en objetos de Office Math:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
