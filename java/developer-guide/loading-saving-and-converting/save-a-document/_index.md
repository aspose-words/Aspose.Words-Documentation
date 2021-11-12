---
title: Save a Document
aliases: [/java/saving-a-document/]
type: docs
description: "Aspose.Words for Java allows you to save a document in any supported format. This is useful for most tasks performed using Aspose.Words."
weight: 20
url: /java/save-a-document/
---

Most of the tasks you need to perform with Aspose.Words involve saving a document. To save a document Aspose.Words provides the [Save](https://apireference.aspose.com/words/java/com.aspose.words/document#save(java.lang.String)) method of the [Document](https://apireference.aspose.com/words/java/com.aspose.words/Document) class. The document can be saved in any save format supported by Aspose.Words. For the list of all supported save formats, see the [SaveFormat](https://apireference.aspose.com/words/java/com.aspose.words/SaveFormat) enumeration.

## Save to a File {#save-a-document-to-a-file}

Simply use the [Save](https://apireference.aspose.com/words/java/com.aspose.words/document#save(java.lang.String)) method with a file name. Aspose.Words will determine the save format from the file extension that you specify.

The following code example demonstrates how to load and save a document to a file:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/LoadingSavingAndConverting/Document.doc).

{{% /alert %}} 

## Save a Document to a Stream {#save-a-document-to-a-stream}

Pass a stream object to the [Save](https://apireference.aspose.com/words/java/com.aspose.words/document#save(java.io.OutputStream,com.aspose.words.SaveOptions)) method. It's necessary to specify the save format explicitly when saving to a stream.

The following code example demonstrates how to load and save a document to a stream:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/LoadingSavingAndConverting/Document.doc).

## Save to PCL {#save-a-document-to-pcl}

Aspose.Words supports saving a document into PCL (Printer Command Language). Aspose.Words can save documents into PCL 6 (PCL 6 Enhanced or PCL XL) format. The PclSaveOptions class can be used to specify additional options when saving a document into the PCL format.

The following code example shows how to save a document to PCL using save options:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
