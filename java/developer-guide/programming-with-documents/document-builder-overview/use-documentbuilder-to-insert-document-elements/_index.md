---
title: Use `DocumentBuilder` to Insert Document Elements
second_title: Aspose.Words for Java
articleTitle: Use `DocumentBuilder` to Insert Document Elements
linktitle: Use `DocumentBuilder` to Insert Document Elements
type: docs
description: "Insert document elements using the document builder in Java."
weight: 10
url: /java/use-documentbuilder-to-insert-document-elements/
---

The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) is used to modify documents. This article explains and describes how to perform a number of tasks.

## Inserting a String of Text

Simply pass the string of text you need to insert into the document to the [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) method. Text formatting is determined by the `Font` property. This object contains different font attributes (font name, font size, color, and so on). Some important font attributes are also represented by [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) properties to allow you to access them directly. These are Boolean properties [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), and [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Note that the character formatting you set will apply to all text inserted from the current position in the document onwards.

{{% /alert %}}

The following code example Inserts formatted text using DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Inserting a Paragraph

DocumentBuilder.writeln inserts a string of text into the document as well but in addition, it adds a paragraph break. Current font formatting is also specified by the DocumentBuilder.getFont property and current paragraph formatting is determined by the DocumentBuilder.getParagraphFormat property. 

The following code example shows how to insert a paragraph into the document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Inserting a Table

The basic algorithm to create a table using `DocumentBuilder` is simple:

1. Start the table using [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Insert a cell using [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). This automatically starts a new row. If needed, use the [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) property to specify cell formatting.
1. Insert cell contents using the `DocumentBuilder` methods.
1. Repeat steps 2 and 3 until the row is complete.
1. Call [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) to end the current row. If needed, use [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) property to specify row formatting.
1. Repeat steps 2 - 5 until the table is complete.
1. Call [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) to finish the table building. The appropriate DocumentBuilder table creation methods are described below.

### Starting a Table

Calling DocumentBuilder.startTable is the first step in building a table. It can be also called inside a cell, in this case, it starts a nested table. The next method to call is DocumentBuilder.insertCell.

### Inserting a Cell

After you call DocumentBuilder.insertCell, a new cell is created and any content you add using other methods of the `DocumentBuilder` class will be added to the current cell. To start a new cell in the same row, call DocumentBuilder.insertCell again. Use the DocumentBuilder.getCellFormat property to specify cell formatting. It returns a [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) object that represents all formatting for a table cell.

### Ending a Row

Call DocumentBuilder.endRow to finish the current row. If you call DocumentBuilder.insertCell immediately after that, then the table continues on a new row. Use the `DocumentBuilder.RowFormat` property to specify row formatting. It returns a [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) object that represents all formatting for a table row.

### Ending a Table

Call DocumentBuilder.endTable to finish the current table. This method should be called only once after DocumentBuilder.endRow was called. When called, DocumentBuilder.endTable moves the cursor out of the current cell to a position just after the table. The following example demonstrates how to build a formatted table that contains 2 rows and 2 columns.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Inserting a Break

If you want to explicitly start a new line, paragraph, column, section, or page, call DocumentBuilder.insertBreak. Pass to this method the type of the break you need to insert that is represented by the `BreakType` enumeration. 
The following code example shows how to insert page breaks into a document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Inserting an Image

DocumentBuilder provides several overloads of the [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) method that allows you to insert an inline or floating image. If the image is an EMF or WMF metafile, it will be inserted into the document in metafile format. All other images will be stored in PNG format. The DocumentBuilder.insertImage method can use images from different sources:

- From a file or URL by passing a string parameter
- From a stream by passing a `Stream` parameter
- From an Image object by passing an Image parameter
- From a byte array by passing a byte array parameter
- And others

For each of the DocumentBuilder.insertImage methods, there are further overloads which allow you to insert an image with the following options:

- Inline or floating at a specific position
- Percentage scale or custom size

Furthermore, the DocumentBuilder.insertImage method returns a [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) object that was just created and inserted so you can further modify properties of the Shape.

### Inserting an Inline Image

Pass a single string representing a file that contains the image to DocumentBuilder.insertImage to insert the image into the document as an inline graphic. The following code example shows how to insert an inline image at the cursor position into a document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Inserting a Floating (Absolutely Positioned) Image

This example inserts a floating image from a file or URL at a specified position and size.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Inserting a Bookmark

To insert a bookmark into the document, you should do the following:

1. Call [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) passing it the desired name of the bookmark.
1. Insert the bookmark text using `DocumentBuilder` methods.
1. Call [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) passing it the same name that you used with DocumentBuilder.startBookmark.

Bookmarks can overlap and span any range. To create a valid bookmark you need to call both DocumentBuilder.startBookmark and DocumentBuilder.endBookmark with the same bookmark name.

Badly formed bookmarks or bookmarks with duplicate names will be ignored when the document is saved.

The following code example shows how to insert a bookmark into a document using a document builder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Inserting a Field

Fields in Microsoft Word documents consist of a field code and a field result. The field code is like a formula and the field result is the value that the formula produces. The field code may also contain field switches that are additional instructions to perform a specific action. You can switch between displaying field codes and results in your document in Microsoft Word using the keyboard shortcut Alt+F9. Field codes appear between curly braces ( { } ).Use [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) to create fields in the document. You need to specify a field type, field code and field value. If you are not sure about the particular field code syntax, create the field in Microsoft Word first and switch to see its field code. 
The following code example inserts a merge field into a document using DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Inserting a `Form` Field

Form fields are a particular case of Word fields that allows "interaction" with the user. Form fields in Microsoft Word include textbox, Combobox and checkbox.DocumentBuilder provides special methods to insert each type of form field into the document: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) , [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), and [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Note that if you specify a name for the form field, then a bookmark is automatically created with the same name.

### Inserting a Text Input

DocumentBuilder.insertTextInput to insert a textbox into the document. The following code example shows how to insert a text input form field into a document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Inserting a `CheckBox` 

Call DocumentBuilder.insertCheckBox to insert a checkbox into the document. The following code example shows how to insert a checkbox form field into a document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Inserting a Combo Box

Call DocumentBuilder.insertComboBox to insert a combo box into the document. The following code example shows how to insert a combo box form field into a document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Inserting Locale at Field Level

Customers can specify Locale at field level now and can achieve better control. Locale Ids can be associated with each field inside the DocumentBuilder. The examples below illustrate how to make use of this option.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Inserting HTML

You can easily insert an HTML string that contains an HTML fragment or whole HTML document into the Word document. Just pass this string to the DocumentBuilder.insertHtml method. One of the useful implementations of the method is storing an HTML string in a database and inserting it into the document during mail merge to get the formatted content added instead of building it using various methods of the document builder. The following code example shows inserts HTML into a document using DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Inserting a Hyperlink

Use DocumentBuilder.insertHyperlink to insert a hyperlink into the document. This method accepts three parameters: text of the link to be displayed in the document, link destination (URL or a name of a bookmark inside the document), and a boolean parameter that should be true if the URL is a name of a bookmark inside the document.DocumentBuilder.insertHyperlink internally calls DocumentBuilder.insertField. The method always adds apostrophes at the beginning and end of the URL. Note that you need to specify font formatting for the hyperlink display text explicitly using the `Font` property. The following code example inserts a hyperlink into a document using DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Inserting a Table of Contents

You can insert a TOC (table of contents) field into the document at the current position by calling the [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) method. The DocumentBuilder.insertTableOfContents method will only insert a `TOC` field into the document. In order to build the table of contents and display them according to page numbers, the both **Document.UpdateFields**method must be called after the insertion of the field. The following code example shows how to insert a Table of Contents field into a document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Inserting Ole Object

If you want Ole Object call [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Set File Name and Extension when Inserting Ole Object

OLE package is a legacy and "undocumented" way to store embedded objects if the OLE handler is unknown. Early Windows versions such as Windows 3.1, 95 and 98 had Packager.exe application which could be used to embed any type of data into the document. Now, this application is excluded from Windows but MS Word and other applications still use it to embed data if the OLE handler is missing or unknown. OlePackage class allows accessing OLE Package properties.The following code example shows how to set the file name, extension and display name for OLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Get Access to OLE Object Raw Data

The following code example demonstrates how to get OLE Object raw data using `OleFormat.GetRawData`() method.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Insert Horizontal Rule into Document

The following code example shows how to insert horizontal rule shape into a document using `DocumentBuilder.InsertHorizontalRule` method.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Working with Shapes

### Inserting Inline and Free-floating Shapes

You can insert an inline shape with a specified type and size and a free-floating shape with the specified position, size and text wrap type into a document using `DocumentBuilder.InsertShape` method. The `DocumentBuilder.InsertShape` method allows to insert DML shape into the document model. The document must be saved in the format, which support DML shapes, otherwise such nodes will be converted to VML shape, while document saving. The following code example shows how to insert these types of shapes into the document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Create Snip Corner Rectangle

You can create a snip corner rectangle using Aspose.Words. The shape types are SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped,  TopCornersOneRoundedOneSnipped,  SingleCornerRounded,  TopCornersRounded,  and DiagonalCornersRounded. The DML shape is created using `DocumentBuilder.InsertShape` method with these shape types. These types cannot be used to create VML shapes. Attempt to create a shape by using the public constructor of the "Shape" class raises the "NotSupportedException" exception. The following code example shows how to insert these types of shapes into the document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Import Shapes with Math XML as Shapes into DOM

You can use `LoadOptions.ConvertShapeToOfficeMath` property to convert the shapes with EquationXML to Office Math objects. The default value of this property corresponds to MS Word behavior i.e. shapes with equation XML are not converted to Office math objects.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
