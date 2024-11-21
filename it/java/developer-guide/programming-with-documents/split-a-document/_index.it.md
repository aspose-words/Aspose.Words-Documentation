---
title: Dividere un documento in Java
second_title: Aspose.Words per Java
articleTitle: Dividere un documento
linktitle: Dividere un documento
description: "Aspose.Words per Java fornisce un modo efficiente per dividere un documento in più documenti in rubriche o sezioni, così come le pagine o gli intervalli di pagina."
type: docs
weight: 90
url: /it/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* o *split un documento* è il processo di rottura di un grande documento in un maggior numero di file più piccoli. Ci sono vari motivi per dividere un file. Per esempio, è necessario solo alcune pagine da un documento specifico e non l'intero. O per motivi di privacy, si desidera condividere solo alcune parti di un documento con gli altri. Con la funzione di divisione, è possibile ottenere solo le parti richieste del documento e fare le azioni necessarie con loro, per esempio, per segnare, salvare, o inviare.

Aspose.Words fornisce un modo efficiente per dividere un documento in più documenti in rubriche o sezioni. Puoi anche dividere un documento per pagine o per intervalli di pagina. Entrambe le opzioni di divisione saranno descritte in questo articolo.

Per dividere un documento in file più piccoli utilizzando Aspose.Words, è necessario seguire questi passaggi:

1. Caricare il documento in qualsiasi formato supportato.
1. Dividi il documento.
1. Salvare i documenti di uscita.

Dopo aver diviso un documento, sarete in grado di aprire tutti i documenti di output che inizieranno con le pagine richieste, il testo, ecc.

{{% alert color="primary" %}}

**Prova online**

Puoi provare questa funzionalità con la nostra [Splitter documento online gratuito](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Dividere un documento utilizzando diversi criteri {#split-a-document-using-different-criteria}

Aspose.Words consente di dividere i documenti EPUB o HTML in capitoli secondo vari criteri. Nel processo, lo stile e il layout del documento sorgente sono conservati per i documenti di uscita.

È possibile specificare i criteri utilizzando il [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) enumerazione. Così è possibile dividere un documento in capitoli utilizzando uno dei seguenti criteri o combinare più di un criterio insieme:

- capoverso,
- pausa sezione,
- rottura colonna,
- pausa pagina.

Quando si salva l'output in HTML, Aspose.Words salvare ogni singolo capitolo come file HTML separato. Di conseguenza, il documento sarà diviso in più file HTML. Quando si salva l'output in EPUB, Aspose.Words salvare il risultato in un unico file EPUB indipendentemente dal `DocumentSplitCriteria` valore usato. Quindi, utilizzando DocumentSplitCriteria per documenti EPUB colpisce solo l'aspetto del loro contenuto nelle applicazioni di lettura: il contenuto sarà diviso in capitoli e il documento non apparirà più continuo.

{{% alert color="primary" %}}

Non puoi dividere un documento usando [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) proprietà durante il salvataggio in formato MHTML.

{{% /alert %}}

In questa sezione, consideriamo solo alcuni dei possibili criteri di divisione.

### Dividere un documento per le donne {#split-a-document-by-headings}

Per dividere un documento in capitoli per voce, utilizzare **HeadingParagraph** valore del **DocumentSplitCriteria** proprieta'.

Se è necessario dividere un documento con un livello specifico di paragrafi delle voci, quali le voci 1, 2 e 3, utilizzare anche il [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel) proprieta'. L'output sarà diviso per i paragrafi formattati con il livello di intestazione specificato.

Il seguente esempio di codice mostra come dividere un documento in parti più piccole per voce:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Si prega di notare che per questo criterio, Aspose.Words supporta solo il salvataggio in formato HTML quando si divide.

Quando si salva in EPUB, il documento non è diviso in diversi file, e ci sarà solo un file di output.

### Dividere un documento per sezioni {#split-a-document-by-sections}

Aspose.Words consente inoltre di utilizzare interruzioni di sezione per dividere i documenti e salvarli in HTML. Con questo scopo, utilizzare **SectionBreak** come **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

C'è un altro modo per dividere il documento sorgente in più documenti di output, e è possibile scegliere qualsiasi formato di output supportato da Aspose.Words.

Il seguente esempio di codice mostra come dividere un documento in parti più piccole per interruzioni di sezione (senza utilizzare il `DocumentSplitCriteria` proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Spalato da Pagine {#splitting-by-pages}

È inoltre possibile dividere una pagina di documento per pagina, per intervalli di pagina, o iniziare con i numeri di pagina specificati. In tal caso, [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) metodo può fare il lavoro.

Questa sezione descrive diversi casi di utilizzo della suddivisione dei documenti per pagina utilizzando [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) classe e **ExtractPages** metodo.

{{% alert color="primary" %}}

È possibile utilizzare qualsiasi [Formati di documento supportati](/words/it/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

A causa delle molte sfumature che appaiono riducendo il numero di pagine, una corrispondenza completa con il Microsoft Word il layout è un compito piuttosto complicato. Pertanto, a seconda della complessità del documento, potrebbero esserci lievi differenze nel layout del documento risultante dal documento originale.

{{% /alert %}}

### Split a Document Page by Page {#split-a-document-page-by-page}

Aspose.Words consente di dividere una pagina di documento di più pagine per pagina.

Il seguente esempio di codice mostra come dividere un documento e salvare ogni pagina come documento separato:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Dividere un documento da Gamma di pagina {#split-a-document-by-page-ranges}

Aspose.Words consente di dividere un documento multi-pagina per intervalli di pagina. È possibile dividere un file in più file con vari intervalli di pagina o semplicemente selezionare un intervallo e salvare solo questa parte del documento di origine. Si noti che è possibile scegliere l'intervallo di pagina in base al numero di pagina massimo e minimo di un documento.

Il seguente esempio di codice mostra come dividere un documento in parti più piccole per gamma di pagine con indici di inizio e fine specifici:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Opzione di Callback per salvare un documento {#callback-option-for-saving-a-document}

È possibile utilizzare [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) proprietà per controllare come Aspose.Words salva parti di documento quando questo documento viene esportato in formato HTML. Questa proprietà consente di rinominare i file di output o anche di reindirizzarli in flussi personalizzati.

Si prega di notare che questo callback non è utile quando si salva EPUB perché tutte le parti di uscita devono essere salvate in un unico contenitore – il file .epub. Quindi, la reindirizzazione del flusso non è supportata, e l'effetto del rinominazione non è visibile dal momento che i file vengono rinominati all'interno del contenitore.

## Unisci il documento di Spalato con un altro documento {#merge-the-split-document-with-another-file}

Aspose.Words consente di unire il documento di output split con un altro documento per formare un nuovo documento. Questo può essere chiamato fusione di documenti.

Il seguente esempio di codice mostra come unire un documento diviso con un altro documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
