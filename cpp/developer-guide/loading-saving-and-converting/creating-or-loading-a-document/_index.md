---
title: Creating or Loading a Document
type: docs
weight: 10
url: /cpp/creating-or-loading-a-document/
---

Almost any task that you want to perform with Aspose.Words involves loading a document. The Document class represents a document loaded into memory. The document has several overloaded constructors allowing you to create a blank document or to load it from a file or stream. The document can be loaded in any load format supported by Aspose.Words. For the list of all supported load formats, see the [LoadFormat](https://apireference.aspose.com/words/cpp/namespace/aspose.words#a5fddddb463c824cf3fe353ce1bcd8f52) enumeration.

## **Create a New Document**

We will call the [Document](https://apireference.aspose.com/words/cpp/class/aspose.words.document/) constructor without parameters to create a new blank document. If you want to generate a document programmatically, the simplest way is to use the [DocumentBuilder](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder/) class to add document contents.

The following code example shows how to create a document using the document builder:

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}} 

Note the default values:

- A blank document contains one section with default parameters, one empty paragraph, some document styles. Actually this document is the same as the result of creating the “New document” in Microsoft Word.
- The document paper size is [PaperSize](https://apireference.aspose.com/words/cpp/namespace/aspose.words/#a1a2f6b44133c9bd897dabca36c39ba25).**Letter**.

{{% /alert %}} 

## **Load a Document**

To load an existing document in any of the LoadFormat formats, pass the file name or the stream into one of the Document constructors. The format of the loaded document is automatically determined by its extension.

### **Load from a File**

Pass a file name as string to the Document constructor to open an existing document from a file.

The following code example shows how to open a document from a file:

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Data/Loading-and-Saving/Document.doc).

### **Load from a Stream**

To open a document from a stream, simply pass a stream object that contains the document into the Document constructor.

The following code example shows how to open a document from a stream:

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Data/Loading-and-Saving/Document.doc).

{{% /alert %}}
