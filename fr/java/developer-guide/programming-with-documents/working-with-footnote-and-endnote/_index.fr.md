---
title: Travailler avec la note de bas de page et la note de fin de page Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec la note de bas de page et la note de fin de page
linktitle: Travailler avec la note de bas de page et la note de fin de page
description: "Comment manipuler les notes et notes de bas de page en utilisant Java."
type: docs
weight: 160
url: /fr/java/working-with-footnote-and-endnote/
---

Aspose.Words fournit également certaines classes, méthodes et propriétés pour travailler avec des notes de bas de page et des notes.

## Insérer les options de numérotation de la note de fin et de l'ensemble

Si vous souhaitez insérer une note de bas de page ou une note de fin dans un document Word, veuillez utiliser [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) méthode. Cette méthode insère une note de bas de page dans le document.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) et [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) les classes représentent les options de numérotation pour la note de bas de page et la note de fin.

L'exemple de code suivant montre comment insérer la note de fin dans le document et définir ses options de numérotation:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Nombre de colonnes de mise en page de la note

Vous pouvez définir le nombre de colonnes de mise en page de note en utilisant [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) propriété. Si cette propriété a la valeur de 0, la zone des notes de bas de page est formatée avec un nombre de colonnes basé sur le nombre de colonnes sur la page affichée.

L'exemple de code suivant montre comment définir le nombre de colonnes pour la mise en page des notes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Définir la position de la note de bas de page et de la note de fin

La position de la note de bas de page peut se trouver au bas de chaque page ou sous le texte de chaque page. La position de la note peut se trouver à la fin de la section ou à la fin du document.

L'exemple de code suivant montre comment définir la position de la note de bas de page et de la note de fin:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
