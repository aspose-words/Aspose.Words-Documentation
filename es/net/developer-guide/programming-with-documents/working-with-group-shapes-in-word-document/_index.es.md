---
title: Cómo agregar una forma de grupo a un documento de Word
second_title: Aspose.Words para .NET
articleTitle: Cómo agregar una forma de grupo a un documento de Word
linktitle: Trabajar con formas de grupo en documentos de Word
description: "Agrupar y desagrupar formas usando C#."
type: docs
weight: 290
url: /es/net/how-to-add-group-shape-into-a-word-document/
---

A veces es necesario agregar una forma de grupo a un documento de Word. Una forma de grupo de este tipo consta de varias formas.

En Microsoft Word, puede agregar rápidamente una forma de grupo usando el comando/botón Grupo. Una forma individual de un grupo se puede mover por separado.

En Aspose.Words es muy fácil agregar una forma de grupo usando la clase [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/). **Shape** se crea por separado usando la clase [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) y luego se agrega al objeto [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) usando el método [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/).

El siguiente ejemplo de código muestra cómo agregar una forma de grupo a un documento de Word:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

A continuación se muestran algunos de los tipos de `Shape` admitidos en Aspose.Words:

- Rectángulo
- RedondoRectángulo
- RedondoRectángulo
- Elipse
- Diamante
- Triángulo
- Triángulo rectángulo
- paralelogramo
- Trapezoide
- Hexágono
- Octágono

Para obtener una lista completa, consulte la clase [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype).

{{% /alert %}}