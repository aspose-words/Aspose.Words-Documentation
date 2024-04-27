---
title: Lavorare con le sezioni in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con le sezioni
linktitle: Lavorare con le sezioni
description: "Comprendere i concetti della sezione dei documenti e le pratiche di manipolazione utilizzando Java. Inserisci la sezione in un documento Java. Rimuovi sezione Java. Copia le sezioni tra Documenti."
type: docs
weight: 120
url: /it/java/working-with-sections/
---

A volte si desidera un documento che non ha la stessa formattazione in tutte le pagine. Ad esempio, potrebbe essere necessario modificare i formati di numero di pagina, avere dimensioni e orientamento differenti della pagina, o avere la prima pagina del documento come una pagina di copertura senza alcuna numerazione. Si può raggiungere questo con le sezioni.

Le sezioni sono nodi di livello che controllano intestazioni e piè di pagina, orientamento, colonne, margini, formattazione del numero di pagina e altri.

Aspose.Words consente di gestire le sezioni, dividere un documento in sezioni, e fare modifiche di formattazione che si applicano solo a una sezione specifica. Aspose.Words memorizza le informazioni sulla formattazione della sezione come intestazioni e piè di pagina, la configurazione della pagina e le impostazioni della colonna nella pausa sezione.

Questo articolo spiega come lavorare con sezioni e interruzioni di sezione.

## Qual è la sezione e la divisione

Le sezioni dei documenti sono rappresentate da [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) e [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) classi. Gli oggetti di sezione sono figli immediati del [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) nodo e accessibile tramite il [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) proprieta'. È possibile gestire questi nodi utilizzando alcuni metodi come [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), e altri.

L'interruzione di sezione è un'opzione che divide le pagine dei documenti in sezioni con layout personalizzabili.

## Tipi di una rottura di sezione

Aspose.Words consente di dividere e formattare documenti utilizzando diverse interruzioni di sezione del [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) enumerazione:

- SezioneBreakContinuo
- SezioneBreakNewColumn
- SezioneBreakNewPage
- SezioneBreakEvenPage
- SezioneBreakOddPage

È anche possibile utilizzare [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) enumerazione per scegliere un tipo di pausa che si applica solo per la prima sezione come NewColumn, NewPage, EvenPage e OddPage.

## Gestione di una sezione

Poiché una sezione è un nodo composito normale, l'intera manipolazione del nodo API può essere utilizzato per manipolare le sezioni: per aggiungere, rimuovere e altre operazioni su sezioni. Si può leggere di più sui nodi nell'articolo [Aspose.Words Document Object Model (DOM)](/words/it/java/aspose-words-document-object-model/).

D'altra parte, è anche possibile utilizzare il `DocumentBuilder` API lavorare con le sezioni. In questo articolo, ci concentreremo su questo particolare modo di lavorare con le sezioni.

## Inserire o rimuovere una rottura di sezione

Aspose.Words consente di inserire un'interruzione di sezione nel testo utilizzando il [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) metodo.

Il seguente esempio di codice mostra come inserire un'interruzione di sezione in un documento:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Utilizzare [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) metodo per eliminare una pausa sezione. Se non è necessario rimuovere una specifica pausa di sezione e invece eliminare il contenuto di quella sezione, è possibile utilizzare il [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) metodo.

Il seguente esempio di codice mostra come rimuovere le interruzioni delle sezioni:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Si noti che una pausa sezione ha informazioni sulla sezione che va prima di esso, non la sezione che va dopo di esso. Quindi, se si rimuove un'interruzione di sezione, il testo prima della pausa rimossa otterrà le proprietà della rottura sezione seguente. Questo può causare l'intero documento a diventare paesaggio, o intestazioni e piè di pagina per cambiare o completamente scomparire.

{{% /alert %}}

## Spostare una sezione

Se si desidera spostare una sezione da una posizione all'altra nel documento, è necessario ottenere l'indice di quella sezione. Aspose.Words consente di ottenere una posizione sezione da una [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). È possibile utilizzare [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) proprietà per ottenere tutte le sezioni nel documento. Ma se si desidera ottenere solo la prima sezione, è possibile utilizzare il [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) proprieta'.

