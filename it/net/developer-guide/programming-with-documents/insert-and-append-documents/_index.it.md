---
title: Inserisci e aggiungi documenti in C#
second_title: Aspose.Words per .NET
articleTitle: Inserisci e aggiungi documenti
linktitle: Inserisci e aggiungi documenti
description: "Combina documenti in uno solo: inserisci o aggiungi un documento in uno nuovo o esistente utilizzando trova e sostituisci, unisci campo, segnalibro o semplicemente alla fine del documento in C#."
type: docs
weight: 80
url: /it/net/insert-and-append-documents/
---

A volte è necessario combinare più documenti in uno solo. Puoi farlo manualmente oppure puoi utilizzare la funzione di inserimento o aggiunta Aspose.Words.

L'operazione di inserimento consente di inserire il contenuto di documenti precedentemente creati in uno nuovo o esistente.

A sua volta, la funzione di aggiunta ti consente di aggiungere un documento solo alla fine di un altro documento.

Questo articolo spiega come inserire o accodare un documento a un altro in diversi modi e descrive le proprietà comuni che è possibile applicare durante l'inserimento o l'accodamento di documenti.

## Inserisci un documento {#insert-a-document}

Come accennato in precedenza, in Aspose.Words un documento è rappresentato come un albero di nodi e l'operazione di inserimento di un documento in un altro consiste nel copiare i nodi dal primo albero del documento al secondo.

È possibile inserire documenti in diverse posizioni in modi diversi. Ad esempio, puoi inserire un documento tramite un'operazione di sostituzione, un campo di unione durante un'operazione di unione o tramite un segnalibro.

Puoi anche utilizzare il metodo [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) o [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/), che è simile all'inserimento di un documento in Microsoft Word, per inserire un intero documento nella posizione corrente del cursore senza alcuna importazione precedente.

Il seguente esempio di codice mostra come inserire un documento utilizzando il metodo **InsertDocument**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

Il seguente esempio di codice mostra come inserire un documento utilizzando il metodo **InsertDocumentInline**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

Le seguenti sottosezioni descrivono le opzioni durante le quali è possibile inserire un documento in un altro.

### Inserisci un documento durante l'operazione Trova e sostituisci {#insert-a-document-during-find-and-replace-operation}

È possibile inserire documenti durante l'esecuzione di operazioni di ricerca e sostituzione. Ad esempio, un documento può contenere paragrafi con il testo [INTRODUZIONE] e [CONCLUSIONE]. Ma nel documento finale è necessario sostituire quei paragrafi con il contenuto ottenuto da un altro documento esterno. Per raggiungere questo obiettivo, dovrai creare un gestore per l'evento di sostituzione.

Il seguente esempio di codice mostra come creare un gestore per l'evento di sostituzione per utilizzarlo successivamente nel processo di inserimento:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

