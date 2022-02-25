---
title: Document Builder Overview in Java
articleTitle: Document Builder Overview
linktitle: Document Builder Overview
type: docs
description: "DocumentBuilder allows you to build dynamic documents from scratch or add new elements to existing ones. DocumentBuilder provides methods to insert text, checkboxes, tables, images, and other content elements in Java."
weight: 15
url: /java/document-builder-overview/
---

[DocumentBuilder](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder) is a powerful class that associates with [Document](https://apireference.aspose.com/words/java/com.aspose.words/Document) and enables you to build dynamic documents from scratch or add new elements to an existing one.

**DocumentBuilder** provides methods to insert text, checkboxes, ole objects, paragraphs, lists, tables, images, and other content elements. It allows you to specify fonts, paragraph or section formatting, and perform other operations.

## Document Builder or Aspose.Words DOM

**DocumentBuilder** complements classes and methods available in the Aspose.Words Document Object Model (DOM) to simplify the most common document building tasks. That is, you can create and modify the content of documents both through the Aspose.Words DOM, which requires a good understanding of the tree structure, and using the DocumentBuilder. The DocumentBuilder is a "facade" for the complex **Document** structure that allows you to quickly and easily insert content and formatting.

Operations that are possible with **DocumentBuilder** are also possible when using the classes of the Aspose.Words DOM directly. However, using Aspose.Words DOM classes directly usually require more lines of code than using **DocumentBuilder**.

## Document Navigation

Document navigation is based on the concept of a virtual cursor, with which you can move to another location in the document using various **DocumentBuilder.MoveToXXX** methods such as [MoveToDocumentStart](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#moveToDocumentStart()) and [MoveToField](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#moveToField(com.aspose.words.Field,boolean)). This virtual cursor indicates where the text will be inserted when calling the methods [Write](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#write(java.lang.String)), [Writeln](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#writeln()), [InsertBreak](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertBreak(int)), and others. See the following article "Navigation with Cursor" to learn more about the virtual cursor.

The following code example shows how to navigate to a bookmark:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Document Building and Modifying

Aspose.Words API provides several classes that are responsible for formatting various elements of a document. Each of the classes encapsulates formatting properties related to a specific document element, such as text, paragraph, section, and others. For example, the [Font](https://apireference.aspose.com/words/java/com.aspose.words/Font) class represents character formatting properties, the [ParagraphFormat](https://apireference.aspose.com/words/java/com.aspose.words/ParagraphFormat) class represents paragraph formatting properties, and so on. Objects of these classes are returned by the corresponding **DocumentBuilder** properties, which have the same names as the classes. Therefore, you can access them and set the desired formatting during the document build.

You can also insert text, checkbox, ole object, images, bookmarks, form fields, and other document elements at the cursor position using the Write method or any of the **DocumentBuilder.InsertXXX** methods, such as [InsertField](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)), [InsertHtml](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertHtml(java.lang.String)), and similar methods.

Let's see how to create a simple document using the **DocumentBuilder**.

### Create a Document using DocumentBuilder

To start, you need to create a **DocumentBuilder** and associate it with a **Document** object. You create a new instance of **DocumentBuilder** by calling its constructor and pass it to a **Document** object for attachment to the builder.

To insert a text, pass the string of text you need to insert into the document to the **Write** method.

The following code example shows how to create a simple document using a document builder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Specify Document Formatting

The [Font](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#Font) property defines text formatting. This object contains different font attributes (font name, font size, color, and so on). Some important font attributes are also represented by **DocumentBuilder** properties to allow you to access them directly. These are the [Font.Bold](https://apireference.aspose.com/words/java/com.aspose.words/Font#Bold), [Font.Italic](https://apireference.aspose.com/words/java/com.aspose.words/Font#Italic), and [Font.Underline](https://apireference.aspose.com/words/java/com.aspose.words/Font#Underline) boolean properties.

The following code example shows how to insert a formatted text using **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#Font) specifies the character formatting that will be applied to all text inserted from the current position in the document onwards.
- [ParagraphFormat](https://apireference.aspose.com/words/java/com.aspose.words/ParagraphFormat) specifies the paragraph formatting for the current and all paragraphs to be inserted.
- [PageSetup](https://apireference.aspose.com/words/java/com.aspose.words/PageSetup) specifies the page and section properties for the current section and the entire section that will be inserted.
- [CellFormat](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#CellFormat) and [RowFormat](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#RowFormat) specify formatting properties that will be applied to table cells and rows from the current position in the document onwards.

In this situation, "current" means the position, paragraph, section, cell, or row in which the cursor is.

{{% /alert %}}

{{% alert color="primary" %}}

Note that the **Font**, **ParagraphFormat**, and **PageSetup** properties are updated whenever you navigate to a different location in the document to reflect the formatting properties of this location.

{{% /alert %}}
