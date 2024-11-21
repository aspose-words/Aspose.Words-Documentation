---
title: Lavorare con Liste in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con Liste
linktitle: Lavorare con Liste
description: "Introduzione alla funzione di formattazione numerazione in Aspose.Words per Java."
type: docs
weight: 200
url: /it/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Una lista in un Microsoft Word documento è un insieme di proprietà di formattazione elenco. Le liste possono essere utilizzate nei documenti per formattare, organizzare e sottolineare il testo. Le liste sono un ottimo modo per organizzare i dati nei documenti, e rendono più facile per i lettori capire punti chiave.

Ogni elenco può avere fino a 9 livelli e proprietà di formattazione, come lo stile del numero, il valore di inizio, l'indent, la posizione della scheda, e altri sono definiti separatamente per ogni livello.

Questo articolo descrive il funzionamento programmatico con le liste utilizzando Aspose.Words.

## Creazione di liste applicando la formattazione dell'elenco

Aspose.Words consente la facile creazione di liste applicando la formattazione dell'elenco. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) fornisce [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) proprietà che ritorna **ListFormat** oggetto. Questo oggetto ha diversi metodi per avviare e terminare un elenco e per aumentare / diminuire l'indent. Ci sono due tipi generali di elenchi in Microsoft Word: bollettino e numerato:

- Per aprire un elenco, chiama. [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Per avviare una lista numerata, chiama [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

Il proiettile o il numero e la formattazione sono aggiunti al paragrafo corrente e tutti gli altri paragrafi creati utilizzando **DocumentBuilder** fino a quando [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) è chiamato per fermare la formattazione elenco.

Nei documenti di Word, le liste possono consistere fino a nove livelli. La formattazione dell'elenco per ogni livello specifica ciò che il proiettile o il numero viene utilizzato, l'indent sinistro, lo spazio tra il proiettile e il testo ecc. I seguenti metodi cambiano il livello dell'elenco e applicano le proprietà di formattazione del nuovo livello:

- No. Per aumentare il livello di elenco del paragrafo corrente da un livello, chiama [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- No. Per diminuire il livello di elenco del paragrafo corrente da un livello, chiama [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

I metodi cambiano il livello dell'elenco e applicano le proprietà di formattazione del nuovo livello.

{{% alert color="primary" %}}

È anche possibile utilizzare [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) proprietà per ottenere o impostare il livello di elenco per il paragrafo. I livelli di elenco sono numerati da 0 a 8.

{{% /alert %}}

Il seguente esempio di codice mostra come costruire un elenco multilivello:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Specificare la formattazione per un livello di lista

Gli oggetti a livello di elenco vengono creati automaticamente quando viene creato un elenco. Utilizzare le proprietà e i metodi della [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) classe per controllare la formattazione dei singoli livelli di un elenco.

## Riavviare l'elenco per ogni sezione

È possibile riavviare un elenco per ogni sezione utilizzando [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) proprieta'. Si noti che questa opzione è supportata solo in formati di documento RTF, DOC e DOCX. Questa opzione sarà scritta a DOCX solo se OoxmlCompliance è più alta allora Ecma376.

Il seguente esempio di codice mostra come creare un elenco e riavviarlo per ogni sezione:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