Il seguente esempio di codice mostra come accedere alla prima sezione e iterare attraverso i bambini di un nodo composito:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Specificare un layout di sezione

A volte si desidera che il documento cerchi meglio facendo layout creativi per diverse sezioni di documenti. Se si desidera specificare il tipo di griglia della sezione corrente, è possibile scegliere una modalità di layout della sezione utilizzando la [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) enumerazione:

- Predefinito
- Griglia
- LineGrid
- SnapToChars

Il seguente esempio di codice mostra come limitare il numero di righe che ogni pagina può avere:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Modifica della sezione

Quando si aggiunge una nuova sezione al documento, non ci sarà corpo o paragrafo che è possibile modificare. Aspose.Words consente di garantire che una sezione contenga un corpo con almeno un paragrafo utilizzando [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) metodo – aggiungerà automaticamente un nodo Corpo (o HeaderFooter) al documento e aggiungerà un Paragrafo ad esso.

Il seguente esempio di codice mostra come preparare un nuovo nodo di sezione utilizzando **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Contenuto allegato o anticipato

Se si desidera disegnare qualche forma o aggiungere testo o immagine all'inizio / fine di una sezione, è possibile utilizzare [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) e [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) metodi di [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) classe.

Il seguente esempio di codice mostra come applicare il contenuto di una sezione esistente:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Clone a Sezione

Aspose.Words consente di duplicare una sezione creando una copia completa di esso utilizzando il [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) metodo.

Il seguente esempio di codice mostra come clonare la prima sezione nel documento:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Copia sezioni tra documenti

In alcuni casi, si possono avere grandi documenti con molte sezioni e si desidera copiare il contenuto di una sezione da un documento all'altro.

Aspose.Words consente di copiare le sezioni tra i documenti utilizzando [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) metodo.

Il seguente esempio di codice mostra come copiare le sezioni tra i documenti:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Lavorare con intestazione e piè di sezione

Le regole di base per la visualizzazione di un intestazione o piè di pagina per ogni sezione sono abbastanza semplici:

1. Se la sezione non ha le proprie intestazioni / piedi di un certo tipo, allora è preso dalla sezione precedente.
2. Il tipo di intestazione/footer visualizzato sulla pagina è controllato dalle impostazioni della sezione "Different First Page" e "Different Odd & Even pages" – se disattivate, vengono ignorati i titoli della sezione.

Il seguente esempio di codice mostra come creare 2 sezioni con intestazioni diverse:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Se si desidera rimuovere il testo di intestazioni e piè di pagina senza rimuovere [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) oggetti nel documento, è possibile utilizzare [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) metodo. Inoltre, è possibile utilizzare il [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) metodo per rimuovere tutte le forme da intestazioni e piè di pagina nel documento.

Il seguente esempio di codice mostra come cancellare il contenuto di tutte le intestazioni e piè di pagina in una sezione:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

Il seguente esempio di codice come rimuovere tutte le forme da tutti i piè di intestazione in una sezione:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Personalizza Proprietà della pagina in una sezione

Prima di stampare una pagina o un documento si può desiderare di personalizzare e modificare la dimensione e il layout di una singola pagina o l'intero documento. Con l'impostazione della pagina, è possibile modificare le impostazioni delle pagine dei documenti come margini, orientamento e dimensione per la stampa di diverse prime pagine o pagine dispari.

Aspose.Words consente di personalizzare le proprietà di pagina e sezione utilizzando [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) classe.

Il seguente esempio di codice mostra come impostare tali proprietà come dimensione della pagina e orientamento per la sezione corrente:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

Il seguente esempio di codice mostra come modificare le proprietà della pagina in tutte le sezioni:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Vedi anche

- [Livelli logici dei nodi in un documento](/words/it/java/logical-levels-of-nodes-in-a-document/)
- [Inserire e applicare documenti](/words/it/java/insert-and-append-documents/)