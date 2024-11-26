---
title: Lavorare con la nota a piè di pagina e la nota di fine in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con Footnote e Endnote
linktitle: Lavorare con Footnote e Endnote
description: "Come manipolare le note a piè di pagina e le note di chiusura usando Java."
type: docs
weight: 160
url: /it/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words fornisce anche alcune classi, metodi e proprietà per lavorare con note a piè di pagina e note di chiusura.

## Inserisci la nota di chiusura e imposta le opzioni di numerazione

Se si desidera inserire una nota a piè di pagina o una nota di chiusura in un documento di Word, utilizzare il metodo [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String). Questo metodo inserisce una nota a piè di pagina o una nota di chiusura nel documento.

le classi [EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) e [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) rappresentano le opzioni di numerazione per la nota a piè di pagina e la nota di chiusura.

Il seguente esempio di codice mostra come inserire endnote nel documento e impostarne le opzioni di numerazione:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Imposta il numero di colonne di layout delle note a piè di pagina

È possibile impostare il numero di colonne del layout delle note a piè di pagina utilizzando la proprietà [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns). Se questa proprietà ha il valore 0, l'area Note a piè di pagina viene formattata con un numero di colonne in base al numero di colonne nella pagina visualizzata.

L'esempio di codice seguente mostra come impostare il numero di colonne per il layout delle note a piè di pagina:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Imposta la posizione della Nota a piè di pagina e EndNote

La posizione della nota a piè di pagina può essere nella parte inferiore di ogni pagina o sotto il testo di ogni pagina. La posizione della nota di chiusura può essere alla fine della sezione o alla fine del documento.

Il seguente esempio di codice mostra come impostare la posizione della nota a piè di pagina e della nota di chiusura:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
