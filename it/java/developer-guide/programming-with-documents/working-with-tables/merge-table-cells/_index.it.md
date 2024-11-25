---
title: Unire le celle della tabella in in Java
second_title: Aspose.Words per Java
articleTitle: Unisci celle tabella
linktitle: Unisci celle tabella
description: "Come unire le celle della tabella in Java. Controlla se le celle in una tabella vengono unite usando Java."
type: docs
weight: 40
url: /it/java/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

A volte alcune righe di una tabella richiedono un'intestazione o grandi blocchi di testo che occupano l'intera larghezza della tabella. Per una corretta progettazione della tabella, l'utente può unire più celle della tabella in una sola. Aspose.Words supporta le celle unite quando si lavora con tutti i formati di input, inclusa l'importazione del contenuto HTML.

## Come unire le celle della tabella

In Aspose.Words, le celle unite sono rappresentate dalle seguenti proprietà della classe [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) che descrive se la cella fa parte di un'unione orizzontale di celle
- [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) che descrive se la cella fa parte di un'unione verticale di celle

I valori di queste proprietà determinano il comportamento di unione delle celle:

- La prima cella di una sequenza di celle unite avrà [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- Qualsiasi cella successivamente unita avrà [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- Una cella che non è unita avrà [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

A volte, quando si caricano celle di documento esistenti in una tabella, appariranno unite. Tuttavia, può effettivamente essere una cella lunga-a volte Microsoft Word esporta celle unite in questo modo. Questo può essere fonte di confusione quando si tenta di lavorare con le singole cellule, ma non sembra esserci alcun modello particolare su quando ciò accade.

{{% /alert %}}

## Verifica se una cella viene unita

Per verificare se una cella fa parte di una sequenza di celle unite, controlliamo semplicemente le proprietà **HorizontalMerge** e **VerticalMerge**.

L'esempio di codice seguente mostra come stampare il tipo di unione di celle orizzontale e verticale:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## Unire le celle della tabella quando si utilizza DocumentBuilder

Per unire le celle in una tabella creata con [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), è necessario impostare il tipo di unione appropriato per ogni cella in cui è prevista l'unione, prima **CellMerge.First** e poi **CellMerge.Previous**.

Inoltre, è necessario ricordarsi di deselezionare l'impostazione di unione per quelle celle in cui non è richiesta alcuna unione: ciò può essere fatto impostando la prima cella non unione su **CellMerge.None**. Se ciò non viene fatto, tutte le celle della tabella verranno unite.

L'esempio di codice seguente mostra come creare una tabella con due righe in cui le celle della prima riga vengono unite orizzontalmente:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

L'esempio di codice seguente mostra come creare una tabella a due colonne in cui le celle della prima colonna vengono unite verticalmente:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## Unire le celle della tabella in altri casi

In altre situazioni in cui **DocumentBuilder** non viene utilizzato, ad esempio in una tabella esistente, l'unione delle celle nel modo precedente potrebbe non essere così semplice. Invece, possiamo avvolgere le operazioni di base coinvolte nell'applicazione delle proprietà di unione alle celle in un metodo che rende l'attività molto più semplice. Questo metodo è simile al metodo di automazione dell'unione, che viene chiamato per unire un intervallo di celle in una tabella.

Il codice seguente unirà le celle della tabella nell'intervallo specificato, iniziando dalla cella specificata e terminando alla cella finale. In questo caso, l'intervallo può estendersi su più righe o colonne:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

L'esempio di codice seguente mostra come unire un intervallo di celle tra due celle specificate:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## Celle unite verticali e orizzontali nella tabella HTML

Come abbiamo detto negli articoli precedenti, una tabella in Microsoft Word è un insieme di righe indipendenti. Ogni riga ha un insieme di celle indipendenti dalle celle di altre righe. Pertanto, nella tabella Microsoft Word non esiste un oggetto come una "colonna" e "1a colonna" è qualcosa come "l'insieme delle 1a celle di ogni riga nella tabella". Ciò consente agli utenti di avere una tabella in cui, ad esempio, la 1a riga è composta da due celle: 2 cm e 1 cm, e la 2a riga è composta da due celle diverse: 1 cm e 2 cm di larghezza. E Aspose.Words supporta questo concetto di tabelle.

Una tabella in HTML ha una struttura essenzialmente diversa: ogni riga ha lo stesso numero di celle e (è importante per l'attività) ogni cella ha la larghezza della colonna corrispondente, la stessa per tutte le celle in una colonna. Quindi, se **HorizontalMerge** e **VerticalMerge** restituiscono un valore errato, utilizzare il seguente esempio di codice:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## Convertire in celle unite orizzontalmente

A volte non è possibile rilevare quali celle vengono unite perché alcune versioni più recenti di Microsoft Word non utilizzano più i flag di unione quando le celle vengono unite orizzontalmente. Ma per le situazioni in cui le celle vengono unite in una cella orizzontalmente per la loro larghezza usando i flag di unione, Aspose.Words fornisce il metodo `ConvertToHorizontallyMergedCells` per convertire le celle. Questo metodo trasforma semplicemente la tabella e aggiunge nuove celle secondo necessità.

Il seguente esempio di codice mostra il metodo sopra in funzione:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
