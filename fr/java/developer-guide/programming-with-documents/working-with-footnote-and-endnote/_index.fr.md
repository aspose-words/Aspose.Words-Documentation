---
title: Utilisation de la note de bas de page et de la note de fin dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec la note de bas de page et la note de fin
linktitle: Travailler avec la note de bas de page et la note de fin
description: "Comment manipuler les notes de bas de page et de fin en utilisant Java."
type: docs
weight: 160
url: /fr/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words fournit également des classes, des méthodes et des propriétés pour travailler avec des notes de bas de page et des notes de fin.

## Insérer une note de fin et Définir des Options de numérotation

Si vous souhaitez insérer une note de bas de page ou une note de fin dans un document Word, veuillez utiliser la méthode [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String). Cette méthode insère une note de bas de page ou une note de fin dans le document.

les classes [EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) et [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) représentent des options de numérotation pour la note de bas de page et la note de fin.

L'exemple de code suivant montre comment insérer une note de fin dans le document et définir ses options de numérotation:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Définir le nombre de Colonnes de mise en page des notes de bas de page

Vous pouvez définir le nombre de colonnes de mise en page des notes de bas de page à l'aide de la propriété [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns). Si cette propriété a la valeur 0, la zone de notes de bas de page est formatée avec un nombre de colonnes basé sur le nombre de colonnes sur la page affichée.

L'exemple de code suivant montre comment définir le nombre de colonnes pour la mise en page des notes de bas de page:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Définir la position de la note de bas de page et EndNote

La position de la note de bas de page peut être au bas de chaque page ou sous le texte de chaque page. La position de la note de fin peut être à la fin de la section ou à la fin du document.

L'exemple de code suivant montre comment définir la position de la note de bas de page et de la note de fin:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
