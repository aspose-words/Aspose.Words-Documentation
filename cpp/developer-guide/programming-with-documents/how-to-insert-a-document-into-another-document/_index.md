---
title: How to Insert a Document into another Document
type: docs
weight: 200
url: /cpp/how-to-insert-a-document-into-another-document/
---

## How to Insert a Document into another Document

There is often a need to insert one document into another. For example to insert a document at a bookmark, merge field or at a custom text marker. At the moment, there is no single method in Aspose.Words that can do this in one line of code.

However, a document in Aspose.Words is represented by a tree of nodes; the object model is rich and the task of combining documents is just a matter of moving nodes between the document trees. This article shows how to implement a method for inserting one document into another and using it in a variety of scenarios.

### Inserting a Document

Documents can be inserted at a variety of locations and times. This article explains how to insert a document:

#### Inserting a Document at Any Location

To insert the content of one document to another at an arbitrary location the following simple InsertDocument method can be used. This technique will be referred to by other scenarios described below. Below method inserts contents of one document at a specified location in another document.

{{< gist "aspose-words" "38845012a35610163a07b547a36d6563" "cpp-Programming-Documents-Document-InsertDoc-InsertDocument.cpp" >}}

#### Inserting a Document at a Bookmark

Use the InsertDocument method shown above to insert documents in bookmarked places of the main template. To do this, just create a bookmarked paragraph where you want the document to be inserted. This bookmark should not enclose multiple paragraphs or text that you want to appear in the resulting document after the generation. Just set an empty paragraph and bookmark it. You can even put a small description of the inserted content inside this paragraph. Below example Invokes the InsertDocument method shown above to insert a document at a bookmark. You can download the template file of this example from here.

{{< gist "aspose-words" "38845012a35610163a07b547a36d6563" "cpp-Programming-Documents-Document-InsertDoc-InsertDocumentAtBookmark.cpp" >}}

#### Inserting a Document During Replace

Sometimes, there is a requirement to insert documents to places marked with some text. For example, the template can contain paragraphs with the text [INTRODUCTION], [CONCLUSION] and so forth. In the resulting document, these paragraphs should be replaced with the content taken from external documents. This can be achieved with the following code, which also uses the InsertDocument method. Below example shows how to insert content of one document into another during a customized find and replace operation. You can download the template file of this example from here.

{{< gist "aspose-words" "38845012a35610163a07b547a36d6563" "cpp-Programming-Documents-Document-InsertDoc-InsertDocumentAtReplace.cpp" >}}

You can download the template file of this example from here.

{{< gist "aspose-words" "38845012a35610163a07b547a36d6563" "cpp-Programming-Documents-Document-InsertDoc-InsertDocumentAtReplaceHandler.cpp" >}}
