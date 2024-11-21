---
title: Travailler avec la note de bas de page et la note de fin en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec la note de bas de page et la note de fin
linktitle: Travailler avec la note de bas de page et la note de fin
description: "Comment manipuler les notes de bas de page et de fin en utilisant C++."
type: docs
weight: 160
url: /fr/cpp/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words fournit également des classes, des méthodes et des propriétés pour travailler avec des notes de bas de page et des notes de fin.

## Insérer une note de fin et Définir des Options de numérotation

Si vous souhaitez insérer une note de bas de page ou une note de fin dans un document Word, veuillez utiliser la méthode [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/). Cette méthode insère une note de bas de page ou une note de fin dans le document.

les classes [EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) et [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) représentent des options de numérotation pour la note de bas de page et la note de fin.

L'exemple de code suivant montre comment insérer une note de fin dans le document et définir ses options de numérotation:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## Définir le nombre de Colonnes de mise en page des notes de bas de page

Vous pouvez définir le nombre de colonnes de mise en page des notes de bas de page à l'aide de la propriété [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/). Si cette propriété a la valeur 0, la zone de notes de bas de page est mise en forme avec un nombre de colonnes basé sur le nombre de colonnes de la page affichée.

L'exemple de code suivant montre comment définir le nombre de colonnes pour la mise en page des notes de bas de page:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## Définir la position de la note de bas de page et EndNote

La position de la note de bas de page peut être au bas de chaque page ou sous le texte de chaque page. La position de la note de fin peut être à la fin de la section ou à la fin du document.

L'exemple de code suivant montre comment définir la position de la note de bas de page et de la note de fin:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
