---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words per Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) è una rappresentazione in memoria di un documento di Word. Leggere, manipolare e modificare il contenuto e la formattazione di un documento di Word utilizzando Java."
weight: 10
url: /it/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

The Aspose.Words Document Object Model (DOM) è una rappresentazione in memoria di un documento di Word. The Aspose.Words DOM consente di leggere, manipolare e modificare programmaticamente il contenuto e la formattazione di un documento di Word.

Questa sezione descrive le classi principali della Aspose.Words DOM e le loro relazioni. Usando il Aspose.Words DOM classi, è possibile ottenere l'accesso programmatico agli elementi di documento e la formattazione.

## Crea un documento Albero di oggetti {#create-a-document-objects-tree}

Quando un documento viene letto nel Aspose.Words DOM> poi un albero oggetto è costruito e diversi tipi di elementi del documento sorgente hanno il loro DOM oggetti albero con varie proprietà.

### Costruisci l'albero dei nodi del documento {#build-document-nodes-tree}

Quando Aspose.Words legge un documento di Word in memoria, crea oggetti di diversi tipi che rappresentano vari elementi di documento. Ogni esecuzione di un testo, paragrafo, tabella o sezione è un nodo, e anche il documento stesso è un nodo. Aspose.Words definisce una classe per ogni tipo di nodo di documento.

L'albero del documento Aspose.Words segue il modello di disegno composito:

- Tutte le classi di nodo derivano dalla [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) classe, che è la classe base nella Aspose.Words Document Object Model.
- Nodi che possono contenere altri nodi, per esempio, **Section** o **Paragraph**, deriva dal [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) classe, che a sua volta deriva dal **Node** classe.

Il diagramma qui sotto mostra l'eredità tra le classi dei nodi Aspose.Words Document Object Model (DOM). I nomi delle classi astratte sono in Italics.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

The Aspose.Words DOM contiene anche le classi non note, come [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) o [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), che sono utilizzati per personalizzare l'aspetto e gli stili all'interno di un documento. Queste classi non sono mostrate in questo diagramma come non ereditate dal `Node` classe.

{{% /alert %}}

Guardiamo un esempio. L'immagine seguente mostra una Microsoft Word documento con diversi tipi di contenuto.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

Quando si legge il documento sopra riportato Aspose.Words DOM, l'albero degli oggetti è creato, come mostrato nello schema sottostante.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), e tutte le altre ellisse sul diagramma sono Aspose.Words oggetti che rappresentano elementi del documento di Word.

### Prendi `Node` Tipo {#get-a-node-type}

Anche se [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) la classe è sufficiente per distinguere i nodi diversi l'uno dall'altro, Aspose.Words fornisce [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) enumerazione per semplificare alcuni API attività, come la selezione di nodi di un tipo specifico.

Il tipo di nodo può essere ottenuto utilizzando [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) proprieta'. Questa proprietà restituisce un **NodeType** valore di enumerazione. Per esempio, un nodo di paragrafo rappresentato dal **Paragraph** ritorno di classe **NodeType**.**Paragraph**, e un nodo da tavola rappresentato dal **Table** ritorno di classe **NodeType**.**Table**.

