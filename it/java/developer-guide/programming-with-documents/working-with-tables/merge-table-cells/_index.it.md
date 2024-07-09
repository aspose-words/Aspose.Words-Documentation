---
title: Unisci celle da tavolo in Java
second_title: Aspose.Words per Java
articleTitle: Unire le celle da tavolo
linktitle: Unire le celle da tavolo
description: "Come unire le celle da tavolo in Java. Controllare se le celle in una tabella sono unite utilizzando Java."
type: docs
weight: 40
url: /it/java/working-with-merged-cells/
---

A volte alcune righe in una tabella richiedono una voce o grandi blocchi di testo che assumono la larghezza completa della tabella. Per una corretta progettazione della tabella, l'utente può unire diverse celle da tavolo in una. Aspose.Words supporta le celle unite quando si lavora con tutti i formati di input, incluso l'importazione di contenuti HTML.

## Come Unire Celle da Tavolo

In Aspose.Words, le celle unite sono rappresentate dalle seguenti proprietà della [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) classe:

- No. [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) che descrive se la cella fa parte di una fusione orizzontale di celle
- No. [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) che descrive se la cella fa parte di una fusione verticale di celle

I valori di queste proprietà determinano il comportamento univoco delle cellule:

- No. La prima cella in una sequenza di celle unite avrà [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- No. Eventuali celle successivamente unite avranno [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- Una cella che non è fusa avrà [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

A volte, quando si caricano le celle di documento esistenti in una tabella, appariranno unite. Tuttavia, può effettivamente essere una cella lunga – a volte Microsoft Word Le esportazioni si sono unite in questo modo. Questo può essere confuso quando si tenta di lavorare con le singole cellule, ma non sembra esserci alcun modello particolare per quanto riguarda quando questo accade.

{{% /alert %}}

## Controllare se una cella è Merged

Per verificare se una cella fa parte di una sequenza di celle unite, controlliamo semplicemente il **HorizontalMerge** e **VerticalMerge** proprietà.

Il seguente esempio di codice mostra come stampare il tipo di fusione della cella orizzontale e verticale:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## Unire le celle della tabella quando si utilizza DocumentBuilder

Unire le celle in una tabella creata con [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), è necessario impostare il tipo di fusione appropriato per ogni cella in cui si prevede la fusione – prima **CellMerge.First** e poi **CellMerge.Previous**.

Inoltre, è necessario ricordare di cancellare l'impostazione di fusione per quelle celle in cui non è richiesta alcuna fusione – questo può essere fatto impostando la prima cella non-merge a **CellMerge.None**. Se questo non è fatto, tutte le celle nella tabella saranno unite.

Il seguente esempio di codice mostra come creare una tabella con due righe in cui le celle nella prima riga sono unite orizzontalmente:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

Il seguente esempio di codice mostra come creare una tabella a due colonne in cui le celle nella prima colonna sono unite verticalmente:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## Unisci celle da tavolo in altri casi

In altre situazioni in cui **DocumentBuilder** non viene utilizzato, come in una tabella esistente, le celle di fusione nel modo precedente non possono essere facili. Invece, possiamo avvolgere le operazioni di base coinvolte nell'applicazione delle proprietà di fusione alle celle in un metodo che rende il compito molto più facile. Questo metodo è simile al metodo di automazione di fusione, che è chiamato a unire una gamma di celle in una tabella.

Il codice qui sotto fonderà le celle della tabella nell'intervallo specificato, a partire dalla cella data e termina alla cella finale. In questo caso, l'intervallo può abbracciare più righe o colonne:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

Il seguente esempio di codice mostra come unire un intervallo di celle tra due celle specificate:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## Celle di fusione verticali e orizzontali nella tabella HTML

Come abbiamo detto negli articoli precedenti, una tabella in Microsoft Word è una serie di righe indipendenti. Ogni riga ha un insieme di celle che sono indipendenti dalle celle di altre righe. Così, nel Microsoft Word tabella non c'è un oggetto come un "colonna", e "1 ° colonna" è qualcosa come "il set delle 1 ° celle di ogni riga nella tabella". Questo consente agli utenti di avere una tabella in cui, ad esempio, la prima riga consiste di due celle – 2cm e 1cm, e la seconda riga consiste di due celle diverse – 1cm e 2cm di larghezza. E Aspose.Words supporta questo concetto di tavoli.

Una tabella in HTML ha una struttura essenzialmente diversa: ogni riga ha lo stesso numero di celle e (è importante per l'attività) ogni cella ha la larghezza della colonna corrispondente, la stessa per tutte le celle in una colonna. # **HorizontalMerge** e **VerticalMerge** restituire un valore errato, utilizzare il seguente esempio di codice:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## Convertire in orizzontale Celle di fusione

A volte non è possibile rilevare quali celle sono fuse perché alcune versioni più recenti di Microsoft Word non utilizzare più le bandiere di fusione quando le celle sono unite orizzontalmente. Ma per situazioni in cui le celle sono unite in una cella orizzontalmente dalla loro larghezza utilizzando bandiere di fusione, Aspose.Words fornisce `ConvertToHorizontallyMergedCells` metodo per convertire le celle. Questo metodo semplicemente trasforma la tabella e aggiunge nuove celle come necessario.

Il seguente esempio di codice mostra il metodo sopra in funzione:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
