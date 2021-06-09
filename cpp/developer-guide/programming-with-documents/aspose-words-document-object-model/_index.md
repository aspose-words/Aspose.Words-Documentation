---
title: Aspose.Words Document Object Model (DOM)
type: docs
description: "Aspose.Words Document Object Model (DOM) is an in-memory representation of a Word document. By using the Aspose.Words DOM classes, you can programmatically read, manipulate, and modify the content and formatting of a Word document with C++."
weight: 10
url: /cpp/aspose-words-document-object-model/
---

The Aspose.Words Document Object Model (DOM) is an in-memory representation of a Word document. The Aspose.Words DOM allows you to programmatically read, manipulate, and modify the content and formatting of a Word document.

This section describes the main classes of the Aspose.Words DOM and their relationships. By using the Aspose.Words DOM classes, you can obtain programmatic access to document elements and formatting.

## Create a Document Objects Tree

When a document is read into the Aspose.Words DOM, then an object tree is built and different types of elements of the source document have their own DOM tree objects with various properties.

### Build Document Nodes Tree

When Aspose.Words reads a Word document into memory, it creates objects of different types that represent various document elements. Every run of a text, paragraph, table, or section is a node, and even the document itself is a node. Aspose.Words defines a class for every document node type.

The document tree in Aspose.Words follows the Composite Design Pattern:

- All node classes ultimately derive from the [Node](https://apireference.aspose.com/words/cpp/class/aspose.words.node) class, which is the base class in the Aspose.Words Document Object Model.
- Nodes that can contain other nodes, for example, **Section** or **Paragraph**, derive from the [CompositeNode](https://apireference.aspose.com/words/cpp/class/aspose.words.composite_node) class, which in turn derives from the **Node** class.

The diagram provided below shows inheritance between node classes of the Aspose.Words Document Object Model (DOM). The names of abstract classes are in Italics.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

The Aspose.Words DOM also contains the non-node classes, such as [Style](https://apireference.aspose.com/words/cpp/class/aspose.words.style) or [Font](https://apireference.aspose.com/words/cpp/class/aspose.words.font), which are used to customize the appearance and styles  within a document. These classes are not shown in this diagram as not inherited from the Node class.

{{% /alert %}}

Let's look at an example. The following image shows a Microsoft Word document with different types of content.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

When reading the above document into the Aspose.Words DOM, the tree of objects is created, as shown in the schema below.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://apireference.aspose.com/words/cpp/class/aspose.words.document), [Section](https://apireference.aspose.com/words/cpp/class/aspose.words.section), [Paragraph](https://apireference.aspose.com/words/cpp/class/aspose.words.paragraph), [Table](https://apireference.aspose.com/words/cpp/class/aspose.words.tables.table/), [Shape](https://apireference.aspose.com/words/cpp/class/aspose.words.drawing.shape), [Run](https://apireference.aspose.com/words/cpp/class/aspose.words.run), and all other ellipses on the diagram are Aspose.Words objects that represent elements of the Word document.

### Get a Node Type

Although the [Node](https://apireference.aspose.com/words/cpp/class/aspose.words.node) class is sufficient enough to distinguish different nodes from each other, Aspose.Words provides the [NodeType](https://apireference.aspose.com/words/cpp/namespace/aspose.words#a344de11ed54cf046eea1f8954a396379afeaf0a320c3d678ad30dd179b7d21584) enumeration to simplify some API tasks, such as selecting nodes of a specific type.

The type of each node can be obtained using the [NodeType](https://apireference.aspose.com/words/cpp/class/aspose.words.node#a7f80e8d96b7a072fca14157b25ae025e) property. This property returns a **NodeType** enumeration value. For example, a paragraph node represented by the **Paragraph** class returns **NodeType**.**Paragraph**, and a table node represented by the **Table** class returns **NodeType**.**Table**.

The following example shows how to get a node type using the **NodeType** enumeration:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## Document Tree Navigation

Aspose.Words represents a document as a node tree, which enables you to navigate between nodes. This section describes how to explore and navigate the document tree in Aspose.Words.

When you open the sample document, presented earlier, in the Document Explorer, the node tree appears exactly as it is represented in Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### Document Nodes Relationships

The nodes in the tree have relationships between them:

- A node containing another node is a *parent.*
- The node contained in the parent node is a *child.* Child nodes of the same parent are *sibling* nodes.
- The *root* node is always the [Document](https://apireference.aspose.com/words/cpp/class/aspose.words.document) node.

The nodes that can contain other nodes derive from the [CompositeNode](https://apireference.aspose.com/words/cpp/class/aspose.words.composite_node) class, and all nodes ultimately derive from the [Node](https://apireference.aspose.com/words/cpp/class/aspose.words.node) class. These two base classes provide common methods and properties for the tree structure navigation and modification.

The following UML object diagram shows several nodes of the sample document and their relations to each other via the parent, child, and sibling properties:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### Document is Node Owner

A node always belongs to a particular document, even if it has been just created or removed from the tree, because vital document-wide structures such as styles and lists are stored in the **Document** node. For example, it is not possible to have a **Paragraph** without a **Document** because each paragraph has an assigned style that is defined globally for the document. This rule is used when creating any new nodes. Adding a new **Paragraph** directly to the DOM requires a document object passed to the constructor.

{{% alert color="primary" %}}

The [Node.Document]https://apireference.aspose.com/words/cpp/class/aspose.words.node#a5ae4d3ec96cbace25092593c9514702e) property returns the document to which the node belongs.

{{% /alert %}}

When creating a new paragraph using [DocumentBuilder](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder), the builder always has a **Document** class linked to it through the [DocumentBuilder.Document](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a25edb10fb6a2ace8bb32e015a28976a9) property.

The following code example shows that when creating any node, a document that will own the node is always defined:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### Parent Node

Each node has a parent specified by the [ParentNode](https://apireference.aspose.com/words/cpp/class/aspose.words.node#aa57efaf56855239b19affd7d3862331a) property. A node has no parent node, that is, **ParentNode** is null, in the following cases:

- The node has just been created and has not yet been added to the tree.
- The node has been removed from the tree.
- This is the root **Document** node which always has a null parent node.

You can remove a node from its parent by calling the [Remove](https://apireference.aspose.com/words/cpp/class/aspose.words.node#a75a9cc0fda5ec9c8aaa1c4910af8f28c) method.The following code example shows how to access the parent node:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### Child Nodes

The most efficient way to access child nodes of a [CompositeNode](https://apireference.aspose.com/words/cpp/class/aspose.words.composite_node) is via the [FirstChild](https://apireference.aspose.com/words/cpp/class/aspose.words.composite_node#a1c5a97dd08796b6313df330c1cfbbaa6) and [LastChild](https://apireference.aspose.com/words/cpp/class/aspose.words.composite_node#a7a945bbf5d18f828e0474a29c4de68f3) properties that return the first and last child nodes, respectively. If there are no child nodes, these properties return *null*.

**CompositeNode** also provides the [ChildNodes](https://apireference.aspose.com/words/cpp/class/aspose.words.composite_node#a5a0355cb3ff650a500136591eec61f64) collection enabling indexed or enumerated access to the child nodes. The **ChildNodes** property is a live collection of nodes, which means that whenever the document is changed, such as when nodes are removed or added, the **ChildNodes** collection is automatically updated.

If a node has no child, then the **ChildNodes** property returns an empty collection. You can check whether the **CompositeNode** contains any child nodes using the [HasChildNodes](https://apireference.aspose.com/words/cpp/class/aspose.words.composite_node#a4b939686e9a6a245a31cf392d202316d) property.

The following code example shows how to enumerate immediate child nodes of a CompositeNode using the enumerator provided by the ChildNodes collection:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

The following code example shows how to enumerate immediate child nodes of a CompositeNode using indexed access:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### Sibling Nodes

You can obtain the node that immediately precedes or follows a particular node using the [PreviousSibling](https://apireference.aspose.com/words/cpp/class/aspose.words.node#a3efe4b6a104236249001b9387b6d0dc9) and [NextSibling](https://apireference.aspose.com/words/cpp/class/aspose.words.node#a8067faf92dd3e744efdb02b64fc953ff) properties, respectively. If a node is the last child of its parent, then the **NextSibling** property is *null*. Conversely, if the node is the first child of its parent, the **PreviousSibling** property is *null*.

The following code example shows how to efficiently visit all direct and indirect child nodes of a composite node:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### Typed Access to Child and Parent Nodes

So far, we have discussed the properties that return one of the base types – **Node** or **CompositeNode**. But sometimes there are situations where you might need to cast values to a specific node class, such as **Run** or **Paragraph**. That is, you cannot completely get away from casting when working with the Aspose.Words DOM, which is composite.

To reduce the need for casting, most Aspose.Words classes provide properties and collections that provide strongly-typed access. There are three basic patterns of typed access:

- A parent node exposes typed **FirstXXX** and **LastXXX** properties. For example, the **Document** has [FirstSection](https://apireference.aspose.com/words/cpp/class/aspose.words.document#a044d3a1e5d9fda27584bcfe2f705f3c9) and [LastSection](https://apireference.aspose.com/words/cpp/class/aspose.words.document#a511657b8d94e9772d7e54c673766ca6e) properties. Similarly, **Table** has properties such as [FirstRow](https://apireference.aspose.com/words/cpp/class/aspose.words.tables.table#a23ac8deb884a430e8eee7d6ca1928251), [LastRow](https://apireference.aspose.com/words/cpp/class/aspose.words.tables.table#a9c4abb95dba64fb0085d4d696e4f963e), and others.
- A parent node exposes a typed collection of child nodes, such as [Document.Sections](https://apireference.aspose.com/words/cpp/class/aspose.words.document#ab9f72b25508f474a5ff2d9fd35287e6a), [Body.Paragraphs](https://apireference.aspose.com/words/cpp/class/aspose.words.story#a6139f2f08679e114163bf35adc4767e6), and others.
- A child node provides typed access to its parent, such as [Run.ParentParagraph](https://apireference.aspose.com/words/cpp/class/aspose.words.inline#a4c6c80a822f6b06c505ae56e3aba9af4), [Paragraph.ParentSection](https://apireference.aspose.com/words/cpp/class/aspose.words.paragraph#a0c85d0dfb9c34f51f01c3a87224ea872), and others.

Typed properties are merely useful shortcuts that sometimes provide easier access than generic properties inherited from [Node.ParentNode](https://apireference.aspose.com/words/cpp/class/aspose.words.node#aa57efaf56855239b19affd7d3862331a) and [CompositeNode.FirstChild](https://apireference.aspose.com/words/cpp/class/aspose.words.composite_node#a1c5a97dd08796b6313df330c1cfbbaa6).

The following code example shows how to use typed properties to access nodes of the document tree:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}