---
title: Using DocumentBuilder to Modify a Document Easily in C++
articleTitle: Using DocumentBuilder to Modify a Document Easily
linktitle: Using DocumentBuilder to Modify a Document Easily
type: docs
weight: 190
url: /cpp/using-documentbuilder-to-modify-a-document-easily/
---

## Specifying Formatting

### Font Formatting

Current font formatting is represented by a Font object returned by the DocumentBuilder.Font property. The Font class contains a wide variety of the font properties possible in Microsoft Word. Below example shows how to set font formatting.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### Paragraph Formatting

Current paragraph formatting is represented by a ParagraphFormat object that is returned by the DocumentBuilder.ParagraphFormat property. This object encapsulates various paragraph formatting properties available in Microsoft Word. You can easily reset the paragraph formatting to default to Normal style, left aligned, no indentation, no spacing, no borders and no shading by calling ParagraphFormat.ClearFormatting. Below example shows how to set paragraph formatting.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### Working with Asian Typography

#### Automatically Adjust Space between Asian and Latin text, Numbers

If you are designing a template with both East Asian and Latin text, and you want to enhance the appearance of the form template by controlling the spaces between both types of text, you can configure your form template to automatically adjust the spaces between these two types of text. You can use AddSpaceBetweenFarEastAndAlpha and AddSpaceBetweenFarEastAndDigit properties of ParagraphFormat class to achieve this.

Following code example show how to use ParagraphFormat.AddSpaceBetweenFarEastAndAlpha and ParagraphFormat.AddSpaceBetweenFarEastAndDigit properties.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Change Asian Paragraph Spacing and Indents

The following code example demonstrates how to change Asian paragraph spacing and indents.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Set Line Break Options

Asian Typography tab of the Paragraph properties dialog in MS Word has line break group. The options of this group can be set using FarEastLineBreakControl, WordWrap, HangingPunctuation properties of ParagraphFormat class. Below code example shows how to use these properties.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### Cell Formatting

Cell formatting is used during building of a table. It is represented by a CellFormat object returned by the DocumentBuilder.CellFormat property. CellFormat encapsulates various table cell properties like width or vertical alignment. Below example shows how to create a table that contains a single formatted cell.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### Row Formatting

Current row formatting is determined by a RowFormat object that is returned by the DocumentBuilder.RowFormat property. The object encapsulates information about all table row formatting. Below example shows how to create a table that contains a single cell and apply row formatting.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### List Formatting

Aspose.Words allows the easy creation of lists by applying list formatting. DocumentBuilder provides the DocumentBuilder.ListFormat property that returns a ListFormat object. This object has several methods to start and end a list and to increase/decrease the indent. There are two general types of lists in Microsoft Word: bulleted and numbered.

- To start a bulleted list, call ListFormat.ApplyBulletDefault .
- To start a numbered list, call ListFormat.ApplyNumberDefault .

The bullet or number and formatting are added to the current paragraph and all further paragraphs created using **DocumentBuilder** until ListFormat.RemoveNumbers is called to stop bulleted list formatting. In Word documents, lists may consist of up to nine levels. List formatting for each level specifies what bullet or number is used, left indent, space between the bullet and text etc.

- To increase the list level of the current paragraph by one level, call ListFormat.ListIndent.
- To decrease the list level of the current paragraph by one level, call ListFormat.ListOutdent.

The methods change the list level and apply the formatting properties of the new level.

{{% alert color="primary" %}}

You can also use the ListFormat.ListLevelNumber property to get or set the list level for the paragraph. The list levels are numbered 0 to 8.

{{% /alert %}}

Below example shows how to build a multilevel list.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### Page Setup and Section Formatting

Page setup and section properties are encapsulated in the PageSetup object that is returned by the DocumentBuilder.PageSetup property. The object contains all the page setup attributes of a section (left margin, bottom margin, paper size, and so on) as properties. Below example shows how to set such properties as page size and orientation for the current section.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### Applying a Style

Some formatting objects like Font or ParagraphFormat support styles. A single built-in or user defined style is represented by a Style object that contains the corresponding style properties like name, base style, font and paragraph formatting of the style, and so on.

Furthermore, a **Style** object provides the Style.StyleIdentifier property that returns a locale-independent style identifier represented by a **Style.StyleIdentifier** enumeration value. The point is that the names of built-in styles in Microsoft Word are localized for different languages. Using a style identifier, you can find the correct style regardless of the document language. The enumeration values correspond to the Microsoft Word built-in styles such as Normal , Heading 1 , Heading 2 etc. All user-defined styles are assigned the **StyleIdentifier.User value**. Below example shows how to apply a paragraph style.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### Borders and Shading

Borders are represented by the BorderCollection. This is a collection of Border objects that are accessed by index or by border type. Border type is represented by the BorderType enumeration. Some values of the enumeration are applicable to several or only one document element. For example, BorderType.Bottom is applicable to a paragraph or table cell while BorderType.DiagonalDown specifies the diagonal border in a table cell only.

Both the border collection and each separate border have similar attributes like color, line style, line width, distance from text, and optional shadow. They are represented by properties of the same name. You can achieve different border types by combining the property values. In addition, both **BorderCollection** and **Border** objects allow you to reset these values to default by calling the Border.ClearFormatting method. Note that when border properties are reset to default values, the border is invisible. The Shading class contains shading attributes for document elements. You can set the desired shading texture and the colors that are applied to the background and foreground of the element.

The shading texture is set with a TextureIndex enumeration value that allows the application of various patterns to the **Shading** object. For example, to set a background color for a document element, use the TextureIndex.TextureSolid value and set the foreground shading color as appropriate. Below example shows how to apply borders and shading to a paragraph.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### Snap to Grid

