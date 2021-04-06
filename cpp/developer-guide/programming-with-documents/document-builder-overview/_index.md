---
title: Document Builder Overview
type: docs
description: "DocumentBuilder allows you to build dynamic documents from scratch or add new elements to existing ones. DocumentBuilder provides methods to insert text, checkboxes, tables, images, and other content elements with C++."
weight: 15
url: /cpp/document-builder-overview/
---

[DocumentBuilder](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder) is a powerful class that associates with [Document](https://apireference.aspose.com/words/cpp/class/aspose.words.document) and enables you to build dynamic documents from scratch or add new elements to an existing one.

**DocumentBuilder** provides methods to insert text, checkboxes, ole objects, paragraphs, lists, tables, images, and other content elements. It allows you to specify fonts, paragraph or section formatting, and perform other operations.

## Document Builder or Aspose.Words DOM

**DocumentBuilder** complements classes and methods available in the Aspose.Words Document Object Model (DOM) to simplify the most common document building tasks. That is, you can create and modify the content of documents both through the Aspose.Words DOM, which requires a good understanding of the tree structure, and using the DocumentBuilder. The DocumentBuilder is a "facade" for the complex **Document** structure that allows you to quickly and easily insert content and formatting.

Operations that are possible with **DocumentBuilder** are also possible when using the classes of the Aspose.Words DOM directly. However, using Aspose.Words DOM classes directly usually requires more lines of code than using **DocumentBuilder**.

## Document Navigation

Document navigation is based on the concept of a virtual cursor, with which you can move to another location in the document using various **DocumentBuilder.MoveToXXX** methods such as [MoveToDocumentStart](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a883df72569ee5de6693962198ce8a93f) and [MoveToField](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#aa2e587f5c35b83512d4355efafc97300). This virtual cursor indicates where the text will be inserted when calling the methods [Write](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#aa0b9dd3748df2c69851f3d89670ecc95), [Writeln](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a4d0e7fad77490a3d8b317c4159001ee9), [InsertBreak](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a571c26886e30a740fc710e99daaed446), and others.

The following code example shows how to navigate to a bookmark:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## Document Building and Modifying

Aspose.Words API provides several classes that are responsible for formatting various elements of a document. Each of the classes encapsulates formatting properties related to a specific document element, such as text, paragraph, section, and others. For example, the [Font](https://apireference.aspose.com/words/cpp/class/aspose.words.font) class represents character formatting properties, the [ParagraphFormat](https://apireference.aspose.com/words/cpp/class/aspose.words.paragraphformat) class represents paragraph formatting properties, and so on. Objects of these classes are returned by the corresponding **DocumentBuilder** properties, which have the same names as the classes. Therefore, you can access them and set the desired formatting during the document build.

You can also insert text, checkbox, ole object, images, bookmarks, form fields, and other document elements at the cursor position using the Write method or any of the **DocumentBuilder.InsertXXX** methods, such as [InsertField](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a09e64cedb9555e7c5ce2f8bcfb8f06bb), [InsertHtml](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a72276df1da6f0ecae7b1ec3ff09df0b0), and similar methods.

Let's see how to create a simple document using the **DocumentBuilder**.

### Create a Document using DocumentBuilder

To start, you need to create a **DocumentBuilder** and associate it with a **Document** object. You create a new instance of **DocumentBuilder** by calling its constructor and pass it to a **Document** object for attachment to the builder.

To insert a text, pass the string of text you need to insert into the document to the **Write** method.

The following code example shows how to create a simple document using a document builder.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### Specify Document Formatting

The [Font](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a7cfacc6f877e188ccc22bb9692c8e3df) property defines text formatting. This object contains different font attributes (font name, font size, color, and so on). Some important font attributes are also represented by **DocumentBuilder** properties to allow you to access them directly. These are the [Font.Bold](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#aa11845e9df34409420154b5c1e872a01), [Font.Italic](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#aff6212cdd69724c6b791ec0c39af384c), and [Font.Underline](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a572d304e8d4cede9f7687013926effe8) boolean properties.

The following code example shows how to insert a formatted text using **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}} 

- [Font](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a7cfacc6f877e188ccc22bb9692c8e3df) specifies the character formatting that will be applied to all text inserted from the current position in the document onwards.
- [ParagraphFormat](https://apireference.aspose.com/words/cpp/class/aspose.words.paragraph_format) specifies the paragraph formatting for the current and all paragraphs to be inserted.
- [PageSetup](https://apireference.aspose.com/words/cpp/class/aspose.words.page_setup) specifies the page and section properties for the current section and the entire section that will be inserted.
- [CellFormat](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#ab16bffdc0b0ae4f09a4b76d1b68ad5ec) and [RowFormat](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#aa3aee68dcb1628b8916b62f05c29dd9e) specify formatting properties that will be applied to table cells and rows from the current position in the document onwards.

In this situation, "current" means the position, paragraph, section, cell, or row in which the cursor is.

{{% /alert %}}

{{% alert color="primary" %}} 

Note that the **Font**, **ParagraphFormat**, and **PageSetup** properties are updated whenever you navigate to a different location in the document to reflect the formatting properties of this location.

{{% /alert %}}
