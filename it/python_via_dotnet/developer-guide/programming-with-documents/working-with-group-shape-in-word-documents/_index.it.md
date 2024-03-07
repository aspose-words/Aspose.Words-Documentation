---
title: Come aggiungere una forma Group al file Word
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con la forma Group nei documenti di Word
linktitle: Lavorare con la forma Group nei documenti di Word
description: "Aggiungi group shape in un documento utilizzando Python."
type: docs
weight: 290
url: /it/python-net/how-to-add-group-shape-into-a-word-document/
---

A volte è necessario aggiungere un group shape in un documento Word. Tale group shape è costituito da più forme.

In Microsoft Word, puoi aggiungere rapidamente un group shape utilizzando il comando/pulsante Group. Una forma individuale in un gruppo può essere spostata separatamente.

In Aspose.Words è molto semplice aggiungere un group shape utilizzando la classe [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). La forma viene creata separatamente utilizzando la classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) e quindi aggiunta nell'oggetto [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) utilizzando il metodo [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

L'esempio di codice seguente mostra come aggiungere un group shape in un documento Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

Di seguito sono riportati alcuni dei tipi `Shape` supportati in Aspose.Words. Per l'elenco completo, vedere l'enumerazione [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/)

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