Aspose.Words provides two properties ParagraphFormat.SnapToGrid and Font.SnapToGrid to get and set paragraph property snap to grid. 

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## Moving the Cursor

### Detecting the Current Cursor Position

You can obtain where the builder's cursor is currently positioned at any time. The DocumentBuilder.CurrentNode property returns the node that is currently selected in this builder. The node is a direct child of a paragraph. Any insert operations you perform using DocumentBuilder will insert before the DocumentBuilder.CurrentNode. When the current paragraph is empty or the cursor is positioned just before the end of the paragraph, DocumentBuilder.CurrentNode returns null.

Also, you can use the DocumentBuilder.CurrentParagraph property, which gets the paragraph that is currently selected in this **DocumentBuilder**. Below example shows how to access the current node in a document builder. You can download template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### Moving to Any Node (Paragraphs and their Children)

If you have a document object node, which is a paragraph or a direct child of a paragraph, you can point the builder's cursor to this node. Use the DocumentBuilder.MoveTo method to perform this. Below example shows how to move a cursor position to a specified node. You can download template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### Moving to the Document Start/End

If you need to move to the beginning of the document, call DocumentBuilder.MoveToDocumentStart. If you need to move to the end of the document, call DocumentBuilder.MoveToDocumentEnd. Below example shows how to move a cursor position to the beginning or end of a document. You can download template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Moving to a Section

If you are working with a document that contains multiple sections, you can move to a desired section using DocumentBuilder.MoveToSection. This method moves the cursor to the beginning of a specified section and accepts the index of the required section. When the section index is greater than or equal to 0, it specifies an index from the beginning of the document with 0 being the first section. When the section index is less than 0, it specifies an index from the end of the document with -1 being the last section. Below example shows how to move a cursor position to the specified section. You can download template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### Moving to a Header/Footer

When you need to place some data into a header or footer, you should move there first using DocumentBuilder.MoveToHeaderFooter. The method accepts a HeaderFooterType enumeration value that identifies the type of header or footer to where the cursor should be moved. If you want to create headers and footers that are different for the first page, you need to set the PageSetup.DifferentFirstPageHeaderFooter property to **true**. If you want to create headers and footers that are different for even and odd pages, you need to set PageSetup.OddAndEvenPagesHeaderFooter to **true**.

If you need to get back to the main story, use **DocumentBuilder.MoveToSection** to move out of the header or footer. Below example creates headers and footers in a document using DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Moving to a Paragraph

Use DocumentBuilder.MoveToParagraph to move the cursor to a desired paragraph in the current section. You should pass two parameters to this method: paragraphIndex (the index of the paragraph to move to) and characterIndex (the index of the character inside the paragraph).

The navigation is performed inside the current story of the current section. That is, if you moved the cursor to the primary header of the first section, then paragraphIndex specifies the index of the paragraph inside that header of that section.

When paragraphIndex is greater than or equal to 0, it specifies an index from the beginning of the section with 0 being the first paragraph. When paragraphIndex is less than 0, it specifies an index from the end of the section with -1 being the last paragraph.

The character index can currently only be specified as 0 to move to the beginning of the paragraph or -1 to move to the end of the paragraph. Below example shows how to move a cursor position to the specified paragraph. You can download template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### Moving to a Table Cell

Use DocumentBuilder.MoveToCell if you need to move the cursor to a table cell in the current section. This method accepts four parameters:

- tableIndex - the index of the table to move to.
- rowIndex - the index of the row in the table.
- columnIndex - the index of the column in the table.
- characterIndex - the index of the character inside the cell.

The navigation is performed inside the current story of the current section. For the index parameters, when index is greater than or equal to 0, it specifies an index from the beginning with 0 being the first element. When index is less than 0, it specifies an index from the end with -1 being the last element.

Also, note that characterIndex currently can only specify 0 to move to the beginning of the cell or -1 to move to the end of the cell. Below example shows how to move a cursor position to the specified table cell. You can download template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Moving to a Bookmark

Bookmarks are used frequently to mark particular places in the document where new elements are to be inserted. To move to a bookmark, use DocumentBuilder.MoveToBookmark. This method has two overloads. The simplest one accepts nothing but the name of the bookmark where the cursor is to be moved. Below example shows how to move a cursor position to a bookmark. You can download template file of this example from here.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

This overload moves the cursor to a position just after the start of the bookmark with the specified name. Another overload DocumentBuilder.MoveToBookmark moves the cursor to a bookmark with greater precision. It accepts two additional boolean parameters:

- isStart determines whether to move the cursor to the beginning or to the end of the bookmark.
- isAfter determines whether to move the cursor to be after the bookmark start or end position, or to move the cursor to be before the bookmark start or end position.

Below example shows how to move a cursor position to just after the bookmark end.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

The comparison for both methods is not case-sensitive.

Inserting new text in this way does not replace the existing text of the bookmark. Note that some bookmarks in the document are assigned to form fields. Moving to such a bookmark and inserting text there inserts the text into the form field code. Although this will not invalidate the form field, the inserted text will not be visible because it becomes part of the field code.

## How to Convert Between Measurement Units

Most of the object properties provided in the Aspose.Words API that represent some measurement (width/height, margins and various distances) accept values in points (1 inch equals 72 points). Sometimes this is not convenient so there is the ConvertUtil class that provides helper functions to convert between various measurement units. It allows converting inches to points, points to inches, pixels to points, and points to pixels. When pixels are converted to points and vice versa, it can be performed at 96 dpi (dots per inch) resolutions or at the specified dpi resolution.
**ConvertUtil** is very useful when setting different page properties because for instance inches are more usual measurement units than points. The following example demonstrates how to set up the page properties in inches. Below example shows how to specify page properties in inches.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
