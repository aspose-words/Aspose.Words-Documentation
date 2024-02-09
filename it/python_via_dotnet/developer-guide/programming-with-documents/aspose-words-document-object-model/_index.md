---
title: Aspose.Words DOM
second_title: Aspose.Words per Python via .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) è una rappresentazione in memoria di un documento Word. Leggere, manipolare e modificare il contenuto e la formattazione di un documento Word utilizzando Python."
weight: 10
url: /it/python-net/aspose-words-document-object-model/
---

Aspose.Words Document Object Model (DOM) è una rappresentazione in memoria di un documento Word. Aspose.Words DOM consente di leggere, manipolare e modificare a livello di codice il contenuto e la formattazione di un documento Word.

Questa sezione descrive le principali classi del Aspose.Words DOM e le loro relazioni. Utilizzando le classi DOM Aspose.Words, è possibile ottenere l'accesso a livello di codice agli elementi e alla formattazione del documento.

## Crea un albero di oggetti `Document` {#create-a-document-objects-tree}

Quando un documento viene letto nel Aspose.Words DOM, viene creato un albero di oggetti e diversi tipi di elementi del documento di origine hanno i propri oggetti dell'albero DOM con varie proprietà.

### Costruisci l'albero dei nodi del documento {#build-document-nodes-tree}

Quando Aspose.Words legge un documento Word in memoria, crea oggetti di diverso tipo che rappresentano vari elementi del documento. Ogni sequenza di un testo, paragrafo, tabella o sezione è un nodo e anche il documento stesso è un nodo. Aspose.Words definisce una classe per ogni tipo di nodo del documento.

L'albero del documento in Aspose.Words segue il Composite Design Pattern:

- Tutte le classi dei nodi derivano in definitiva dalla classe [Node](https://reference.aspose.com/words/python-net/aspose.words/node/), che è la classe base nell'Document Object Model Aspose.Words.
- I nodi che possono contenere altri nodi, ad esempio [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) o [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), derivano dalla classe [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/), che a sua volta deriva dalla classe [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

Il diagramma fornito di seguito mostra l'ereditarietà tra le classi di nodi del Aspose.Words Document Object Model (DOM). I nomi delle classi astratte sono in corsivo.

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-parole-dom" style="width:700px"/>

{{% alert color="primary" %}}

Il Aspose.Words DOM contiene anche le classi non nodo, come [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) o [Font](https://reference.aspose.com/words/python-net/aspose.words/font/), che vengono utilizzate per personalizzare l'aspetto e gli stili all'interno di un documento. Queste classi non sono mostrate in questo diagramma perché non ereditate dalla classe [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

{{% /alert %}}

Diamo un'occhiata a un esempio. L'immagine seguente mostra un documento Microsoft Word con diversi tipi di contenuto.

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="documento-esempio-aspose-parole" style="width:700px"/>

Durante la lettura del documento di cui sopra nel Aspose.Words DOM, viene creato l'albero degli oggetti, come mostrato nello schema seguente.

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-parole" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/), [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) e tutte le altre ellissi nel diagramma sono oggetti Aspose.Words che rappresentano elementi del documento Word.

### Ottieni un file {#get-a-node-type} di tipo `Node`

Sebbene la classe [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) sia sufficiente per distinguere diversi nodi tra loro, Aspose.Words fornisce l'enumerazione [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) per semplificare alcune attività API, come la selezione di nodi di un tipo specifico.

Il tipo di ciascun nodo può essere ottenuto utilizzando la proprietà [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/). Questa proprietà restituisce un valore di enumerazione [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/). Ad esempio, un nodo di paragrafo rappresentato dalla classe [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) restituisce [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph) e un nodo di tabella rappresentato dalla classe [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) restituisce [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table).

L'esempio seguente mostra come ottenere un tipo di nodo utilizzando l'enumerazione [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## Navigazione nell'albero dei documenti {#document-tree-navigation}

Aspose.Words rappresenta un documento come un albero di nodi, che consente di navigare tra i nodi. Questa sezione descrive come esplorare e navigare nell'albero del documento in Aspose.Words.

Quando si apre il documento di esempio, presentato in precedenza, in Document Explorer, la struttura dei nodi appare esattamente come rappresentata in Aspose.Words.

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="esploratore di documenti in documenti" style="width:680px"/>

{{% alert color="primary" %}}

Sul [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples) si trova il progetto di esempio "Document Explorer".

{{% /alert %}}

### Relazioni tra nodi documento {#document-nodes-relationships}

I nodi nell'albero hanno relazioni tra loro:

- Un nodo che contiene un altro nodo è un *parent.*
- Il nodo contenuto nel nodo genitore è un *child.*. I nodi figli dello stesso genitore sono nodi *sibling*.
- Il nodo *root* è sempre il nodo [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

I nodi che possono contenere altri nodi derivano dalla classe [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) e tutti i nodi derivano infine dalla classe [Node](https://reference.aspose.com/words/python-net/aspose.words/node/). Queste due classi base forniscono metodi e proprietà comuni per la navigazione e la modifica della struttura ad albero.

Il seguente diagramma dell'oggetto UML mostra diversi nodi del documento di esempio e le loro relazioni reciproche tramite le proprietà parent, child e sibling:

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="documento-nodi-relazioni-aspose-parole" style="width:370px"/>

#### Il documento è proprietario del nodo

Un nodo appartiene sempre a un particolare documento, anche se è stato appena creato o rimosso dall'albero, perché strutture vitali a livello di documento come stili ed elenchi sono archiviate nel nodo [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Ad esempio, non è possibile avere un [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) senza un [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) perché a ogni paragrafo è assegnato uno stile definito globalmente per il documento. Questa regola viene utilizzata durante la creazione di nuovi nodi. L'aggiunta di un nuovo [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) direttamente all'DOM richiede un oggetto documento passato al costruttore.

{{% alert color="primary" %}}

La proprietà [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) restituisce il documento a cui appartiene il nodo.

{{% /alert %}}

Quando si crea un nuovo paragrafo utilizzando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), il builder ha sempre una classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) collegata ad esso tramite la proprietà [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/).

Il seguente esempio di codice mostra che durante la creazione di qualsiasi nodo, viene sempre definito un documento che sarà proprietario del nodo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### Nodo genitore

Ogni nodo ha un genitore specificato dalla proprietà [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/). Un nodo non ha un nodo genitore, ovvero [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) è *None*, nei seguenti casi:

- Il nodo è stato appena creato e non è stato ancora aggiunto all'albero.
- Il nodo è stato rimosso dall'albero.
- Questo è il nodo root [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) che ha sempre un nodo genitore Nessuno.

Puoi rimuovere un nodo dal suo genitore chiamando il metodo [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/). Il seguente esempio di codice mostra come accedere al nodo genitore:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### Nodi figli

Il modo più efficiente per accedere ai nodi figlio di un [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) è tramite le proprietà [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) e [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/) che restituiscono rispettivamente il primo e l'ultimo nodo figlio. Se non sono presenti nodi figlio, queste proprietà restituiscono *None*.

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) fornisce anche la raccolta [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) che consente l'accesso indicizzato o enumerato ai nodi figlio. Il metodo [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) restituisce una raccolta live di nodi, il che significa che ogni volta che il documento viene modificato, ad esempio quando i nodi vengono rimossi o aggiunti, la raccolta **get_child_nodes** viene aggiornata automaticamente.

Se un nodo non ha figli, il metodo **get_child_nodes** restituisce una raccolta vuota. Puoi verificare se il [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) contiene nodi figlio utilizzando la proprietà [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/).

L'esempio di codice seguente mostra come enumerare i nodi figlio immediati di un [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) utilizzando l'enumeratore fornito dalla raccolta **get_child_nodes**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### Nodi fratelli

È possibile ottenere il nodo che precede o segue immediatamente un nodo particolare utilizzando rispettivamente le proprietà [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) e [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/). Se un nodo è l'ultimo figlio del suo genitore, la proprietà [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) è *None*. Al contrario, se il nodo è il primo figlio del suo genitore, la proprietà [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) è *None*.

Il seguente esempio di codice mostra come visitare in modo efficiente tutti i nodi figlio diretti e indiretti di un nodo composito:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### Accesso digitato ai nodi figlio e padre {#typed-access-to-child-and-parent-nodes}

Finora abbiamo discusso delle proprietà che restituiscono uno dei tipi base: [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) o [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). Ma a volte ci sono situazioni in cui potresti dover trasmettere valori a una classe di nodo specifica, come [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) o [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/). Cioè, non puoi allontanarti completamente dal casting quando lavori con Aspose.Words DOM, che è composito.

Per ridurre la necessità di cast, la maggior parte delle classi Aspose.Words fornisce proprietà e raccolte che forniscono accesso fortemente tipizzato. Esistono tre modelli base di accesso digitato:

-Un nodo padre espone le proprietà **primo_XXX** e **ultimo_XXX** digitate. Ad esempio, l'[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ha proprietà [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) e [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/). Allo stesso modo, [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ha proprietà come [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/), [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/) e altre.
- Un nodo padre espone una raccolta tipizzata di nodi figlio, come [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/) e altri.
- Un nodo figlio fornisce accesso digitato al suo genitore, come [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/), [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/) e altri.

Le proprietà tipizzate sono semplicemente scorciatoie utili che a volte forniscono un accesso più semplice rispetto alle proprietà generiche ereditate da [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) e [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/).

Il seguente esempio di codice mostra come utilizzare le proprietà tipizzate per accedere ai nodi dell'albero del documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