Il seguente esempio di codice mostra come inserire il contenuto di un documento in un altro durante un'operazione di ricerca e sostituzione:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Inserisci un documento durante l'operazione Mail Merge {#insert-a-document-during-mail-merge-operation}

È possibile inserire un documento in un campo unione durante un'operazione mail merge. Ad esempio, un modello mail merge può contenere un campo di unione come [Riepilogo]. Ma nel documento finale, è necessario inserire in questo campo di unione il contenuto ottenuto da un altro documento esterno. Per raggiungere questo obiettivo, dovrai creare un gestore per l'evento di unione.

L'esempio di codice seguente mostra come creare un gestore per l'evento di unione per utilizzarlo successivamente nel processo di inserimento:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

Il seguente esempio di codice mostra come inserire un documento nel campo di unione utilizzando il gestore creato:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### Inserisci un documento nel segnalibro {#insert-a-document-at-bookmark}

Puoi importare un file di testo in un documento e inserirlo subito dopo un segnalibro che hai definito nel documento. Per fare ciò, crea un paragrafo con segnalibro nel punto in cui desideri inserire il documento.

Il seguente esempio di codice mostra come inserire il contenuto di un documento in un segnalibro in un altro documento:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

Tieni presente che il segnalibro non deve racchiudere più paragrafi o testo che desideri vengano visualizzati nel documento finale risultante.

{{% /alert %}}

## Aggiungi un documento {#append-a-document}

Potresti avere un caso d'uso in cui devi includere pagine aggiuntive da un documento alla fine di un documento esistente. Per fare ciò, devi solo chiamare il metodo [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) per aggiungere un documento alla fine di un altro.

{{% alert color="primary" %}}

Tieni presente che [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) è un metodo a livello di nodo all'interno di un documento. Ad esempio, puoi creare un paragrafo, impostare le proprietà di formattazione e quindi aggiungerlo come figlio al corpo utilizzando il metodo **AppendChild**.

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere un documento alla fine di un altro documento:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## Importa e inserisci manualmente i nodi {#import-and-insert-nodes-manually}

Aspose.Words ti consente di inserire e aggiungere documenti automaticamente senza alcun requisito di importazione precedente. Tuttavia, se devi inserire o aggiungere un nodo specifico del tuo documento, come una sezione o un paragrafo, devi prima importare questo nodo manualmente.

Quando devi inserire o accodare una sezione o un paragrafo a un altro, devi essenzialmente importare i nodi del primo albero dei nodi del documento nel secondo utilizzando il metodo [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/). Dopo aver importato i tuoi nodi, devi utilizzare il metodo [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/) per inserire un nuovo nodo dopo/prima del nodo di riferimento. Ciò consente di personalizzare il processo di inserimento importando nodi da un documento e inserendolo in determinate posizioni.

Puoi anche utilizzare il metodo [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) per aggiungere un nuovo nodo specificato alla fine dell'elenco di nodi secondari, ad esempio, se desideri aggiungere contenuto a livello di paragrafo anziché a livello di sezione.

Il seguente esempio di codice mostra come importare manualmente i nodi e inserirli dopo un nodo specifico utilizzando il metodo **InsertAfter**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

L'importazione crea un nuovo nodo che è una copia del nodo originale e adatto per l'inserimento nel documento di destinazione.

{{% /alert %}}

Il contenuto viene importato nel documento di destinazione sezione per sezione, il che significa che le impostazioni, come l'impostazione della pagina e le intestazioni o i piè di pagina, vengono conservate durante l'importazione. È inoltre utile notare che è possibile definire le impostazioni di formattazione quando si inserisce o accoda un documento per specificare il modo in cui due documenti vengono uniti.

## Proprietà comuni per inserire e aggiungere documenti {#common-properties-for-insert-and-append-documents}

Entrambi i metodi [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) e [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) accettano [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) e [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) come parametri di input. **ImportFormatMode** ti consente di controllare il modo in cui la formattazione del documento viene unita quando importi contenuto da un documento a un altro selezionando diverse modalità di formato come [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/) e [KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/). **ImportFormatOptions** ti consente di selezionare diverse opzioni di importazione come [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/) e [SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/).

Aspose.Words consente di regolare la visualizzazione di un documento risultante quando due documenti vengono aggiunti insieme in un'operazione di inserimento o aggiunta utilizzando le proprietà [Section](https://reference.aspose.com/words/net/aspose.words/section/) e [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/). La proprietà **PageSetup** contiene tutti gli attributi di una sezione come [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/) e altri. Il caso d'uso più comune è impostare la proprietà **SectionStart** per definire se il contenuto aggiunto verrà visualizzato sulla stessa pagina o suddiviso in una nuova.

{{% alert color="primary" %}}

Tieni presente che le proprietà **Section** e **PageSetup** non controllano il modo in cui due documenti vengono inseriti/accodati insieme. Ti consentono solo di modificare l'aspetto del documento risultato.

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere un documento a un altro evitando che il contenuto venga suddiviso su due pagine:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
