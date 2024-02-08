---
title: Come aggiungere una forma Group al documento Word
second_title: Aspose.Words per .NET
articleTitle: Come aggiungere una forma Group in un documento Word
linktitle: Lavorare con forme Group nei documenti Word
description: "Grouping e separazione di forme utilizzando C#."
type: docs
weight: 290
url: /it/net/how-to-add-group-shape-into-a-word-document/
---

A volte è necessario aggiungere un group shape in un documento Word. Tale group shape è costituito da più forme.

In Microsoft Word, puoi aggiungere rapidamente un group shape utilizzando il comando/pulsante Group. Una forma individuale in un gruppo può essere spostata separatamente.

In Aspose.Words è molto semplice aggiungere un group shape utilizzando la classe [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/). **Shape** viene creato separatamente utilizzando la classe [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) e quindi aggiunto all'oggetto [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) utilizzando il metodo [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/).

L'esempio di codice seguente mostra come aggiungere un group shape in un documento Word:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

Di seguito sono riportati alcuni dei tipi `Shape` supportati in Aspose.Words:

- Rettangolo
- Rettangolo rotondo
- Rettangolo rotondo
- Ellisse
- Diamante
- Triangolo
- Triangolo rettangolo
- Parallelogramma
- Trapezio
- Esagono
- Ottagono

Per l'elenco completo, consultare la classe [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype).

{{% /alert %}}