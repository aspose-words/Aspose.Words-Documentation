---
title: Aspose.Words Modello a oggetti del documento (DOM) in C++
second_title: Aspose.Words per C++
articleTitle: Aspose.Words Modello a oggetti documento (DOM)
linktitle: Aspose.Words Modello a oggetti documento (DOM)
type: docs
description: "Document Object Model (DOM) è una rappresentazione in memoria di un documento Word. Leggere, manipolare e modificare il contenuto e la formattazione di un documento di Word utilizzando C++."
weight: 10
url: /it/cpp/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Il Aspose.Words Document Object Model (DOM) è una rappresentazione in memoria di un documento Word. Il DOM Aspose.Words consente di leggere, manipolare e modificare a livello di programmazione il contenuto e la formattazione di un documento Word.

Questa sezione descrive le classi principali del DOM Aspose.Words e le loro relazioni. Utilizzando le classi DOM Aspose.Words, è possibile ottenere l'accesso programmatico agli elementi del documento e alla formattazione.

## Crea Albero oggetti documento {#create-a-document-objects-tree}

Quando un documento viene letto nel DOM Aspose.Words, viene creato un albero di oggetti e diversi tipi di elementi del documento di origine hanno i propri oggetti albero DOM con varie proprietà.

### Struttura dei nodi del documento {#build-document-nodes-tree}

Quando Aspose.Words legge un documento Word in memoria, crea oggetti di diversi tipi che rappresentano vari elementi del documento. Ogni esecuzione di un testo, paragrafo, tabella o sezione è un nodo e anche il documento stesso è un nodo. Aspose.Words definisce una classe per ogni tipo di nodo documento.

L'albero del documento in Aspose.Words segue il modello di progettazione composito:

