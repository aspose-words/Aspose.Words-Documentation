---
title: Document Builder Overview in Python
second_title: Aspose.Words for Python via .NET
articleTitle: Document Builder Overview
linktitle: Document Builder Overview
type: docs
description: "DocumentBuilder allows you to build dynamic documents from scratch or add new elements to existing ones using Python. DocumentBuilder provides methods to insert text, checkboxes, tables, images, and other content elements in Python."
weight: 30
url: /python-net/document-builder-overview/
aliases: [/python/document-builder-overview/]
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) is a powerful class that associates with [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) and enables you to build dynamic documents from scratch or add new elements to an existing one.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) provides methods to insert text, checkboxes, ole objects, paragraphs, lists, tables, images, and other content elements. It allows you to specify fonts, paragraph or section formatting, and perform other operations.

## Document Builder or Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) complements classes and methods available in the Aspose.Words Document Object Model (DOM) to simplify the most common document building tasks. That is, you can create and modify the content of documents both through the Aspose.Words DOM, which requires a good understanding of the tree structure, and using the DocumentBuilder. The `DocumentBuilder` is a "facade" for the complex **Document** structure that allows you to quickly and easily insert content and formatting.

Operations that are possible with [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) are also possible when using the classes of the Aspose.Words DOM directly. However, using Aspose.Words DOM classes directly usually requires more lines of code than using [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## Document Navigation

Document navigation is based on the concept of a virtual cursor, with which you can move to another location in the document using various **DocumentBuilder.move_to_XXX** methods such as [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) and [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). This virtual cursor indicates where the text will be inserted when calling the methods [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/), and others. See the following article "Navigation with Cursor" to learn more about the virtual cursor.

The following code example shows how to navigate to a bookmark:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Document Building and Modifying

Aspose.Words API provides several classes that are responsible for formatting various elements of a document. Each of the classes encapsulates formatting properties related to a specific document element, such as text, paragraph, section, and others. For example, the [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) class represents character formatting properties, the [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) class represents paragraph formatting properties, and so on. Objects of these classes are returned by the corresponding [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) properties, which have the same names as the classes. Therefore, you can access them and set the desired formatting during the document build.

You can also insert text, checkbox, ole object, images, bookmarks, form fields, and other document elements at the cursor position using the `Write` method or any of the **DocumentBuilder.insert_XXX** methods, such as [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/), and similar methods.

Let's see how to create a simple document using the [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

### Create a Document using DocumentBuilder

To start, you need to create a [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) and associate it with a [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) object. You create a new instance of [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) by calling its constructor and pass it to a [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) object for attachment to the builder.

To insert a text, pass the string of text you need to insert into the document to the [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/) method.

The following code example shows how to create a simple document using a document builder.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Specify Document Formatting

The [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) property defines text formatting. This object contains different font attributes (font name, font size, color, and so on). Some important font attributes are also represented by [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) properties to allow you to access them directly. These are the [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/), and [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/) boolean properties.

The following code example shows how to insert a formatted text using [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) specifies the character formatting that will be applied to all text inserted from the current position in the document onwards.
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) specifies the paragraph formatting for the current and all paragraphs to be inserted.
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) specifies the page and section properties for the current section and the entire section that will be inserted.
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) and [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) specify formatting properties that will be applied to table cells and rows from the current position in the document onwards.

In this situation, "current" means the position, paragraph, section, cell, or row in which the cursor is.

{{% /alert %}}

{{% alert color="primary" %}}

Note that the [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/), and [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) properties are updated whenever you navigate to a different location in the document to reflect the formatting properties of this location.

{{% /alert %}}
