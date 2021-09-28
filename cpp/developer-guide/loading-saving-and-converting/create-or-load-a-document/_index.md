---
title: Create or Load a Document
type: docs
aliases: [/cpp/creating-or-loading-a-document/]
description: "Aspose.Words for C++ enables you to create a blank document or to load it from a file or stream. This is useful for almost any task performed using Aspose.Words."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /cpp/create-or-load-a-document/
---

Almost any task that you want to perform with Aspose.Words involves loading a document. The Document class represents a document loaded into memory. The document has multiple overloaded constructors allowing you to create a blank document or to load it from a file or stream. The document can be loaded in any load format supported by Aspose.Words. For the list of all supported load formats, see the [LoadFormat](https://apireference.aspose.com/words/cpp/namespace/aspose.words#loadformat) enumeration.

## Create a New Document

We will call the [Document](https://apireference.aspose.com/words/cpp/class/aspose.words.document/) constructor without parameters to create a new blank document. If you want to generate a document programmatically, the simplest way is to use the [DocumentBuilder](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder/) class to add document contents.

The following code example shows how to create a document using the document builder:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}} 

Note the default values:

- A blank document contains one section with default parameters, one empty paragraph, some document styles. Actually this document is the same as the result of creating the “New document” in Microsoft Word.
- The document paper size is [PaperSize](https://apireference.aspose.com/words/cpp/namespace/aspose.words/#papersize).**Letter**.

{{% /alert %}} 

## Load a Document

To load an existing document in any of the LoadFormat formats, pass the file name or the stream into one of the Document constructors. The format of the loaded document is automatically determined by its extension.

### Load from a File

Pass a file name as a string to the Document constructor to open an existing document from a file.

The following code example demonstrates how to open a document from a file:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Data/Loading-and-Saving/Document.doc).

### Load from a Stream

To open a document from a stream, simply pass a stream object that contains the document into the Document constructor.

The following code example demonstrates how to open a document from a stream:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Data/Loading-and-Saving/Document.doc).

{{% /alert %}}