- Tutte le classi di nodi derivano in ultima analisi dalla classe [Node](https://reference.aspose.com/words/cpp/aspose.words/node/), che è la classe base nel modello a oggetti del documento Aspose.Words.
- I nodi che possono contenere altri nodi, ad esempio **Section** o **Paragraph**, derivano dalla classe [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/), che a sua volta deriva dalla classe **Node**.

Il diagramma riportato di seguito mostra l'ereditarietà tra le classi di nodi del modello a oggetti Document (DOM) Aspose.Words. I nomi delle classi astratte sono in corsivo.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

Il DOM Aspose.Words contiene anche le classi non-nodo, come [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) o [Font](https://reference.aspose.com/words/cpp/aspose.words/font/), che vengono utilizzate per personalizzare l'aspetto e gli stili all'interno di un documento. Queste classi non sono mostrate in questo diagramma in quanto non ereditate dalla classe `Node`.

{{% /alert %}}

Diamo un'occhiata a un esempio. L'immagine seguente mostra un documento Microsoft Word con diversi tipi di contenuto.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

Quando si legge il documento sopra nel DOM Aspose.Words, viene creato l'albero degli oggetti, come mostrato nello schema seguente.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), e tutte le altre ellissi sul diagramma sono oggetti Aspose.Words che rappresentano elementi del documento Word.

### Ottieni un `Node` Tipo {#get-a-node-type}

Sebbene la classe [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) sia sufficiente per distinguere nodi diversi l'uno dall'altro, Aspose.Words fornisce l'enumerazione [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) per semplificare alcune attività API, come la selezione di nodi di un tipo specifico.

Il tipo di ciascun nodo può essere ottenuto utilizzando la proprietà [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/). Questa proprietà restituisce un **NodeType** enumeration value. For example, a paragraph node represented by the **Paragraph** class returns **NodeType**.**Paragraph** e un nodo tabella rappresentato dal **Table** class returns **NodeType**.**Table**.

L'esempio seguente mostra come ottenere un tipo di nodo utilizzando l'enumerazione **NodeType**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## Navigazione Albero documenti {#document-tree-navigation}

Aspose.Words rappresenta un documento come albero dei nodi, che consente di spostarsi tra i nodi. Questa sezione descrive come esplorare e navigare nell'albero dei documenti in Aspose.Words.

Quando si apre il documento di esempio, presentato in precedenza, in Esplora documenti, l'albero dei nodi appare esattamente come è rappresentato in Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### Relazioni nodo documento {#document-nodes-relationships}

I nodi nell'albero hanno relazioni tra di loro:

- Un nodo contenente un altro nodo è *parent.*
- Il nodo contenuto nel nodo padre è un *child.* Nodi figlio dello stesso genitore sono *sibling* nodi.
- Il nodo *root* è sempre il nodo [Document](https://reference.aspose.com/words/cpp/aspose.words/document/).

I nodi che possono contenere altri nodi derivano dalla classe [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode) e tutti i nodi alla fine derivano dalla classe [Node](https://reference.aspose.com/words/cpp/aspose.words/node/). Queste due classi base forniscono metodi e proprietà comuni per la navigazione e la modifica della struttura ad albero.

Il seguente diagramma dell'oggetto UML mostra diversi nodi del documento di esempio e le loro relazioni tra loro tramite le proprietà padre, figlio e fratello:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### Il documento è proprietario del nodo

Un nodo appartiene sempre a un particolare documento, anche se è stato appena creato o rimosso dall'albero, perché strutture vitali a livello di documento come stili ed elenchi sono memorizzate nel nodo **Document**. Ad esempio, non è possibile avere un **Paragraph** senza un **Document** perché ogni paragrafo ha uno stile assegnato definito globalmente per il documento. Questa regola viene utilizzata quando si creano nuovi nodi. L'aggiunta di un nuovo **Paragraph** direttamente al DOM richiede un oggetto documento passato al costruttore.

{{% alert color="primary" %}}

La proprietà [Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) restituisce il documento a cui appartiene il nodo.

{{% /alert %}}

Quando si crea un nuovo paragrafo usando [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), il builder ha sempre una classe **Document** collegata ad esso tramite la proprietà [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/).

L'esempio di codice seguente mostra che quando si crea un nodo, viene sempre definito un documento che possederà il nodo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### Nodo padre

Ogni nodo ha un genitore specificato dalla proprietà [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/). Un nodo non ha un nodo padre, cioè **ParentNode** è null, nei seguenti casi:

- Il nodo è stato appena creato e non è ancora stato aggiunto all'albero.
- Il nodo è stato rimosso dall'albero.
- Questo è il nodo root **Document** che ha sempre un nodo padre nullo.

È possibile rimuovere un nodo dal suo genitore chiamando il metodo [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/).Il seguente esempio di codice mostra come accedere al nodo padre:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### Nodi figlio

Il modo più efficiente per accedere ai nodi figlio di un [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) è tramite le proprietà [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) e [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/) che restituiscono rispettivamente il primo e l'ultimo nodo figlio. Se non ci sono nodi figlio, queste proprietà restituiscono *null*.

**CompositeNode**

Se un nodo non ha figli, la proprietà **ChildNodes** restituisce una raccolta vuota. È possibile verificare se **CompositeNode** contiene nodi figlio utilizzando la proprietà [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/).

L'esempio di codice seguente mostra come enumerare i nodi figlio immediati di un `CompositeNode` utilizzando l'enumeratore fornito dalla raccolta `ChildNodes`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

L'esempio di codice seguente mostra come enumerare i nodi figlio immediati di un `CompositeNode` utilizzando l'accesso indicizzato:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### Nodi fratelli

È possibile ottenere il nodo che precede o segue immediatamente un particolare nodo utilizzando rispettivamente le proprietà [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) e [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/). Se un nodo è l'ultimo figlio del suo genitore, allora la proprietà **NextSibling** è *null*. Al contrario, se il nodo è il primo figlio del suo genitore, la proprietà **PreviousSibling** è *null*.

Il seguente esempio di codice mostra come visitare in modo efficiente tutti i nodi figlio diretti e indiretti di un nodo composito:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### Accesso digitato ai nodi figlio e padre

Finora, abbiamo discusso le proprietà che restituiscono uno dei tipi di base - **Node** o **CompositeNode**. Ma a volte ci sono situazioni in cui potrebbe essere necessario trasmettere valori a una specifica classe di nodi, ad esempio **Run** o **Paragraph**. Cioè, non è possibile allontanarsi completamente dal casting quando si lavora con il DOM Aspose.Words, che è composito.

Per ridurre la necessità di eseguire il casting, la maggior parte delle classi Aspose.Words fornisce proprietà e raccolte che forniscono un accesso fortemente tipizzato. Ci sono tre modelli di base di accesso digitato:

- Un nodo padre espone le proprietà **FirstXXX** e **LastXXX** digitate. Ad esempio, **Document** ha proprietà [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) e [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/). Allo stesso modo, **Table** ha proprietà come [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/), [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/) e altre.
- Un nodo padre espone una raccolta tipizzata di nodi figlio, ad esempio [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/) e altri.
- Un nodo figlio fornisce l'accesso digitato al suo genitore, ad esempio [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/) e altri.

Le proprietà digitate sono semplicemente scorciatoie utili che a volte forniscono un accesso più semplice rispetto alle proprietà generiche ereditate da [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) e [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/).

L'esempio di codice seguente mostra come utilizzare le proprietà tipizzate per accedere ai nodi della struttura del documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
