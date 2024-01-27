---
title: Cómo agregar una forma de grupo a un archivo de Word
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con forma de grupo en documentos de Word
linktitle: Trabajar con forma de grupo en documentos de Word
description: "Agregue forma de grupo a un documento usando Python."
type: docs
weight: 290
url: /es/python-net/how-to-add-group-shape-into-a-word-document/
---

A veces es necesario agregar una forma de grupo a un documento de Word. Una forma de grupo de este tipo consta de varias formas.

En Microsoft Word, puede agregar rápidamente una forma de grupo usando el comando/botón Grupo. Una forma individual de un grupo se puede mover por separado.

En Aspose.Words es muy fácil agregar una forma de grupo usando la clase [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). La forma se crea por separado usando la clase [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) y luego se agrega en el objeto [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) usando el método [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

El siguiente ejemplo de código muestra cómo agregar una forma de grupo a un documento de Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

A continuación se muestran algunos de los tipos de `Shape` admitidos en Aspose.Words. Para obtener una lista completa, consulte la enumeración [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/).

- [Rectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#rectangle)
- [RoundRectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#round_rectangle)
- [Ellipse](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#ellipse)
- [Diamond](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diamond)
- [Triangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#triangle)
- [RightTriangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#right_triangle)
- [Parallelogram](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#parallelogram)
- [Trapezoid](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#trapezoid)
- [Hexagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#hexagon)
- [Octagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#octagon)

{{% /alert %}}
