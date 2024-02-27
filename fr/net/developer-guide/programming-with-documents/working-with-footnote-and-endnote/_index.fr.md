---
title: Travailler avec les notes de bas de page et de fin dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec les notes de bas de page et de fin
linktitle: Travailler avec les notes de bas de page et de fin
description: "Comment manipuler les notes de bas de page et les notes de fin à l'aide de C#."
type: docs
weight: 160
url: /fr/net/working-with-footnote-and-endnote/
---

Aspose.Words fournit également des classes, méthodes et propriétés pour travailler avec des notes de bas de page et des notes de fin.

## Insérer une note de fin et définir les options de numérotation

Si vous souhaitez insérer une note de bas de page ou de fin dans un document Word, veuillez utiliser la méthode [InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/). Cette méthode insère une note de bas de page ou une note de fin dans le document.

Les classes [EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) et [FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) représentent les options de numérotation pour les notes de bas de page et de fin.

L'exemple de code suivant montre comment insérer une note de fin dans le document et définir ses options de numérotation:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## Définir le nombre de colonnes de disposition des notes de bas de page

Vous pouvez définir le nombre de colonnes de disposition des notes de bas de page à l'aide de la propriété [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/). Si cette propriété a la valeur 0, la zone de notes de bas de page est formatée avec un nombre de colonnes basé sur le nombre de colonnes sur la page affichée.

L'exemple de code suivant montre comment définir le nombre de colonnes pour la disposition des notes de bas de page:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## Définir la position de la note de bas de page et de la note de fin

La position de la note de bas de page peut être au bas de chaque page ou sous le texte de chaque page. La position de la note de fin peut être à la fin de la section ou à la fin du document.

L'exemple de code suivant montre comment définir la position de la note de bas de page et de la note de fin:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
