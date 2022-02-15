---
title: "Save a Document" – Aspose.Words for Python via .NET
articleTitle: "Save a Document"
linktitle: "Save a Document"
aliases: [/python/saving-a-document/]
type: docs
description: "Aspose.Words for Python via .NET enables you to save a document in any supported format. This is useful for most tasks performed using Aspose.Words."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /python-net/save-a-document/
aliases: [/python/save-a-document/]
---

Most of the tasks you need to perform with Aspose.Words involve saving a document. To save a document Aspose.Words provides the **save** method of the **Document** class. There are overloads that allow saving a document to a file or stream. The document can be saved in any save format supported by Aspose.Words. For the list of all supported save formats, see the [SaveFormat](https://apireference.aspose.com/words/net/aspose.words/saveformat) enumeration.

## Save a Document to a File {#save-a-document-to-a-file}

Simply use the **save** method with a file name. Aspose.Words will determine the save format from the file extension that you specify.

The following code example shows how to load and save a document to a file:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}} 

## Save a Document to a Stream {#save-a-document-to-a-stream}

Pass a stream object to the **save** method. It's necessary to specify the save format explicitly when saving to a stream.

The following code example shows how to load and save a document to a stream:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

## Save a Document to PCL {#save-a-document-to-pcl}

Aspose.Words supports saving a document into PCL (Printer Command Language). Aspose.Words can save documents into PCL 6 (PCL 6 Enhanced or PCL XL) format. The **PclSaveOptions** class can be used to specify additional options when saving a document into the PCL format.

The following code example shows how to save a document to PCL using save options:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

