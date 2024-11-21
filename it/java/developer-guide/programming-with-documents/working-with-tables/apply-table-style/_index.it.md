---
title: Lavorare con gli stili della tabella in Java
second_title: Aspose.Words per Java
articleTitle: Applicare lo stile della tabella
linktitle: Applicare lo stile della tabella
description: "Formattazione della tabella avanzata Java. Creare uno stile di tavolo utilizzando Java. Introduzione alla formattazione della tabella avanzata, stili della tabella utilizzando Java."
type: docs
weight: 80
url: /it/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Uno stile di tabella definisce un insieme di formattazione che può essere facilmente applicato a una tabella. La formattazione come bordi, ombreggiatura, allineamento e carattere può essere impostata in uno stile di tabella e applicata a molte tabelle per un aspetto coerente.

Aspose.Words supporta l'applicazione di uno stile tavolo a un tavolo e anche le proprietà di lettura di qualsiasi stile tavolo. Gli stili di tabella sono conservati durante il caricamento e il salvataggio nei seguenti modi:

- Gli stili di tabella in formati DOCX e WordML sono conservati durante il caricamento e il salvataggio in questi formati
- Gli stili di tabella sono conservati durante il caricamento e il salvataggio in formato DOC (ma non in qualsiasi altro formato)
- No. Quando si esporta in altri formati, rendering o stampa, gli stili di tabella vengono espansi per la formattazione diretta nella tabella, quindi tutta la formattazione viene conservata

## Crea uno stile da tavolo

L'utente può creare un nuovo stile e aggiungerlo alla collezione di stile. The [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) metodo viene utilizzato per creare un nuovo stile di tavolo.

Il seguente esempio di codice mostra come creare un nuovo stile di tabella definito dall'utente:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Copiare uno stile tabella esistente

Se necessario, è possibile copiare uno stile di tavolo che esiste già in un determinato documento nella vostra collezione di stile utilizzando il `AddCopy` metodo.

È importante sapere che con questa copia, gli stili collegati sono anche copiati.

Il seguente esempio di codice mostra come importare uno stile da un documento ad un altro documento:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## Applicare uno stile tabella esistente

Aspose.Words fornisce un [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) ereditato dal [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) classe. **TableStyle** facilita l'utente di applicare diverse opzioni di stile come ombreggiatura, imbottitura, indentazione, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) e [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), ecc.

Inoltre, Aspose.Words fornisce [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) classe e alcune proprietà della `Table` classe per specificare quale stile di tabella lavoreremo con: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), e [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words fornisce anche [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) classe che rappresenta la formattazione speciale applicata ad una certa area di un tavolo con uno stile tabella assegnato, e la [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) che rappresenta una collezione di **ConditionalStyle** oggetti. Questa raccolta contiene un insieme permanente di elementi che rappresentano un elemento per ogni valore del [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) tipo di enumerazione. The **ConditionalStyleType** enumeration definisce tutte le aree di tabella possibili a cui la formattazione condizionale può essere definita in uno stile di tabella.

In questo caso, la formattazione condizionale può essere definita per tutta l'area di tabella possibile definita sotto il tipo di enumerazione di ConditionalStyleType.

Il seguente esempio di codice mostra come definire la formattazione condizionale per la riga dell'intestazione della tabella:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

È inoltre possibile scegliere quali parti della tabella per applicare gli stili, come la prima colonna, l'ultima colonna, le righe bandite. Essi sono elencati nella [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) enumerazione e sono applicati attraverso [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) proprieta'. The **TableStyleOptions** l'enumerazione permette una combinazione bitwise di queste caratteristiche.

Il seguente esempio di codice mostra come creare una nuova tabella con uno stile di tabella applicato:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

Le immagini qui sotto mostrano una rappresentazione del **Table Styles** in Microsoft Word e le loro proprietà corrispondenti in Aspose.Words.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## Prendere la formattazione dallo stile della tabella e applicarlo come formattazione diretta

Aspose.Words fornisce anche [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) metodo per prendere la formattazione trovata su uno stile di tabella e lo espande sulle righe e le celle della tabella come formattazione diretta. Prova a combinare la formattazione con lo stile della tabella e lo stile della cella.

{{% alert color="primary" %}}

Questo metodo non supererà qualsiasi altra formattazione già applicata alla tabella attraverso un formato di riga o di cella.

{{% /alert %}}

Il seguente esempio di codice mostra come espandere la formattazione dagli stili sulle righe di tabella e le celle come formattazione diretta:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}
