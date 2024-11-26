---
title: Hoe om Group Shape By'n Word-Dokument Te Voeg
second_title: Aspose.Words vir C++
articleTitle: Werk met Group Shapes in Word-Dokumente
linktitle: Werk met Group Shapes in Word-Dokumente
description: "Groepering en ongroepering vorms met behulp van C++."
type: docs
weight: 290
url: /af/cpp/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Soms moet jy'n group shape by'n Word-dokument voeg. So'n group shape bestaan uit verskeie vorms.

In Microsoft Word kan jy vinnig'n group shape byvoeg deur die Groepopdrag/knoppie te gebruik. 'n individuele vorm in'n groep kan afsonderlik verskuif word.

In Aspose.Words is dit baie maklik om'n group shape by te voeg met behulp van die [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) klas. Die vorm word afsonderlik geskep met behulp van die [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) klas en dan bygevoeg om die **GroupShape** voorwerp met behulp van die [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) metode.

Die volgende kode voorbeeld toon hoe om'n group shape in'n Word dokument te voeg:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

Hieronder is'n paar van die `Shape` tipes ondersteun in Aspose.Words. Vir volledige lys, besoek asseblief [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

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

{{% /alert %}}
