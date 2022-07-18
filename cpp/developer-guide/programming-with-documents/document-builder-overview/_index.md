---
title: Document Builder Overview in C++
second_title: Aspose.Words for C++
articleTitle: Document Builder Overview
linktitle: Document Builder Overview
type: docs
description: "DocumentBuilder allows you to build dynamic documents from scratch or add new elements to existing ones using C++. DocumentBuilder provides methods to insert text, checkboxes, tables, images, and other content elements in C++."
weight: 15
url: /cpp/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder) is a powerful class that associates with [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) and enables you to build dynamic documents from scratch or add new elements to an existing one.

**DocumentBuilder** provides methods to insert text, checkboxes, ole objects, paragraphs, lists, tables, images, and other content elements. It allows you to specify fonts, paragraph or section formatting, and perform other operations.

## Document Builder or Aspose.Words DOM

**DocumentBuilder** complements classes and methods available in the Aspose.Words Document Object Model (DOM) to simplify the most common document building tasks. That is, you can create and modify the content of documents both through the Aspose.Words DOM, which requires a good understanding of the tree structure, and using the DocumentBuilder. The DocumentBuilder is a "facade" for the complex **Document** structure that allows you to quickly and easily insert content and formatting.

Operations that are possible with **DocumentBuilder** are also possible when using the classes of the Aspose.Words DOM directly. However, using Aspose.Words DOM classes directly usually requires more lines of code than using **DocumentBuilder**.

## Document Navigation

Document navigation is based on the concept of a virtual cursor, with which you can move to another location in the document using various **DocumentBuilder.MoveToXXX** methods such as [MoveToDocumentStart](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#movetodocumentstart) and [MoveToField](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#movetofield_field_bool). This virtual cursor indicates where the text will be inserted when calling the methods [Write](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#write_string), [Writeln](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#writeln), [InsertBreak](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#insertbreak_breaktype), and others.

The following code example shows how to navigate to a bookmark:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## Document Building and Modifying

Aspose.Words API provides several classes that are responsible for formatting various elements of a document. Each of the classes encapsulates formatting properties related to a specific document element, such as text, paragraph, section, and others. For example, the [Font](https://reference.aspose.com/words/cpp/class/aspose.words.font) class represents character formatting properties, the [ParagraphFormat](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph_format) class represents paragraph formatting properties, and so on. Objects of these classes are returned by the corresponding **DocumentBuilder** properties, which have the same names as the classes. Therefore, you can access them and set the desired formatting during the document build.

You can also insert text, checkbox, ole object, images, bookmarks, form fields, and other document elements at the cursor position using the Write method or any of the **DocumentBuilder.InsertXXX** methods, such as [InsertField](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#insertfield_fieldtype_bool), [InsertHtml](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#inserthtml_string), and similar methods.

Let's see how to create a simple document using the **DocumentBuilder**.

### Create a Document using DocumentBuilder

To start, you need to create a **DocumentBuilder** and associate it with a **Document** object. You create a new instance of **DocumentBuilder** by calling its constructor and pass it to a **Document** object for attachment to the builder.

To insert a text, pass the string of text you need to insert into the document to the **Write** method.

The following code example shows how to create a simple document using a document builder.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### Specify Document Formatting

The [Font](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#get_font) property defines text formatting. This object contains different font attributes (font name, font size, color, and so on). Some important font attributes are also represented by **DocumentBuilder** properties to allow you to access them directly. These are the [Font.Bold](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#get_bold), [Font.Italic](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#get_italic), and [Font.Underline](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#get_underline) boolean properties.

The following code example shows how to insert a formatted text using **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#get_font) specifies the character formatting that will be applied to all text inserted from the current position in the document onwards.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph_format) specifies the paragraph formatting for the current and all paragraphs to be inserted.
- [PageSetup](https://reference.aspose.com/words/cpp/class/aspose.words.page_setup) specifies the page and section properties for the current section and the entire section that will be inserted.
- [CellFormat](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#get_cellformat) and [RowFormat](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#get_rowformat) specify formatting properties that will be applied to table cells and rows from the current position in the document onwards.

In this situation, "current" means the position, paragraph, section, cell, or row in which the cursor is.

{{% /alert %}}

{{% alert color="primary" %}}

Note that the **Font**, **ParagraphFormat**, and **PageSetup** properties are updated whenever you navigate to a different location in the document to reflect the formatting properties of this location.

{{% /alert %}}
