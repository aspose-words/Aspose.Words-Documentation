---
title: Trabajar con formas en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Formas
linktitle: Trabajar con Formas
type: docs
description: "Introducción al lenguaje de marcado de formas, creando formas de diferentes tipos usando C++."
weight: 280
url: /es/cpp/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

En este tema se analiza cómo trabajar programáticamente con formas usando Aspose.Words.

Las formas de Aspose.Words representan un objeto en la capa de dibujo, como AutoShape, cuadro de texto, forma libre, objeto OLE, control ActiveX o imagen. Un documento de Word puede contener una o más formas diferentes. Las formas del documento están representadas por la clase [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/).

## Insertar Forma Usando el Generador de Documentos

Puede insertar una forma en línea con el tipo y tamaño especificados y una forma flotante con la posición, el tamaño y el tipo de ajuste de texto especificados en un documento mediante el método [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/). El método **InsertShape** permite insertar formas DML en el modelo de documento. El documento debe guardarse en el formato que admita formas DML; de lo contrario, dichos nodos se convertirán a forma VML mientras se guarda el documento.

El siguiente ejemplo de código muestra cómo insertar estos tipos de formas en el documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## Establecer Relación de Aspecto Bloqueada

Con Aspose.Words, puede especificar si la relación de aspecto de la forma está bloqueada a través de la propiedad [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **AspectRatioLocked**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## Establecer El Diseño De La Forma En La Celda

También puede especificar si la forma se muestra dentro de una tabla o fuera de ella utilizando la propiedad [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **IsLayoutInCell**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## Crear Rectángulo de Esquina Recortada

Puedes crear un rectángulo de esquina recortada usando Aspose.Words. Los tipos de forma son *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* y *DiagonalCornersRounded.*

La forma DML se crea utilizando el método **InsertShape** con estos tipos de forma. Estos tipos no se pueden usar para crear formas VML. Intentar crear shape utilizando el constructor público de la clase" Shape "genera la excepción" NotSupportedException".

El siguiente ejemplo de código muestra cómo insertar este tipo de formas en el documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## Obtener Puntos de Límites de Forma Reales

Con la API Aspose.Words, puede obtener la ubicación y el tamaño del bloque que contiene la forma en puntos, en relación con el ancla de la forma superior. Para hacer esto, use la propiedad [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/).

El siguiente ejemplo de código muestra cómo trabajar con la propiedad **BoundsInPoints**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## Formato de Regla Horizontal

La API Aspose.Words proporciona la propiedad [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) para acceder a las propiedades de la forma de regla horizontal. La clase **HorizontalRuleFormat** expone propiedades básicas como Altura, Color, Sombra, etc. para formatear una regla horizontal.

El siguiente ejemplo de código demuestra cómo establecer **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## Insertar objeto OLE como icono

La API Aspose.Words proporciona la función **Shape** → **InsertOleObjectAsIcon** para insertar un objeto OLE incrustado o vinculado como icono en el documento. Esta función permite especificar el archivo del icono y el título. El tipo de objeto `OLE` se detectará utilizando la extensión de archivo.

El siguiente ejemplo de código muestra cómo configurar insertar objeto OLE como icono en el documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

El tamaño máximo del icono debe ser de 32x32 para que se muestre correctamente.

{{% /alert %}}
