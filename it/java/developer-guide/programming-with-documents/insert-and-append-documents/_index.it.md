---
title: Inserimento e Allegato Documenti Java
second_title: Aspose.Words per Java
articleTitle: Inserire e applicare documenti
linktitle: Inserire e applicare documenti
description: "Combinare documenti in uno: inserire o aggiungere un documento in uno nuovo o esistente utilizzando trovare e sostituire, unire campo, segnalibro, o semplicemente alla fine del documento Java."
type: docs
weight: 80
url: /it/java/insert-and-append-documents/
---

A volte è necessario combinare diversi documenti in uno. Puoi farlo manualmente o puoi usare Aspose.Words inserire o aggiungere la funzione.

L'operazione di inserto consente di inserire il contenuto dei documenti precedentemente creati in uno nuovo o esistente.

A sua volta, la funzione Append consente di aggiungere un documento solo alla fine di un altro documento.

Questo articolo spiega come inserire o aggiungere un documento ad un altro in modi diversi e descrive le proprietà comuni che è possibile applicare durante l'inserimento o l'appending dei documenti.

## Inserisci un documento

Come accennato in precedenza, in Aspose.Words un documento è rappresentato come un albero di nodi, e il funzionamento di inserire un documento in un altro sta copiando nodi dal primo albero del documento al secondo.

È possibile inserire documenti in una varietà di posizioni in modi diversi. Ad esempio, è possibile inserire un documento attraverso un'operazione di sostituzione, un campo di fusione durante un'operazione di fusione, o tramite un segnalibro.

È anche possibile utilizzare [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) o [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) metodo, che è simile a inserire un documento in Microsoft Word, per inserire un intero documento nella posizione del cursore corrente senza alcuna importazione precedente.

Il seguente esempio di codice mostra come inserire un documento utilizzando il **InsertDocument** metodo:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

Il seguente esempio di codice mostra come inserire un documento utilizzando il **InsertDocumentInline** metodo:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

Le sottosezioni seguenti descrivono le opzioni durante le quali è possibile inserire un documento in un altro.

### Inserisci un documento durante l'operazione Trova e sostituisci {#insert-a-document-during-find-and-replace-operation}

È possibile inserire documenti durante l'esecuzione di trovare e sostituire le operazioni. Ad esempio, un documento può contenere paragrafi con il testo [INTRODUZIONE] e [CONCLUSION]. Ma nel documento finale, è necessario sostituire quei paragrafi con il contenuto ottenuto da un altro documento esterno. Per raggiungere questo obiettivo, è necessario creare un handler per l'evento di sostituzione.

Il seguente esempio di codice mostra come creare un handler per l'evento di sostituzione per utilizzarlo successivamente nel processo di inserimento:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

Il seguente esempio di codice mostra come inserire il contenuto di un documento in un altro durante un'operazione di ricerca e sostituzione:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Inserisci un documento durante Mail Merge Operazione {#insert-a-document-during-mail-merge-operation}

È possibile inserire un documento in un campo di fusione durante un mail merge operazione. Per esempio, un mail merge modello può contenere un campo di fusione come [Summary]. Ma nel documento finale, è necessario inserire il contenuto ottenuto da un altro documento esterno in questo campo di fusione. Per raggiungere questo obiettivo, è necessario creare un gestore per l'evento di fusione.

Il seguente esempio di codice mostra come creare un handler per l'evento di fusione per utilizzarlo successivamente nel processo di inserimento:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

Il seguente esempio di codice mostra come inserire un documento nel campo di fusione utilizzando il gestore creato:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Inserisci un documento al Segnalibro

È possibile importare un file di testo in un documento e inserirlo subito dopo un segnalibro che avete definito nel documento. Per fare questo, creare un paragrafo segnalato dove si desidera che il documento venga inserito.

Il seguente esempio di codifica mostra come inserire il contenuto di un documento a un segnalibro in un altro documento:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Si noti che il segnalibro non deve racchiudere più paragrafi o testo che si desidera che vengano visualizzati nel documento finale risultante.

{{% /alert %}}

## Applicare un documento

Si può avere un caso di utilizzo in cui è necessario includere ulteriori pagine da un documento alla fine di un documento esistente. Per fare questo, devi solo chiamare il [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) metodo per aggiungere un documento alla fine di un altro.

{{% alert color="primary" %}}

Nota: [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) è un metodo di livello nodo all'interno di un documento. Ad esempio, è possibile creare un paragrafo, impostare le proprietà di formattazione, e quindi aggiungerlo come un bambino al corpo utilizzando il **AppendChild** metodo.

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere un documento alla fine di un altro documento:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Importa e inserisci i nodi manualmente {#import-and-insert-nodes-manually}

Aspose.Words consente di inserire e aggiungere i documenti automaticamente senza precedenti requisiti di importazione. Tuttavia, se è necessario inserire o aggiungere un nodo specifico del documento, come una sezione o un paragrafo, prima è necessario importare questo nodo manualmente.

Quando è necessario inserire o aggiungere una sezione o un paragrafo ad un altro, è essenzialmente necessario importare i nodi del primo nodo documento albero nel secondo usando il [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) metodo. Dopo aver importato i nodi, è necessario utilizzare il [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) metodo per inserire un nuovo nodo dopo/prima del nodo di riferimento. Questo consente di personalizzare il processo di inserimento importando nodi da un documento e inserendolo in determinate posizioni.

È anche possibile utilizzare [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) metodo per aggiungere un nuovo nodo specificato alla fine dell'elenco dei nodi per bambini, ad esempio, se si desidera aggiungere contenuti a livello di paragrafo invece che a livello di sezione.

Il seguente esempio di codice mostra come importare manualmente i nodi e inserirli dopo un nodo specifico utilizzando **InsertAfter** metodo:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

L'importazione crea un nuovo nodo che è una copia del nodo originale e adatto per l'inserimento nel documento di destinazione.

{{% /alert %}}

Il contenuto viene importato nella sezione del documento di destinazione per sezione, il che significa che le impostazioni, come la configurazione della pagina e le intestazioni o piè di pagina, sono conservate durante l'importazione. È anche utile notare che è possibile definire le impostazioni di formattazione quando si inserisce o si aggiunge un documento per specificare come due documenti sono uniti insieme.

## Proprietà comuni per l'inserimento e l'appendice dei documenti {#common-properties-for-insert-and-append-documents}

Entrambi [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) e [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) metodi accettabili [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) e [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) come parametri di input. The **ImportFormatMode** consente di controllare come la formattazione del documento viene fusa quando si importa il contenuto da un documento in un altro selezionando diverse modalità di formato come [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), e [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). The **ImportFormatOptions** consente di selezionare diverse opzioni di importazione come [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), e [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words consente di regolare la visualizzazione di un documento risultante quando due documenti vengono aggiunti insieme in un'operazione di inserimento o accettazione utilizzando [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) e [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) proprietà. The **PageSetup** la proprietà contiene tutti gli attributi di una sezione come [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), e altri. Il caso di uso più comune è quello di impostare il **SectionStart** proprietà per definire se il contenuto aggiunto apparirà sulla stessa pagina o si divide in una nuova.

{{% alert color="primary" %}}

Nota che **Section** e **PageSetup** le proprietà non controllano come due documenti vengono inseriti/appendati insieme. Essi consentono solo di modificare l'aspetto del documento di risultato.

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere un documento all'altro pur mantenendo il contenuto dalla divisione in due pagine:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
