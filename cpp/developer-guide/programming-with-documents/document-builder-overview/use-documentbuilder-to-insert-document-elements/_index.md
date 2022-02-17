---
title: Use DocumentBuilder to Insert Document Elements in C++
articleTitle: Use DocumentBuilder to Insert Document Elements
linktitle: Use DocumentBuilder to Insert Document Elements
type: docs
description: "Aspsoe.Words for C++ allows you to insert document elements using the document builder."
weight: 80
url: /cpp/use-documentbuilder-to-insert-document-elements/
---

The DocumentBuilder is used to modify documents. This article explains and describes how to perform a number of tasks:

## Inserting a String of Text

Simply pass the string of text you need to insert into the document to the DocumentBuilder.Write method. Text formatting is determined by the Font property. This object contains different font attributes (font name, font size, colour, and so on). Some important font attributes are also represented by DocumentBuilder properties to allow you to access them directly. These are Boolean properties Font.Bold, Font.Italic, and Font.Underline.

Note that the character formatting you set will apply to all text inserted from the current position in the document onwards.

Below example Inserts formatted text using DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## Inserting a Paragraph

DocumentBuilder.Writeln inserts a string of text into the document as well but in addition, it adds a paragraph break. Current font formatting is also specified by the DocumentBuilder.Font property and current paragraph formatting is determined by the DocumentBuilder.ParagraphFormat property. Below example shows how to insert a paragraph into the document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Inserting a Table

The basic algorithm for creating a table using DocumentBuilder is simple:

1. Start the table using DocumentBuilder.StartTable.
1. Insert a cell using DocumentBuilder.InsertCell. This automatically starts a new row. If needed, use the DocumentBuilder.CellFormat property to specify cell formatting.
1. Insert cell contents using the DocumentBuilder methods.
1. Repeat steps 2 and 3 until the row is complete.
1. Call DocumentBuilder.EndRow to end the current row. If needed, use DocumentBuilder.RowFormat property to specify row formatting.
1. Repeat steps 2 - 5 until the table is complete.
1. Call DocumentBuilder.EndTable to finish the table building. The appropriate DocumentBuilder table creation methods are described below.

### Starting a Table

Calling DocumentBuilder.StartTable is the first step in building a table. It can be also called inside a cell, in which case it starts a nested table. The next method to call is DocumentBuilder.InsertCell.

### Inserting a Cell

After you call DocumentBuilder->InsertCell, a new cell is created and any content you add using other methods of the DocumentBuilder class will be added to the current cell. To start a new cell in the same row, call DocumentBuilder->InsertCell again. Use the DocumentBuilder.CellFormat property to specify cell formatting. It returns a CellFormat object that represents all formatting for a table cell.

### Ending a Row

Call DocumentBuilder.EndRow to finish the current row. If you call DocumentBuilder->InsertCell immediately after that, then the table continues on a new row.

Use the DocumentBuilder.RowFormat property to specify row formatting. It returns a RowFormat object that represents all formatting for a table row.

### Ending a Table

Call DocumentBuilder.EndTable to finish the current table. This method should be called only once after DocumentBuilder->EndRow was called. When called, DocumentBuilder.EndTable moves the cursor out of the current cell to a position just after the table. The following example demonstrates how to build a formatted table that contains 2 rows and 2 columns.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## Inserting a Break

If you want to explicitly start a new line, paragraph, column, section, or page, call DocumentBuilder.InsertBreak. Pass to this method the type of the break you need to insert that is represented by the BreakType enumeration. Below example shows how to insert page breaks into a document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## Inserting an Image

DocumentBuilder provides several overloads of the DocumentBuilder->InsertImage method that allows you to insert an inline or floating image. If the image is an EMF or WMF metafile, it will be inserted into the document in metafile format. All other images will be stored in PNG format. The DocumentBuilder->InsertImage method can use images from different sources:

- From a file or URL by passing a string parameter DocumentBuilder->InsertImage.
- From a stream by passing a Stream parameter DocumentBuilder->InsertImage.
- From an Image object by passing an Image parameter DocumentBuilder->InsertImage.
- From a byte array by passing a byte array parameter DocumentBuilder.InsertImage.For each of the DocumentBuilder->InsertImage methods, there are further overloads which allow you to insert an image with the following options:
- Inline or floating at a specific position, for example, DocumentBuilder->InsertImage.
- Percentage scale or custom size, for example, DocumentBuilder.InsertImage.Furthermore the DocumentBuilder->InsertImage method returns a Shape object that was just created and inserted so you can further modify properties of the Shape.

