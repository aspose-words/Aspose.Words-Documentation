---
title: Aspose.Words Document Object Model
type: docs
weight: 10
url: /java/aspose-words-document-object-model/
---

This section describes the main classes of the Aspose.Words Document Object Model (DOM) and its relationships. By using the classes of the Aspose.Words DOM, you can obtain detailed programmatic access to document elements and formatting. 

The Aspose.Words Document Object Model (DOM) is an in-memory representation of a Word document. The Aspose.Words DOM allows you to programmatically read, manipulate, modify the content and, formatting of a Word document.

A sample document showing how it appears in Microsoft Word.

![todo:image_alt_text](http://i.imgur.com/dWXX1ZR.png)

The tree of objects is created when the above document is read into the Aspose.Words DOM.

![todo:image_alt_text](http://i.imgur.com/lqwWRET.png)

[Document](https://apireference.aspose.com/words/java/com.aspose.words/classes/Document), [Section](https://apireference.aspose.com/words/java/com.aspose.words/classes/Section), [Paragraph](https://apireference.aspose.com/words/java/com.aspose.words/classes/Paragraph), [Table](https://apireference.aspose.com/words/java/com.aspose.words/classes/Table), [Shape](https://apireference.aspose.com/words/java/com.aspose.words/classes/Shape), [Run](https://apireference.aspose.com/words/java/com.aspose.words/classes/Run) and all other ellipses on this diagram are Aspose.Words objects that represent elements of a Word document. The objects are organized into a tree. The illustration also shows that the objects in the document tree have various properties. 

The document tree in Aspose.Words follows the Composite Design Pattern:

- All node classes ultimately derive from the [Node](https://apireference.aspose.com/words/java/com.aspose.words/classes/Node) class, which is the basic class in the Aspose.Words Document Object Model.
- Nodes that can contain other nodes, for example [Section](https://apireference.aspose.com/words/java/com.aspose.words/classes/Section) and [Paragraph](https://apireference.aspose.com/words/java/com.aspose.words/classes/Paragraph), derive from the [CompositeNode](https://apireference.aspose.com/words/java/com.aspose.words/classes/CompositeNode) class, which in turn derives from [Node](https://apireference.aspose.com/words/java/com.aspose.words/classes/Node).

## Node Classes

When Aspose.Words reads a Word document into memory, objects of different types are created to represent various document elements. Every run of text, paragraph, table, the section is a node, and even the document itself is a node. Aspose.Words defines a class for every type of document node.

The following illustration is a UML class diagram that shows inheritance between node classes of the Aspose.Words Document Object Model (DOM). The names of abstract classes are in italics. Note that the Aspose.Words DOM also contains non-node classes such as [Style](https://apireference.aspose.com/words/java/com.aspose.words/classes/Style), [PageSetup](https://apireference.aspose.com/words/java/com.aspose.words/classes/PageSetup), [Font](https://apireference.aspose.com/words/java/com.aspose.words/classes/Font)**,** etc that do not participate in the inheritance and they are not shown on this diagram.

|Class diagram.| |
| :- | :- |
|![todo:image_alt_text](http://i.imgur.com/wIUviTq.png)| |
{{% alert color="primary" %}} 

The following table lists Aspose.Words node classes and their short descriptions.

{{% /alert %}} 

|Aspose.Words Class|Category|Description|
| :- | :- | :- |
|[Document](https://apireference.aspose.com/words/java/com.aspose.words/classes/Document)|Document|A document object that, as the root of the document tree, provides access to the entire Word document.|
|[Section](https://apireference.aspose.com/words/java/com.aspose.words/classes/Section)|Document|A section object that corresponds to one section in a Word document.|
|[Body](https://apireference.aspose.com/words/java/com.aspose.words/classes/Body)|Document|A container for the main text of a section (main text story).|
|[HeaderFooter](https://apireference.aspose.com/words/java/com.aspose.words/classes/HeaderFooter)|Document|A container for text of a particular header or footer inside a section.|
|[GlossaryDocument](https://apireference.aspose.com/words/java/com.aspose.words/classes/GlossaryDocument)|Document|Represents the root entry for a glossary document within a Word document.|
|[BuildingBlock](https://apireference.aspose.com/words/java/com.aspose.words/classes/BuildingBlock)|Document|Represents a glossary document entry such as a Building Block, AutoText or an AutoCorrect entry.|
|[Paragraph](https://apireference.aspose.com/words/java/com.aspose.words/classes/Paragraph)|Text|A paragraph of text, contains inline nodes.|
|[Run](https://apireference.aspose.com/words/java/com.aspose.words/classes/Run)|Text|A run of text with consistent formatting.|
|[BookmarkStart](https://apireference.aspose.com/words/java/com.aspose.words/classes/BookmarkStart)|Text|A beginning of a bookmark marker.|
|[BookmarkEnd](https://apireference.aspose.com/words/java/com.aspose.words/classes/BookmarkEnd)|Text|An end of a bookmark marker.|
|[FieldStart](https://apireference.aspose.com/words/java/com.aspose.words/classes/FieldStart)|Text|A special character that designates the start of a Word field.|
|[FieldSeparator](https://apireference.aspose.com/words/java/com.aspose.words/classes/FieldSeparator)|Text|A special character that separates the field code from the field result.|
|[FieldEnd](https://apireference.aspose.com/words/java/com.aspose.words/classes/FieldEnd)|Text|A special character that designates the end of a Word field.|
|[FormField](https://apireference.aspose.com/words/java/com.aspose.words/classes/FormField)|Text|A form field.|
|[SpecialChar](https://apireference.aspose.com/words/java/com.aspose.words/classes/SpecialChar)|Text|A special character that is not one of the more specific special character types.|
|[Table](https://apireference.aspose.com/words/java/com.aspose.words/classes/Table)|Tables|A table in a Word document.|
|[Row](https://apireference.aspose.com/words/java/com.aspose.words/classes/Row)|Tables|A row of a table.|
|[Cell](https://apireference.aspose.com/words/java/com.aspose.words/classes/Cell)|Tables|A cell of a table row.|
|[Shape](https://apireference.aspose.com/words/java/com.aspose.words/classes/Shape)|Shapes|An image, shape, textbox or an OLE object in a Word document.|
|[GroupShape](https://apireference.aspose.com/words/java/com.aspose.words/classes/GroupShape)|Shapes|A group of shapes.|
|[Footnote](https://apireference.aspose.com/words/java/com.aspose.words/classes/Footnote)|Annotations|A footnote or endnote in a Word document, contains text of the footnote.|
|[Comment](https://apireference.aspose.com/words/java/com.aspose.words/classes/Comment)|Annotations|A comment in a Word document, contains text of the comment.|
|[CommentRangeStart](https://apireference.aspose.com/words/java/com.aspose.words/classes/CommentRangeStart)|Annotations|Denotes the start of a region of text which has a comment associated with it.|
|[CommentRangeEnd](https://apireference.aspose.com/words/java/com.aspose.words/classes/CommentRangeEnd)|Annotations|Denotes the end of a region of text which has a comment associated with it.|
|[SmartTag](https://apireference.aspose.com/words/java/com.aspose.words/classes/SmartTag)|Markup|Represents a smart tag around one or more inline structures within a paragraph.|
|CustomXmlMarkup|Markup|Represents Custom XML markup around certain structures in the document.|
|[StructuredDocumentTag](https://apireference.aspose.com/words/java/com.aspose.words/classes/StructuredDocumentTag)|Markup|Represents a structured document tag (content control) within a document.|
|[OfficeMath](https://apireference.aspose.com/words/java/com.aspose.words/classes/OfficeMath)|Math|Represents an Office math object such as a function, equation or matrix.|
The following table lists Aspose.Words base node classes that help to form the class hierarchy.

|Class|Description|
| :- | :- |
|[Node](https://apireference.aspose.com/words/java/com.aspose.words/classes/Node)|Abstract base class for all nodes of a Word document. Provides basic functionality of a child node.|
|[CompositeNode](https://apireference.aspose.com/words/java/com.aspose.words/classes/CompositeNode)|Base class for nodes that can contain other nodes. Provides operations to access, insert, remove and select child nodes.|
|[Story](https://apireference.aspose.com/words/java/com.aspose.words/classes/Story)|Text of a Word document is stored in several stories (independent flows of text). This is a base class for section-level stories: **Body** and **HeaderFooter**.|
|[InlineStory](https://apireference.aspose.com/words/java/com.aspose.words/classes/InlineStory)|Base class for inline-level nodes that can contain a story: **Comment** and, **Footnote**.|
|[Inline](https://apireference.aspose.com/words/java/com.aspose.words/classes/Inline)|Base class for inline-level nodes that consist of a single run of text with font formatting.|
|[DocumentBase](https://apireference.aspose.com/words/java/com.aspose.words/classes/DocumentBase)|Abstract base class for a main document and glossary document of a Word document|

### Distinguish Nodes by NodeType

Although the class of the node is sufficient enough to distinguish different nodes from each other, Aspose.Words provides the NodeType enumeration to simplify some API tasks such as selecting nodes of a specific type. The type of each node can be obtained using the [Node.NodeType](https://apireference.aspose.com/words/java/com.aspose.words/nodetype) property. This property returns a **NodeType** enumeration value. For example, a paragraph node (represented by the **Paragraph** class) returns [NodeType.Paragraph](https://apireference.aspose.com/words/java/com.aspose.words/nodetype#PARAGRAPH), a table node (represented by the **Table** class) returns [NodeType.Table](https://apireference.aspose.com/words/java/com.aspose.words/nodetype#TABLE), and so on.

The following example shows how to use the NodeType enumeration.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

### Logical Levels in a Document

This documentation sometimes refers to a group of node classes as belonging to a "level" in a document, for example "block-level" or "inline-level" (also known as "inline") nodes. The distinction of levels in a document is purely logical and is not explicitly expressed by inheritance or other means in the Aspose.Words DOM.The level of the node is used to describe where in the document tree the node would typically occur. The following table lists the logical node levels, descriptions and the classes that belong to each level.

|Node Level|Classes|Description|
| :- | :- | :- |
|Document level|**Section**|The top-level Document node contains only Section objects. A Section is a container for stories (independent flows of text) for the main text and optionally headers and footers.|
|Block level|**Paragraph**, **Table**, **StructuredDocumentTag**, **CustomXmlMarkup**|Tables and paragraphs are block-level elements and contain other elements. Custom markup nodes can contain nested block-level nodes.|
|Inline level|Run, FormField, SpecialChar, [FieldChar](https://apireference.aspose.com/words/java/com.aspose.words/FieldChar), FieldStart, FieldSeparator, FieldEnd, Shape, GroupShape, Comment, Footnote, CommentRangeStart, CommentRangeEnd, SmartTag, StructuredDocumentTag, CustomXmlMarkup, BookmarkStart and BookmarkEnd.|Inline occur inside a Paragraph and represent the actual content of the document.Footnote, Comment and Shape can contain block-level elements. Custom markup nodes can contain nested inline-level elements|

## Composition Diagrams

The following diagrams define the "schema" of the Aspose.Words document tree. From the diagrams and descriptions, you can understand which nodes can contain which nodes.

### Document and Section

|Document and section diagram.| |
| :- | :- |
|![todo:image_alt_text](http://i.imgur.com/Iosm33m.png)| |
On the above diagram:

- [Document](https://apireference.aspose.com/words/java/com.aspose.words/classes/Document) has one or more [Section](https://apireference.aspose.com/words/java/com.aspose.words/classes/Section) nodes.
- **Section** has one [Body](https://apireference.aspose.com/words/java/com.aspose.words/classes/Body) and zero or more [HeaderFooter](https://apireference.aspose.com/words/java/com.aspose.words/classes/HeaderFooter) nodes.
- Both **Body** and **HeaderFooter** contain zero or more block-level nodes.
- A **Document** can have a [GlossaryDocument](https://apireference.aspose.com/words/java/com.aspose.words/classes/GlossaryDocument).

A Microsoft Word document consists of one or more sections. A section can define its own page size, margins, orientation, number of text columns as well as headers and footers. Sections are separated by section breaks in a document. The **Section** class represents a section of a document.
A section contains the main text as well as headers and footers for the first, even and odd pages. These different “flows” of text are called stories. In Aspose.Words, the **Section** node contains the story nodes **Body** and **HeaderFooter**. The main text is stored inside the **Body** object. The text of each header and footer is stored in **HeaderFooter** objects.
The text of any story consists of paragraphs and tables, represented by the [Paragraph](https://apireference.aspose.com/words/java/com.aspose.words/classes/Paragraph) and [Table](https://apireference.aspose.com/words/java/com.aspose.words/classes/Table) objects respectively.
Additionally, each word document can contain a glossary document. A glossary document stores building blocks, AutoText and AutoCorrect entries. In Aspose.Words this is represented by the **GlossaryDocument** node, which in turn contains [BuildingBlock](https://apireference.aspose.com/words/java/com.aspose.words/classes/BuildingBlock) nodes that represent different types of glossary document entries. Each **BuildingBlock** contains sections which can be inserted, removed and copied in documents.

### Block-level Nodes

|Block-level nodes diagram.| |
| :- | :- |
|![todo:image_alt_text](http://i.imgur.com/zmU0n6w.png)| |
On the above diagram:

- Block-level elements can occur in a number of places in the document tree (e.g. as children of **Body**, [Footnote](https://apireference.aspose.com/words/java/com.aspose.words/classes/Footnote), [Comment](https://apireference.aspose.com/words/java/com.aspose.words/classes/Comment), [Cell](https://apireference.aspose.com/words/java/com.aspose.words/classes/Cell) and other nodes).
- Most important block-level nodes are **Table** and **Paragraph** .
- **Table** contains zero or more rows.
- **Paragraph** contains zero or more inline elements.
- **CustomXmlMarkup** and [StructuredDocumentTag](https://apireference.aspose.com/words/java/com.aspose.words/classes/StructuredDocumentTag) classes can wrap other block-level nodes.

### Inline-level Nodes

|Inline-level nodes diagram.| |
| :- | :- |
|![todo:image_alt_text](http://i.imgur.com/VfXvi9Y.png)| |
On the above diagram:

- **Paragraph** is the most frequently encountered container of inline-level nodes.
- **Paragraph** can contain runs of text formatted differently, represented by [Run](https://apireference.aspose.com/words/java/com.aspose.words/classes/Run) nodes.
- **Paragraph** can contain bookmarks - [BookmarkStart](https://apireference.aspose.com/words/java/com.aspose.words/classes/BookmarkStart) and [BookmarkEnd](https://apireference.aspose.com/words/java/com.aspose.words/classes/BookmarkEnd).
- **Paragraph** can contain annotations – [CommentRangeStart](https://apireference.aspose.com/words/java/com.aspose.words/classes/CommentRangeStart), [CommentRangeEnd](https://apireference.aspose.com/words/java/com.aspose.words/classes/CommentRangeEnd), **Comment** and **Footnote** nodes.
- **Paragraph** can contain Word fields - [FieldStart](https://apireference.aspose.com/words/java/com.aspose.words/classes/FieldStart), [FieldSeparator](https://apireference.aspose.com/words/java/com.aspose.words/classes/FieldSeparator) and [FieldEnd](https://apireference.aspose.com/words/java/com.aspose.words/classes/FieldEnd) nodes that represent field characters and also [FormField](https://apireference.aspose.com/words/java/com.aspose.words/classes/FormField) nodes.
- **Paragraph** can contain shapes, drawings, images etc. represented by [Shape](https://apireference.aspose.com/words/java/com.aspose.words/classes/Shape) and [GroupShape](https://apireference.aspose.com/words/java/com.aspose.words/classes/GroupShape) nodes.
- **Paragraph** can contain custom markup in the form of [SmartTag](https://apireference.aspose.com/words/java/com.aspose.words/classes/SmartTag), **CustomXmlMarkup** and [StructuredDocumentTag](https://apireference.aspose.com/words/java/com.aspose.words/classes/StructuredDocumentTag) nodes that can contain nested inline nodes.

Shapes in Microsoft Word include Office Art auto shapes, textboxes, images, OLE objects and ActiveX controls, all of which are represented using the [Shape](https://apireference.aspose.com/words/java/com.aspose.words/classes/Shape) class. Some shapes can contain text. Shapes can be grouped inside each other using the [GroupShape](https://apireference.aspose.com/words/java/com.aspose.words/classes/GroupShape) nodes. Even though a shape in a Microsoft Word document can be positioned inline with text or floating at any position on the page, a shape always has an “anchor” position in text and the [Shape](https://apireference.aspose.com/words/java/com.aspose.words/classes/Shape) or [GroupShape](https://apireference.aspose.com/words/java/com.aspose.words/classes/GroupShape) object in Aspose.Words represents that anchor position. Documents in DOCX format can contain a special type of graphics called Shape. These are represented by the [Shape](https://apireference.aspose.com/words/java/com.aspose.words/classes/Shape) node.


**Footnote** and **Comment** nodes represent the anchor position of a footnote, endnote or comment in the document. Footnotes and comments can have text inside them, therefore **Footnote** and **Comment** nodes in Aspose.Words can contain block-level nodes.

### Table, Row and Cell

|Table, row and cell diagram.| |
| :- | :- |
|![todo:image_alt_text](http://i.imgur.com/OwKQsk3.png)| |
On the above diagram:

- [Table](https://apireference.aspose.com/words/java/com.aspose.words/classes/Table) can have many rows.
- [Row](https://apireference.aspose.com/words/java/com.aspose.words/classes/Row) can have many cells.
- [Cell](https://apireference.aspose.com/words/java/com.aspose.words/classes/Cell) can contain block-level nodes (e.g. **Paragraph** and **Table** ).
- Rows, cell and block-level elements can be wrapped inside **CustomXmlMarkup** and [StructuredDocumentTag](https://apireference.aspose.com/words/java/com.aspose.words/classes/StructuredDocumentTag).

### About Custom Markup

OOXML documents allow users to embed their own custom semantics in the form of Smart Tags, Structured Document Tags (content controls) and Custom XML Markup. In Aspose.Words a Smart Tag is represented by the [SmartTag](https://apireference.aspose.com/words/java/com.aspose.words/classes/SmartTag) class. A Structured Document Tag is represented by the [StructuredDocumentTag](https://apireference.aspose.com/words/java/com.aspose.words/classes/StructuredDocumentTag) class and Custom XML Markup is represented by the **CustomXmlMarkup** class. Each class exposes properties which allow you to access the custom data of these markup nodes.
A way to think about markup nodes in Aspose.Words is that [SmartTag](https://apireference.aspose.com/words/java/com.aspose.words/classes/SmartTag), [StructuredDocumentTag](https://apireference.aspose.com/words/java/com.aspose.words/classes/StructuredDocumentTag) and **CustomXmlMarkup** nodes “wrap” content on the same level in the document hierarchy. The content that it wraps can then be found as children of the markup node.
Each markup node can be found in different levels in the document. [SmartTag](https://apireference.aspose.com/words/java/com.aspose.words/classes/SmartTag) nodes can only occur at the inline-level. [StructuredDocumentTag](https://apireference.aspose.com/words/java/com.aspose.words/classes/StructuredDocumentTag) and **CustomXmlMarkup** are more flexible and can occur at several different levels in the document tree.
The [StructuredDocumentTag.Level](https://apireference.aspose.com/words/java/com.aspose.words/classes/StructuredDocumentTag) and CustomXmlMarkup.Level properties return the MarkupLevel value that specifies the level of the markup node in the document tree.
The different levels a markup node can be found in the document tree are:

- **Block** – The markup node appears at the block-level. For example, as a child of a [Body](https://apireference.aspose.com/words/java/com.aspose.words/classes/Body) in the document. The children of these markup nodes can contain block-level nodes.
- [Row](https://apireference.aspose.com/words/java/com.aspose.words/classes/Row) – The markup node appears as a child of [Table](https://apireference.aspose.com/words/java/com.aspose.words/classes/Table) and can contain [Row](https://apireference.aspose.com/words/java/com.aspose.words/classes/Row) nodes.
- [Cell](https://apireference.aspose.com/words/java/com.aspose.words/classes/Cell) – The markup node appears as a child of [Row](https://apireference.aspose.com/words/java/com.aspose.words/classes/Row) and can contain [Cell](https://apireference.aspose.com/words/java/com.aspose.words/classes/Cell) nodes.
- [Inline](https://apireference.aspose.com/words/java/com.aspose.words/classes/Inline) – The markup node appears at the inline-level. For example as a child of [Paragraph](https://apireference.aspose.com/words/java/com.aspose.words/classes/Paragraph) and can contain inline-level nodes.

On each level markup nodes of the same level can be nested. For example, [StructuredDocumentTag](https://apireference.aspose.com/words/java/com.aspose.words/classes/StructuredDocumentTag) at the block-level can contain nested block-level [StructuredDocumentTag](https://apireference.aspose.com/words/java/com.aspose.words/classes/StructuredDocumentTag) and **CustomXmlMarkup** nodes.

## Document Tree Navigation

### Tree Overview

Aspose.Words represents a document as a tree of nodes. An integral feature of the tree is the ability to navigate between the nodes. This section shows how to explore and navigate the document tree in Aspose.Words. When the sample fax document presented earlier is opened in **DocumentExplorer** (an example project which is available on [Github](https://github.com/aspose-words/Aspose.Words-for-Java) under "ViewersAndVisualizers"), it shows the tree of nodes exactly as it is represented in Aspose.Words:

|Tree of nodes.| |
| :- | :- |
|![todo:image_alt_text](http://i.imgur.com/zVyqndK.png)| |

### Document Nodes

The nodes in the tree are said to have relationships between them. A node that contains another node is a parent and the contained node is a child. Children of the same parent are sibling nodes. The [Document](https://apireference.aspose.com/words/java/com.aspose.words/classes/Document) node is always the root node.

The nodes that can contain other nodes derive from the [CompositeNode](https://apireference.aspose.com/words/java/com.aspose.words/classes/CompositeNode) class and all nodes ultimately derive from the [Node](https://apireference.aspose.com/words/java/com.aspose.words/classes/Node) class. The two base classes provide common methods and properties to navigate and modify the tree structure.

The following UML class diagram shows the classes and methods we are going to explore in the remainder of this topic:

|Classes and methods.| |
| :- | :- |
|![todo:image_alt_text](http://i.imgur.com/zyRBtrb.png)| |
The UML object diagram below shows several nodes of the fax sample document and how they are connected to each other via the parent, child and sibling properties:

|Several nodes of fax sample document.| |
| :- | :- |
|![todo:image_alt_text](http://i.imgur.com/E8q1uSc.png)| |

#### Parent Node

Each node has a parent that is specified by the Node.ParentNode property. A node does not have a parent node (Node.ParentNode is null) when a node has just been created and not yet added to the tree, or if it has been removed from the tree. You can remove a node from its parent by calling Node.Remove.

{{% alert color="primary" %}} 

The parent node of the root **Document** node is always null.

{{% /alert %}} 

The code sample below shows how to access the parent node.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Owner Document

It is important to mention that a node always belongs to a particular document, even if it was just created or has been removed from the tree. The document to which the node belongs is returned by the Node.Document property. A node always belongs to a document, because some vital document-wide structures such as styles and lists are stored in the [Document](https://apireference.aspose.com/words/java/com.aspose.words/classes/Document) node. For example, it is not possible to have a [Paragraph](https://apireference.aspose.com/words/java/com.aspose.words/classes/Paragraph) without a [Document](https://apireference.aspose.com/words/java/com.aspose.words/classes/Document) because each paragraph has a style assigned to it and the style is defined globally for the document. This rule is enforced when creating any new nodes. For instance, a new [Paragraph](https://apireference.aspose.com/words/java/com.aspose.words/classes/Paragraph) to be added directly to the DOM requires a document object passed to the constructor. This is the document to which the paragraph belongs to. When creating a new paragraph using [DocumentBuilder](https://apireference.aspose.com/words/java/com.aspose.words/classes/DocumentBuilder) the builder always has a Document class linked to it through the [DocumentBuilder.Document](https://apireference.aspose.com/words/java/com.aspose.words/classes/DocumentBuilder) property. The code sample below shows that when you create any node, it requires a document that will own the node.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Child Nodes

The most efficient way to access child nodes of a CompositeNode is via the CompositeNode. FirstChild and CompositeNode. LastChild properties that return the first and last child nodes respectively. If there are no child nodes, a null is returned. [CompositeNode](https://apireference.aspose.com/words/java/com.aspose.words/classes/CompositeNode) also provides the [CompositeNode.ChildNodes](https://apireference.aspose.com/words/java/com.aspose.words/classes/CompositeNode) collection that allows indexed or enumerated access to the children. The [CompositeNode.ChildNodes](https://apireference.aspose.com/words/java/com.aspose.words/classes/CompositeNode) property is a live collection of nodes. It means that whenever the document is changed (nodes removed or inserted), the **CompositeNode.ChildNodes** collection is automatically updated. Node collections are discussed in detail in further topics.If a node has no children, then **CompositeNode.ChildNodes** returns an empty collection. You can check if a **CompositeNode** contains any child nodes using the [CompositeNode.HasChildNodes](https://apireference.aspose.com/words/java/com.aspose.words/classes/compositenode/methods/hasChildNodes\(\)/) property. The code sample below shows how to enumerate immediate children of a CompositeNode using the enumerator provided by the ChildNodes collection.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-EnumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

The code sample below shows how to enumerate immediate children of a CompositeNode using indexed access.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-EnumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Sibling Nodes

You can obtain the node immediately preceding or following a certain node using [Node.PreviousSibling](https://apireference.aspose.com/words/java/com.aspose.words/classes/Node) and [Node.NextSibling](https://apireference.aspose.com/words/java/com.aspose.words/classes/Node), respectively. If a node is the last child of its parent, then the [Node.NextSibling](https://apireference.aspose.com/words/java/com.aspose.words/classes/Node) property is null. Conversely, if the node is a first child of its parent, the Node.PreviousSibling property is null.

Note that because the child nodes are internally stored in a single linked list in Aspose.Words, **Node.NextSibling** is more efficient than **Node.PreviousSibling**.

The code sample below shows how to efficiently visit all direct and indirect children of a composite node.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

#### Typed Access to Children and Parent

So far, we have discussed the properties that return one of the base types Node or CompositeNode. You will have noticed that you might have to cast the values to the concrete class of the node, such as Run or Paragraph. Many casting or explicit conversions between types using the **as** operator is often considered a bad smell in an object oriented code. However, casting is not always bad; sometimes a bit of casting is necessary. We found you cannot completely get away without casting when working with an object model that is a Composite, like the Aspose.Words DOM. To reduce the need for casting, most of the Aspose.Words classes provide properties and collections that allow strictly typed access. There are three basic patterns for typed access:

- A parent node exposes typed **FirstXXX** and **LastXXX** properties. For example, **Document** has [Document.FirstSection](https://apireference.aspose.com/words/java/com.aspose.words/classes/Document) and [Document.LastSection](https://apireference.aspose.com/words/java/com.aspose.words/classes/Document) properties. Similarly, [Table](https://apireference.aspose.com/words/java/com.aspose.words/classes/Table) has [Table.FirstRow](https://apireference.aspose.com/words/java/com.aspose.words/classes/Table) and [Table.LastRow](https://apireference.aspose.com/words/java/com.aspose.words/classes/Table) properties and so on.
- A parent node exposes a typed collection of child nodes, for example [Document.Sections](https://apireference.aspose.com/words/java/com.aspose.words/classes/Document), [Body.Paragraphs](https://apireference.aspose.com/words/java/com.aspose.words/classes/body/methods/getParagraphs\(\)/) and so on.
- A child node provides typed access to its parent, for example [Run.ParentParagraph](https://apireference.aspose.com/words/java/com.aspose.words/classes/run/methods/getParentParagraph\(\)/), [Paragraph.ParentSection](https://apireference.aspose.com/words/java/com.aspose.words/classes/paragraph/methods/getParentSection\(\)/) etc. Typed properties are merely useful shortcuts that sometimes allow easier access than the generic properties inherited from [Node.ParentNode](https://apireference.aspose.com/words/java/com.aspose.words/classes/node/methods/getParentNode\(\)/) and [CompositeNode.FirstChild](https://apireference.aspose.com/words/java/com.aspose.words/classes/compositenode/methods/getFirstChild\(\)/).

The code sample below shows how to use typed properties to access nodes of the document tree.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}

## Design Patterns in Aspose.Words

For a better understanding of the Aspose.Words object model, the design patterns used in the public interfaces are described here. The links to online descriptions of the patterns are provided where possible, but of course, for the best coverage see the GoF book if this is one of their patterns.

### Document Object Model is a Composite

General Composite related ideas:

- [Node](https://apireference.aspose.com/words/java/com.aspose.words/classes/Node) is the base class for all nodes.
- [CompositeNode](https://apireference.aspose.com/words/java/com.aspose.words/classes/CompositeNode) is the base class for composite nodes.
- In our implementation, the base [Node](https://apireference.aspose.com/words/java/com.aspose.words/classes/Node) class does not have the child management nodes in its interface. The child management methods appear only in [CompositeNode](https://apireference.aspose.com/words/java/com.aspose.words/classes/CompositeNode).
- We found that removing the child management methods from the base class made interfaces much cleaner and did not bring in a lot of extra type casting.

Here is a description of the [Composite pattern](http://en.wikipedia.org/wiki/Composite_pattern) in Wikipedia Aspose.Words specific:

- Many methods and properties of [Node](https://apireference.aspose.com/words/java/com.aspose.words/classes/Node) and [CompositeNode](https://apireference.aspose.com/words/java/com.aspose.words/classes/CompositeNode) were designed to be similar to **XmlDocument**, **XmlNode** and **XmlElement** intentionally to help shorten the learning curve.
- The [Document](https://apireference.aspose.com/words/java/com.aspose.words/classes/Document) class is the root node for a complete Word document.
- A node always belongs to a [Document](https://apireference.aspose.com/words/java/com.aspose.words/classes/Document) even if it is "detached" from the tree and does not have a parent node. This is needed because the node might have some formatting properties that are valid only in the context of a specific [Document](https://apireference.aspose.com/words/java/com.aspose.words/classes/Document).
- When moving or copying nodes between different documents you need to use [Document.ImportNode](https://apireference.aspose.com/words/java/com.aspose.words/classes/Document) before you can insert a node from a different document.
- [CompositeNode.ChildNodes](https://apireference.aspose.com/words/java/com.aspose.words/classes/compositenode/methods/getChildNodes\(\)/), [CompositeNode.GetChildNodes](https://apireference.aspose.com/words/java/com.aspose.words/compositenode/methods/getchildnodes) return [NodeCollection](https://apireference.aspose.com/words/java/com.aspose.words/nodecollection), which is a wrapper that represents a selection of nodes as a live collection.
- [Document.Sections](https://apireference.aspose.com/words/java/com.aspose.words/classes/document/methods/getSections\(\)/), [Section.HeadersFooters](https://apireference.aspose.com/words/java/com.aspose.words/classes/section/methods/getHeadersFooters\(\)/), [Story.Paragraphs](https://apireference.aspose.com/words/java/com.aspose.words/classes/story/methods/getParagraphs\(\)/) and so on are typed-wrapper collections that derive from [NodeCollection](https://apireference.aspose.com/words/java/com.aspose.words/classes/NodeCollection) and provide typed access to a selection of nodes of a specific type.

### DocumentBuilder is a Builder for a Composite

{{% alert color="primary" %}} 

Generally, it is easy to work the document tree directly, inserting and removing nodes where you want them.

{{% /alert %}} 

The code sample below shows how to creates and adds a paragraph node.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-CreateAndAddParagraphNode-.java" >}}

However, there are cases where creating a document element directly is not so straightforward and it is better to have some utility that will do the creation for you. For example to create a Word field several nodes need to be inserted, and you should make sure they are all in an appropriate state: FieldStart, Run for the field code, FieldSeparator, one or more Run nodes for the field result and FieldEnd. Inserting a form field is even more complex; it needs a complete Word field as well as FormField, BookmarkStart and BookmarkEnd nodes.

[DocumentBuilder](https://apireference.aspose.com/words/java/com.aspose.words/classes/DocumentBuilder) is the tool that makes the process of building a document simpler. There are two groups of methods: to move the cursor to a node where you want to do the building, and to insert something at the cursor.

Although [DocumentBuilder](https://apireference.aspose.com/words/java/com.aspose.words/classes/DocumentBuilder) does not exactly fulfil the intent of the [Builder pattern](http://en.wikipedia.org/wiki/Builder_pattern) (the builder pattern is used to enable the creation of a variety of complex objects from one source object), we still call it Builder because that is what it does.

### Range is a Facade for a Composite

A text document with a complex structure and formatting such as a Microsoft Word document is hard to represent in an easy and user-friendly object model.We choose to represent it as a tree of nodes because it gives the users of Aspose.Words what they want - detailed access to the document content in a reasonably familiar environment ( **XmlDocument** -like API) and makes it possible for us to actually do it (unlike an API similar to Microsoft Word Automation that we wanted initially).

Therefore, you have the tool to examine and modify Word files, but it turns out some operations on "flat text" are quite hard to do with a "tree model". Such seemingly easy things as find and replace, delete a paragraph or a section break can require significant efforts to traverse the tree, split and join tree nodes and so on.

The [Range](https://apireference.aspose.com/words/java/com.aspose.words/range) class (although still in its infancy) is designed to hide the "tree look" of the model behind a "flat text" interface. For example, **Range** provides find and replace functionality that can search and replace across different **Run** , [Paragraph](https://apireference.aspose.com/words/java/com.aspose.words/paragraph), [Table](https://apireference.aspose.com/words/java/com.aspose.words.tables/table) etc nodes and it hides a lot behind the scenes as it has to cut, move and join nodes of the tree as it goes. We think **Range** is clearly a [Façade pattern](http://en.wikipedia.org/wiki/Facade_pattern) .

### More Facades for Various Document Elements

Bookmark is a Facade that allows you to work with two nodes BookmarkStart and BookmarkEnd as a single entity.

### DocumentVisitor is a Visitor

The Visitor pattern is famous for its ability to allow the addition of new operations to an existing object model without modifying the model.Just derive from [DocumentVisitor](https://apireference.aspose.com/words/java/com.aspose.words/documentvisitor), override the **VisitXXX** methods such as [DocumentVisitor.VisitParagraphStart](https://apireference.aspose.com/words/java/com.aspose.words/documentvisitor/methods/visitparagraphstart) and [DocumentVisitor.VisitRun](https://apireference.aspose.com/words/java/com.aspose.words/documentvisitor/methods/visitrun) that receive the calls for the desired nodes. Call [Node.Accept](https://apireference.aspose.com/words/java/com.aspose.words/node/methods/accept) on the node from which you want to start enumeration and it will all work. You can even return a value from your **VisitXXX** methods to indicate how the enumeration should continue.

We also extensively use **DocumentVisitor** ourselves:* All export converters DOC, HTML and PDF inside Aspose.Words are implemented as document visitors.

- Internal field and bookmark finders, and revision accepting engine are all implemented as document visitors.

[DocumentBase](https://apireference.aspose.com/words/java/com.aspose.words/documentbase)