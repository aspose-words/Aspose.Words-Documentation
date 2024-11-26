---
title: Unisci celle di tabella
second_title: Aspose.Words per Python via .NET
articleTitle: Unisci celle di tabella
linktitle: Unisci celle di tabella
description: "Come unire le celle della tabella in Python. Controlla se le celle in una tabella vengono unite utilizzando Python."
type: docs
weight: 40
url: /it/python-net/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

A volte alcune righe di una tabella richiedono un'intestazione o grandi blocchi di testo che occupano l'intera larghezza della tabella. Per una corretta progettazione della tabella, l'utente può unire più celle della tabella in una sola. Aspose.Words supporta celle unite quando si lavora con tutti i formati di input, inclusa l'importazione di contenuto HTML.

## Come unire le celle della tabella

In Aspose.Words, le celle unite sono rappresentate dalle seguenti proprietà della classe [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/horizontal_merge/) che descrive se la cella fa parte di un'unione orizzontale di celle
- [VerticalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/vertical_merge/) che descrive se la cella fa parte di un'unione verticale di celle

I valori di queste proprietà determinano il comportamento di unione delle celle:

- La prima cella in una sequenza di celle unite avrà [CellMerge.First](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#first)
- Tutte le celle successivamente unite avranno [CellMerge.Previous](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#previous)
- Una cella non unita avrà [CellMerge.None](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#none)

{{% alert color="primary" %}}

A volte, quando si caricano le celle di un documento esistente in una tabella, queste appariranno unite. Tuttavia, in realtà può essere una cella lunga: a volte Microsoft Word esporta celle unite in questo modo. Ciò può creare confusione quando si tenta di lavorare con singole celle, ma non sembra esserci alcun modello particolare su quando ciò accade.

{{% /alert %}}

## Controlla se la cella è unita

Per verificare se una cella fa parte di una sequenza di celle unite, controlliamo semplicemente le proprietà **HorizontalMerge** e **VerticalMerge**.

L'esempio di codice seguente mostra come stampare il tipo di unione di celle orizzontali e verticali:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "check-cells-merged.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Unisci celle di tabella quando usi DocumentBuilder

Per unire le celle in una tabella creata con [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), è necessario impostare il tipo di unione appropriato per ciascuna cella in cui è prevista l'unione: prima **CellMerge.First** e poi **CellMerge.Previous**.

Inoltre, devi ricordarti di cancellare l'impostazione di unione per quelle celle in cui non è richiesta l'unione: questo può essere fatto impostando la prima cella non unita su **CellMerge.None**. Se ciò non viene fatto, tutte le celle della tabella verranno unite.

L'esempio di codice seguente mostra come creare una tabella con due righe in cui le celle della prima riga vengono unite orizzontalmente:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "horizontal-merge.py" >}}

L'esempio di codice seguente mostra come creare una tabella a due colonne in cui le celle nella prima colonna sono unite verticalmente:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "vertical-merge.py" >}}

## Unisci le celle della tabella in altri casi

In altre situazioni in cui il **DocumentBuilder** non viene utilizzato, come in una tabella esistente, unire le celle nel modo precedente potrebbe non essere così semplice. Possiamo invece racchiudere le operazioni di base coinvolte nell'applicazione delle proprietà di unione alle celle in un metodo che rende l'attività molto più semplice. Questo metodo è simile al metodo di automazione Unisci, che viene chiamato per unire un intervallo di celle in una tabella.

Il codice seguente unirà le celle della tabella nell'intervallo specificato, iniziando dalla cella specificata e terminando con la cella finale. In questo caso, l'intervallo può estendersi su più righe o colonne:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cells.py" >}}

L'esempio di codice seguente mostra come unire un intervallo di celle tra due celle specificate:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cell-range.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

A seconda della versione del Framework che stai utilizzando, potresti voler perfezionare questo metodo trasformandolo in un metodo di estensione. In questo caso, puoi chiamare questo metodo direttamente su una cella per unire un intervallo di celle, come `cell1.Merge(cell2)`.

## Converti in celle unite orizzontalmente

A volte non è possibile rilevare quali celle vengono unite perché alcune versioni più recenti di Microsoft Word non utilizzano più i flag di unione quando le celle vengono unite orizzontalmente. Ma per le situazioni in cui le celle vengono unite in una cella orizzontalmente in base alla larghezza utilizzando i flag di unione, Aspose.Words fornisce il metodo `ConvertToHorizontallyMergedCells` per convertire le celle. Questo metodo trasforma semplicemente la tabella e aggiunge nuove celle secondo necessità.

L'esempio di codice seguente mostra il metodo sopra in funzione:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "convert-to-horizontally-merged-cells.py" >}}
