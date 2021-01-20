---
title: Save a Document
aliases: [/cpp/saving-a-document/]
type: docs
description: "Aspose.Words for C++ enables you to save a document in any supported format. This is useful for most tasks performed using Aspose.Words."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /cpp/save-a-document/
---

Most of the tasks you need to perform with Aspose.Words involve saving a document. To save a document Aspose.Words provides the [Save](https://apireference.aspose.com/words/cpp/class/aspose.words.document#a4ba337135cd6c8bed74a268ba60218bd) method of the [Document](https://apireference.aspose.com/words/cpp/class/aspose.words.document) class. The document can be saved in any save format supported by Aspose.Words. For the list of all supported save formats, see the [SaveFormat](https://apireference.aspose.com/words/cpp/namespace/aspose.words#a115f4c887d1fbaa2cbe273d422f7e847) enumeration.

## Save a Document to a File

Simply use the [Save](https://apireference.aspose.com/words/cpp/class/aspose.words.document#a4ba337135cd6c8bed74a268ba60218bd) method with a file name. Aspose.Words will determine the save format from the file extension that you specify.

The following code example shows how to load and save a document to a file:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Data/Quick-Start/Document.doc).

{{% /alert %}} 

## Save a Document to a Stream

Pass a stream object to the [Save](https://apireference.aspose.com/words/cpp/class/aspose.words.document#a431952672f6d54c46af01da0d5410ab0) method. It's necessary to specify the save format explicitly when saving to a stream.

The following code example shows how to load and save a document to a stream:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Data/Quick-Start/Document.doc).


## Save a Document to PCL

Aspose.Words supports saving a document into PCL (Printer Command Language). Aspose.Words can save documents into PCL 6 (PCL 6 Enhanced or PCL XL) format. The PclSaveOptions class can be used to specify additional options when saving a document into the PCL format.

The following code example shows how to save a document to PCL using save options:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
