---
title: Travailler avec les notes de bas de page et de fin
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec les notes de bas de page et de fin
linktitle: Travailler avec les notes de bas de page et de fin
description: "Insérez des notes de fond ou des notes de fin dans un document et spécifiez ses options à l'aide de Python."
type: docs
weight: 160
url: /fr/python-net/working-with-footnote-and-endnote/
---

Aspose.Words fournit également des classes, méthodes et propriétés pour travailler avec des notes de bas de page et des notes de fin.

## Insérer une note de fin et définir les options de numérotation

Si vous souhaitez insérer une note de bas de page ou une note de fin dans un document Word, veuillez utiliser la méthode [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/). Cette méthode insère une note de bas de page ou une note de fin dans le document.

Les classes [EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) et [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) représentent les options de numérotation pour les notes de bas de page et de fin.

L'exemple de code suivant montre comment insérer une note de fin dans le document et définir ses options de numérotation:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## Définir le nombre de colonnes de disposition des notes de bas de page

Vous pouvez définir le nombre de colonnes de disposition des notes de bas de page à l'aide de la propriété [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/). Si cette propriété a la valeur 0, la zone de notes de bas de page est formatée avec un nombre de colonnes basé sur le nombre de colonnes sur la page affichée.

L'exemple de code suivant montre comment définir le nombre de colonnes pour la disposition des notes de bas de page:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## Définir la position de la note de bas de page et de la note de fin

La position de la note de bas de page peut être au bas de chaque page ou sous le texte de chaque page. La position de la note de fin peut être à la fin de la section ou à la fin du document.

L'exemple de code suivant montre comment définir la position de la note de bas de page et de la note de fin:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
