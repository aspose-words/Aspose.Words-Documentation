---
title: Lavorare con le sezioni in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con le sezioni
linktitle: Lavorare con le sezioni
description: "Crea e gestisci sezioni e interruzioni di sezione in un documento utilizzando Python. Inserisci la sezione in un documento Python. Rimuovere la sezione Python. Copia sezioni tra documenti."
type: docs
weight: 120
url: /it/python-net/working-with-sections/
---

A volte desideri un documento che non abbia la stessa formattazione su tutte le pagine. Ad esempio, potrebbe essere necessario modificare i formati dei numeri di pagina, avere dimensioni e orientamento della pagina diversi oppure avere la prima pagina del documento come copertina senza numerazione. Puoi ottenerlo con le sezioni.

Le sezioni sono nodi di livello che controllano intestazioni e piè di pagina, orientamento, colonne, margini, formattazione del numero di pagina e altro.

Aspose.Words ti consente di gestire sezioni, dividere un documento in sezioni e apportare modifiche alla formattazione che si applicano solo a una sezione specifica. Aspose.Words memorizza informazioni sulla formattazione della sezione come intestazioni e piè di pagina, impostazione della pagina e impostazioni delle colonne nell'interruzione di sezione.

Questo articolo spiega come lavorare con le sezioni e le interruzioni di sezione.

## Cosa sono la sezione e l'interruzione di sezione

Le sezioni del documento sono rappresentate dalle classi [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) e [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/). Gli oggetti sezione sono figli immediati del nodo [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ed è possibile accedervi tramite la proprietà [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/). Puoi gestire questi nodi utilizzando alcuni metodi come [Remove](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove/#node), [Add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/#node), [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/#node) e altri.

L'interruzione di sezione è un'opzione che divide le pagine del documento in sezioni con layout personalizzabili.

## Tipi di interruzione di sezione

Aspose.Words ti consente di dividere e formattare i documenti utilizzando diverse interruzioni di sezione dell'enumerazione [BreakType](https://reference.aspose.com/words/python-net/aspose.words/breaktype/):

- Sezione Interrompi Continua
- SezioneInterrompiNuovaColonna
- SezioneInterruzioneNuovaPagina
- SezioneBreakEvenPagina
- SezioneInterruzioneDispariPagina

Puoi anche utilizzare l'enumerazione [SectionStart](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/) per scegliere un tipo di interruzione applicabile solo alla prima sezione, ad esempio NewColumn, NewPage, EvenPage e OddPage.

## Gestisci una sezione

Poiché una sezione è un normale nodo composito, l'intero API di manipolazione del nodo può essere utilizzato per manipolare le sezioni: aggiungere, rimuovere e altre operazioni sulle sezioni. Puoi leggere ulteriori informazioni sui nodi nell'articolo [Aspose.Words Document Object Model (DOM)](/words/it/python-net/aspose-words-document-object-model/).

D'altra parte è anche possibile utilizzare `DocumentBuilder` API per lavorare con le sezioni. In questo articolo ci concentreremo su questo particolare modo di lavorare con le sezioni.

## Inserisci o rimuovi un'interruzione di sezione

Aspose.Words ti consente di inserire un'interruzione di sezione nel testo utilizzando il metodo [InsertBreak](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/#breaktype).

L'esempio di codice seguente mostra come inserire un'interruzione di sezione in un documento:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "insert-section-breaks.py" >}}

Utilizzare il metodo [Remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/#default) per eliminare un'interruzione di sezione. Se non è necessario rimuovere un'interruzione di sezione specifica ed eliminare invece il contenuto di quella sezione, è possibile utilizzare il metodo [ClearContent](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/#default).

L'esempio di codice seguente mostra come rimuovere le interruzioni di sezione:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "remove-section-breaks.py" >}}

{{% alert color="primary" %}}

Tieni presente che un'interruzione di sezione contiene informazioni sulla sezione che la precede, non su quella che la segue. Pertanto, se rimuovi un'interruzione di sezione, il testo prima dell'interruzione rimossa otterrà le proprietà dell'interruzione di sezione successiva. Ciò può far sì che l'intero documento diventi orizzontale oppure che intestazioni e piè di pagina cambino o scompaiano completamente.

{{% /alert %}}

## Sposta una sezione

Se vuoi spostare una sezione da una posizione a un'altra nel tuo documento, devi ottenere l'indice di quella sezione. Aspose.Words ti consente di ottenere la posizione di una sezione da un [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/). Puoi utilizzare la proprietà [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) per ottenere tutte le sezioni del tuo documento. Ma se vuoi ottenere solo la prima sezione, puoi utilizzare la proprietà [FirstSection](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/).

L'esempio di codice seguente mostra come accedere alla prima sezione e scorrere i figli di un nodo composito:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "section-child-nodes.py" >}}

## Specificare un layout di sezione

A volte desideri che il tuo documento abbia un aspetto migliore creando layout creativi per le diverse sezioni del documento. Se desideri specificare il tipo di griglia della sezione corrente, puoi scegliere una modalità di layout della sezione utilizzando l'enumerazione [SectionLayoutMode](https://reference.aspose.com/words/python-net/aspose.words/sectionlayoutmode/):

- Predefinito
- Griglia
-Griglia di linee
- SnapToChars

Il seguente esempio di codice mostra come limitare il numero di righe che ogni pagina può avere:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "line-grid-section-layout-mode.py" >}}

