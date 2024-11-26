---
title: Inserire e aggiungere documenti in Java
second_title: Aspose.Words per Java
articleTitle: Inserire e aggiungere documenti
linktitle: Inserire e aggiungere documenti
description: "Combina documenti in uno: inserisci o aggiungi un documento in uno nuovo o esistente usando trova e sostituisci, unisci campo, segnalibro o semplicemente alla fine del documento in Java."
type: docs
weight: 80
url: /it/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

A volte è necessario combinare più documenti in uno. Puoi farlo manualmente oppure puoi usare la funzione Inserisci o aggiungi Aspose.Words.

L'operazione Inserisci consente di inserire il contenuto dei documenti creati in precedenza in uno nuovo o esistente.

A sua volta, la funzione Aggiungi consente di aggiungere un documento solo alla fine di un altro documento.

Questo articolo spiega come inserire o aggiungere un documento a un altro in modi diversi e descrive le proprietà comuni che è possibile applicare durante l'inserimento o l'aggiunta di documenti.

## Inserire un documento

Come accennato in precedenza, in Aspose.Words un documento è rappresentato come un albero di nodi e l'operazione di inserimento di un documento in un altro è la copia dei nodi dal primo albero del documento al secondo.

È possibile inserire documenti in una varietà di posizioni in modi diversi. Ad esempio, è possibile inserire un documento tramite un'operazione di sostituzione, un campo di unione durante un'operazione di unione o tramite un segnalibro.

È inoltre possibile utilizzare il metodo [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) o [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions), simile all'inserimento di un documento in Microsoft Word, per inserire un intero documento nella posizione corrente del cursore senza alcuna importazione precedente.

Il seguente esempio di codice mostra come inserire un documento utilizzando il metodo **InsertDocument**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

Il seguente esempio di codice mostra come inserire un documento utilizzando il metodo **InsertDocumentInline**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

Le sottosezioni seguenti descrivono le opzioni durante le quali è possibile inserire un documento in un altro.

### Inserire un documento durante l'operazione Trova e sostituisci {#insert-a-document-during-find-and-replace-operation}

È possibile inserire documenti durante l'esecuzione di operazioni di ricerca e sostituzione. Ad esempio, un documento può contenere paragrafi con il testo [INTRODUCTION] e [CONCLUSION]. Ma nel documento finale, è necessario sostituire quei paragrafi con il contenuto ottenuto da un altro documento esterno. Per ottenere ciò, è necessario creare un gestore per l'evento replace.

L'esempio di codice seguente mostra come creare un gestore per l'evento di sostituzione per utilizzarlo in seguito nel processo di inserimento:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

L'esempio di codice seguente mostra come inserire il contenuto di un documento in un altro durante un'operazione di ricerca e sostituzione:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Inserire un documento durante l'operazione Mail Merge {#insert-a-document-during-mail-merge-operation}

È possibile inserire un documento in un campo di unione durante un'operazione Mail Merge. Ad esempio, un modello Mail Merge può contenere un campo di unione come [Riepilogo]. Ma nel documento finale, è necessario inserire il contenuto ottenuto da un altro documento esterno in questo campo di unione. Per ottenere ciò, è necessario creare un gestore per l'evento di unione.

L'esempio di codice seguente mostra come creare un gestore per l'evento di fusione per utilizzarlo in seguito nel processo di inserimento:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

L'esempio di codice seguente mostra come inserire un documento nel campo Unione utilizzando il gestore creato:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Inserire un documento nel segnalibro

È possibile importare un file di testo in un documento e inserirlo subito dopo un segnalibro definito nel documento. A tale scopo, creare un paragrafo con segnalibro in cui si desidera inserire il documento.

Il seguente esempio di codifica mostra come inserire il contenuto di un documento in un segnalibro in un altro documento:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Si noti che il segnalibro non deve racchiudere più paragrafi o testo che si desidera che vengano visualizzati nel documento finale risultante.

{{% /alert %}}

## Aggiungere un documento

Si può avere un caso d'uso in cui è necessario includere pagine aggiuntive da un documento alla fine di un documento esistente. Per fare ciò, è sufficiente chiamare il metodo [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) per aggiungere un documento alla fine di un altro.

{{% alert color="primary" %}}

Si noti che [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) è un metodo a livello di nodo all'interno di un documento. Ad esempio, è possibile creare un paragrafo, impostare le proprietà di formattazione e quindi aggiungerlo come figlio al corpo utilizzando il metodo **AppendChild**.

{{% /alert %}}

Il seguente esempio di codice mostra come aggiungere un documento alla fine di un altro documento:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Importare e inserire manualmente i nodi {#import-and-insert-nodes-manually}

Aspose.Words consente di inserire e aggiungere documenti automaticamente senza alcun requisito di importazione precedente. Tuttavia, se è necessario inserire o aggiungere un nodo specifico del documento, ad esempio una sezione o un paragrafo, è necessario prima importare manualmente questo nodo.

Quando è necessario inserire o aggiungere una sezione o un paragrafo a un altro, è essenzialmente necessario importare i nodi del primo albero dei nodi del documento nel secondo utilizzando il metodo [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean). Dopo aver importato i nodi, è necessario utilizzare il metodo [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) per inserire un nuovo nodo dopo/prima del nodo di riferimento. Ciò consente di personalizzare il processo di inserimento importando nodi da un documento e inserendolo in determinate posizioni.

È inoltre possibile utilizzare il metodo [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) per aggiungere un nuovo nodo specificato alla fine dell'elenco dei nodi figlio, ad esempio, se si desidera aggiungere il contenuto a livello di paragrafo anziché a livello di sezione.

L'esempio di codice seguente mostra come importare manualmente i nodi e inserirli dopo un nodo specifico utilizzando il metodo **InsertAfter**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

L'importazione crea un nuovo nodo che è una copia del nodo originale e adatto per l'inserimento nel documento di destinazione.

{{% /alert %}}

Il contenuto viene importato nel documento di destinazione sezione per sezione, il che significa che le impostazioni, come l'impostazione della pagina e le intestazioni o piè di pagina, vengono conservate durante l'importazione. È anche utile notare che è possibile definire le impostazioni di formattazione quando si inserisce o si aggiunge un documento per specificare come due documenti vengono uniti insieme.

## Proprietà comuni per Inserire e aggiungere documenti {#common-properties-for-insert-and-append-documents}

Entrambi i metodi [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) e [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) accettano [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) e [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) come parametri di input. Il **ImportFormatMode** consente di controllare il modo in cui la formattazione del documento viene unita quando si importa il contenuto da un documento in un altro selezionando diverse modalità di formato, ad esempio [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING) e [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). Il **ImportFormatOptions** consente di selezionare diverse opzioni di importazione come [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), e [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words consente di regolare la visualizzazione di un documento risultante quando due documenti vengono aggiunti insieme in un'operazione di inserimento o aggiunta utilizzando le proprietà [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) e [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/). La proprietà **PageSetup** contiene tutti gli attributi di una sezione come [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), e altri. Il caso d'uso più comune è quello di impostare la proprietà **SectionStart** per definire se il contenuto aggiunto apparirà sulla stessa pagina o diviso in una nuova.

{{% alert color="primary" %}}

Si noti che le proprietà **Section** e **PageSetup** non controllano il modo in cui due documenti vengono inseriti/aggiunti insieme. Essi consentono solo di modificare l'aspetto del documento risultato.

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere un documento a un altro evitando che il contenuto si divida su due pagine:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
