---
title: Navigation with Cursor
description: "Aspsoe.Words for Java allows you to navigate between different nodes within a document, such as a paragraph, bookmark, or a specific character, using a virtual cursor."
type: docs
weight: 5
url: /java/navigation-with-cursor/
---

While working with a document, even if it is a short or long one, you will need to navigate through your document. Navigation with a virtual cursor represents the ability to navigate between different nodes in a document.

Within a short document, moving around in a document is simple as you can move the insertion point even by using the keyboard's arrow keys or by clicking the mouse to locate the insertion point wherever you want. But once you have a large document that has many pages, these basic techniques will be insufficient.

This article explains how to move around in a document and navigate with a virtual cursor to different parts of it.

## Detecting Current Cursor Position

Before starting the process of navigating through your document, you will need to get the node that is currently selected. You can get the exact position of the cursor at a selected node by using the [CurrentNode](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#CurrentNode) property. In addition, instead of getting the current node, you can get the currently selected paragraph or the currently selected section by using the [CurrentParagraph](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#CurrentParagraph) and [CurrentSection](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#CurrentSection) properties.

Any insert operations you perform using the [DocumentBuilder](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder) will be inserted before the [CurrentNode](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#CurrentNode). When the current paragraph is empty or the cursor is positioned just before the end of the paragraph, the **CurrentNode** returns null.

## Navigating Methods in a Document

When you are editing text, it is important to know how to navigate your document and where exactly to move in it. Aspose.Words allows you to move around in a document and navigate to its different sections and parts – this is similar to the functionality of the Navigation Pane in Microsoft Word to go to a page or heading in a Word document without scrolling.

The main method is to be able to move the cursor position to a specific node in your document, you can achieve this by using the [MoveTo](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveTo(com.aspose.words.Node)) method.

The following code example shows how to move the **DocumentBuilder** to different nodes in a document:

{{< highlight java >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Start a bookmark and add content to it using a DocumentBuilder.
builder.startBookmark("MyBookmark");
builder.writeln("Bookmark contents.");
builder.endBookmark("MyBookmark");

// The node that the DocumentBuilder is currently at is past the boundaries of the bookmark.
Assert.assertEquals(doc.getRange().getBookmarks().get(0).getBookmarkEnd(), builder.getCurrentParagraph().getFirstChild());

// If we wish to revise the content of our bookmark with the DocumentBuilder, we can move back to it like this.
builder.moveToBookmark("MyBookmark");

// Now we're located between the bookmark's BookmarkStart and BookmarkEnd nodes, so any text the builder adds will be within it.
Assert.assertEquals(doc.getRange().getBookmarks().get(0).getBookmarkStart(), builder.getCurrentParagraph().getFirstChild());

// We can move the builder to an individual node,
// which in this case will be the first node of the first paragraph, like this.
builder.moveTo(doc.getFirstSection().getBody().getFirstParagraph().getChildNodes(NodeType.ANY, false).get(0));

Assert.assertEquals(NodeType.BOOKMARK_START, builder.getCurrentNode().getNodeType());
Assert.assertTrue(builder.isAtStartOfParagraph());

// A shorter way of moving the very start/end of a document is with these methods.
builder.moveToDocumentEnd();
Assert.assertTrue(builder.isAtEndOfParagraph());
builder.moveToDocumentStart();
Assert.assertTrue(builder.isAtStartOfParagraph());
{{< /highlight >}}

But besides the basic **MoveTo** method, there are more specific ones.

### Navigate to Beginning or End of a Document

You can go to the beginning or the end of your document using the [MoveToDocumentStart](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToDocumentStart()) and [MoveToDocumentEnd](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToDocumentEnd()) methods.

The following code example shows how to move the cursor position to the beginning or the end of a document:

{{< highlight java >}}
// Load you document.
Document doc = new Document(getMyDir() + "Document.docx");
DocumentBuilder builder = new DocumentBuilder(doc);
// Move the cursor position to the beginning of your document.
builder.moveToDocumentStart();
builder.writeln("This is the beginning of the document.");

// Move the cursor position to the end of your document.
builder.moveToDocumentEnd();
builder.writeln("This is the end of the document.");
{{< /highlight >}}

### Navigate With Bookmarks

You can mark a place that you want to find and move to it again easily. You can insert as many bookmarks into your document as you want, and then navigate through them by identifying the bookmarks with unique names. You can move to a bookmark by using the [MoveToBookmark](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToBookmark(java.lang.String,boolean,boolean)) method.

The following code examples shows how to move a cursor position to a bookmark:

{{< highlight java >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Start a bookmark and add content to it using a DocumentBuilder.
builder.startBookmark("MyBookmark");
builder.writeln("Bookmark contents.");
builder.endBookmark("MyBookmark");

// If we wish to revise the content of our bookmark with the DocumentBuilder, we can move back to it like this.
builder.moveToBookmark("MyBookmark");

// Now we're located between the bookmark's BookmarkStart and BookmarkEnd nodes, so any text the builder adds will be within it.
Assert.assertEquals(doc.getRange().getBookmarks().get(0).getBookmarkStart(), builder.getCurrentParagraph().getFirstChild());

// We can move the builder to an individual node,
// which in this case will be the first node of the first paragraph, like this.
builder.moveTo(doc.getFirstSection().getBody().getFirstParagraph().getChildNodes(NodeType.ANY, false).get(0));
Assert.assertEquals(NodeType.BOOKMARK_START, builder.getCurrentNode().getNodeType());
{{< /highlight >}}

### Navigate to Table Cells

You can move to a table cell by using the [MoveToCell](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToCell(int,int,int,int)) method. This method will enable you to navigate your cursor into any cell in a specific table. In addition, you can specify an index to move the cursor to any position or specified character in a cell within the **MoveToCell** method.

The following code example shows how to move a cursor position to a specified table cell:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Tables.docx");
DocumentBuilder builder = new DocumentBuilder(doc);

// Move the builder to row 3, cell 4 of the first table.
builder.moveToCell(0, 2, 3, 0);
builder.write("\nCell contents added by DocumentBuilder");
Table table = (Table)doc.getChild(NodeType.TABLE, 0, true);

Assert.assertEquals(table.getRows().get(2).getCells().get(3), builder.getCurrentNode().getParentNode().getParentNode());
Assert.assertEquals("Cell contents added by DocumentBuilderCell 3 contents\u0007", table.getRows().get(2).getCells().get(3).getText().trim());
{{< /highlight >}}

### Navigate to a Field

You can move to a specific field in your document by using the [MoveToField](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToField(com.aspose.words.Field,boolean)) method. In addition, you can move to a specific merge field by using the [MoveToMergeField](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToMergeField(java.lang.String)) method.

The following code example shows how to move the document builder cursor to a specific field:

{{< highlight java >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Insert a field using the DocumentBuilder and add a run of text after it.
Field field = builder.insertField("MERGEFIELD field");
builder.write(" Text after the field.");

// The builder's cursor is currently at end of the document.
Assert.assertNull(builder.getCurrentNode());
// We can move the builder to a field like this, placing the cursor at immediately after the field.
builder.moveToField(field, true);

// Note that the cursor is at a place past the FieldEnd node of the field, meaning that we are not actually inside the field.
// If we wish to move the DocumentBuilder to inside a field,
// we will need to move it to a field's FieldStart or FieldSeparator node using the DocumentBuilder.MoveTo() method.
Assert.assertEquals(field.getEnd(), builder.getCurrentNode().getPreviousSibling());
builder.write(" Text immediately after the field.");
{{< /highlight >}}

### Navigate to a Header or Footer

You can move to the beginning of a header or footer by using the [MoveToHeaderFooter](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToHeaderFooter(int)) method. 

The following code example shows how to move document builder cursor to a document header or footer:

{{< highlight java >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Specify that we want headers and footers different for first, even and odd pages.
builder.getPageSetup().setDifferentFirstPageHeaderFooter(true);
builder.getPageSetup().setOddAndEvenPagesHeaderFooter(true);

// Create the headers.
builder.moveToHeaderFooter(HeaderFooterType.HEADER_FIRST);
builder.write("Header for the first page");
builder.moveToHeaderFooter(HeaderFooterType.HEADER_EVEN);
builder.write("Header for even pages");
builder.moveToHeaderFooter(HeaderFooterType.HEADER_PRIMARY);
builder.write("Header for all other pages");

// Create two pages in the document.
builder.moveToSection(0);
builder.writeln("Page1");
builder.insertBreak(BreakType.PAGE_BREAK);
builder.writeln("Page2");

doc.save(getArtifactsDir() + "DocumentBuilder.HeadersAndFooters.docx");
{{< /highlight >}}

### Navigate to a Section or Paragraph

You can move to a specific section or paragraph by using the [MoveToParagraph](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToParagraph(int,int)) or [MoveToSection](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToSection(int)) methods. In addition, you can specify an index to move the cursor to any position or a specified character in a paragraph within the **MoveToParagraph** method.

The following code example shows how to move to a specific section and a specific paragraph in a document:

{{< highlight java >}}
// Create a blank document and append a section to it, giving it two sections.
Document doc = new Document();
doc.appendChild(new Section(doc));

// Move a DocumentBuilder to the second section and add text.
DocumentBuilder builder = new DocumentBuilder(doc);
builder.moveToSection(1);
builder.writeln("Text added to the 2nd section.");

// Create document with paragraphs.
doc = new Document(getMyDir() + "Paragraphs.docx");
ParagraphCollection paragraphs = doc.getFirstSection().getBody().getParagraphs();
Assert.assertEquals(22, paragraphs.getCount());

// When we create a DocumentBuilder for a document, its cursor is at the very beginning of the document by default,
// and any content added by the DocumentBuilder will just be prepended to the document.
builder = new DocumentBuilder(doc);
Assert.assertEquals(0, paragraphs.indexOf(builder.getCurrentParagraph()));

// You can move the cursor to any position in a paragraph.
builder.moveToParagraph(0, 14);
Assert.assertEquals(2, paragraphs.indexOf(builder.getCurrentParagraph())); //ExSkip
builder.writeln("This is a new third paragraph. ");
Assert.assertEquals(3, paragraphs.indexOf(builder.getCurrentParagraph()));
doc = DocumentHelper.saveOpen(doc);
Assert.assertEquals("This is a new third paragraph.", doc.getFirstSection().getBody().getParagraphs().get(2).getText().trim());
{{< /highlight >}}