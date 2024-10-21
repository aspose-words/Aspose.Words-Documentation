---
title: Cómo Agregar Group Shape a un documento de Word
second_title: Aspose.Words para C++
articleTitle: Trabajar con Group Shapes en Documentos de Word
linktitle: Trabajar con Group Shapes en Documentos de Word
description: "Agrupar y desagrupar formas usando C++."
type: docs
weight: 290
url: /es/cpp/how-to-add-group-shape-into-a-word-document/
---

A veces es necesario agregar un group shape en un documento de Word. Tal group shape consta de múltiples formas.

En Microsoft Word, puede agregar rápidamente un group shape usando el comando/botón de Grupo. Una forma individual en un grupo se puede mover por separado.

En Aspose.Words es muy fácil agregar un group shape usando la clase [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/). La forma se crea por separado usando la clase [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) y luego se agrega al objeto **GroupShape** usando el método [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/).

El siguiente ejemplo de código muestra cómo agregar un group shape en un documento de Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

A continuación se muestran algunos de los `Shape` tipos admitidos en Aspose.Words. Para ver la lista completa, visite [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- Rectángulo
- RoundRectangle
- RoundRectangle
- Elipse
- Diamante
- Triángulo
- RightTriangle
- Paralelogramo
- Trapecio
- Hexágono
- Octágono

{{% /alert %}}