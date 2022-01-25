---
title: "Create or Load a Document"
type: docs
url: /python-net/create-or-load-a-document/
aliases:
 - /python/creating-or-loading-a-document/
 - /python/create-or-load-a-document/
description: "Aspose.Words for Python via .NET enables you to create a blank document or to load it from a file or stream. This is useful for almost any task performed using Aspose.Words."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
---

Almost any task that you want to perform with Aspose.Words involves loading a document. The Document class represents a document loaded into memory. The document has several overloaded constructors allowing you to create a blank document or to load it from a file or stream. The document can be loaded in any load format supported by Aspose.Words. For the list of all supported load formats, see the **LoadFormat** enumeration.

## Create a New Document

We will call the **Document** constructor without parameters to create a new blank document. If you want to generate a document programmatically, the simplest way is to use the **DocumentBuilder** class to add document contents.

The following code example shows how to create a document using the document builder:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}} 

Note the default values:

- A blank document contains one section with default parameters, one empty paragraph, some document styles. Actually this document is the same as the result of creating the “New document” in Microsoft Word.
- The document paper size is **PaperSize.LETTER**.

{{% /alert %}} 

## Load a Document

To load an existing document in any of the **LoadFormat** formats, pass the file name or the stream into one of the Document constructors. The format of the loaded document is automatically determined by its extension.

### Load from a File

Pass a file name as string to the Document constructor to open an existing document from a file.

The following code example shows how to open a document from a file:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

### Load from a Stream

To open a document from a stream, simply pass a stream object that contains the document into the Document constructor.

The following code example shows how to open a document from a stream:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