L'esempio seguente mostra come ottenere un tipo di nodo utilizzando il **NodeType** enumerazione:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Navigazione dell'albero del documento {#document-tree-navigation}

Aspose.Words rappresenta un documento come nodo albero, che consente di navigare tra i nodi. Questa sezione descrive come esplorare e navigare l'albero dei documenti in Aspose.Words.

Quando si apre il documento campione, presentato in precedenza, nel Document Explorer, l'albero del nodo appare esattamente come è rappresentato in Aspose.Words.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

È possibile imparare il progetto campione "Document Explorer" sul [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### Documento Node Relazioni {#document-nodes-relationships}

I nodi dell'albero hanno relazioni tra di loro:

- Un nodo contenente un altro nodo *parent.*
- No. Il nodo contenuto nel nodo genitore è un *child.* I nodi figli dello stesso genitore sono *sibling* Nodi.
- The *root* il nodo è sempre [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Nodo.

I nodi che possono contenere altri nodi derivano dal [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) classe, e tutti i nodi alla fine derivano dal [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) classe. Queste due classi di base forniscono metodi e proprietà comuni per la navigazione e la modifica della struttura dell'albero.

Il seguente diagramma dell'oggetto UML mostra diversi nodi del documento campione e le loro relazioni tra loro attraverso le proprietà genitori, bambini e fratelli:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Il documento è Node Owner

Un nodo appartiene sempre a un particolare documento, anche se è stato appena creato o rimosso dall'albero, perché le strutture vitali a livello di documento come gli stili e le liste sono memorizzate nel **Document** Nodo. Per esempio, non è possibile avere un **Paragraph** senza **Document** perché ogni paragrafo ha uno stile assegnato che viene definito globalmente per il documento. Questa regola viene utilizzata quando si creano nuovi nodi. Aggiungere un nuovo **Paragraph** direttamente al DOM richiede un oggetto di documento passato al costruttore.

{{% alert color="primary" %}}

The [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) proprietà restituisce il documento a cui il nodo appartiene.

{{% /alert %}}

Quando si crea un nuovo paragrafo utilizzando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), il costruttore ha sempre un **Document** classe ad esso legata attraverso [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) proprieta'.

Il seguente esempio di codice mostra che quando si crea un nodo, un documento che possiede il nodo è sempre definito:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Nodo principale

Ogni nodo ha un genitore specificato dal [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) proprieta'. Un nodo non ha nessun nodo genitore, cioè... **ParentNode** è nullo, nei seguenti casi:

- No. Il nodo è appena stato creato e non è ancora stato aggiunto all'albero.
- No. Il nodo è stato rimosso dall'albero.
- No. Questa è la radice **Document** nodo che ha sempre un nodo genitore nullo.

È possibile rimuovere un nodo dal suo genitore chiamando il [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) metodo. Il seguente esempio di codice mostra come accedere al nodo genitore:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Nodi per bambini

Il modo più efficiente per accedere ai nodi dei bambini di un [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) è via [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) e [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) proprietà che restituiscono i primi e gli ultimi nodi bambino, rispettivamente. Se non ci sono nodi per bambini, queste proprietà ritornano *null*.

**CompositeNode** fornisce anche [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) raccolta che consente l'accesso indicizzato o enumerato ai nodi del bambino. The **ChildNodes** la proprietà è una collezione live di nodi, il che significa che ogni volta che il documento è cambiato, come quando i nodi vengono rimossi o aggiunti, il **ChildNodes** la raccolta viene aggiornata automaticamente.

Se un nodo non ha figli, allora **ChildNodes** la proprietà restituisce una collezione vuota. È possibile verificare se il **CompositeNode** contiene nodi per bambini utilizzando [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) proprieta'.

Il seguente esempio di codice mostra come enumerate nodi di bambino immediati di un `CompositeNode` utilizzando l'enumeratore fornito dal `ChildNodes` collezione:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

Il seguente esempio di codice mostra come enumerate nodi di bambino immediati di un `CompositeNode` utilizzando l'accesso indicizzato:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Nodi di sebling

È possibile ottenere il nodo che precede immediatamente o segue un nodo particolare utilizzando il [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) e [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) proprietà, rispettivamente. Se un nodo è l'ultimo figlio del suo genitore, allora il **NextSibling** La proprietà è *null*. Al contrario, se il nodo è il primo figlio del suo genitore, **PreviousSibling** La proprietà è *null*.

Il seguente esempio di codice mostra come visitare in modo efficiente tutti i nodi diretti e indiretti di un nodo composito:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Accesso digitato ai nodi del bambino e del genitore

Finora, abbiamo discusso le proprietà che restituiscono uno dei tipi di base – **Node** o **CompositeNode**. Ma a volte ci sono situazioni in cui potrebbe essere necessario lanciare valori a una specifica classe nodo, come **Run** o **Paragraph**. Cioè, non si può completamente allontanarsi dal casting quando si lavora con Aspose.Words DOM, che è composito.

Per ridurre la necessità di colata, la maggior parte Aspose.Words le classi forniscono proprietà e collezioni che forniscono un accesso fortemente di tipo. Ci sono tre modelli di base di accesso digitato:

- Un nodo genitore espone digitato **FirstXXX** e **LastXXX** proprietà. Per esempio, il **Document** ha [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) e [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) proprietà. Analogamente, **Table** ha proprietà come [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), e altri.
- Un nodo genitore espone una raccolta di nodi per bambini tipo, come [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), e altri.
- Un nodo bambino fornisce accesso digitato al genitore, come [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), e altri.

Proprietà digitate sono semplicemente utili scorciatoie che a volte forniscono un accesso più facile rispetto alle proprietà generiche ereditate da [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) e [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

Il seguente esempio di codice mostra come utilizzare le proprietà digitate per accedere ai nodi dell'albero del documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
