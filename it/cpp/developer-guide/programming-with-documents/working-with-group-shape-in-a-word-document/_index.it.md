---
title: Come aggiungere Group Shape in un documento di Word
second_title: Aspose.Words per C++
articleTitle: Utilizzo di Group Shapes in documenti Word
linktitle: Utilizzo di Group Shapes in documenti Word
description: "Raggruppare e separare le forme usando C++."
type: docs
weight: 290
url: /it/cpp/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

A volte è necessario aggiungere un group shape in un documento di Word. Tale group shape è costituito da più forme.

In Microsoft Word, è possibile aggiungere rapidamente un group shape usando il comando/pulsante di gruppo. Una forma individuale in un gruppo può essere spostata separatamente.

In Aspose.Words è molto facile aggiungere un group shape usando la classe [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/). La forma viene creata separatamente utilizzando la classe [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) e quindi aggiunta all'oggetto **GroupShape** utilizzando il metodo [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/).

L'esempio di codice seguente mostra come aggiungere un group shape in un documento di Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

Di seguito sono riportati alcuni dei tipi `Shape` supportati in Aspose.Words. Per l'elenco completo, visitare [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- Rettangolo
- RoundRectangle
- RoundRectangle
- Ellisse
- Diamante
- Triangolo
- RightTriangle
- Parallelogramma
- Trapezio
- Esagono
- Octagon

{{% /alert %}}
