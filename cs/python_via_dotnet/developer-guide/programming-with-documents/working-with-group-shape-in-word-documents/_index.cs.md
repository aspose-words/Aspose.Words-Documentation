---
title: Jak přidat Group Vytvořit soubor se slovem
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s Group Tvar ve slovních dokumentech
linktitle: Práce s Group Tvar ve slovních dokumentech
description: "Přidat group shape do dokumentu používajícího Python."
type: docs
weight: 290
url: /cs/python-net/how-to-add-group-shape-into-a-word-document/
---

Někdy musíte přidat group shape do dokumentu Word. Takový group shape sestává z více tvarů.

In Microsoft Word, můžete rychle přidat group shape s použitím Group příkaz/tlačítko. Jednotlivý tvar ve skupině lze pohybovat odděleně.

In Aspose.Words je velmi snadné přidat a group shape podání [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) třída. Tvar se vytváří samostatně pomocí [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) třída a poté přidána [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) objekt pomocí [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) metoda.

Následující příklad kódu ukazuje, jak přidat a group shape do dokumentu Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

Níže jsou uvedeny některé z `Shape` typy podporované v Aspose.Words. Úplný seznam viz [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/) počet

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