### Inserting an Inline Image

Pass a single string representing a file that contains the image to DocumentBuilder->InsertImage to insert the image into the document as an inline graphics. Below example shows how to insert an inline image at the cursor position into a document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### Inserting a Floating (Absolutely Positioned) Image

This example inserts a floating image from a file or URL at a specified position and size.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## Inserting a Bookmark

To insert a bookmark into the document, you should do the following:

1. Call DocumentBuilder->StartBookmark passing it the desired name of the bookmark.
1. Insert the bookmark text using DocumentBuilder methods.
1. Call DocumentBuilder.EndBookmark passing it the same name that you used with **DocumentBuilder->StartBookmark**.
1. Bookmarks can overlap and span any range. To create a valid bookmark you need to call both DocumentBuilder->StartBookmark and DocumentBuilder->EndBookmark with the same bookmark name.

{{% alert color="primary" %}}

Badly formed bookmarks or bookmarks with duplicate names will be ignored when the document is saved.

{{% /alert %}}

Below example shows how to insert a bookmark into a document using a document builder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## Inserting a Form Field

Form fields are a particular case of Word fields that allows "interaction" with the user. Form fields in Microsoft Word include textbox, combo box and checkbox.DocumentBuilder provides special methods to insert each type of form field into the document: DocumentBuilder.InsertTextInput , DocumentBuilder->InsertCheckBox, and DocumentBuilder.InsertComboBox. Note that if you specify a name for the form field, then a bookmark is automatically created with the same name.

### Inserting a Text Input

DocumentBuilder.InsertTextInput to insert a textbox into the document. Below example shows how to insert a text input form field into a document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### Inserting a Check Box

Call DocumentBuilder.InsertCheckBox to insert a checkbox into the document. Below example shows how to insert a checkbox form field into a document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### Inserting a Combo Box

Call DocumentBuilder.InsertComboBox to insert a combo box into the document. Below example shows how to insert a combo box form field into a document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## Inserting Locale at Field Level

Customers can specify Locale at field level now and can achieve better control. Locale Ids can be associated with each field inside the DocumentBuilder. The examples below illustrate how to make use of this option.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## Inserting a Hyperlink

Use DocumentBuilder.InsertHyperlink to insert a hyperlink into the document. This method accepts three parameters: text of the link to be displayed in the document, link destination (URL or a name of a bookmark inside the document), and a boolean parameter that should be true if the URL is a name of a bookmark inside the document.DocumentBuilder.InsertHyperlink internally calls DocumentBuilder.InsertField.The method always adds apostrophes at the beginning and end of the URL. Note that you need to specify font formatting for the hyperlink display text explicitly using the Font property. Below example inserts a hyperlink into a document using DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Inserting Ole Object

If you want Ole Object call DocumentBuilder.InsertOleObject. Pass to this method the ProgId explicitly with other parameters. Below example shows how to insert Ole Object into a document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Set File Name and Extension when Inserting Ole Object

OLE package is a legacy and "undocumented" way to store embedded object if OLE handler is unknown. Early Windows versions such as Windows 3.1, 95 and 98 had Packager.exe application which could be used to embed any type of data into the document. Now, this application is excluded from Windows but MS Word and other applications still use it to embed data if OLE handler is missing or unknown. OlePackage class allows to access OLE Package properties. Below example shows how to set file name, extension and display name for OLE Package.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## Inserting HTML

You can easily insert an HTML string that contains an HTML fragment or whole HTML document into the Word document. Just pass this string to the DocumentBuilder->InsertHtml method. One of the useful implementations of the method is storing an HTML string in a database and inserting it into the document during mail merge to get the formatted content added instead of building it using various methods of the document builder. Below example shows inserts HTML into a document using DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## Insert Horizontal Rule into Document

Below code example shows how to insert horizontal rule shape into a document using DocumentBuilder->InsertHorizontalRule method.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
