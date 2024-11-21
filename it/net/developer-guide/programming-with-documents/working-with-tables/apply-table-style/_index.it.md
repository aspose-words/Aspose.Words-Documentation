---
title: Cambia lo stile della tabella nei documenti di Word
second_title: Aspose.Words per .NET
articleTitle: Applica stile tabella
linktitle: Applica stile tabella
description: "Formattazione avanzata delle tabelle C#. Crea uno stile di tabella utilizzando C#. Applicare lo stile tabella C#."
type: docs
weight: 80
url: /it/net/working-with-tablestyle/
timestamp: 2024-02-02-12-07-36
---

Uno stile di tabella definisce un insieme di formattazione che può essere facilmente applicato a una tabella. La formattazione come i bordi, l'ombreggiatura, l'allineamento e il carattere possono essere impostati in uno stile di tabella e applicati a molte tabelle per un aspetto coerente.

Aspose.Words supporta l'applicazione di uno stile di tabella a una tabella e anche la lettura delle proprietà di qualsiasi stile di tabella. Gli stili di tabella vengono conservati durante il caricamento e il salvataggio nei seguenti modi:

- Gli stili di tabella nei formati DOCX e WordML vengono conservati durante il caricamento e il salvataggio in questi formati
- Gli stili della tabella vengono conservati durante il caricamento e il salvataggio in formato DOC (ma non in qualsiasi altro formato)
- Durante l'esportazione in altri formati, il rendering o la stampa, gli stili di tabella vengono espansi per dirigere la formattazione nella tabella, quindi tutta la formattazione viene preservata

## Crea uno stile di tabella

L'utente può creare un nuovo stile e aggiungerlo alla raccolta di stili. Il metodo [Add](https://reference.aspose.com/words/it/net/aspose.words/stylecollection/add/) viene utilizzato per creare un nuovo stile di tabella.

Il seguente esempio di codice mostra come creare un nuovo stile di tabella definito dall'utente:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "create-table-style.cs" >}}

## Copia uno stile di tabella esistente

Se necessario, puoi copiare uno stile di tabella già esistente in un determinato documento nella tua raccolta di stili utilizzando il metodo `AddCopy`.

È importante sapere che con questa copia vengono copiati anche gli stili collegati.

Il seguente esempio di codice mostra come importare uno stile da un documento a un altro documento:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "copy-style-different-document.cs" >}}

## Applicare uno stile di tabella esistente

Aspose.Words fornisce un [TableStyle](https://reference.aspose.com/words/it/net/aspose.words/tablestyle/) ereditato dalla classe [Style](https://reference.aspose.com/words/it/net/aspose.words/style/). **TableStyle** facilita all'utente l'applicazione di diverse opzioni di stile come ombreggiatura, riempimento, rientro, [CellSpacing](https://reference.aspose.com/words/it/net/aspose.words/tablestyle/cellspacing/) e [Font](https://reference.aspose.com/words/it/net/aspose.words/style/font/), ecc.

Inoltre, Aspose.Words fornisce la classe [StyleCollection](https://reference.aspose.com/words/it/net/aspose.words/stylecollection/) e alcune proprietà della classe `Table` per specificare con quale stile di tabella lavoreremo: [Style](https://reference.aspose.com/words/it/net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/it/net/aspose.words.tables/table/styleidentifier/), [StyleName](https://reference.aspose.com/words/it/net/aspose.words.tables/table/stylename/) e [StyleOptions](https://reference.aspose.com/words/it/net/aspose.words.tables/table/styleoptions/).

Aspose.Words fornisce anche la classe [ConditionalStyle](https://reference.aspose.com/words/it/net/aspose.words/conditionalstyle/) che rappresenta la formattazione speciale applicata ad alcune aree di una tabella con uno stile di tabella assegnato e l'[ConditionalStyleCollection](https://reference.aspose.com/words/it/net/aspose.words/conditionalstylecollection/) che rappresenta una raccolta di oggetti **ConditionalStyle**. Questa raccolta contiene un set permanente di elementi che rappresentano un elemento per ogni valore del tipo di enumerazione [ConditionalStyleType](https://reference.aspose.com/words/it/net/aspose.words/conditionalstyletype/). L'enumerazione **ConditionalStyleType** definisce tutte le possibili aree della tabella in cui è possibile definire la formattazione condizionale in uno stile di tabella.

In questo caso, è possibile definire la formattazione condizionale per tutte le possibili aree della tabella definite nel tipo di enumerazione ConditionalStyleType.

L'esempio di codice seguente mostra come definire la formattazione condizionale per la riga di intestazione della tabella:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "define-conditional-formatting.cs" >}}

Puoi anche scegliere a quali parti della tabella applicare gli stili, ad esempio prima colonna, ultima colonna, righe raggruppate. Sono elencati nell'enumerazione [TableStyleOptions](https://reference.aspose.com/words/it/net/aspose.words.tables/tablestyleoptions/) e vengono applicati tramite la proprietà [StyleOptions](https://reference.aspose.com/words/it/net/aspose.words.tables/table/styleoptions/). L'enumerazione **TableStyleOptions** consente una combinazione bit per bit di queste funzionalità.

L'esempio di codice seguente mostra come creare una nuova tabella con uno stile di tabella applicato:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "build-table-with-style.cs" >}}

Le immagini seguenti mostrano una rappresentazione del **Table Styles** in Microsoft Word e le loro proprietà corrispondenti in Aspose.Words.

![formatting-table-style-aspose-words-net](/words/net/working-with-tablestyle/applying-formatting-10.png)

## Prendi la formattazione dallo stile tabella e applicala come formattazione diretta

Aspose.Words fornisce anche il metodo [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/it/net/aspose.words/document/expandtablestylestodirectformatting/) per prendere la formattazione trovata su uno stile di tabella e espanderla sulle righe e sulle celle della tabella come formattazione diretta. Prova a combinare la formattazione con lo stile tabella e lo stile cella.

{{% alert color="primary" %}}

Questo metodo non sovrascriverà eventuali altre formattazioni già applicate alla tabella tramite un formato di riga o di cella.

{{% /alert %}}

L'esempio di codice seguente mostra come espandere la formattazione dagli stili alle righe e alle celle della tabella come formattazione diretta:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "expand-formatting-on-cells-and-row-from-style.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}
