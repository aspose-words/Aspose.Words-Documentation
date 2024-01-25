---
title: Logical Levels of Nodes in a Document
second_title: Aspose.Words for Python via .NET
articleTitle: Logical Levels of Nodes in a Document
linktitle: Logical Levels of Nodes in a Document
type: docs
description: "In Aspose.Words for Python via .NET documentation mentioned logical levels of nodes – block level, inline level, or row level. The node level is used to describe the location in the document tree where the node is typically occur."
weight: 10
url: /python-net/logical-levels-of-nodes-in-a-document/
aliases: [/python/logical-levels-of-nodes-in-a-document/]
---

This documentation sometimes refers to a group of node classes as belonging to a "level" in a document, such as "block-level", "inline-level" (also known as "inline"), or “row-level” nodes. These levels in a document are differentiated purely logically and are not explicitly expressed by inheritance or other Aspose.Words DOM means. The node level is used to describe the place in the document tree where the node would typically occur.

In the previous article, we already talked about the relationship between nodes and the fact that not all nodes are allowed to be a child of any nodes. For example, [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) can only be a [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) child, and a [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) can only be a [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) child, and so on. These relationships are also applicable for logical division of nodes into levels in the document.

The following sections describe the logical levels of nodes in Aspose.Words and the classes that belong to each level.

## Document and Section Logical Level

A Word document consists of one or more sections, represented by the [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) class and separated by section breaks. A section can define its own page size, margins, orientation, number of text columns, and headers and footers.

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) and [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) level nodes have the structure as shown in the following diagram.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words" style="width:700px"/>

A section contains the main text, as well as headers and footers for the first, even, and odd pages. These different “flows” of text are called *stories*.

In Aspose.Words, the [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) node contains the [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) and [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) story nodes. The [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) object stores the main text. The [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) objects store the text for each header and footer. The text of any story consists of paragraphs and tables, respectively represented by the [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) and [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) objects of the Block-level.

Additionally, each Word document can contain a glossary, which is represented by the [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) node in Aspose.Words. A glossary document contains [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/) [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text), and [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct) entries.

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) includes [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) nodes representing different types of glossary document entries. Each [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) contains sections that can be inserted, removed, and copied into documents.

## Block Logical Level

Block-level nodes represent containers for content and content controls, and can occur in the document tree child nodes in the following nodes:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Block-level nodes are represented by the following classes:

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) and [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), which are the most important block-level nodes
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/), which occurs both at the block-level and at the inline-level
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/), which represent custom markup and can contain both content and content controls

The following diagram shows block-level elements.

<img src="block-level.png" alt="block-level-aspose-words" style="width:550px"/>

## Inline Logical Level

Inline-level nodes represent the actual content of the document and can be contained in the following containers:

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) – the most common container
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Inline-level elements are represented by the following classes:

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) – runs of text formatted differently
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) and [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) represent bookmarks
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) and [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) represent annotations
- [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) and [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) that represent field characters, and [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) represent Word fields
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) represents special characters in the document
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) and [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) represent shapes, drawings, images, etc.
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) and [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) represent custom markup

The following diagram shows the inline-level nodes structure.

<img src="inline-level.png" alt="inline-level-aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

Shapes in Microsoft Word include Office Art AutoShapes, text boxes, images, OLE objects, and ActiveX controls, all of which are represented using the `Shape` class. Some shapes can also contain text, so Shape nodes in Aspose.Words can contain block-level nodes.

Shapes can be grouped inside each other using [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) nodes.

{{% /alert %}}

{{% alert color="primary" %}}

Footnotes and comments can contain text, therefore [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) and [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) nodes in Aspose.Words can contain block-level nodes.

{{% /alert %}}

## Table, Row, and Cell Node Level

The table consists of nodes of rows and cells. [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) elements are represented by the following classes:

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) represents a table row
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) represents a table cell
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) represent custom markup

The following diagram shows the node structures of the [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), and [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) levels.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words" style="width:910px"/>