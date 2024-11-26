---
title: Inserisci e aggiungi documenti
second_title: Aspose.Words per Python via .NET
articleTitle: Inserisci e aggiungi documenti
linktitle: Inserisci e aggiungi documenti
description: "Combina documenti in uno solo: inserisci o aggiungi un documento in uno nuovo o esistente utilizzando trova e sostituisci, unisci campo, segnalibro o semplicemente alla fine del documento in Python."
type: docs
weight: 80
url: /it/python-net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

A volte è necessario combinare più documenti in uno solo. Puoi farlo manualmente oppure puoi utilizzare la funzione di inserimento o aggiunta Aspose.Words.

L'operazione di inserimento consente di inserire il contenuto di documenti precedentemente creati in uno nuovo o esistente.

A sua volta, la funzione di aggiunta ti consente di aggiungere un documento solo alla fine di un altro documento.

Questo articolo spiega come inserire o accodare un documento a un altro in diversi modi e descrive le proprietà comuni che è possibile applicare durante l'inserimento o l'accodamento di documenti.

## Inserisci un documento

Come accennato in precedenza, in Aspose.Words un documento è rappresentato come un albero di nodi e l'operazione di inserimento di un documento in un altro consiste nel copiare i nodi dal primo albero del documento al secondo.

È possibile inserire documenti in diverse posizioni in modi diversi. Ad esempio, puoi inserire un documento tramite un'operazione di sostituzione, un campo di unione durante un'operazione di unione o tramite un segnalibro.

È inoltre possibile utilizzare il metodo [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) o [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions), simile all'inserimento di un documento in Microsoft Word, per inserire un intero documento nella posizione corrente del cursore senza alcuna importazione precedente.

Il seguente esempio di codice mostra come inserire un documento utilizzando il metodo **inserisci_documento**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

Il seguente esempio di codice mostra come inserire un documento utilizzando il metodo **insert_document_inline**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

Le seguenti sottosezioni descrivono le opzioni durante le quali è possibile inserire un documento in un altro.

### Inserisci un documento nel segnalibro

Puoi importare un file di testo in un documento e inserirlo subito dopo un segnalibro che hai definito nel documento. Per fare ciò, crea un paragrafo con segnalibro nel punto in cui desideri inserire il documento.

Il seguente esempio di codice mostra come inserire il contenuto di un documento in un segnalibro in un altro documento:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Tieni presente che il segnalibro non deve racchiudere più paragrafi o testo che desideri vengano visualizzati nel documento finale risultante.

{{% /alert %}}

## Aggiungi un documento

Potresti avere un caso d'uso in cui devi includere pagine aggiuntive da un documento alla fine di un documento esistente. Per fare ciò, devi solo chiamare il metodo [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) per aggiungere un documento alla fine di un altro.

{{% alert color="primary" %}}

Tieni presente che [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) è un metodo a livello di nodo all'interno di un documento. Ad esempio, puoi creare un paragrafo, impostare le proprietà di formattazione e quindi aggiungerlo come figlio al corpo utilizzando il metodo [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere un documento alla fine di un altro documento:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Importa e inserisci manualmente i nodi

Aspose.Words ti consente di inserire e aggiungere documenti automaticamente senza alcun requisito di importazione precedente. Tuttavia, se devi inserire o aggiungere un nodo specifico del tuo documento, come una sezione o un paragrafo, devi prima importare questo nodo manualmente.

Quando devi inserire o accodare una sezione o un paragrafo a un altro, devi essenzialmente importare i nodi del primo albero dei nodi del documento nel secondo utilizzando il metodo [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/). Dopo aver importato i tuoi nodi, devi utilizzare il metodo [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/)/[insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) per inserire un nuovo nodo dopo/prima del nodo di riferimento. Ciò consente di personalizzare il processo di inserimento importando nodi da un documento e inserendolo in determinate posizioni.

Puoi anche utilizzare il metodo [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) per aggiungere un nuovo nodo specificato alla fine dell'elenco di nodi secondari, ad esempio, se desideri aggiungere contenuto a livello di paragrafo anziché a livello di sezione.

Il seguente esempio di codice mostra come importare manualmente i nodi e inserirli dopo un nodo specifico utilizzando il metodo [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/):

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

L'importazione crea un nuovo nodo che è una copia del nodo originale e adatto per l'inserimento nel documento di destinazione.

{{% /alert %}}

Il contenuto viene importato nel documento di destinazione sezione per sezione, il che significa che le impostazioni, come l'impostazione della pagina e le intestazioni o i piè di pagina, vengono conservate durante l'importazione. È inoltre utile notare che è possibile definire le impostazioni di formattazione quando si inserisce o accoda un documento per specificare il modo in cui due documenti vengono uniti.

## Proprietà comuni per inserire e aggiungere documenti

Entrambi i metodi [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) e [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) accettano [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) e [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) come parametri di input. L'[ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) ti consente di controllare il modo in cui la formattazione del documento viene unita quando importi contenuto da un documento a un altro selezionando diverse modalità di formato come [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting) e [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles). Il [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) ti consente di selezionare diverse opzioni di importazione come [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/) e [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Aspose.Words consente di regolare la visualizzazione di un documento risultante quando due documenti vengono aggiunti insieme in un'operazione di inserimento o aggiunta utilizzando [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) e [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/). La proprietà [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) contiene tutti gli attributi di una sezione come [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/) e altri. Il caso d'uso più comune è impostare la proprietà [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) per definire se il contenuto aggiunto verrà visualizzato sulla stessa pagina o suddiviso in una nuova.

{{% alert color="primary" %}}

Tieni presente che [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) e [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) non controllano il modo in cui due documenti vengono inseriti/aggiunti insieme. Ti consentono solo di modificare l'aspetto del documento risultato.

{{% /alert %}}

L'esempio di codice seguente mostra come aggiungere un documento a un altro evitando che il contenuto venga suddiviso su due pagine:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
