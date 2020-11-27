---
title: Clone and Combine Documents
type: docs
aliases:
 - /cpp/how-to-insert-a-document-into-another-document/
weight: 60
url: /cpp/clone-and-combine-documents/
---

## Cloning a Document
If you need to generate hundreds or thousands of documents from a single document, just load the document into memory once, clone it, and populate the cloned document with your data. This speeds up the generation of documents because there is no need to load and parse the document from the file every time. Cloning is done with the Document.Clone method that performs a deep copy of the Document and returns it. The following code example demonstrates how to deep clone a document. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Data/Programming-Documents/Document).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CloningDocument-CloningDocument.cpp" >}}

## How to Insert a Document into another Document

There is often a need to insert one document into another. For example to insert a document at a bookmark, merge field or at a custom text marker. At the moment, there is no single method in Aspose.Words that can do this in one line of code.

However, a document in Aspose.Words is represented by a tree of nodes; the object model is rich and the task of combining documents is just a matter of moving nodes between the document trees. This article shows how to implement a method for inserting one document into another and using it in a variety of scenarios.

Documents can be inserted at a variety of locations and times. This article explains how to insert a document:

### Inserting a Document at Any Location

To insert the content of one document to another at an arbitrary location the following simple InsertDocument method can be used. This technique will be referred to by other scenarios described below. The code example given below inserts contents of one document at a specified location in another document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-InsertDoc-InsertDocument.cpp" >}}

### Inserting a Document at a Bookmark

Use the InsertDocument method shown above to insert documents in bookmarked places of the main template. To do this, just create a bookmarked paragraph where you want the document to be inserted. This bookmark should not enclose multiple paragraphs or text that you want to appear in the resulting document after the generation. Just set an empty paragraph and bookmark it. You can even put a small description of the inserted content inside this paragraph. The code example given below Invokes the InsertDocument method shown above to insert a document at a bookmark. You can download the template file of this example from here.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-InsertDoc-InsertDocumentAtBookmark.cpp" >}}

### Inserting a Document During Replace

Sometimes, there is a requirement to insert documents to places marked with some text. For example, the template can contain paragraphs with the text [INTRODUCTION], [CONCLUSION] and so forth. In the resulting document, these paragraphs should be replaced with the content taken from external documents. This can be achieved with the following code, which also uses the InsertDocument method. The code example given below shows how to insert the content of one document into another during a customized find and replace operation. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Data/Programming-Documents/Document/InsertDocument1.doc).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-InsertDoc-InsertDocumentAtReplace.cpp" >}}

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Data/Programming-Documents/Document/InsertDocument2.doc).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-InsertDoc-InsertDocumentAtReplaceHandler.cpp" >}}
