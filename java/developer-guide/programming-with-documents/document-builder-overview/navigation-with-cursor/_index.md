---
title: Navigation with Cursor
description: "Aspsoe.Words for Java enables you to navigate between different nodes within a document, such as a paragraph, bookmark, or a specific character, using a virtual cursor."
type: docs
weight: 5
url: /java/navigation-with-cursor/
---

While working with a document, even if it is a short or long one, you will need to navigate through your document. Navigation with a virtual cursor represents the ability to navigate between different nodes in a document.

Within a short document, moving around in a document is simple as you can move the insertion point even by using the keyboard's arrow keys or by clicking the mouse to locate the insertion point wherever you want. But once you have a large document that has multiple pages, these basic techniques will be insufficient.

This article explains how to move around in a document and navigate with a virtual cursor to different parts of it.

## Detecting Current Cursor Position

Before starting the process of navigating through your document, you will need to get the node that is currently selected. You can get the exact position of the cursor at a selected node by using the [CurrentNode](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#CurrentNode) property. In addition, instead of getting the current node, you can get the currently selected paragraph or the currently selected section by using the [CurrentParagraph](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#CurrentParagraph) and [CurrentSection](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#CurrentSection) properties.

Any insert operations you perform using the [DocumentBuilder](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder) will be inserted before the [CurrentNode](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#CurrentNode). When the current paragraph is empty or the cursor is positioned just before the end of the paragraph, the **CurrentNode** returns null.

## Navigating Methods in a Document

When you are editing text, it is important to know how to navigate your document and where exactly to move in it. Aspose.Words allows you to move around in a document and navigate to its different sections and parts – this is similar to the functionality of the Navigation Pane in Microsoft Word to go to a page or heading in a Word document without scrolling.

The main method is to be able to move the cursor position to a specific node in your document, you can achieve this by using the [MoveTo](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveTo(com.aspose.words.Node)) method.

The following code example demonstrates how to move the **DocumentBuilder** to different nodes in a document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

But besides the basic **MoveTo** method, there are more specific ones.

### Navigate to Beginning or End of a Document

You can go to the beginning or the end of your document using the [MoveToDocumentStart](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToDocumentStart()) and [MoveToDocumentEnd](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToDocumentEnd()) methods.

The following code example shows how to move the cursor position to the beginning or the end of a document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Navigate With Bookmarks

You can mark a place that you want to find and move to it again easily. You can insert as multiple bookmarks into your document as you want, and then navigate through them by identifying the bookmarks with unique names. You can move to a bookmark by using the [MoveToBookmark](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToBookmark(java.lang.String,boolean,boolean)) method.

The following code examples shows how to move a cursor position to a bookmark:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Navigate to Table Cells

You can move to a table cell by using the [MoveToCell](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToCell(int,int,int,int)) method. This method will enable you to navigate your cursor into any cell in a specific table. In addition, you can specify an index to move the cursor to any position or specified character in a cell within the **MoveToCell** method.

The following code example shows how to move a cursor position to a specified table cell:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Navigate to a Field

You can move to a specific field in your document by using the [MoveToField](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToField(com.aspose.words.Field,boolean)) method. In addition, you can move to a specific merge field by using the [MoveToMergeField](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToMergeField(java.lang.String)) method.

The following code example demonstrates how to move the document builder cursor to a specific field:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Navigate to a Header or Footer

You can move to the beginning of a header or footer by using the [MoveToHeaderFooter](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToHeaderFooter(int)) method. 

The following code example demonstrates how to move document builder cursor to a document header or footer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Navigate to a Section or Paragraph

You can move to a specific section or paragraph by using the [MoveToParagraph](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToParagraph(int,int)) or [MoveToSection](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#moveToSection(int)) methods. In addition, you can specify an index to move the cursor to any position or a specified character in a paragraph within the **MoveToParagraph** method.

The following code example shows how to move to a specific section and a specific paragraph in a document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
