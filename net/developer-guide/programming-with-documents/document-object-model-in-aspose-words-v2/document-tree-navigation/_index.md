---
title: Document Tree Navigation
type: docs
weight: 10
url: /net/document-tree-navigation/
---

Aspose.Words represents a document as a nodes tree, which enables you to navigate between nodes. This section describes how to explore and navigate the document tree in Aspose.Words.

When you open the sample document presented earlier in **Document Explorer** [MG: Why the Document Explorer? How can we see a document structure if this document is in .doc format?], it shows the tree of nodes exactly as it is represented in Aspose.Words:

|**Tree of nodes.**|** |
| :- | :- |
|![todo:image_alt_text](/plugins/servlet/confluence/placeholder/unknown-attachment)| |
## **Document Nodes Relationships**
The nodes in the tree have relationships between them:

- A node containing another node is a *parent.*
- The node contained in the parent node is a *child.* Child nodes of the same parent are *sibling* nodes.

{{% alert color="primary" %}} 

The [Document](https://docs.aspose.com/pages/createpage.action?spaceKey=wordsnet&title=Document+Class&linkCreation=true&fromPageId=102465811) node is always the *root* node.

{{% /alert %}} 

The nodes that can contain other nodes derive from the [CompositeNode](https://apireference.aspose.com/words/net/aspose.words/compositenode) class, and all nodes ultimately derive from the [Node](https://apireference.aspose.com/words/net/aspose.words/node) class. These two base classes provide common methods and properties for the tree structure navigation and modification.

The UML object diagram provided below shows several nodes of the sample document and their relations to each other via the parent, child, and sibling properties:

[Delete or update the diagram.]

|**Several nodes of the fax sample document.**|** |
| :- | :- |
|![todo:image_alt_text](/plugins/servlet/confluence/placeholder/unknown-attachment)| |
### **Node Belongs to a Specific Document**
[MG: Rephrase.]

A node always belongs to a particular document, even if it has been just created or removed from the tree, because vital document-wide structures such as styles and lists are stored in the **Document** node. For example, it is not possible to have a **Paragraph** without a **Document** because each paragraph has an assigned style that is defined globally for the document. This rule is used when creating a new node. For instance, adding a new **Paragraph** directly to the DOM requires a document object to be passed to the constructor. The **Node.Document** property returns the document to which the node belongs – it is the paragraph in this example.

When creating a new paragraph using **DocumentBuilder**, the builder always has a **Document** class linked to it through the **DocumentBuilder**.**Document** property.

The following code example shows that when creating any node, a document that will own the node is always defined:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}
### **Parent Node**
Each node has a parent specified by the [ParentNode](https://apireference.aspose.com/net/words/aspose.words/node/properties/parentnode) property. When a node is created but not yet added to the tree or already removed from the tree, it does not have a parent node, that is, ParentNode is null. Note that the root **Document** node always has a null parent node. You can remove a node from its parent by calling the [Remove](https://apireference.aspose.com/words/net/aspose.words/node/methods/remove) method.

The following code example shows how to access the parent node:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}
### **Child Nodes**
The most efficient way to access child nodes of a CompositeNode is via the CompositeNode.FirstChild and CompositeNode.LastChild properties that return the first and last child nodes, respectively. If there are no child nodes, these properties return a null.

**CompositeNode** also provides the [CompositeNode.ChildNode](http://www.aspose.com/api/net/words/aspose.words/compositenode/properties/childnodes)[s](http://www.aspose.com/api/net/words/aspose.words/compositenode/properties/childnodes) collection enabling indexed or enumerated access to the child nodes. The **CompositeNode.ChildNodes** property is a live collection of nodes, which means that whenever the document is changed, that is, nodes are removed or added, the **CompositeNode.ChildNodes** collection is automatically updated.

If a node has no child nodes, then the **CompositeNode.ChildNodes** property returns an empty collection. Therefore, you can check whether a **CompositeNode** contains any child nodes using the [CompositeNode.HasChildNodes](http://www.aspose.com/api/net/words/aspose.words/compositenode/properties/haschildnodes) property. 

The following code example shows how to enumerate immediate child nodes of a CompositeNode using the enumerator provided by the ChildNodes collection:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

The following code example shows how to enumerate immediate child nodes of a CompositeNode using indexed access:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}
### **Sibling Nodes**
You can obtain the node that immediately precedes or follows a particular node using the [PreviousSibling](https://apireference.aspose.com/words/net/aspose.words/node/properties/previoussibling) and [NextSibling](https://apireference.aspose.com/words/net/aspose.words/node/properties/nextsibling) properties, respectively. If a node is the last child of its parent, then the **NextSibling** property is null. Conversely, if the node is the first child of its parent, the **PreviousSibling** property is null.

The following code example shows how to efficiently visit all direct and indirect child nodes of a composite node.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

Since the child nodes are internally stored in Aspose.Words in a single linked list, using the **NextSibling** is more efficient than the **PreviousSibling.**
## **Typed Access to Child Nodes and Parent**
The properties discussed so far return one of the base node types: **Node** or **CompositeNode**. When working with an object model, which is a Composite, like the Aspose.Words DOM, you have to sometimes cast the values to the desired class of the node, such as **Run** or **Paragraph**. To reduce the need for casting, most of the Aspose.Words classes provide properties and collections that strictly allow only typed access. There are three basic patterns for typed access:

- A parent node exposes typed **FirstXXX** and **LastXXX** properties. For example, the Document has [Document.FirstSection](http://www.aspose.com/api/net/words/aspose.words/document/properties/firstsection) and [Document.LastSection](http://www.aspose.com/api/net/words/aspose.words/document/properties/lastsection) properties. Similarly, Table has TableFirstRow and [Table.LastRow](http://www.aspose.com/api/net/words/aspose.words.tables/table/properties/lastrow) properties, and so on.
- A parent node exposes a typed collection of child nodes, for example, [Document.Sections](http://www.aspose.com/api/net/words/aspose.words/document/properties/sections), [Body.Paragraphs](http://www.aspose.com/api/net/words/aspose.words/story/properties/paragraphs), and so on.
- A child node provides typed access to its parent, for example, [Run.ParentParagraph](http://www.aspose.com/api/net/words/aspose.words/inline/properties/parentparagraph), [Paragraph.ParentSection](http://www.aspose.com/api/net/words/aspose.words/paragraph/properties/parentsection).

Typed properties are merely useful shortcuts that sometimes allow easier access than the generic properties inherited from [Node.ParentNode](http://www.aspose.com/api/net/words/aspose.words/node/properties/parentnode) and [CompositeNode.FirstChild](http://www.aspose.com/api/net/words/aspose.words/compositenode/properties/firstchild).

The following code example shows how to use typed properties to access nodes of the document tree:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
