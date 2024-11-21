---
title: Comment ajouter Group Shape dans un document Word
second_title: Aspose.Words pour C++
articleTitle: Utilisation de Group Shapes dans des documents Word
linktitle: Utilisation de Group Shapes dans des documents Word
description: "Regroupement et dissociation de formes à l'aide de C++."
type: docs
weight: 290
url: /fr/cpp/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Parfois, vous devez ajouter un group shape dans un document Word. Un tel group shape se compose de plusieurs formes.

Dans Microsoft Word, vous pouvez rapidement ajouter un group shape à l'aide de la commande/du bouton de groupe. Une forme individuelle dans un groupe peut être déplacée séparément.

Dans Aspose.Words, il est très facile d'ajouter un group shape en utilisant la classe [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/). La forme est créée séparément à l'aide de la classe [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/), puis ajoutée à l'objet **GroupShape** à l'aide de la méthode [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/).

L'exemple de code suivant montre comment ajouter un group shape dans un document Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

Voici quelques-uns des types `Shape` pris en charge dans Aspose.Words. Pour la liste complète, veuillez visiter [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- Rectangle
- RoundRectangle
- RoundRectangle
- Ellipse
- Diamant
- Triangle
- RightTriangle
- Parallélogramme
- Trapèze
- Hexagone
- Octogone

{{% /alert %}}
