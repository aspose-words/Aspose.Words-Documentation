---
title: Navigation with Cursor
description: "Aspsoe.Words for C++ allows you to navigate between different nodes within a document, such as a paragraph, bookmark, or a specific character, using a virtual cursor."
type: docs
weight: 10
url: /cpp/navigation-with-cursor/
---

While working with a document, even if it is a short or long one, you will need to navigate through your document. Navigation with a virtual cursor represents the ability to navigate between different nodes in a document.

Within a short document, moving around in a document is simple as you can move the insertion point even by using the keyboard's arrow keys or by clicking the mouse to locate the insertion point wherever you want. But once you have a large document that has many pages, these basic techniques will be insufficient.

This article explains how to move around in a document and navigate with a virtual cursor to different parts of it.

## Detecting Current Cursor Position

Before starting the process of navigating through your document, you will need to get the node that is currently selected. You can get the exact position of the cursor at a selected node by using the [CurrentNode](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a98889ad9aa0ba7c34a36ac1090d15910) property. In addition, instead of getting the current node, you can get the currently selected paragraph or the currently selected section by using the [CurrentParagraph](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a79d8876082340234ad5bf2f27df8711c) and [CurrentSection](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#ab09289a4fe2b90e1daef83e0c6823b28) properties.

Any insert operations you perform using the [DocumentBuilder](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder) will be inserted before the [CurrentNode](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a98889ad9aa0ba7c34a36ac1090d15910). When the current paragraph is empty or the cursor is positioned just before the end of the paragraph, the **CurrentNode** returns null.

## Navigating Methods in a Document

When you are editing text, it is important to know how to navigate your document and where exactly to move in it. Aspose.Words allows you to move around in a document and navigate to its different sections and parts – this is similar to the functionality of the Navigation Pane in Microsoft Word to go to a page or heading in a Word document without scrolling.

The main method is to be able to move the cursor position to a specific node in your document, you can achieve this by using the [MoveTo](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a28f8a4ba4b51fbc5aab7fe9e1bfd2fa9) method.

The following code example shows how to move the **DocumentBuilder** to different nodes in a document:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Start a bookmark and add content to it using a DocumentBuilder.
builder.StartBookmark("MyBookmark");
builder.Writeln("Bookmark contents.");
builder.EndBookmark("MyBookmark");

// The node that the DocumentBuilder is currently at is past the boundaries of the bookmark.
Assert.AreEqual(doc.Range.Bookmarks[0].BookmarkEnd, builder.CurrentParagraph.FirstChild);

// If we wish to revise the content of our bookmark with the DocumentBuilder, we can move back to it like this.
builder.MoveToBookmark("MyBookmark");

// Now we're located between the bookmark's BookmarkStart and BookmarkEnd nodes, so any text the builder adds will be within it.
Assert.AreEqual(doc.Range.Bookmarks[0].BookmarkStart, builder.CurrentParagraph.FirstChild);

// We can move the builder to an individual node,
// which in this case will be the first node of the first paragraph, like this.
builder.MoveTo(doc.FirstSection.Body.FirstParagraph.GetChildNodes(NodeType.Any, false)[0]);

Assert.AreEqual(NodeType.BookmarkStart, builder.CurrentNode.NodeType);
Assert.IsTrue(builder.IsAtStartOfParagraph);

// A shorter way of moving the very start/end of a document is with these methods.
builder.MoveToDocumentEnd();
Assert.IsTrue(builder.IsAtEndOfParagraph);
builder.MoveToDocumentStart();
Assert.IsTrue(builder.IsAtStartOfParagraph);
{{< /highlight >}}

But besides the basic **MoveTo** method, there are more specific ones.

### Navigate to Beginning or End of a Document

You can go to the beginning or  the end of your document using the [MoveToDocumentStart](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a883df72569ee5de6693962198ce8a93f) and [MoveToDocumentEnd](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a06de091c8b56ce18eff0a1a822420647) methods.

The following code example shows how to move the cursor position to the beginning or the end of a document:

{{< highlight csharp >}}
// Load you document.
Document doc =  new Document(MyDir + "Document.docx");
DocumentBuilder builder = new DocumentBuilder(doc);
// Move the cursor position to the beginning of your document.
builder.MoveToDocumentStart();
builder.Writeln("This is the beginning of the document.");

// Move the cursor position to the end of your document.
builder.MoveToDocumentEnd();
builder.Writeln("This is the end of the document.");
{{< /highlight >}}

### Navigate With Bookmarks

You can mark a place that you want to find and move to it again easily. You can insert as many bookmarks into your document as you want, and then navigate through them by identifying the bookmarks with unique names. You can move to a bookmark by using the [MoveToBookmark](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#adbed2f8a3051692dd4589fadec6576e6) method.

The following code examples shows how to move a cursor position to a bookmark:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Start a bookmark and add content to it using a DocumentBuilder.
builder.StartBookmark("MyBookmark");
builder.Writeln("Bookmark contents.");
builder.EndBookmark("MyBookmark");

// If we wish to revise the content of our bookmark with the DocumentBuilder, we can move back to it like this.
builder.MoveToBookmark("MyBookmark");

// Now we're located between the bookmark's BookmarkStart and BookmarkEnd nodes, so any text the builder adds will be within it.
Assert.AreEqual(doc.Range.Bookmarks[0].BookmarkStart, builder.CurrentParagraph.FirstChild);

// We can move the builder to an individual node,
// which in this case will be the first node of the first paragraph, like this.
builder.MoveTo(doc.FirstSection.Body.FirstParagraph.GetChildNodes(NodeType.Any, false)[0]);
Assert.AreEqual(NodeType.BookmarkStart, builder.CurrentNode.NodeType);
{{< /highlight >}}

### Navigate to Table Cells

You can move to a table cell by using the [MoveToCell](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#aec7fe7cdcde66fbce497014a27c6a426) method. This method will enable you to navigate your cursor into any cell in a specific table. In addition, you can specify an index to move the cursor to any position or specified character in a cell within the **MoveToCell** method.

The following code example shows how to move a cursor position to a specified table cell:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Tables.docx");
DocumentBuilder builder = new DocumentBuilder(doc);

// Move the builder to row 3, cell 4 of the first table.
builder.MoveToCell(0, 2, 3, 0);
builder.Write("\nCell contents added by DocumentBuilder");
Table table = (Table)doc.GetChild(NodeType.Table, 0, true);

Assert.AreEqual(table.Rows[2].Cells[3], builder.CurrentNode.ParentNode.ParentNode);
Assert.AreEqual("Cell contents added by DocumentBuilderCell 3 contents\a", table.Rows[2].Cells[3].GetText().Trim());
{{< /highlight >}}

### Navigate to a Field

You can move to a specific field in your document by using the [MoveToField](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#aa2e587f5c35b83512d4355efafc97300) method. In addition, you can move to a specific merge field by using the [MoveToMergeField](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#af94abbbc337a85f3bacfdc8b93bc79d6) method.

The following code example shows how to move the document builder cursor to a specific field:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Insert a field using the DocumentBuilder and add a run of text after it.
Field field = builder.InsertField("MERGEFIELD field");
builder.Write(" Text after the field.");

// The builder's cursor is currently at end of the document.
Assert.Null(builder.CurrentNode);
// We can move the builder to a field like this, placing the cursor at immediately after the field.
builder.MoveToField(field, true);

// Note that the cursor is at a place past the FieldEnd node of the field, meaning that we are not actually inside the field.
// If we wish to move the DocumentBuilder to inside a field,
// we will need to move it to a field's FieldStart or FieldSeparator node using the DocumentBuilder.MoveTo() method.
Assert.AreEqual(field.End, builder.CurrentNode.PreviousSibling);
builder.Write(" Text immediately after the field.");
{{< /highlight >}}

### Navigate to a Header or Footer

You can move to the beginning of a header or footer by using the [MoveToHeaderFooter](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a7a7e4a62578b022e5b201ab55c4dd658) method. 

The following code example shows how to move document builder cursor to a document header or footer:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Specify that we want headers and footers different for first, even and odd pages.
builder.PageSetup.DifferentFirstPageHeaderFooter = true;
builder.PageSetup.OddAndEvenPagesHeaderFooter = true;

// Create the headers.
builder.MoveToHeaderFooter(HeaderFooterType.HeaderFirst);
builder.Write("Header for the first page");
builder.MoveToHeaderFooter(HeaderFooterType.HeaderEven);
builder.Write("Header for even pages");
builder.MoveToHeaderFooter(HeaderFooterType.HeaderPrimary);
builder.Write("Header for all other pages");

// Create two pages in the document.
builder.MoveToSection(0);
builder.Writeln("Page1");
builder.InsertBreak(BreakType.PageBreak);
builder.Writeln("Page2");

doc.Save(ArtifactsDir + "DocumentBuilder.HeadersAndFooters.docx");
{{< /highlight >}}

### Navigate to a Section or Paragraph

You can move to a specific section or paragraph by using the [MoveToParagraph](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a47f4661fa21baca0fa4b694f4058a674) or [MoveToSection](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a415920fd3d8356ac7e6abbc41bc61a12) methods. In addition, you can specify an index to move the cursor to any position or a specified character in a paragraph within the **MoveToParagraph** method.

The following code example shows how to move to a specific section and a specific paragraph in a document:

{{< highlight csharp >}}
// Create a blank document and append a section to it, giving it two sections.
Document doc = new Document();
doc.AppendChild(new Section(doc));

// Move a DocumentBuilder to the second section and add text.
DocumentBuilder builder = new DocumentBuilder(doc);
builder.MoveToSection(1);
builder.Writeln("Text added to the 2nd section.");

// Create document with paragraphs.
Document doc = new Document(MyDir + "Paragraphs.docx");
ParagraphCollection paragraphs = doc.FirstSection.Body.Paragraphs;
Assert.AreEqual(22, paragraphs.Count);

// When we create a DocumentBuilder for a document, its cursor is at the very beginning of the document by default,
// and any content added by the DocumentBuilder will just be prepended to the document.
DocumentBuilder builder = new DocumentBuilder(doc);
Assert.AreEqual(0, paragraphs.IndexOf(builder.CurrentParagraph));

// You can move the cursor to any position in a paragraph.
builder.MoveToParagraph(0, 14);
Assert.AreEqual(2, paragraphs.IndexOf(builder.CurrentParagraph)); //ExSkip
builder.Writeln("This is a new third paragraph. ");
Assert.AreEqual(3, paragraphs.IndexOf(builder.CurrentParagraph));
doc = DocumentHelper.SaveOpen(doc);
Assert.AreEqual("This is a new third paragraph.", doc.FirstSection.Body.Paragraphs[2].GetText().Trim());
{{< /highlight >}}