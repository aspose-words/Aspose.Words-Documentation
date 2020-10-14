---
title: Navigation with Cursor
type: docs
weight: 110
url: /net/navigation-with-cursor/
---

## Detecting the Current Cursor Position

You can obtain where the builder's cursor is currently positioned at any time. The DocumentBuilder.CurrentNode property returns the node that is currently selected in this builder. The node is a direct child of a paragraph. Any insert operations you perform using DocumentBuilder will insert before the DocumentBuilder.CurrentNode. When the current paragraph is empty or the cursor is positioned just before the end of the paragraph, DocumentBuilder.CurrentNode returns null.

Also, you can use the [DocumentBuilder.CurrentParagraph](wordsnethttp://www.aspose.com/api/net/words/aspose.words/documentbuilder/properties/currentparagraph) property, which gets the paragraph that is currently selected in this **DocumentBuilder**. Below example shows how to access the current node in a document builder. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Document/DocumentBuilder.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cs" >}}

## Moving the Cursor

### Moving to Any Node (Paragraphs and their Children)

If you have a document object node, which is a paragraph or a direct child of a paragraph, you can point the builder's cursor to this node. Use the DocumentBuilder.MoveTo method to perform this. Below example shows how to move a cursor position to a specified node. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Document/DocumentBuilder.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cs" >}}

### Moving to the Document Start/End

If you need to move to the beginning of the document, call DocumentBuilder.MoveToDocumentStart. If you need to move to the end of the document, call DocumentBuilder.MoveToDocumentEnd. Below example shows how to move a cursor position to the beginning or end of a document. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Document/DocumentBuilder.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cs" >}}

### Moving to a Section

If you are working with a document that contains multiple sections, you can move to a desired section using DocumentBuilder.MoveToSection. This method moves the cursor to the beginning of a specified section and accepts the index of the required section. When the section index is greater than or equal to 0, it specifies an index from the beginning of the document with 0 being the first section. When the section index is less than 0, it specifies an index from the end of the document with -1 being the last section. Below example shows how to move a cursor position to the specified section. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Document/DocumentBuilder.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cs" >}}

### Moving to a Header/Footer

When you need to place some data into a header or footer, you should move there first using DocumentBuilder.MoveToHeaderFooter. The method accepts a HeaderFooterType enumeration value that identifies the type of header or footer to where the cursor should be moved. If you want to create headers and footers that are different for the first page, you need to set the [PageSetup.DifferentFirstPageHeaderFooter](http://www.aspose.com/api/net/words/aspose.words/pagesetup/properties/differentfirstpageheaderfooter) property to **true**. If you want to create headers and footers that are different for even and odd pages, you need to set [PageSetup.OddAndEvenPagesHeaderFooter](http://www.aspose.com/api/net/words/aspose.words/pagesetup/properties/oddandevenpagesheaderfooter) to **true**.

If you need to get back to the main story, use **DocumentBuilder.MoveToSection** to move out of the header or footer. Below example creates headers and footers in a document using DocumentBuilder.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cs" >}}

### Moving to a Paragraph

Use DocumentBuilder.MoveToParagraph to move the cursor to a desired paragraph in the current section. You should pass two parameters to this method: paragraphIndex (the index of the paragraph to move to) and characterIndex (the index of the character inside the paragraph).

The navigation is performed inside the current story of the current section. That is, if you moved the cursor to the primary header of the first section, then paragraphIndex specifies the index of the paragraph inside that header of that section.

When paragraphIndex is greater than or equal to 0, it specifies an index from the beginning of the section with 0 being the first paragraph. When paragraphIndex is less than 0, it specifies an index from the end of the section with -1 being the last paragraph.

The character index can currently only be specified as 0 to move to the beginning of the paragraph or -1 to move to the end of the paragraph. Below example shows how to move a cursor position to the specified paragraph. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Document/DocumentBuilder.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cs" >}}

### Moving to a Table Cell

Use DocumentBuilder.MoveToCell if you need to move the cursor to a table cell in the current section. This method accepts four parameters:

- tableIndex - the index of the table to move to.
- rowIndex - the index of the row in the table.
- columnIndex - the index of the column in the table.
- characterIndex - the index of the character inside the cell.

The navigation is performed inside the current story of the current section. For the index parameters, when index is greater than or equal to 0, it specifies an index from the beginning with 0 being the first element. When index is less than 0, it specifies an index from the end with -1 being the last element.

Also, note that characterIndex currently can only specify 0 to move to the beginning of the cell or -1 to move to the end of the cell. Below example shows how to move a cursor position to the specified table cell. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Document/DocumentBuilder.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cs" >}}

### Moving to a Bookmark

Bookmarks are used frequently to mark particular places in the document where new elements are to be inserted. To move to a bookmark, use DocumentBuilder.MoveToBookmark. This method has two overloads. The simplest one accepts nothing but the name of the bookmark where the cursor is to be moved. Below example shows how to move a cursor position to a bookmark. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Document/DocumentBuilder.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cs" >}}

This overload moves the cursor to a position just after the start of the bookmark with the specified name. Another overload [DocumentBuilder.MoveToBookmark](http://www.aspose.com/api/net/words/aspose.words/documentbuilder/methods/movetobookmark) moves the cursor to a bookmark with greater precision. It accepts two additional boolean parameters:

- isStart determines whether to move the cursor to the beginning or to the end of the bookmark.
- isAfter determines whether to move the cursor to be after the bookmark start or end position, or to move the cursor to be before the bookmark start or end position.

Below example shows how to move a cursor position to just after the bookmark end.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

{{% alert color="primary" %}} 

The comparison for both methods is not case-sensitive.

{{% /alert %}} 

Inserting new text in this way does not replace the existing text of the bookmark. Note that some bookmarks in the document are assigned to form fields. Moving to such a bookmark and inserting text there inserts the text into the form field code. Although this will not invalidate the form field, the inserted text will not be visible because it becomes part of the field code.

### Moving to a Merge Field

Sometimes you may need to perform "manual" mail merge using DocumentBuilder or fill a merge field in a special way inside a mail merge event handler. That is when DocumentBuilder.MoveToMergeField could be useful. The method accepts the name of the merge field. It moves the cursor to a position just beyond the specified merge field and removes the merge field. Below example shows how to move the cursor to a position just beyond the specified merge field. You can download template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Document/DocumentBuilder.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cs" >}}

Note that moving the cursor to a merge field deletes the merge field from the document.

The comparison is not case-sensitive.
