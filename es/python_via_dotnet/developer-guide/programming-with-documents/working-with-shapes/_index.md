---
title: Trabajar con formas en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con formas
linktitle: Trabajar con formas
description: "Cree y administre formas y objetos antiguos en un documento usando Python."
type: docs
weight: 280
url: /es/python-net/working-with-shapes/
---

Este tema analiza cómo trabajar mediante programación con formas usando Aspose.Words.

Las formas en Aspose.Words representan un objeto en la capa de dibujo, como una autoforma, un cuadro de texto, una forma libre, un objeto OLE, un control ActiveX o una imagen. Un documento de Word puede contener una o más formas diferentes. Las formas del documento están representadas por la clase [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Insertar formas usando el Generador de documentos

Puede insertar una forma en línea con el tipo y tamaño especificados y una forma flotante con la posición, el tamaño y el tipo de ajuste de texto especificados en un documento utilizando el método [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/). El método [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) permite insertar formas DML en el modelo del documento. El documento debe guardarse en un formato que admita formas DML; de lo contrario, dichos nodos se convertirán a formas VML mientras se guarda el documento.

El siguiente ejemplo de código muestra cómo insertar estos tipos de formas en el documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Establecer relación de aspecto bloqueada

Usando Aspose.Words, puede especificar si la relación de aspecto de la forma está bloqueada a través de la propiedad [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **AspectRatioLocked**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Establecer diseño de forma en celda

También puede especificar si la forma se muestra dentro o fuera de una tabla usando la propiedad [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **IsLayoutInCell**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Crear rectángulo de esquina recortada

Puede crear un rectángulo de esquina recortada usando Aspose.Words. Los tipos de formas son [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded) y [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

La forma DML se crea utilizando el método [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) con estos tipos de formas. Estos tipos no se pueden utilizar para crear formas VML. El intento de crear una forma utilizando el constructor público de la clase [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) genera la excepción "NotSupportedException".

El siguiente ejemplo de código muestra cómo insertar este tipo de formas en el documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Obtener puntos de límites de forma reales

Usando Aspose.Words API, puede obtener la ubicación y el tamaño de la forma que contiene el bloque en puntos, en relación con el ancla de la forma superior. Para hacer esto, use la propiedad [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **BoundsInPoints**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Especificar anclaje vertical

Puede especificar la alineación vertical del texto dentro de una forma utilizando la propiedad [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **VerticalAnchor**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Detectar forma SmartArt

Aspose.Words también permite detectar si la Forma tiene un objeto `SmartArt`. Para hacer esto, use la propiedad [propiedad has_smart_art](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **HasSmartArt**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Insertar regla horizontal en el documento

Puede insertar una forma de regla horizontal en un documento utilizando el método [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/).

El siguiente ejemplo de código muestra cómo hacer esto:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API proporciona la propiedad [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) para acceder a las propiedades de la forma de regla horizontal. La clase [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) expone propiedades básicas como [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/), etc. para el formato de una regla horizontal.

El siguiente ejemplo de código demuestra cómo configurar [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## Insertar objeto OLE como icono

Aspose.Words API proporciona una función **Forma.insert_ole_object_as_icon** para insertar un objeto OLE incrustado o vinculado como un icono en el documento. Esta función permite especificar el archivo de icono y el título. El tipo de objeto `OLE` se detectará mediante la extensión del archivo.

El siguiente ejemplo de código demuestra cómo configurar la inserción de un objeto OLE como un icono en el documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

El tamaño máximo del icono debe ser 32x32 para que se muestre correctamente.

{{% /alert %}}

## Importar formas con XML matemático como formas en DOM

Puede utilizar la propiedad [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) para convertir las formas con EquationXML en objetos de Office Math. El valor predeterminado de esta propiedad corresponde al comportamiento de MS Word, es decir, las formas con ecuación XML no se convierten en objetos matemáticos de Office.

El siguiente ejemplo de código muestra cómo convertir formas en objetos de Office Math:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
