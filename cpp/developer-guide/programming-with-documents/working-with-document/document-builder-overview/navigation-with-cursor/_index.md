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

Any insert operations you perform using the [DocumentBuilder](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder) will be inserted before the [CurrentNode](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a98889ad9aa0ba7c34a36ac1090d15910). When the current paragraph is empty or the cursor is positioned just before the end of the paragraph, the **CurrentNode** returns nullptr.

## Navigating Methods in a Document

When you are editing text, it is important to know how to navigate your document and where exactly to move in it. Aspose.Words allows you to move around in a document and navigate to its different sections and parts – this is similar to the functionality of the Navigation Pane in Microsoft Word to go to a page or heading in a Word document without scrolling.

The main method is to be able to move the cursor position to a specific node in your document, you can achieve this by using the [MoveTo](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a28f8a4ba4b51fbc5aab7fe9e1bfd2fa9) method.

The following code example shows how to move the **DocumentBuilder** to different nodes in a document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

But besides the basic **MoveTo** method, there are more specific ones.

### Navigate to Beginning or End of a Document

You can go to the beginning or the end of your document using the [MoveToDocumentStart](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a883df72569ee5de6693962198ce8a93f) and [MoveToDocumentEnd](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a06de091c8b56ce18eff0a1a822420647) methods.

The following code example shows how to move the cursor position to the beginning or the end of a document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Navigate With Bookmarks

You can mark a place that you want to find and move to it again easily. You can insert as many bookmarks into your document as you want, and then navigate through them by identifying the bookmarks with unique names. You can move to a bookmark by using the [MoveToBookmark](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#adbed2f8a3051692dd4589fadec6576e6) method.

The following code examples shows how to move a cursor position to a bookmark:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### Navigate to Table Cells

You can move to a table cell by using the [MoveToCell](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#aec7fe7cdcde66fbce497014a27c6a426) method. This method will enable you to navigate your cursor into any cell in a specific table. In addition, you can specify an index to move the cursor to any position or specified character in a cell within the **MoveToCell** method.

The following code example shows how to move a cursor position to a specified table cell:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Navigate to a Field

You can move to a specific field in your document by using the [MoveToField](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#aa2e587f5c35b83512d4355efafc97300) method. In addition, you can move to a specific merge field by using the [MoveToMergeField](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#af94abbbc337a85f3bacfdc8b93bc79d6) method.

The following code example shows how to move the document builder cursor to a specific field:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### Navigate to a Header or Footer

You can move to the beginning of a header or footer by using the [MoveToHeaderFooter](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a7a7e4a62578b022e5b201ab55c4dd658) method. 

The following code example shows how to move document builder cursor to a document header or footer:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Navigate to a Section or Paragraph

You can move to a specific section or paragraph by using the [MoveToParagraph](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a47f4661fa21baca0fa4b694f4058a674) or [MoveToSection](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a415920fd3d8356ac7e6abbc41bc61a12) methods. In addition, you can specify an index to move the cursor to any position or a specified character in a paragraph within the **MoveToParagraph** method.

The following code example shows how to move to a specific section and a specific paragraph in a document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}