---
title: Save a Document in C++
second_title: Aspose.Words for C++
articleTitle: Save a Document
linktitle: Save a Document
type: docs
description: "Save a document in any supported format using C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /cpp/save-a-document/
---

Most of the tasks you need to perform with Aspose.Words involve saving a document. To save a document Aspose.Words provides the [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) method of the [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) class. The document can be saved in any save format supported by Aspose.Words. For the list of all supported save formats, see the [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) enumeration.

## Save to a File {#save-a-document-to-a-file}

Simply use the [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) method with a file name. Aspose.Words will determine the save format from the file extension that you specify.

The following code example shows how to load and save a document to a file:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Save to a Stream {#save-a-document-to-a-stream}

Pass a stream object to the [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) method. It's necessary to specify the save format explicitly when saving to a stream.

The following code example shows how to load and save a document to a stream:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## Save to PCL {#save-a-document-to-pcl}

Aspose.Words supports saving a document into PCL (Printer Command Language). Aspose.Words can save documents into PCL 6 (PCL 6 Enhanced or PCL XL) format. The PclSaveOptions class can be used to specify additional options when saving a document into the PCL format.

The following code example shows how to save a document to PCL using save options:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
