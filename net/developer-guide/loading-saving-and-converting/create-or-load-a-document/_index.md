---
title: "Create or Load a Document"
type: docs
url: /net/create-or-load-a-document/
aliases: [/net/creating-or-loading-a-document/]
description: "Aspose.Words for .NET enables you to create a blank document or to load it from a file or stream. This is useful for almost any task performed using Aspose.Words."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

Almost any task that you want to perform with Aspose.Words involves loading a document. The Document class represents a document loaded into memory. The document has multiple overloaded constructors allowing you to create a blank document or to load it from a file or stream. The document can be loaded in any load format supported by Aspose.Words. For the list of all supported load formats, see the [LoadFormat](https://apireference.aspose.com/words/net/aspose.words/loadformat) enumeration.

## Create a  Document {#create-a-new-document}

We will call the [Document](https://apireference.aspose.com/words/net/aspose.words/document/constructors/main) constructor without parameters to create a new blank document. If you want to generate a document programmatically, the simplest way is to use the [DocumentBuilder](https://apireference.aspose.com/words/net/aspose.words/documentbuilder) class to add document contents.

The following code example demonstrates how to create a document using the document builder:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}} 

Note the default values:

- A blank document contains one section with default parameters, one empty paragraph, some document styles. Actually this document is the same as the result of creating the “New document” in Microsoft Word.
- The document paper size is [PaperSize](https://apireference.aspose.com/words/net/aspose.words/papersize).**Letter**.

{{% /alert %}} 

## Load a Document {#load-a-document}

To load an existing document in any of the [LoadFormat](https://apireference.aspose.com/words/net/aspose.words/loadformat) formats, pass the file name or the stream into one of the Document constructors. The format of the loaded document is automatically determined by its extension.

### Load from a File {#load-from-a-file}

Pass a file name as string to the Document constructor to open an existing document from a file.

The following code example demonstrates how to open a document from a file:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### Load from a Stream {#load-from-a-stream}

To open a document from a stream, simply pass a stream object that contains the document into the Document constructor.

The following code example demonstrates how to open a document from a stream:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
