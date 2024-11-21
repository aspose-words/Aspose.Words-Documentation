---
title: Comment ajouter une forme Group dans un document Word
second_title: Aspose.Words pour .NET
articleTitle: Comment ajouter une forme Group dans un document Word
linktitle: Travailler avec des formes Group dans des documents Word
description: "Grouping et dissociation de formes à l'aide de C#."
type: docs
weight: 290
url: /fr/net/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Parfois, vous devez ajouter un group shape dans un document Word. Un tel group shape se compose de plusieurs formes.

Dans Microsoft Word, vous pouvez ajouter rapidement un group shape à l'aide de la commande/bouton Group. Une forme individuelle dans un groupe peut être déplacée séparément.

Dans Aspose.Words, il est très simple d'ajouter un group shape en utilisant la classe [GroupShape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/groupshape/). **Shape** est créé séparément à l'aide de la classe [Shape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/) puis ajouté à l'objet [GroupShape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/groupshape/) à l'aide de la méthode [AppendChild](https://reference.aspose.com/words/fr/net/aspose.words/compositenode/appendchild/).

L'exemple de code suivant montre comment ajouter un group shape dans un document Word:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

Vous trouverez ci-dessous quelques-uns des types `Shape` pris en charge dans Aspose.Words:

- Rectangle
- RondRectangle
- RondRectangle
- Ellipses
- Diamant
- Triangle
- Triangle rectangle
- Parallélogramme
- Trapèze
-Hexagone
- Octogone

Pour la liste complète, veuillez vérifier la classe [ShapeType](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shapetype).

{{% /alert %}}
