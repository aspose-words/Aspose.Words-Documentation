---
title: How to  Insert a Document into another Document
type: docs
weight: 110
url: /java/how-to-insert-a-document-into-another-document/
---

{{% alert color="primary" %}} 

There is often a need to insert one document into another. For example to insert a document at a bookmark, merge field or at a custom text marker. At the moment, there is no single method in Aspose.Words that can do this in one line of code.

However, a document in Aspose.Words is represented by a tree of nodes; the object model is rich and the task of combining documents is just a matter of moving nodes between the document trees. This article shows how to implement a method for inserting one document into another and using it in a variety of scenarios.

{{% /alert %}} 

## Insert a Document at Any Location

To insert the content of one document to another at an arbitrary location the following simple **InsertDocument** method can be used. This technique will be referred to by other scenarios described below. This is a method that inserts contents of one document at a specified location in another document.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-InsertDocumentIntoAnotherDocument-InsertDocument.java" >}}

This is a method that inserts contents of one document at a specified location in another document. This method preserve the section breaks and section formatting of the inserted document.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-InsertDocumentIntoAnotherDocument-InsertDocumentWithSectionFormatting.java" >}}

## Insert a Document at a Bookmark

Use the **InsertDocument** method shown above to insert documents in bookmarked places of the main template. To do this, just create a bookmarked paragraph where you want the document to be inserted. This bookmark should not enclose multiple paragraphs or text that you want to appear in the resulting document after the generation. Just set an empty paragraph and bookmark it. You can even put a small description of the inserted content inside this paragraph. Invokes the InsertDocument method shown above to insert a document at a bookmark.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-InsertDocumentIntoAnotherDocument-InsertADocumentAtABookmark.java" >}}

## Insert a Document During Mail Merge

This example relies on the **InsertDocument** method shown at the beginning of the article to insert a document into a merge field during mail merge execution. Following example demonstrates how to use the InsertDocument method to insert a document into a merge field during mail merge.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-InsertDocumentIntoAnotherDocument-InsertDocumentAtMailMerge.java" >}}

If a document to be inserted is stored as binary data in the database field (BLOB field), use the following example.

A slight variation to the above example to load a document from a BLOB database field instead of a file.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-InsertDocumentIntoAnotherDocument-InsertDocumentAtMailMergeBlobHandler.java" >}}

## Insert a Document During Replace

Sometimes, there is a requirement to insert documents to places marked with some text. For example, the template can contain paragraphs with the text [INTRODUCTION], [CONCLUSION] and so forth. In the resulting document, these paragraphs should be replaced with the content taken from external documents. This can be achieved with the following code, which also uses the InsertDocument method. Following example shows how to insert content of one document into another during a customized find and replace operation.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-InsertDocumentIntoAnotherDocument-InsertDocumentAtReplace.java" >}}
