---
title: Lavorare con nota a piè di pagina e nota di chiusura in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con la nota a piè di pagina e la nota di chiusura
linktitle: Lavorare con la nota a piè di pagina e la nota di chiusura
description: "Come manipolare le note a piè di pagina e le note di chiusura utilizzando C#."
type: docs
weight: 160
url: /it/net/working-with-footnote-and-endnote/
---

Aspose.Words fornisce anche alcune classi, metodi e proprietà per lavorare con note a piè di pagina e note di chiusura.

## Inserisci nota di chiusura e imposta opzioni di numerazione

Se desideri inserire una nota a piè di pagina o una nota di chiusura nel documento Word, utilizza il metodo [InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/). Questo metodo inserisce una nota a piè di pagina o una nota di chiusura nel documento.

Le classi [EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) e [FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) rappresentano le opzioni di numerazione per la nota a piè di pagina e la nota di chiusura.

L'esempio di codice seguente mostra come inserire una nota di chiusura nel documento e impostarne le opzioni di numerazione:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## Imposta il numero di colonne del layout delle note a piè di pagina

È possibile impostare il numero di colonne del layout delle note a piè di pagina utilizzando la proprietà [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/). Se questa proprietà ha il valore 0, l'area delle note a piè di pagina viene formattata con un numero di colonne in base al numero di colonne nella pagina visualizzata.

L'esempio di codice seguente mostra come impostare il numero di colonne per il layout delle note a piè di pagina:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## Imposta la posizione della nota a piè di pagina e della nota finale

La posizione della nota a piè di pagina può essere in fondo a ciascuna pagina o sotto il testo su ciascuna pagina. La posizione della nota finale può essere alla fine della sezione o alla fine del documento.

L'esempio di codice seguente mostra come impostare la posizione della nota a piè di pagina e della nota di chiusura:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
