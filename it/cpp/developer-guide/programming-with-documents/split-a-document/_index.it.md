---
title: Dividere un documento in C++
second_title: Aspose.Words per C++
articleTitle: Dividere un documento
linktitle: Dividere un documento
description: "Dividere un documento in più file utilizzando C++. Utilizzare la funzione dividi per dividere efficacemente un documento per intestazioni o sezioni, nonché per pagine o intervalli di pagine."
type: docs
weight: 90
url: /it/cpp/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* o *split a document* è il processo di rottura di un documento di grandi dimensioni in un numero maggiore di file più piccoli. Ci sono vari motivi per dividere un file. Ad esempio, sono necessarie solo alcune pagine di un documento specifico e non l'intero. O per motivi di privacy, si desidera condividere solo alcune parti di un documento con gli altri. Con la funzione di suddivisione, è possibile ottenere solo le parti richieste del documento e eseguire le azioni necessarie con esse, ad esempio, per contrassegnare, salvare o inviare.

Aspose.Words fornisce un modo efficiente per dividere un documento in più documenti per intestazioni o sezioni. È inoltre possibile dividere un documento per pagine o per intervalli di pagine. Entrambe le opzioni di suddivisione saranno descritte in questo articolo.

Per suddividere un documento in file più piccoli utilizzando Aspose.Words, è necessario attenersi alla seguente procedura:

1. Caricare il documento in qualsiasi formato supportato.
1. Dividi il documento.
1. Salvare i documenti di output.

Dopo aver diviso un documento, sarai in grado di aprire tutti i documenti di output che inizieranno con le pagine, il testo, ecc.

{{% alert color="primary" %}}

**Prova online**

Puoi provare questa funzionalità con il nostro [Splitter di documenti online gratuito](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Dividere un documento utilizzando criteri diversi {#split-a-document-using-different-criteria}

Aspose.Words consente di dividere i documenti EPUB o HTML in capitoli in base a vari criteri. Nel processo, lo stile e il layout del documento di origine vengono conservati per i documenti di output.

È possibile specificare i criteri utilizzando l'enumerazione [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/). In questo modo è possibile dividere un documento in capitoli utilizzando uno dei seguenti criteri o combinare più di un criterio insieme:

- intestazione paragrafo,
- interruzione sezione,
- interruzione colonna,
- interruzione di pagina.

Quando si salva l'output in HTML, Aspose.Words salvare ogni singolo capitolo come file HTML separato. Di conseguenza, il documento verrà suddiviso in più file HTML. Quando si salva l'output in EPUB, Aspose.Words salvare il risultato in un singolo file EPUB indipendentemente dal valore `DocumentSplitCriteria` utilizzato. Pertanto, l'utilizzo di DocumentSplitCriteria per i documenti EPUB influisce solo sull'aspetto del loro contenuto nelle applicazioni reader: il contenuto verrà diviso in capitoli e il documento non apparirà più continuo.

{{% alert color="primary" %}}

Non è possibile dividere un documento utilizzando la proprietà [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/) quando si salva in formato MHTML.

{{% /alert %}}

In questa sezione, consideriamo solo alcuni dei possibili criteri di divisione.

### Dividere un documento per sezioni {#split-a-document-by-sections}

Aspose.Words consente inoltre di utilizzare le interruzioni di sezione per dividere i documenti e salvarli in HTML. A tale scopo, utilizzare **SectionBreak** come **DocumentSplitCriteria**:

L'esempio di codice seguente mostra come dividere un documento in parti più piccole per interruzioni di sezione (senza utilizzare la proprietà `DocumentSplitCriteria`):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cpp" >}}

## Dividi per Pagine {#splitting-by-pages}

È inoltre possibile dividere una pagina del documento per pagina, per intervalli di pagine o iniziando con i numeri di pagina specificati. In tal caso il metodo [ExtractPages](https://reference.aspose.com/words/cpp/aspose.words/document/extractpages/) può eseguire il lavoro.

Questa sezione descrive diversi casi d'uso di dividere i documenti per paging utilizzando la classe [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) e il metodo **ExtractPages**.

{{% alert color="primary" %}}

Puoi usare qualsiasi [formato di output supportato da Aspose.Words](/words/cpp/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

A causa delle molte sfumature che appaiono riducendo il numero di pagine, una corrispondenza completa con il layout Microsoft Word è un compito piuttosto complicato. Pertanto, a seconda della complessità del documento, potrebbero esserci lievi differenze nel layout del documento risultante dal documento originale.

{{% /alert %}}

### Dividere una pagina del documento per pagina {#split-a-document-page-by-page}

Aspose.Words consente di suddividere un documento multipagina pagina per pagina.

L'esempio di codice seguente mostra come dividere un documento e salvare ogni pagina come documento separato:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.h" >}}

### Dividere un documento per intervalli di pagine {#split-a-document-by-page-ranges}

Aspose.Words consente di suddividere un documento multipagina per intervalli di pagine. È possibile dividere un file in più file con vari intervalli di pagine o semplicemente selezionare un intervallo e salvare solo questa parte del documento di origine. Si noti che è possibile scegliere l'intervallo di pagine in base al numero di pagina massimo e minimo di un documento.

L'esempio di codice seguente mostra come dividere un documento in parti più piccole per intervallo di pagine con indici di inizio e fine specifici:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.h" >}}

## Unire il documento diviso con un altro documento {#merge-the-split-document-with-another-file}

Aspose.Words consente di unire il documento diviso in output con un altro documento per formare un nuovo documento. Questo può essere chiamato unione di documenti.

L'esempio di codice seguente mostra come unire un documento diviso con un altro documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cpp" >}}
