---
title: Create or Load a Document in C#
second_title: Aspose.Words for .NET
articleTitle: Create or Load a Document
linktitle: Create or Load a Document
type: docs
url: /net/create-or-load-a-document/
aliases: [/net/creating-or-loading-a-document/]
description: "Create a blank document or to load it from a file or stream using C#."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
timestamp: 2024-07-09-19-00-42
---

Almost any task that you want to perform with Aspose.Words involves loading a document. The `Document` class represents a document loaded into memory. The document has several overloaded constructors allowing you to create a blank document or to load it from a file or stream. The document can be loaded in any load format supported by Aspose.Words. For the list of all supported load formats, see the [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) enumeration.

## Create a New Document {#create-a-new-document}

We will call the [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) constructor without parameters to create a new blank document. If you want to generate a document programmatically, the simplest way is to use the [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) class to add document contents.

The following code example shows how to create a document using the document builder:

{{< gist "aspose-words-gists" "1d626c7186a318d22d022dc96dd91d55" "create-new-document.cs" >}}

{{% alert color="primary" %}}

Note the default values:

- A blank document contains one section with default parameters, one empty paragraph, some document styles. Actually this document is the same as the result of creating the “New document” in Microsoft Word.
- The document paper size is [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Load a Document {#load-a-document}

To load an existing document in any of the [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) formats, pass the file name or the stream into one of the Document constructors. The format of the loaded document is automatically determined by its extension.

### Load from a File {#load-from-a-file}

Pass a file name as string to the Document constructor to open an existing document from a file.

The following code example shows how to open a document from a file:

{{< gist "aspose-words-gists" "1d626c7186a318d22d022dc96dd91d55" "open-document.cs" >}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### Load from a Stream {#load-from-a-stream}

To open a document from a stream, simply pass a stream object that contains the document into the Document constructor.

The following code example shows how to open a document from a stream:

{{< gist "aspose-words-gists" "1d626c7186a318d22d022dc96dd91d55" "open-from-stream.cs" >}}

{{% alert color="primary" %}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