## Modifica una sezione

Quando aggiungi una nuova sezione al tuo documento, non ci sarà corpo o paragrafo che puoi modificare. Aspose.Words ti consente di garantire che una sezione contenga un corpo con almeno un paragrafo utilizzando il metodo [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words/section/ensure_minimum/#default): aggiungerà automaticamente un nodo Corpo (o HeaderFooter) al documento e quindi aggiungerà un paragrafo ad esso.

Il seguente esempio di codice mostra come preparare un nuovo nodo di sezione utilizzando **EnsureMinimum**:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "ensure-minimum.py" >}}

### Aggiungi o anteponi contenuto

Se vuoi disegnare una forma o aggiungere testo o immagine all'inizio/fine di una sezione, puoi utilizzare i metodi [AppendContent](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/#section) e [PrependContent](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/#section) della classe [Section](https://reference.aspose.com/words/python-net/aspose.words/section/).

L'esempio di codice seguente mostra come aggiungere il contenuto di una sezione esistente:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "append-section-content.py" >}}

### Clonare una sezione

Aspose.Words ti consente di duplicare una sezione creandone una copia completa utilizzando il metodo [Clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/#default).

Il seguente esempio di codice mostra come clonare la prima sezione del documento:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "clone-section.py" >}}

### Copia sezioni tra documenti

In alcuni casi, potresti avere documenti di grandi dimensioni con molte sezioni e desideri copiare il contenuto di una sezione da un documento a un altro.

Aspose.Words ti consente di copiare sezioni tra documenti utilizzando il metodo [ImportNode](https://reference.aspose.com/words/python-net/aspose.words/nodeimporter/import_node/#node_bool).

L'esempio di codice seguente mostra come copiare sezioni tra documenti:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "copy-section.py" >}}

### Lavora con l'intestazione e il piè di pagina della sezione

Le regole di base per visualizzare un'intestazione o un piè di pagina per ciascuna sezione sono abbastanza semplici:

1. Se la sezione non ha intestazioni/piè di pagina propri di un certo tipo, viene presa dalla sezione precedente.
2. Il tipo di intestazione/piè di pagina visualizzato sulla pagina è controllato dalle impostazioni della sezione "Prima pagina diversa" e "Pagine pari e dispari diverse": se sono disabilitate, i titoli della sezione vengono ignorati.

Il seguente esempio di codice mostra come creare 2 sezioni con intestazioni diverse:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

Se desideri rimuovere il testo di intestazioni e piè di pagina senza rimuovere oggetti [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) nel documento, puoi utilizzare il metodo [ClearHeadersFooters](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default). Inoltre, puoi utilizzare il metodo [DeleteHeaderFooterShapes](https://reference.aspose.com/words/python-net/aspose.words/section/delete_header_footer_shapes/#default) per rimuovere tutte le forme dalle intestazioni e dai piè di pagina del documento.

L'esempio di codice seguente mostra come cancellare il contenuto di tutte le intestazioni e i piè di pagina in una sezione:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-content.py" >}}

Il seguente esempio di codice su come rimuovere tutte le forme da tutti i piè di pagina delle intestazioni in una sezione:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-shapes.py" >}}

## Personalizza le proprietà della pagina in una sezione

Prima di stampare una pagina o un documento potresti voler personalizzare e modificare le dimensioni e il layout di una singola pagina o dell'intero documento. Con l'impostazione della pagina è possibile modificare le impostazioni delle pagine del documento quali margini, orientamento e dimensioni per la stampa di prime pagine o pagine dispari diverse.

Aspose.Words consente di personalizzare le proprietà della pagina e della sezione utilizzando la classe [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/).

L'esempio di codice seguente mostra come impostare proprietà come la dimensione della pagina e l'orientamento per la sezione corrente:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "page-setup-and-section-formatting.py" >}}

L'esempio di codice seguente mostra come modificare le proprietà della pagina in tutte le sezioni:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "modify-page-setup-in-all-sections.py" >}}

## Guarda anche

- [Livelli logici dei nodi in un documento](/words/python-net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
- [Inserisci e aggiungi documenti](/words/it/python-net/insert-and-append-documents/)
