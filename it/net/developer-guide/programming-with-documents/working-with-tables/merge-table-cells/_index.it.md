---
title: Unisci le celle della tabella in C#
second_title: Aspose.Words per .NET
articleTitle: Unisci celle di tabella
linktitle: Unisci celle di tabella
description: "Come unire le celle della tabella in C#. Controlla se le celle in una tabella vengono unite utilizzando C#."
type: docs
weight: 40
url: /it/net/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

A volte alcune righe di una tabella richiedono un'intestazione o grandi blocchi di testo che occupano l'intera larghezza della tabella. Per una corretta progettazione della tabella, l'utente può unire più celle della tabella in una sola. Aspose.Words supporta celle unite quando si lavora con tutti i formati di input, inclusa l'importazione di contenuto HTML.

## Come unire le celle della tabella

In Aspose.Words, le celle unite sono rappresentate dalle seguenti proprietà della classe [CellFormat](https://reference.aspose.com/words/it/net/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/it/net/aspose.words.tables/cellformat/horizontalmerge/) che descrive se la cella fa parte di un'unione orizzontale di celle
- [VerticalMerge](https://reference.aspose.com/words/it/net/aspose.words.tables/cellformat/verticalmerge/) che descrive se la cella fa parte di un'unione verticale di celle

I valori di queste proprietà determinano il comportamento di unione delle celle:

- La prima cella in una sequenza di celle unite avrà [CellMerge.First](https://reference.aspose.com/words/it/net/aspose.words.tables/cellmerge/)
- Tutte le celle successivamente unite avranno [CellMerge.Previous](https://reference.aspose.com/words/it/net/aspose.words.tables/cellmerge/)
- Una cella non unita avrà [CellMerge.None](https://reference.aspose.com/words/it/net/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

A volte, quando si caricano le celle di un documento esistente in una tabella, queste appariranno unite. Tuttavia, in realtà può essere una cella lunga: a volte Microsoft Word esporta celle unite in questo modo. Ciò può creare confusione quando si tenta di lavorare con singole celle, ma non sembra esserci alcun modello particolare su quando ciò accade.

{{% /alert %}}

## Controlla se la cella è unita

Per verificare se una cella fa parte di una sequenza di celle unite, controlliamo semplicemente le proprietà **HorizontalMerge** e **VerticalMerge**.

L'esempio di codice seguente mostra come stampare il tipo di unione di celle orizzontali e verticali:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "check-cells-merged.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Unisci celle di tabella quando usi DocumentBuilder

Per unire le celle in una tabella creata con [DocumentBuilder](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/), è necessario impostare il tipo di unione appropriato per ciascuna cella in cui è prevista l'unione: prima **CellMerge.First** e poi **CellMerge.Previous**.

Inoltre, devi ricordarti di cancellare l'impostazione di unione per quelle celle in cui non è richiesta l'unione: questo può essere fatto impostando la prima cella non unita su **CellMerge.None**. Se ciò non viene fatto, tutte le celle della tabella verranno unite.

L'esempio di codice seguente mostra come creare una tabella con due righe in cui le celle della prima riga vengono unite orizzontalmente:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-merge.cs" >}}

L'esempio di codice seguente mostra come creare una tabella a due colonne in cui le celle nella prima colonna sono unite verticalmente:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "vertical-merge.cs" >}}

## Unisci le celle della tabella in altri casi

In altre situazioni in cui il **DocumentBuilder** non viene utilizzato, come in una tabella esistente, unire le celle nel modo precedente potrebbe non essere così semplice. Possiamo invece racchiudere le operazioni di base coinvolte nell'applicazione delle proprietà di unione alle celle in un metodo che rende l'attività molto più semplice. Questo metodo è simile al metodo di automazione Unisci, che viene chiamato per unire un intervallo di celle in una tabella.

Il codice seguente unirà le celle della tabella nell'intervallo specificato, iniziando dalla cella specificata e terminando con la cella finale. In questo caso, l'intervallo può estendersi su più righe o colonne:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cells.cs" >}}

L'esempio di codice seguente mostra come unire un intervallo di celle tra due celle specificate:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cell-range.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

A seconda della versione del .NET Framework che stai utilizzando, potresti voler perfezionare questo metodo trasformandolo in un metodo di estensione. In questo caso, puoi chiamare questo metodo direttamente su una cella per unire un intervallo di celle, come `cell1.Merge(cell2)`.

## Celle unite verticali e orizzontali nella tabella HTML

Come abbiamo detto negli articoli precedenti, una tabella in Microsoft Word è un insieme di righe indipendenti. Ogni riga ha un insieme di celle indipendenti dalle celle delle altre righe. Pertanto, nella tabella Microsoft Word non esiste un oggetto come una "colonna" e la "prima colonna" è qualcosa come "l'insieme delle prime celle di ogni riga nella tabella". Ciò consente agli utenti di avere una tabella in cui, ad esempio, la prima riga è composta da due celle – 2 cm e 1 cm, e la seconda riga è composta da due celle diverse – 1 cm e 2 cm di larghezza. E Aspose.Words supporta questo concetto di tabelle.

Una tabella in HTML ha una struttura essenzialmente diversa: ogni riga ha lo stesso numero di celle e (è importante per il compito) ogni cella ha la larghezza della colonna corrispondente, la stessa per tutte le celle di una colonna. Pertanto, se **HorizontalMerge** e **VerticalMerge** restituiscono un valore errato, utilizzare il seguente esempio di codice:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "print-horizontal-and-vertical-merged.cs" >}}

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-and-vertical-merge-helper-classes.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Converti in celle unite orizzontalmente

A volte non è possibile rilevare quali celle vengono unite perché alcune versioni più recenti di Microsoft Word non utilizzano più i flag di unione quando le celle vengono unite orizzontalmente. Ma per le situazioni in cui le celle vengono unite in una cella orizzontalmente in base alla larghezza utilizzando i flag di unione, Aspose.Words fornisce il metodo `ConvertToHorizontallyMergedCells` per convertire le celle. Questo metodo trasforma semplicemente la tabella e aggiunge nuove celle secondo necessità.

L'esempio di codice seguente mostra il metodo sopra in funzione:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "convert-to-horizontally-merged-cells.cs" >}}
