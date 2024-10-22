---
title: Lavorare con Footnote e Endnote in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con Footnote e Endnote
linktitle: Lavorare con Footnote e Endnote
description: "Come manipolare le note a piè di pagina e le note di chiusura usando C++."
type: docs
weight: 160
url: /it/cpp/working-with-footnote-and-endnote/
---

Aspose.Words fornisce anche alcune classi, metodi e proprietà per lavorare con note a piè di pagina e note di chiusura.

## Inserisci la nota di chiusura e imposta le opzioni di numerazione

Se si desidera inserire una nota a piè di pagina o una nota di chiusura in un documento Word, utilizzare il metodo [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/). Questo metodo inserisce una nota a piè di pagina o una nota di chiusura nel documento.

le classi [EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) e [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) rappresentano le opzioni di numerazione per la nota a piè di pagina e la nota di chiusura.

Il seguente esempio di codice mostra come inserire endnote nel documento e impostarne le opzioni di numerazione:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## Imposta il numero di colonne di layout delle note a piè di pagina

È possibile impostare il numero di colonne del layout delle note a piè di pagina utilizzando la proprietà [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/). Se questa proprietà ha un valore 0, l'area Note a piè di pagina viene formattata con un numero di colonne in base al numero di colonne nella pagina visualizzata.

L'esempio di codice seguente mostra come impostare il numero di colonne per il layout delle note a piè di pagina:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## Imposta la posizione della Nota a piè di pagina e EndNote

La posizione della nota a piè di pagina può essere nella parte inferiore di ogni pagina o sotto il testo di ogni pagina. La posizione della nota di chiusura può essere alla fine della sezione o alla fine del documento.

Il seguente esempio di codice mostra come impostare la posizione della nota a piè di pagina e della nota di chiusura:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
