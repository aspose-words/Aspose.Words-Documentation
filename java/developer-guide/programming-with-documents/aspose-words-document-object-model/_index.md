---
title: Aspose.Words Document Object Model (DOM)
type: docs
description: "Aspose.Words Document Object Model (DOM) is an in-memory representation of a Word document. By using the Aspose.Words DOM classes, you can programmatically read, manipulate, and modify the content and formatting of a Word document with Java."
weight: 10
url: /java/aspose-words-document-object-model/
---

The Aspose.Words Document Object Model (DOM) is an in-memory representation of a Word document. The Aspose.Words DOM allows you to programmatically read, manipulate, and modify the content and formatting of a Word document.

This section describes the main classes of the Aspose.Words DOM and their relationships. By using the Aspose.Words DOM classes, you can obtain programmatic access to document elements and formatting.

## Create Document Object Tree {#create-a-document-objects-tree}

When a document is read into the Aspose.Words DOM, then an object tree is built and different types of elements of the source document have their own DOM tree objects with various properties.

### Build Document Nodes Tree {#build-document-nodes-tree}

When Aspose.Words reads a Word document into memory, it creates objects of different types that represent various document elements. Every run of a text, paragraph, table, or section is a node, and even the document itself is a node. Aspose.Words defines a class for every document node type.

The document tree in Aspose.Words follows the Composite Design Pattern:

