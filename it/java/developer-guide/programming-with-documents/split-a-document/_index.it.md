---
title: Dividere un documento in Java
second_title: Aspose.Words per Java
articleTitle: Dividere un documento
linktitle: Dividere un documento
description: "Aspose.Words per Java fornisce un modo efficiente per dividere un documento in più documenti per intestazioni o sezioni, nonché pagine o intervalli di pagine."
type: docs
weight: 90
url: /it/java/split-a-document/
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

È possibile specificare i criteri utilizzando l'enumerazione [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/). In questo modo è possibile dividere un documento in capitoli utilizzando uno dei seguenti criteri o combinare più di un criterio insieme:

- intestazione paragrafo,
- interruzione sezione,
- interruzione colonna,
- interruzione di pagina.

Quando si salva l'output su HTML, Aspose.Words salva ogni singolo capitolo come file HTML separato. Di conseguenza, il documento verrà suddiviso in più file HTML. Quando si salva l'output su EPUB, Aspose.Words salva il risultato in un singolo file EPUB indipendentemente dal valore `DocumentSplitCriteria` utilizzato. Pertanto, l'utilizzo di DocumentSplitCriteria per i documenti EPUB influisce solo sull'aspetto del loro contenuto nelle applicazioni reader: il contenuto sarà diviso in capitoli e il documento non apparirà più continuo.

{{% alert color="primary" %}}

Non è possibile dividere un documento utilizzando la proprietà [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) quando si salva nel formato MHTML.

{{% /alert %}}

In questa sezione, consideriamo solo alcuni dei possibili criteri di divisione.

### Dividere un documento per intestazioni {#split-a-document-by-headings}

Per dividere un documento in capitoli per intestazioni, utilizzare il valore **HeadingParagraph** della proprietà **DocumentSplitCriteria**.

Se è necessario dividere un documento per un livello specifico di paragrafi di intestazione, ad esempio intestazioni 1, 2 e 3, utilizzare anche la proprietà [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel). L'output sarà diviso per paragrafi formattati con il livello di intestazione specificato.

Il seguente esempio di codice mostra come dividere un documento in parti più piccole per intestazione:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Si noti che per questo criterio, Aspose.Words supporta solo il salvataggio in formato HTML durante la divisione.

Quando si salva su EPUB, il documento non viene diviso in più file e ci sarà solo un file di output.

### Dividere un documento per sezioni {#split-a-document-by-sections}

Aspose.Words consente inoltre di utilizzare le interruzioni di sezione per dividere i documenti e salvarli in HTML. A tale scopo, utilizzare **SectionBreak** come **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

C'è un altro modo per dividere il documento di origine in più documenti di output e puoi scegliere qualsiasi formato di output supportato da Aspose.Words.

L'esempio di codice seguente mostra come dividere un documento in parti più piccole per interruzioni di sezione (senza utilizzare la proprietà `DocumentSplitCriteria`):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Dividi per Pagine {#splitting-by-pages}

È inoltre possibile dividere una pagina del documento per pagina, per intervalli di pagine o iniziando con i numeri di pagina specificati. In tal caso il metodo [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) può eseguire il lavoro.

Questa sezione descrive diversi casi d'uso di dividere i documenti per paging utilizzando la classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) e il metodo **ExtractPages**.

{{% alert color="primary" %}}

Puoi usare qualsiasi [formato di output supportato da Aspose.Words](/words/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

A causa delle molte sfumature che appaiono riducendo il numero di pagine, una corrispondenza completa con il layout Microsoft Word è un compito piuttosto complicato. Pertanto, a seconda della complessità del documento, potrebbero esserci lievi differenze nel layout del documento risultante dal documento originale.

{{% /alert %}}

### Dividere una pagina del documento per pagina {#split-a-document-page-by-page}

Aspose.Words consente di suddividere un documento multipagina pagina per pagina.

L'esempio di codice seguente mostra come dividere un documento e salvare ogni pagina come documento separato:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Dividere un documento per intervalli di pagine {#split-a-document-by-page-ranges}

Aspose.Words consente di suddividere un documento multipagina per intervalli di pagine. È possibile dividere un file in più file con vari intervalli di pagine o semplicemente selezionare un intervallo e salvare solo questa parte del documento di origine. Si noti che è possibile scegliere l'intervallo di pagine in base al numero di pagina massimo e minimo di un documento.

L'esempio di codice seguente mostra come dividere un documento in parti più piccole per intervallo di pagine con indici di inizio e fine specifici:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Opzione di callback per salvare un documento {#callback-option-for-saving-a-document}

È possibile utilizzare la proprietà [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) per controllare come Aspose.Words salva le parti del documento quando questo documento viene esportato nel formato HTML. Questa proprietà consente di rinominare i file di output o anche di reindirizzarli in flussi personalizzati.

Si noti che questa richiamata non è utile quando si salva su EPUB perché tutte le parti di output devono essere salvate in un singolo contenitore – il .file epub. Pertanto, il reindirizzamento del flusso non è supportato e l'effetto della ridenominazione non è visibile poiché i file vengono rinominati all'interno del contenitore.

## Unire il documento diviso con un altro documento {#merge-the-split-document-with-another-file}

Aspose.Words consente di unire il documento diviso in output con un altro documento per formare un nuovo documento. Questo può essere chiamato unione di documenti.

L'esempio di codice seguente mostra come unire un documento diviso con un altro documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
