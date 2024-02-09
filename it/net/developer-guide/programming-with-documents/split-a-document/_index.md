---
title: Dividi un documento in C#
second_title: Aspose.Words per .NET
articleTitle: Dividere un documento
linktitle: Dividere un documento
description: "Dividere un documento in più file utilizzando C#. Utilizza la funzione di divisione per dividere in modo efficace un documento per intestazioni o sezioni, nonché per pagine o intervalli di pagine."
type: docs
weight: 90
url: /it/net/split-a-document/
---

*Splitting* o *dividere un documento* è il processo di suddivisione di un documento di grandi dimensioni in un numero maggiore di file più piccoli. Esistono vari motivi per dividere un file. Ad esempio, hai bisogno solo di alcune pagine di un documento specifico e non dell'intero. Oppure, per motivi di privacy, vuoi condividere con altri solo alcune parti di un documento. Con la funzione di divisione, puoi ottenere solo le parti richieste del documento ed eseguire con esse le azioni necessarie, ad esempio annotare, salvare o inviare.

Aspose.Words ti offre un modo efficiente per dividere un documento in più documenti per intestazioni o sezioni. Puoi anche dividere un documento per pagine o per intervalli di pagine. Entrambe le opzioni di divisione saranno descritte in questo articolo.

Per dividere un documento in file più piccoli utilizzando Aspose.Words, è necessario seguire questi passaggi:

1. Caricare il documento in qualsiasi formato supportato.
1. Dividere il documento.
1. Salvare i documenti di output.

Dopo aver diviso un documento, sarai in grado di aprire tutti i documenti di output che inizieranno con le pagine, il testo, ecc. richiesti.

{{% alert color="primary" %}}

**Prova on-line**

Puoi provare questa funzionalità con il nostro [Divisore di documenti online gratuito](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Dividi un documento utilizzando diversi criteri {#split-a-document-using-different-criteria}

Aspose.Words ti consente di dividere documenti EPUB o HTML in capitoli secondo vari criteri. Durante il processo, lo stile e il layout del documento di origine vengono conservati per i documenti di output.

È possibile specificare i criteri utilizzando l'enumerazione [DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/documentsplitcriteria/). Quindi puoi dividere un documento in capitoli utilizzando uno dei seguenti criteri o combinare più di un criterio insieme:

- paragrafo dell'intestazione,
- interruzione di sezione,
- interruzione di colonna,
- interruzione di pagina.

Quando si salva l'output in HTML, Aspose.Words salva ogni singolo capitolo come file HTML separato. Di conseguenza, il documento verrà suddiviso in più file HTML. Quando si salva l'output su EPUB, Aspose.Words salva il risultato in un singolo file EPUB indipendentemente dal valore `DocumentSplitCriteria` utilizzato. Pertanto, l'utilizzo di DocumentSplitCriteria per i documenti EPUB influisce solo sull'aspetto del loro contenuto nelle applicazioni di lettura: il contenuto sarà diviso in capitoli e il documento non apparirà più continuo.

{{% alert color="primary" %}}

Non è possibile dividere un documento utilizzando la proprietà [DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitcriteria/) durante il salvataggio in formato MHTML.

{{% /alert %}}

In questa sezione consideriamo solo alcuni dei possibili criteri di suddivisione.

### Dividere un documento per intestazioni {#split-a-document-by-headings}

Per dividere un documento in capitoli in base alle intestazioni, utilizzare il valore **HeadingParagraph** della proprietà **DocumentSplitCriteria**.

Se è necessario dividere un documento in base a un livello specifico di paragrafi di intestazione, come i titoli 1, 2 e 3, utilizzare anche la proprietà [DocumentSplitHeadingLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitheadinglevel/). L'output verrà diviso per paragrafi formattati con il livello di intestazione specificato.

L'esempio di codice seguente mostra come dividere un documento in parti più piccole in base all'intestazione:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentByHeadingsHtml.cs" >}}

Tieni presente che per questo criterio Aspose.Words supporta solo il salvataggio in formato HTML durante la divisione.

Quando si salva in EPUB, il documento non viene suddiviso in più file e ci sarà un solo file di output.

### Dividere un documento per sezioni {#split-a-document-by-sections}

Aspose.Words consente inoltre di utilizzare le interruzioni di sezione per dividere i documenti e salvarli in HTML. A questo scopo, utilizzare **SectionBreak** come **DocumentSplitCriteria**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentBySectionsHtml.cs" >}}

Esiste un altro modo per dividere il documento di origine in più documenti di output e puoi scegliere qualsiasi formato di output supportato da Aspose.Words.

Il seguente esempio di codice mostra come dividere un documento in parti più piccole mediante interruzioni di sezione (senza utilizzare la proprietà `DocumentSplitCriteria`):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cs" >}}

## Diviso per pagine {#splitting-by-pages}

Puoi anche dividere un documento pagina per pagina, per intervalli di pagine o iniziando con i numeri di pagina specificati. In tal caso il metodo [ExtractPages](https://reference.aspose.com/words/net/aspose.words/document/extractpages/) può fare il lavoro.

Questa sezione descrive diversi casi d'uso di divisione dei documenti per impaginazione utilizzando la classe [Document](https://reference.aspose.com/words/net/aspose.words/document/) e il metodo **ExtractPages**.

{{% alert color="primary" %}}

Puoi utilizzare qualsiasi [Formati di documenti supportati](/words/it/net/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

A causa delle numerose sfumature che appaiono riducendo il numero di pagine, una corrispondenza completa con il layout Microsoft Word è un compito piuttosto complicato. Pertanto, a seconda della complessità del documento, potrebbero esserci lievi differenze nel layout del documento risultante rispetto al documento originale.

{{% /alert %}}

### Dividere un documento pagina per pagina {#split-a-document-page-by-page}

Aspose.Words consente di dividere un documento di più pagine pagina per pagina.

L'esempio di codice seguente mostra come dividere un documento e salvare ogni pagina come documento separato:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.cs" >}}

### Dividi un documento per intervalli di pagine {#split-a-document-by-page-ranges}

Aspose.Words consente di dividere un documento di più pagine per intervalli di pagine. Puoi dividere un file in più file con vari intervalli di pagine o semplicemente selezionare un intervallo e salvare solo questa parte del documento di origine. Tieni presente che puoi scegliere l'intervallo di pagine in base al numero di pagina massimo e minimo di un documento.

Il seguente esempio di codice mostra come dividere un documento in parti più piccole in base all'intervallo di pagine con indici di inizio e fine specifici:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.cs" >}}

## Opzione di richiamata per salvare un documento {#callback-option-for-saving-a-document}

È possibile utilizzare la proprietà [DocumentPartSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentpartsavingcallback/) per controllare il modo in cui Aspose.Words salva le parti del documento quando questo documento viene esportato in formato HTML. Questa proprietà ti consente di rinominare i file di output o anche di reindirizzarli in flussi personalizzati.

Tieni presente che questo callback non è utile quando si salva in EPUB perché tutte le parti di output devono essere salvate in un unico contenitore: il file .epub. Pertanto, il reindirizzamento del flusso non è supportato e l'effetto della ridenominazione non è visibile poiché i file vengono rinominati all'interno del contenitore.

## Unisci il documento diviso con un altro documento {#merge-the-split-document-with-another-file}

Aspose.Words consente di unire il documento diviso di output con un altro documento per formare un nuovo documento. Questa operazione può essere definita fusione di documenti.

Il seguente esempio di codice mostra come unire un documento diviso con un altro documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cs" >}}
