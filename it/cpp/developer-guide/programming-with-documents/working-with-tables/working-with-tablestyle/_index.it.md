---
title: Modificare lo stile della tabella nei documenti di Word
second_title: Aspose.Words per C++
articleTitle: Applica stile tabella
linktitle: Applica stile tabella
description: "Formattazione avanzata della tabella C++. Creare uno stile di tabella utilizzando C++. Applicare lo stile di tabella C++."
type: docs
weight: 80
url: /it/cpp/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Uno stile di tabella definisce un insieme di formattazione che può essere facilmente applicato a una tabella. La formattazione come bordi, ombreggiatura, allineamento e font può essere impostata in uno stile di tabella e applicata a molte tabelle per un aspetto coerente.

Aspose.Words supporta l'applicazione di uno stile di tabella a una tabella e anche la lettura delle proprietà di qualsiasi stile di tabella. Gli stili di tabella vengono conservati durante il caricamento e il salvataggio nei seguenti modi:

- Gli stili di tabella nei formati DOCX e WordML vengono conservati durante il caricamento e il salvataggio in questi formati
- Gli stili di tabella vengono mantenuti durante il caricamento e il salvataggio in formato DOC (ma non in qualsiasi altro formato)
- Durante l'esportazione in altri formati, il rendering o la stampa, gli stili di tabella vengono espansi per la formattazione diretta nella tabella, in modo che tutta la formattazione venga mantenuta

## Creare uno stile di tabella

L'utente può creare un nuovo stile e aggiungerlo alla collezione di stili. Il metodo [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) viene utilizzato per creare un nuovo stile di tabella.

L'esempio di codice seguente mostra come creare un nuovo stile di tabella definito dall'utente:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## Copia uno stile di tabella esistente

Se necessario, è possibile copiare uno stile di tabella già esistente in un determinato documento nella raccolta di stili utilizzando il metodo `AddCopy`.

È importante sapere che con questa copia vengono copiati anche gli stili collegati.

L'esempio di codice seguente mostra come importare uno stile da un documento a un altro documento:

ESEMPIO

## Applicare uno stile di tabella esistente

Aspose.Words fornisce un [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/) ereditato dalla classe [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). **TableStyle** consente all'utente di applicare diverse opzioni di stile come ombreggiatura, riempimento, indentazione, [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) e [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/), ecc.

Inoltre, Aspose.Words fornisce la classe [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) e alcune proprietà della classe `Table` per specificare con quale stile di tabella lavoreremo: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), e [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words fornisce anche la classe [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/) che rappresenta una formattazione speciale applicata ad alcune aree di una tabella con uno stile di tabella assegnato e il [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/) che rappresenta una raccolta di oggetti **ConditionalStyle**. Questa raccolta contiene un set permanente di elementi che rappresentano un elemento per ogni valore del tipo di enumerazione [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/). L'enumerazione **ConditionalStyleType** definisce tutte le possibili aree di tabella a cui è possibile definire la formattazione condizionale in uno stile di tabella.

In questo caso, la formattazione condizionale può essere definita per tutte le possibili aree della tabella definite nel tipo di enumerazione ConditionalStyleType.

L'esempio di codice seguente mostra come definire la formattazione condizionale per la riga di intestazione della tabella:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

Puoi anche scegliere a quali parti della tabella applicare gli stili, ad esempio prima colonna, ultima colonna, righe a bande. Sono elencati nell'enumerazione [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) e vengono applicati tramite la proprietà [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/). L'enumerazione **TableStyleOptions** consente una combinazione bit per bit di queste caratteristiche.

L'esempio di codice seguente mostra come creare una nuova tabella con uno stile di tabella applicato:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

Le immagini sottostanti mostrano una rappresentazione di **Table Styles** in Microsoft Word e delle loro proprietà corrispondenti in Aspose.Words.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## Prendi la formattazione dallo stile della tabella e applicala come formattazione diretta

Aspose.Words fornisce anche il metodo [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/) per prendere la formattazione trovata su uno stile di tabella e la espande nelle righe e nelle celle della tabella come formattazione diretta. Prova a combinare la formattazione con lo stile della tabella e lo stile della cella.

{{% alert color="primary" %}}

Questo metodo non sovrascriverà qualsiasi altra formattazione già applicata alla tabella tramite un formato di riga o cella.

{{% /alert %}}

L'esempio di codice seguente mostra come espandere la formattazione dagli stili alle righe e alle celle della tabella come formattazione diretta:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}
