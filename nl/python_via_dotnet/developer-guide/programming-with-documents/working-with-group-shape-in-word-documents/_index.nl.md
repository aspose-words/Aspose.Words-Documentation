---
title: Hoe toe te voegen Group Vorm in Word-bestand
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met Group Vormen in woorddocumenten
linktitle: Werken met Group Vormen in woorddocumenten
description: "Voeg toe group shape in een document met Python."
type: docs
weight: 290
url: /nl/python-net/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Soms moet je een group shape in een Word-document. Zo'n group shape bestaat uit meerdere vormen.

In Microsoft Word, u kunt snel een group shape met de Group commando/knop. Een individuele vorm in een groep kan apart worden verplaatst.

In Aspose.Words het is zeer gemakkelijk om een group shape gebruik [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) Klasse. Vorm wordt afzonderlijk gemaakt met behulp van [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) klasse en dan toegevoegd aan [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) object gebruiken [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) methode.

Het volgende voorbeeld van code laat zien hoe je een group shape in een Word-document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

Hieronder zijn enkele van de `Shape` type ondersteund in Aspose.Words. Voor een volledige lijst, zie [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/) Lijst

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
