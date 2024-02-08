---
title: Comment ajouter une forme Group dans un fichier Word
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec la forme Group dans les documents Word
linktitle: Travailler avec la forme Group dans les documents Word
description: "Ajoutez group shape dans un document en utilisant Python."
type: docs
weight: 290
url: /fr/python-net/how-to-add-group-shape-into-a-word-document/
---

Parfois, vous devez ajouter un group shape dans un document Word. Un tel group shape se compose de plusieurs formes.

Dans Microsoft Word, vous pouvez ajouter rapidement un group shape à l'aide de la commande/bouton Group. Une forme individuelle dans un groupe peut être déplacée séparément.

Dans Aspose.Words, il est très simple d'ajouter un group shape à l'aide d'une classe [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). La forme est créée séparément à l'aide de la classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), puis ajoutée dans un objet [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) à l'aide de la méthode [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

L'exemple de code suivant montre comment ajouter un group shape dans un document Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

Vous trouverez ci-dessous certains des types `Shape` pris en charge dans Aspose.Words. Pour la liste complète, veuillez consulter l'énumération [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/)

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
