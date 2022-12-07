---
title: Create or Load a Document in Java
second_title: Aspose.Words for Java
articleTitle: Create or Load a Document
linktitle: Create or Load a Document
type: docs
weight: 10
url: /java/create-or-load-a-document/
aliases: [/java/creating-or-loading-a-document/]
description: "Aspose.Words enables you to create a blank document or to load it from a file or stream using Java."
---

Almost any task that you want to perform with Aspose.Words involves loading a document. The Document class represents a document loaded into memory. The document has several overloaded constructors allowing you to create a blank document or to load it from a file or stream. The document can be loaded in any load format supported by Aspose.Words. For the list of all supported load formats, see the [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) enumeration.

## Create a New Document {#create-a-new-document}

We will call the [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) constructor without parameters to create a new blank document. If you want to generate a document programmatically, the simplest way is to use the [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/document/Builder) class to add document contents.

The following code example shows how to create a document using the document builder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Note the default values:

- A blank document contains one section with default parameters, one empty paragraph, some document styles. Actually this document is the same as the result of creating the “New document” in Microsoft Word.
- The document paper size is [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Load a Document

To load an existing document in any of the [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) formats, pass the file name or the stream into one of the Document constructors. The format of the loaded document is automatically determined by its extension.

### Load from a File {#load-from-a-file}

Pass a file name as a string to the Document constructor to open an existing document from a file.

The following code example shows how to open a document from a file:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Load from a Stream {#load-from-a-stream}

To open a document from a stream, simply pass a stream object that contains the document into the Document constructor.

The following code example shows how to open a document from a stream:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
