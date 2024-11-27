---
title: Group Shape toevoegen aan een Word Document
second_title: Aspose.Words voor C++
articleTitle: Werken met Group Shapes in Word documenten
linktitle: Werken met Group Shapes in Word documenten
description: "Vormen groeperen en verwijderen met behulp van C++."
type: docs
weight: 290
url: /nl/cpp/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Soms moet u een group shape toevoegen aan een Word document. Zo ' n group shape bestaat uit meerdere vormen.

In Microsoft Word kunt u snel een group shape toevoegen met de groep commando/knop. Een individuele vorm in een groep kan afzonderlijk worden verplaatst.

In Aspose.Words is het heel gemakkelijk om een group shape toe te voegen met behulp van de [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) klasse. De vorm wordt afzonderlijk gemaakt met behulp van de klasse [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) en vervolgens toegevoegd aan het object **GroupShape** met behulp van de methode [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/).

Het volgende codevoorbeeld laat zien hoe u een group shape toevoegt aan een Word document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

Hieronder staan enkele van de `Shape` - typen die in Aspose.Words worden ondersteund. Ga voor de volledige lijst naar [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- Rechthoek
- RoundRectangle
- RoundRectangle
- Ovaal
- Diamant
- Driehoek
- RightTriangle
- Parallellogram
- Trapezium
- Zeskant
- Achthoek

{{% /alert %}}
