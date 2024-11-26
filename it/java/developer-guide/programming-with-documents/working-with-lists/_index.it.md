---
title: Lavorare con gli elenchi in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con le liste
linktitle: Lavorare con le liste
description: "Introduzione alla funzione di formattazione della numerazione in Aspose.Words per Java."
type: docs
weight: 200
url: /it/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Un elenco in un documento Microsoft Word è un insieme di proprietà di formattazione dell'elenco. Gli elenchi possono essere utilizzati nei documenti per formattare, organizzare e enfatizzare il testo. Gli elenchi sono un ottimo modo per organizzare i dati nei documenti e rendono più facile per i lettori comprendere i punti chiave.

Ogni elenco può avere fino a 9 livelli e le proprietà di formattazione, come lo stile numerico, il valore iniziale, il rientro, la posizione delle tabulazioni e altre, sono definite separatamente per ogni livello.

In questo articolo viene descritto il funzionamento programmatico con gli elenchi utilizzando Aspose.Words.

## Creazione di elenchi applicando la formattazione dell'elenco

Aspose.Words consente di creare facilmente liste applicando la formattazione delle liste. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) fornisce la proprietà [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) che restituisce un oggetto **ListFormat**. Questo oggetto ha diversi metodi per iniziare e terminare un elenco e per aumentare/diminuire il rientro. Esistono due tipi generali di elenchi in Microsoft Word: puntato e numerato:

- Per avviare un elenco puntato, chiamare [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Per avviare un elenco numerato, chiamare [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

Il punto elenco o il numero e la formattazione vengono aggiunti al paragrafo corrente e a tutti gli altri paragrafi creati utilizzando **DocumentBuilder** finché [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) non viene chiamato per interrompere la formattazione dell'elenco puntato.

Nei documenti Word, gli elenchi possono essere composti da un massimo di nove livelli. La formattazione dell'elenco per ogni livello specifica quale punto elenco o numero viene utilizzato, il rientro a sinistra, lo spazio tra il punto elenco e il testo, ecc. I metodi seguenti modificano il livello di elenco e applicano le proprietà di formattazione del nuovo livello:

- Per aumentare il livello di elenco del paragrafo corrente di un livello, chiamare [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- Per ridurre il livello di elenco del paragrafo corrente di un livello, chiamare [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

I metodi modificano il livello dell'elenco e applicano le proprietà di formattazione del nuovo livello.

{{% alert color="primary" %}}

È inoltre possibile utilizzare la proprietà [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) per ottenere o impostare il livello di elenco per il paragrafo. I livelli della lista sono numerati da 0 a 8.

{{% /alert %}}

Il seguente esempio di codice mostra come creare un elenco multilivello:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Specificare la formattazione per un livello di elenco

Gli oggetti a livello di elenco vengono creati automaticamente quando viene creato un elenco. Utilizzare le proprietà e i metodi della classe [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) per controllare la formattazione dei singoli livelli di un elenco.

## Restart List per ogni sezione

È possibile riavviare un elenco per ogni sezione utilizzando la proprietà [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection). Si noti che questa opzione è supportata solo nei formati di documento RTF, DOC e DOCX. Questa opzione verrà scritta su DOCX solo se OoxmlCompliance è superiore a Ecma376.

Il seguente esempio di codice mostra come creare un elenco e riavviarlo per ogni sezione:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

