---
title: Jak přidat Group Vytvořit slovní dokument
second_title: Aspose.Words místo .NET
articleTitle: Jak přidat Group Vytvořit slovní dokument
linktitle: Práce s Group Tvary v textových dokumentech
description: "Grouping a odkupovací tvary používající C#."
type: docs
weight: 290
url: /cs/net/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Někdy musíte přidat group shape do dokumentu Word. Takový group shape sestává z více tvarů.

In Microsoft Word, můžete rychle přidat group shape s použitím Group příkaz/tlačítko. Jednotlivý tvar ve skupině lze pohybovat odděleně.

In Aspose.Words je velmi snadné přidat a group shape s použitím [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) třída. **Shape** je vytvořen samostatně pomocí [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) třída a poté přidána k [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) objekt pomocí [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) metoda.

Následující příklad kódu ukazuje, jak přidat a group shape do dokumentu Word:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

Níže jsou uvedeny některé z `Shape` typy podporované v Aspose.Words:

- Obdélník
- RoundRectangle
- RoundRectangle
- Ellipso
- Diamond
- Trojúhelník
- Pravý trojúhelník
- Parallelogram
- Trapezoid
- Hexagon
- Oktagon

Pro kompletní seznam prosím zkontrolujte [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype) třída.

{{% /alert %}}
