---
title: Using DocumentBuilder to Modify a Document
type: docs
weight: 20
url: /java/using-documentbuilder-to-modify-a-document/
---

## Specifying Formatting

### Font Formatting

Current font formatting is represented by a Font object returned by the DocumentBuilder.Font property. The Font class contains a wide variety of font properties possible in Microsoft Word.

|![font-formatting-aspose-words-java](http://i.imgur.com/rptZz44.png)|
| :- |
The following code example demonstrates how to set font formatting.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-1.java" >}}


### Cell Formatting

Cell formatting is used during the building of a table. It is represented by a CellFormat object returned by the DocumentBuilder.CellFormat property. CellFormat encapsulates various table cell properties like width or vertical alignment.

|![cell-formatting-aspose-words-java](http://i.imgur.com/s3GsAzX.png)|
| :- |
The following code example shows how to create a table that contains a single formatted cell.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-1.java" >}}

### Row Formatting

Current row formatting is determined by a RowFormat object that is returned by the DocumentBuilder.RowFormat property. The object encapsulates information about all table row formatting.

|![row-formatting-aspose-words-java](http://i.imgur.com/b9kTobS.png)|
| :- |
The below code example shows how to create a table that contains a single cell and apply row formatting.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-1.java" >}}

### List Formatting

Aspose.Words enables the easy creation of lists by applying list formatting. DocumentBuilder provides the DocumentBuilder.ListFormat property that returns a ListFormat object. This object has a few methods to start and end a list and to increase/decrease the indent.

|![list-fformatting-aspose-words-java](http://i.imgur.com/FQderGo.png)|
| :- |
There are two general types of lists in Microsoft Word: bulleted and numbered.

- To start a bulleted list, call [ListFormat.applyBulletDefault](http://www.aspose.com/api/java/words/com.aspose.words/classes/listformat/methods/applyBulletDefault\(\)/) .
- To start a numbered list, call [ListFormat.applyNumberDefault](http://www.aspose.com/api/java/words/com.aspose.words/classes/listformat/methods/applyNumberDefault\(\)/) .

The bullet or number and formatting are added to the current paragraph and all further paragraphs created using **DocumentBuilder** until [ListFormat.removeNumbers](http://www.aspose.com/api/java/words/com.aspose.words/classes/listformat/methods/removeNumbers\(\)/) is called to stop bulleted list formatting.

In Word documents, lists may consist of up to nine levels. List formatting for each level specifies what bullet or number is used, left indent, space between the bullet and text etc.

- To increase the list level of the current paragraph by one level, call [ListFormat.listIndent](http://www.aspose.com/api/java/words/com.aspose.words/classes/listformat/methods/listIndent\(\)/).
- To decrease the list level of the current paragraph by one level, call [ListFormat.listOutdent](http://www.aspose.com/api/java/words/com.aspose.words/classes/listformat/methods/listOutdent\(\)/).

The methods change the list level and apply the formatting properties of the new level.

{{% alert color="primary" %}} 

You can also use the [ListFormat.listLevelNumber](http://www.aspose.com/api/java/words/com.aspose.words/classes/listformat/methods/setListLevelNumber\(int\)/) property to get or set the list level for the paragraph. The list levels are numbered 0 to 8.

{{% /alert %}} 

The following code example demonstrates how to build a multilevel list.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-1.java" >}}

### Page Setup and Section Formatting

Page setup and section properties are encapsulated in the PageSetup object that is returned by the DocumentBuilder.PageSetup property. The object contains all the page setup attributes of a section (left margin, bottom margin, paper size, and so on) as properties.

|![section-formatting-aspose-words-java](http://i.imgur.com/toUNnPO.png)|
| :- |
The following code example demonstrates how to set such properties as page size and orientation for the current section.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-1.java" >}}

### Applying a Style

Some formatting objects like Font or ParagraphFormat support styles. A single built-in or user-defined style is represented by a Style object that contains the corresponding style properties like name, base style, font and paragraph formatting of the style, and so on.

Furthermore, a **Style** object provides the [Style.getStyleIdentifier](http://www.aspose.com/api/java/words/com.aspose.words/classes/style/methods/getStyleIdentifier\(\)/) property that returns a locale-independent style identifier represented by a **Style.StyleIdentifier** enumeration value. The point is that the names of built-in styles in Microsoft Word are localized for different languages. Using a style identifier, you can find the correct style regardless of the document language. The enumeration values correspond to the Microsoft Word built-in styles such as Normal , Heading 1 , Heading 2 etc. All user-defined styles are assigned the **StyleIdentifier.User value**.

|![apply-style-aspose-words-java](http://i.imgur.com/OwWl1Uz.png)|
| :- |
The following code example shows how to apply a paragraph style.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderApplyParagraphStyle-1.java" >}}

### Borders and Shading

Borders are represented by the BorderCollection. This is a collection of Border objects that are accessed by index or by border type. Border type is represented by the BorderType enumeration. Some values of the enumeration are applicable to multiple or only one document element. For example, BorderType.Bottom is applicable to a paragraph or table cell while BorderType.DiagonalDown specifies the diagonal border in a table cell only.

Both the border collection and each separate border have similar attributes like color, line style, line width, distance from the text, and optional shadow. They are represented by properties of the same name. You can achieve different border types by combining property values. In addition, both **BorderCollection** and **Border** objects allow you to reset these values to default by calling the [Border.clearFormatting](http://www.aspose.com/api/java/words/com.aspose.words/classes/border/methods/clearFormatting\(\)/) method. Note that when border properties are reset to default values, the border is invisible.

|![set-borders-shading-aspose-words-java](http://i.imgur.com/4nNcT7K.png)|
| :- |
The [Shading](http://www.aspose.com/api/java/words/com.aspose.words/classes/Shading) class contains shading attributes for document elements. You can set the desired shading texture and the colors that are applied to the background and foreground of the element.

The shading texture is set with a [TextureIndex](http://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) enumeration value that enables the application of various patterns to the **Shading** object. For example, to set a background color for a document element, use the [TextureIndex.TextureSolid](http://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) value and set the foreground shading color as appropriate.

|![borders-and-shading-aspose-words-java](http://i.imgur.com/RDPc5fw.png)|
| :- |
The below example demonstrates how to apply borders and shading to a paragraph.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderApplyBordersAndShadingToParagraph-1.java" >}}

### Snap to Grid

Aspose.Words provides two properties ParagraphFormat.SnapToGrid and Font.SnapToGrid to get and set paragraph property snap to grid. 

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Moving the Cursor

### Detecting the Current Cursor Position

You can obtain where the builder's cursor is currently positioned at any time. The [DocumentBuilder.getCurrentNode](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/getCurrentNode\(\)/) property returns the node that is currently selected in this builder. The node is a direct child of a paragraph. Any insert operations you perform using DocumentBuilder will insert before the DocumentBuilder.CurrentNode. When the current paragraph is empty or the cursor is positioned just before the end of the paragraph, DocumentBuilder.CurrentNode returns null.

Also, you can use the [DocumentBuilder.getCurrentParagraph](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/getCurrentParagraph\(\)/) property, which gets the paragraph that is currently selected in this **DocumentBuilder**. The below code example shows how to access the current node in a document builder. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/document/DocumentBuilderCursorPosition/DocumentBuilder.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-1.java" >}}

### Moving to Any Node (Paragraphs and their Children)

If you have a document object node, which is a paragraph or a direct child of a paragraph, you can point the builder's cursor to this node. Use the [DocumentBuilder.moveTo](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/moveTo\(com.aspose.words.Node\)/) method to perform this.
The following code example shows how to move a cursor position to a specified node. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/document/DocumentBuilderMoveToNode/DocumentBuilder.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-1.java" >}}

### Moving to the Document Start/End

If you need to move to the beginning of the document, call [DocumentBuilder.moveToDocumentStart](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/moveToDocumentStart\(\)/). If you need to move to the end of the document, call [DocumentBuilder.moveToDocumentEnd](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/moveToDocumentEnd\(\)/).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-1.java" >}}

### Moving to a Section

If you are working with a document that contains a few sections, you can move to a desired section using [DocumentBuilder.moveToSection](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/moveToSection\(int\)/). This method moves the cursor to the beginning of a specified section and accepts the index of the required section. When the section index is greater than or equal to 0, it specifies an index from the beginning of the document with 0 being the first section. When the section index is less than 0, it specifies an index from the end of the document with -1 being the last section. The below code example shows how to move a cursor position to the specified section. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/document/DocumentBuilderMoveToSection/DocumentBuilder.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-1.java" >}}

### Moving to a Header/Footer

When you need to place some data into a header or footer, you should move there first using [DocumentBuilder.moveToHeaderFooter](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/moveToHeaderFooter\(int\)/).The method accepts a HeaderFooterType enumeration value that identifies the type of header or footer to where the cursor should be moved.

If you want to create headers and footers that are different for the first page, you need to set the [PageSetup.getDifferentFirstPageHeaderFooter](http://www.aspose.com/api/java/words/com.aspose.words/classes/pagesetup/methods/getDifferentFirstPageHeaderFooter\(\)/) property to **true**. If you want to create headers and footers that are different for even and odd pages, you need to set [PageSetup.getOddAndEvenPagesHeaderFooter](http://www.aspose.com/api/java/words/com.aspose.words/classes/pagesetup/methods/getOddAndEvenPagesHeaderFooter\(\)/) to **true**.

If you need to get back to the main story, use[DocumentBuilder.moveToSection](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/moveToSection\(int\)/) to move out of the header or footer. Below example creates headers and footers in a document using DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-1.java" >}}

### Moving to a Paragraph

Use[DocumentBuilder.moveToParagraph](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/moveToParagraph\(int,int\)/) to move the cursor to a desired paragraph in the current section. You should pass two parameters to this method: paragraphIndex (the index of the paragraph to move to) and characterIndex (the index of the character inside the paragraph).

The navigation is performed inside the current story of the current section. That is, if you moved the cursor to the primary header of the first section, then paragraphIndex specifies the index of the paragraph inside that header of that section.

When paragraphIndex is greater than or equal to 0, it specifies an index from the beginning of the section with 0 being the first paragraph. When paragraphIndex is less than 0, it specifies an index from the end of the section with -1 being the last paragraph. The character index can currently only be specified as 0 to move to the beginning of the paragraph or -1 to move to the end of the paragraph. The following code example demonstrates how to move a cursor position to the specified paragraph. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/document/DocumentBuilderMoveToParagraph/DocumentBuilder.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-1.java" >}}

### Moving to a Table Cell

Use [DocumentBuilder.moveToCell](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/moveToCell\(int,int,int,int\)/) if you need to move the cursor to a table cell in the current section. This method accepts four parameters:

- tableIndex - the index of the table to move to.
- rowIndex - the index of the row in the table.
- columnIndex - the index of the column in the table.
- characterIndex - the index of the character inside the cell.

The navigation is performed inside the current story of the current section.

For the index parameters, when the index is greater than or equal to 0, it specifies an index from the beginning with 0 being the first element. When the index is less than 0, it specifies an index from the end with -1 being the last element.

Also, note that characterIndex currently can only specify 0 to move to the beginning of the cell or -1 to move to the end of the cell. The following code example shows how to move a cursor position to the specified table cell. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/document/DocumentBuilderMoveToTableCell/DocumentBuilder.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-1.java" >}}

### Moving to a Bookmark

Bookmarks are used frequently to mark particular places in the document where new elements are to be inserted. To move to a bookmark, use [DocumentBuilder.moveToBookmark](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/moveToBookmark\(java.lang.String\)/). This method has two overloads. The simplest one accepts nothing but the name of the bookmark where the cursor is to be moved. The following code example shows how to move a cursor position to a bookmark. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/document/DocumentBuilderMoveToBookmark/DocumentBuilder.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-1.java" >}}

This overload moves the cursor to a position just after the start of the bookmark with the specified name. Another overload [DocumentBuilder.moveToBookmark](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/moveToBookmark\(java.lang.String,boolean,boolean\)/) moves the cursor to a bookmark with greater precision. It accepts two additional boolean parameters:

- isStart determines whether to move the cursor to the beginning or to the end of the bookmark.
- isAfter determines whether to move the cursor to be after the bookmark start or end position, or to move the cursor to be before the bookmark start or end position.

The following code example shows how to move a cursor position to just after the bookmark end.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-1.java" >}}

Inserting new text in this way does not replace the existing text of the bookmark. Note that some bookmarks in the document are assigned to form fields. Moving to such a bookmark and inserting text there inserts the text into the form field code. Although this will not invalidate the form field, the inserted text will not be visible because it becomes part of the field code.

### Moving to a Merge Field

Sometimes you may need to perform a "manual" mail merge using DocumentBuilder or fill a merge field in a special way inside a mail merge event handler. That is when [DocumentBuilder.moveToMergeField](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/moveToMergeField\(java.lang.String\)/) could be useful. The method accepts the name of the merge field. It moves the cursor to a position just beyond the specified merge field and removes the merge field. The following code example shows how to move the cursor to a position just beyond the specified merge field. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/document/DocumentBuilderMoveToMergeField/DocumentBuilder.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-1.java" >}}

## How to Convert Between Measurement Units

Most of the object properties provided in the Aspose.Words API that represents some measurements (width/height, margins and various distances) accept values in points (1 inch equals 72 points). Sometimes this is not convenient so there is the ConvertUtil class that provides helper functions to convert between various measurement units. It allows converting inches to points, points to inches, pixels to points, and points to pixels. When pixels are converted to points and vice versa, it can be performed at 96 dpi (dots per inch) resolutions or at the specified dpi resolution.

**ConvertUtil** is very useful when setting different page properties because for instance inches are more usual measurement units than points. The following example shows how to set up the page properties in inches.

The following code example demonstrates how to specify page properties in inches.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-1.java" >}}