- All node classes ultimately derive from the [Node](https://apireference.aspose.com/words/java/com.aspose.words/node) class, which is the base class in the Aspose.Words Document Object Model.
- Nodes that can contain other nodes, for example, **Section** or **Paragraph**, derive from the [CompositeNode](https://apireference.aspose.com/words/java/com.aspose.words/compositenode) class, which in turn derives from the **Node** class.

The diagram provided below shows inheritance between node classes of the Aspose.Words Document Object Model (DOM). The names of abstract classes are in Italics.

<img src="aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

The Aspose.Words DOM also contains the non-node classes, such as [Style](https://apireference.aspose.com/words/java/com.aspose.words/style) or [Font](https://apireference.aspose.com/words/java/com.aspose.words/Font), which are used to customize the appearance and styles  within a document. These classes are not shown in this diagram as not inherited from the Node class.

{{% /alert %}}

Let's look at an example. The following image shows a Microsoft Word document with different types of content.

<img src="document-example.png" alt="document-example" style="width:700px"/>

When reading the above document into the Aspose.Words DOM, the tree of objects is created, as shown in the schema below.

<img src="document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://apireference.aspose.com/words/java/com.aspose.words/Document), [Section](https://apireference.aspose.com/words/java/com.aspose.words/section), [Paragraph](https://apireference.aspose.com/words/java/com.aspose.words/Paragraph), [Table](https://apireference.aspose.com/words/java/com.aspose.words/Table), [Shape](https://apireference.aspose.com/words/java/com.aspose.words/Shape), [Run](https://apireference.aspose.com/words/java/com.aspose.words/Run), and all other ellipses on the diagram are Aspose.Words objects that represent elements of the Word document.

### Get a Type of Nodes {#get-a-node-type}

Although the [Node](https://apireference.aspose.com/words/java/com.aspose.words/node) class is sufficient enough to distinguish different nodes from each other, Aspose.Words provides the [NodeType](https://apireference.aspose.com/words/java/com.aspose.words/nodetype) enumeration to simplify some API tasks, such as selecting nodes of a specific type.

The type of each node can be obtained using the [NodeType](https://apireference.aspose.com/words/java/com.aspose.words/node#NodeType) property. This property returns a **NodeType** enumeration value. For example, a paragraph node represented by the **Paragraph** class returns **NodeType**.**Paragraph**, and a table node represented by the **Table** class returns **NodeType**.**Table**.

The following example shows how to get a node type using the **NodeType** enumeration:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## DOM Navigation {#document-tree-navigation}

Aspose.Words represents a document as a node tree, which allows you to navigate between nodes. This section describes how to explore and navigate the document tree in Aspose.Words.

When you open the sample document, presented earlier, in the Document Explorer, the node tree appears exactly as it is represented in Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

You can learn the sample project "Document Explorer" on the [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

{{% /alert %}}

### Document Nodes Relationships {#document-nodes-relationships}

The nodes in the tree have relationships between them:

- A node containing another node is a *parent.*
- The node contained in the parent node is a *child.* Child nodes of the same parent are *sibling* nodes.
- The *root* node is always the [Document](https://apireference.aspose.com/words/java/com.aspose.words/Document) node.

The nodes that can contain other nodes derive from the [CompositeNode](https://apireference.aspose.com/words/java/com.aspose.words/compositenode) class, and all nodes ultimately derive from the [Node](https://apireference.aspose.com/words/java/com.aspose.words/node) class. These two base classes provide common methods and properties for the tree structure navigation and modification.

The following UML object diagram demonstrates many nodes of the sample document and their relations to each other via the parent, child, and sibling properties:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Document is Node Owner

A node always belongs to a particular document, even if it has been just created or removed from the tree, because vital document-wide structures such as styles and lists are stored in the **Document** node. For example, it is not possible to have a **Paragraph** without a **Document** because each paragraph has an assigned style that is defined globally for the document. This rule is used when creating any new nodes. Adding a new **Paragraph** directly to the DOM requires a document object passed to the constructor.

{{% alert color="primary" %}}

The [Node.Document](https://apireference.aspose.com/words/java/com.aspose.words/node#Document) property returns the document to which the node belongs.

{{% /alert %}}

When creating a new paragraph using [DocumentBuilder](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder), the builder always has a **Document** class linked to it through the [DocumentBuilder.Document](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#Document) property.

The following code example demonstrates that when creating any node, a document that will own the node is always defined:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Parent Node

Each node has a parent specified by the [ParentNode](https://apireference.aspose.com/words/java/com.aspose.words/node#ParentNode) property. A node has no parent node, that is, **ParentNode** is null, in the following cases:

- The node has just been created and has not yet been added to the tree.
- The node has been removed from the tree.
- This is the root **Document** node which always has a null parent node.

You can remove a node from its parent by calling the [Remove](https://apireference.aspose.com/words/java/com.aspose.words/node#remove()) method.The following code example demonstrates how to access the parent node:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Child Nodes

The most efficient way to access child nodes of a [CompositeNode](https://apireference.aspose.com/words/java/com.aspose.words/compositenode) is via the [FirstChild](https://apireference.aspose.com/words/java/com.aspose.words/compositenode#FirstChild) and [LastChild](https://apireference.aspose.com/words/java/com.aspose.words/compositenode#LastChild) properties that return the first and last child nodes, respectively. If there are no child nodes, these properties return *null*.

**CompositeNode** also provides the [ChildNodes](https://apireference.aspose.com/words/java/com.aspose.words/compositenode#ChildNodes) collection enabling indexed or enumerated access to the child nodes. The **ChildNodes** property is a live collection of nodes, which means that whenever the document is changed, such as when nodes are removed or added, the **ChildNodes** collection is automatically updated.

If a node has no child, then the **ChildNodes** property returns an empty collection. You can check whether the **CompositeNode** contains any child nodes using the [HasChildNodes](https://apireference.aspose.com/words/java/com.aspose.words/compositenode#HasChildNodes) property.

The following code example shows how to enumerate immediate child nodes of a CompositeNode using the enumerator provided by the ChildNodes collection:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

The following code example shows how to enumerate immediate child nodes of a CompositeNode using indexed access:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Sibling Nodes

You can obtain the node that immediately precedes or follows a particular node using the [PreviousSibling](https://apireference.aspose.com/words/java/com.aspose.words/node#PreviousSibling) and [NextSibling](https://apireference.aspose.com/words/java/com.aspose.words/node#NextSibling) properties, respectively. If a node is the last child of its parent, then the **NextSibling** property is *null*. Conversely, if the node is the first child of its parent, the **PreviousSibling** property is *null*.

The following code example demonstrates how to efficiently visit all direct and indirect child nodes of a composite node:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Typed Access to Child and Parent Nodes

So far, we have discussed the properties that return one of the base types – **Node** or **CompositeNode**. But sometimes there are situations where you might need to cast values to a specific node class, such as **Run** or **Paragraph**. That is, you cannot completely get away from casting when working with the Aspose.Words DOM, which is composite.

To reduce the need for casting, most Aspose.Words classes provide properties and collections that provide strongly-typed access. There are three basic patterns of typed access:

- A parent node exposes typed **FirstXXX** and **LastXXX** properties. For example, the **Document** has [FirstSection](https://apireference.aspose.com/words/java/com.aspose.words/document#FirstSection) and [LastSection](https://apireference.aspose.com/words/java/com.aspose.words/document#LastSection) properties. Similarly, **Table** has properties such as [FirstRow](https://apireference.aspose.com/words/java/com.aspose.words/table#FirstRow), [LastRow](https://apireference.aspose.com/words/java/com.aspose.words/table#LastRow), and others.
- A parent node exposes a typed collection of child nodes, such as [Document.Sections](https://apireference.aspose.com/words/java/com.aspose.words/Document#sections), [Body.Paragraphs](https://apireference.aspose.com/words/java/com.aspose.words/story#paragraphs), and others.
- A child node provides typed access to its parent, such as [Run.ParentParagraph](https://apireference.aspose.com/words/java/com.aspose.words/inline#parentparagraph), [Paragraph.ParentSection](https://apireference.aspose.com/words/java/com.aspose.words/Paragraph#parentsection), and others.

Typed properties are merely useful shortcuts that sometimes provide easier access than generic properties inherited from [Node.ParentNode](https://apireference.aspose.com/words/java/com.aspose.words/node#parentnode) and [CompositeNode.FirstChild](https://apireference.aspose.com/words/java/com.aspose.words/compositenode#firstchild).

The following code example shows how to use typed properties to access nodes of the document tree:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
