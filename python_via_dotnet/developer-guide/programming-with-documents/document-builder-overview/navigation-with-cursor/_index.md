---
title: Navigation with Cursor
description: "Aspsoe.Words for Python via .NET allows you to navigate between different nodes within a document, such as a paragraph, bookmark, or a specific character, using a virtual cursor."
type: docs
weight: 10
url: /python/navigation-with-cursor/
---

While working with a document, even if it is a short or long one, you will need to navigate through your document. Navigation with a virtual cursor represents the ability to navigate between different nodes in a document.

Within a short document, moving around in a document is simple as you can move the insertion point even by using the keyboard's arrow keys or by clicking the mouse to locate the insertion point wherever you want. But once you have a large document that has many pages, these basic techniques will be insufficient.

This article explains how to move around in a document and navigate with a virtual cursor to different parts of it.

## Detecting Current Cursor Position

Before starting the process of navigating through your document, you will need to get the node that is currently selected. You can get the exact position of the cursor at a selected node by using the **current_node** property. In addition, instead of getting the current node, you can get the currently selected paragraph or the currently selected section by using the **current_paragraph** and **current_section** properties.

Any insert operations you perform using the **DocumentBuilder** will be inserted before the **current_node**. When the current paragraph is empty or the cursor is positioned just before the end of the paragraph, the **current_node** returns None.

## Navigating Methods in a Document

When you are editing text, it is important to know how to navigate your document and where exactly to move in it. Aspose.Words allows you to move around in a document and navigate to its different sections and parts – this is similar to the functionality of the Navigation Pane in Microsoft Word to go to a page or heading in a Word document without scrolling.

The main method is to be able to move the cursor position to a specific node in your document, you can achieve this by using the **move_to** method.

The following code example shows how to move the **DocumentBuilder** to different nodes in a document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

But besides the basic **move_to** method, there are more specific ones.

### Navigate to Beginning or End of a Document

You can go to the beginning or  the end of your document using the **move_to_document_start** and **move_to_document_end** methods.

The following code example shows how to move the cursor position to the beginning or the end of a document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Navigate With Bookmarks

You can mark a place that you want to find and move to it again easily. You can insert as many bookmarks into your document as you want, and then navigate through them by identifying the bookmarks with unique names. You can move to a bookmark by using the **move_to_bookmark** method.

The following code examples shows how to move a cursor position to a bookmark:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Navigate to Table Cells

You can move to a table cell by using the **move_to_cell** method. This method will enable you to navigate your cursor into any cell in a specific table. In addition, you can specify an index to move the cursor to any position or specified character in a cell within the **move_to_cell** method.

The following code example shows how to move a cursor position to a specified table cell:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Navigate to a Field

You can move to a specific field in your document by using the **move_to_field** method. In addition, you can move to a specific merge field by using the **move_to_merge_field** method.

The following code example shows how to move the document builder cursor to a specific field:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Navigate to a Header or Footer

You can move to the beginning of a header or footer by using the **move_to_header_footer** method. 

The following code example shows how to move document builder cursor to a document header or footer:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Navigate to a Section or Paragraph

You can move to a specific section or paragraph by using the **move_to_paragraph** or **move_to_section** methods. In addition, you can specify an index to move the cursor to any position or a specified character in a paragraph within the **move_to_paragraph** method.

The following code example shows how to move to a specific section and a specific paragraph in a document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}