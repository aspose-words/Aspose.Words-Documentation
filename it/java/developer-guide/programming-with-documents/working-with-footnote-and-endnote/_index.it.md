---
title: Lavorare con Footnote e Endnote in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con Footnote e Endnote
linktitle: Lavorare con Footnote e Endnote
description: "Come manipolare le note a piè di pagina e le note finali usando Java."
type: docs
weight: 160
url: /it/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words fornisce anche alcune classi, metodi e proprietà per lavorare con note a piè di pagina e note finali.

## Inserisci Endnote e Imposta opzioni di numerazione

Se si desidera inserire una nota a piè di pagina o una nota finale in un documento di Word, si prega di utilizzare [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) metodo. Questo metodo inserisce una nota a piè di pagina o una nota finale nel documento.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) e [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) le classi rappresentano opzioni di numerazione per la nota a piè di pagina e la nota finale.

Il seguente esempio di codice mostra come inserire la nota finale nel documento e impostare le opzioni di numerazione:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Set Numero di colonne di layout note a piè di pagina

È possibile impostare il numero di colonne di layout note a piè di pagina utilizzando [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) proprieta'. Se questa proprietà ha il valore di 0, l'area delle note a piè di pagina è formattata con un numero di colonne in base al numero di colonne nella pagina visualizzata.

Il seguente esempio di codice mostra come impostare il numero di colonne per il layout delle note a piè di pagina:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Impostare la posizione della nota a piè di pagina e EndNote

La posizione della nota a piè di pagina può essere nella parte inferiore di ogni pagina o sotto il testo di ogni pagina. La posizione della nota finale può essere alla fine della sezione o alla fine del documento.

Il seguente esempio di codice mostra come impostare la posizione della nota a piè di pagina e della nota finale:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
