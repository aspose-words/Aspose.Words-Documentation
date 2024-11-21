---
title: Lavorare con la nota a piè di pagina e la nota di chiusura
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con la nota a piè di pagina e la nota di chiusura
linktitle: Lavorare con la nota a piè di pagina e la nota di chiusura
description: "Inserisci note a piè di pagina o di chiusura in un documento e specifica le sue opzioni utilizzando Python."
type: docs
weight: 160
url: /it/python-net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words fornisce anche alcune classi, metodi e proprietà per lavorare con note a piè di pagina e note di chiusura.

## Inserisci nota di chiusura e imposta opzioni di numerazione

Se desideri inserire una nota a piè di pagina o una nota di chiusura nel documento Word, utilizza il metodo [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/). Questo metodo inserisce una nota a piè di pagina o una nota di chiusura nel documento.

Le classi [EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) e [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) rappresentano le opzioni di numerazione per la nota a piè di pagina e la nota di chiusura.

L'esempio di codice seguente mostra come inserire una nota di chiusura nel documento e impostarne le opzioni di numerazione:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## Imposta il numero di colonne del layout delle note a piè di pagina

È possibile impostare il numero di colonne del layout delle note a piè di pagina utilizzando la proprietà [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/). Se questa proprietà ha il valore 0, l'area delle note a piè di pagina viene formattata con un numero di colonne in base al numero di colonne nella pagina visualizzata.

L'esempio di codice seguente mostra come impostare il numero di colonne per il layout delle note a piè di pagina:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## Imposta la posizione della nota a piè di pagina e della nota finale

La posizione della nota a piè di pagina può essere in fondo a ciascuna pagina o sotto il testo su ciascuna pagina. La posizione della nota finale può essere alla fine della sezione o alla fine del documento.

L'esempio di codice seguente mostra come impostare la posizione della nota a piè di pagina e della nota di chiusura:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
