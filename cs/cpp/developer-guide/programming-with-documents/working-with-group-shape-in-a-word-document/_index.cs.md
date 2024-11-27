---
title: Jak přidat Group Shape do Word dokumentu
second_title: Aspose.Words pro C++
articleTitle: Práce s Group Shapes v Word dokumentech
linktitle: Práce s Group Shapes v Word dokumentech
description: "Seskupování a odskupování tvarů pomocí C++."
type: docs
weight: 290
url: /cs/cpp/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Někdy je třeba přidat group shape do Word dokumentu. Takový group shape se skládá z více tvarů.

V Microsoft Word můžete rychle přidat group shape pomocí příkazu/tlačítka skupiny. Jednotlivé tvary ve skupině lze přesouvat Samostatně.

V Aspose.Words je velmi snadné přidat group shape pomocí třídy [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/). Tvar se vytvoří samostatně pomocí třídy [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) a poté se přidá k objektu **GroupShape** metodou [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/).

Následující příklad kódu ukazuje, jak přidat group shape do Word dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

Níže jsou uvedeny některé z typů `Shape` podporovaných v Aspose.Words. Úplný seznam najdete na [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- Obdélník
- RoundRectangle
- RoundRectangle
- Elipsa
- Diamant
- Trojúhelník
- RightTriangle
- Rovnoběžník
- Lichoběžník
- Hexagon
- Osmiúhelník

{{% /alert %}}
