---
title: Lavorare con le sezioni in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con le sezioni
linktitle: Lavorare con le sezioni
description: "Comprensione dei concetti di sezione del documento e delle pratiche di manipolazione utilizzando C++. Inserire sezione in un documento C++. Rimuovere la sezione C++. Copiare sezioni tra i documenti."
type: docs
weight: 120
url: /it/cpp/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

A volte si desidera un documento che non abbia la stessa formattazione in tutte le pagine. Ad esempio, potrebbe essere necessario modificare i formati dei numeri di pagina, avere dimensioni e orientamento della pagina diversi o avere la prima pagina del documento come copertina senza alcuna numerazione. Puoi farlo con le sezioni.

Le sezioni sono nodi di livello che controllano intestazioni e piè di pagina, orientamento, colonne, margini, formattazione del numero di pagina e altri.

Aspose.Words consente di gestire sezioni, dividere un documento in sezioni e apportare modifiche di formattazione che si applicano solo a una sezione specifica. Aspose.Words memorizza informazioni sulla formattazione delle sezioni, ad esempio intestazioni e piè di pagina, impostazione della pagina e impostazioni delle colonne nell'interruzione di sezione.

Questo articolo spiega come lavorare con sezioni e interruzioni di sezione.

## Cos'è la sezione e la sezione Break

Le sezioni del documento sono rappresentate dalle classi [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) e [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). Gli oggetti Sezione sono figli immediati del nodo [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) e sono accessibili tramite la proprietà [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/). È possibile gestire tali nodi utilizzando alcuni metodi come [Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), e altri.

Section break è un'opzione che divide le pagine del documento in sezioni con layout personalizzabili.

## Tipi di interruzione di sezione

Aspose.Words consente di dividere e formattare i documenti utilizzando diverse interruzioni di sezione dell'enumerazione [BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/):

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

È inoltre possibile utilizzare l'enumerazione [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/) per scegliere un tipo di interruzione che si applica solo alla prima sezione, ad esempio NewColumn, NewPage, EvenPage, e OddPage.

## Gestire una sezione

Poiché una sezione è un normale nodo composito, l'intera API di manipolazione del nodo può essere utilizzata per manipolare le sezioni: per aggiungere, rimuovere e altre operazioni sulle sezioni. Puoi leggere di più sui nodi nell'articolo [Aspose.Words Modello a oggetti documento (DOM)](/words/cpp/aspose-words-document-object-model/).

D'altra parte, puoi anche usare l'API `DocumentBuilder` per lavorare con le sezioni. In questo articolo, ci concentreremo su questo particolare modo di lavorare con le sezioni.

## Inserire o rimuovere un'interruzione di sezione

Aspose.Words consente di inserire un'interruzione di sezione nel testo utilizzando il metodo [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/).

L'esempio di codice seguente mostra come inserire un'interruzione di sezione in un documento:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

Utilizzare il metodo [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/) per eliminare un'interruzione di sezione. Se non è necessario rimuovere un'interruzione di sezione specifica e invece eliminare il contenuto di quella sezione, è possibile utilizzare il metodo [ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/).

Il seguente esempio di codice mostra come rimuovere le interruzioni delle sezioni:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

Si noti che un'interruzione di sezione contiene informazioni sulla sezione che la precede, non sulla sezione che la segue. Quindi, se rimuovi un'interruzione di sezione, il testo prima dell'interruzione rimossa otterrà le proprietà dell'interruzione di sezione successiva. Ciò può causare l'intero documento a diventare paesaggio, o intestazioni e piè di pagina per cambiare o scomparire completamente.

{{% /alert %}}

## Spostare una sezione

Se si desidera spostare una sezione da una posizione all'altra nel documento, è necessario ottenere l'indice di tale sezione. Aspose.Words consente di ottenere una posizione di sezione da un [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). È possibile utilizzare la proprietà [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) per ottenere tutte le sezioni del documento. Ma se si desidera ottenere solo la prima sezione, è possibile utilizzare la proprietà [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/).

