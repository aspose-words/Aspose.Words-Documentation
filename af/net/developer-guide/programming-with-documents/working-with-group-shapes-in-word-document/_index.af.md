---
title: Hoe om Group Shape By Word-Dokument Te Voeg
second_title: Aspose.Words vir .NET
articleTitle: Hoe om Group Shape By'n Word-Dokument Te Voeg
linktitle: Werk met Group Shapes in Word-Dokumente
description: "Groepering en ongroepering vorms met behulp van C#."
type: docs
weight: 290
url: /af/net/how-to-add-group-shape-into-a-word-document/
---

Soms moet jy'n group shape by'n Word-dokument voeg. So'n group shape bestaan uit verskeie vorms.

In Microsoft Word kan jy vinnig'n group shape byvoeg deur die Groepopdrag/knoppie te gebruik. 'n individuele vorm in'n groep kan afsonderlik verskuif word.

In Aspose.Words is dit baie maklik om'n group shape by te voeg met behulp van die [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) klas. **Shape** word afsonderlik geskep met behulp van die [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) klas en dan by die [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) voorwerp gevoeg met behulp van die [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) metode.

Die volgende kode voorbeeld toon hoe om'n group shape in'n Word dokument te voeg:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

Hieronder is'n paar van die `Shape` tipes ondersteun in Aspose.Words:

- Reghoek
- RoundRectangle
- RoundRectangle
- Ellipse
- Diamant
- Driehoek
- RightTriangle
- Parallelogram
- Trapezium
- Seshoek
- Oktagon

Vir volledige lys, gaan asseblief die [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype) klas.

{{% /alert %}}