Il seguente esempio di codice mostra come accedere alla prima sezione e scorrere i figli di un nodo composito:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## Specificare un layout di sezione

A volte vuoi che il tuo documento abbia un aspetto migliore creando layout creativi per diverse sezioni del documento. Se si desidera specificare il tipo della griglia di sezione corrente, è possibile scegliere una modalità di layout di sezione utilizzando l'enumerazione [SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/):

- Predefinito
- Griglia
- LineGrid
- SnapToChars

Il seguente esempio di codice mostra come limitare il numero di righe che ogni pagina può avere:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## Modificare una sezione

Quando si aggiunge una nuova sezione al documento, non ci sarà alcun corpo o paragrafo che è possibile modificare. Aspose.Words consente di garantire che una sezione contenga un corpo con almeno un paragrafo utilizzando il metodo [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/): aggiungerà automaticamente un nodo Corpo (o HeaderFooter) al documento e quindi aggiungerà un paragrafo ad esso.

L'esempio di codice seguente mostra come preparare un nuovo nodo di sezione usando **EnsureMinimum**:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### Aggiungere o anteporre il contenuto

Se si desidera disegnare una forma o aggiungere testo o immagine all'inizio/alla fine di una sezione, è possibile utilizzare i metodi [AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/) e [PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/) della classe [Section](https://reference.aspose.com/words/cpp/aspose.words/section/).

Il seguente esempio di codice mostra come aggiungere il contenuto di una sezione esistente:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### Clona una sezione

Aspose.Words consente di duplicare una sezione creandone una copia completa utilizzando il metodo [Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/).

L'esempio di codice seguente mostra come clonare la prima sezione del documento:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### Copia sezioni tra documenti

In alcuni casi, si possono avere documenti di grandi dimensioni con molte sezioni e si desidera copiare il contenuto di una sezione da un documento all'altro.

Aspose.Words consente di copiare sezioni tra documenti utilizzando il metodo [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/).

Il seguente esempio di codice mostra come copiare sezioni tra documenti:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### Lavorare con intestazione di sezione e piè di pagina

Le regole di base per visualizzare un'intestazione o un piè di pagina per ogni sezione sono abbastanza semplici:

1. Se la sezione non ha le proprie intestazioni/piè di pagina di un certo tipo, viene presa dalla sezione precedente.
2. Il tipo di intestazione / piè di pagina visualizzato sulla pagina è controllato dalle impostazioni della sezione" Prima pagina diversa "e" Pagine dispari e pari diverse " – se sono disabilitate, i titoli della sezione vengono ignorati.

L'esempio di codice seguente mostra come creare sezioni 2 con intestazioni diverse:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

Se si desidera rimuovere il testo di intestazioni e piè di pagina senza rimuovere gli oggetti [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) nel documento, è possibile utilizzare il metodo [ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/). Inoltre, è possibile utilizzare il metodo [DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/) per rimuovere tutte le forme da intestazioni e piè di pagina nel documento.

Il seguente esempio di codice mostra come cancellare il contenuto di tutte le intestazioni e piè di pagina in una sezione:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

Il seguente esempio di codice come rimuovere tutte le forme da tutte le intestazioni piè di pagina in una sezione:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## Personalizzare le proprietà della pagina in una sezione

Prima di stampare una pagina o un documento, è possibile personalizzare e modificare le dimensioni e il layout di una singola pagina o dell'intero documento. Con impostazione pagina, è possibile modificare le impostazioni delle pagine del documento, ad esempio i margini, l'orientamento e le dimensioni per la stampa di diverse prime pagine o pagine dispari.

Aspose.Words consente di personalizzare le proprietà di pagina e sezione utilizzando la classe [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/).

L'esempio di codice seguente mostra come impostare tali proprietà come dimensione della pagina e orientamento per la sezione corrente:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

Il seguente esempio di codice mostra come modificare le proprietà della pagina in tutte le sezioni:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## Vedi anche

- [Livelli logici di nodi in un documento](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [Inserire e aggiungere documenti](/words/cpp/insert-and-append-documents/)
