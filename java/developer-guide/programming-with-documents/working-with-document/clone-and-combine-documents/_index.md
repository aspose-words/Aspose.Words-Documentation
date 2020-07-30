---
title: Clone and Combine Documents
type: docs
weight: 60
url: /java/clone-and-combine-documents/
---

## **Cloning a Document**
If you need to generate hundreds or thousands of documents from a single document, just load the document into memory once, clone it, and populate the cloned document with your data. This speeds up the generation of documents because there is no need to load and parse the document from the file every time. Cloning is done with the Document.deepClone method that performs a deep copy of the Document and returns it. The following code example demonstrates how to deep clone a document. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/Properties.doc).

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneDocument.java" >}}
## **How to Insert a Document into another Document**
There is often a need to insert one document into another. For example to insert a document at a bookmark, merge field, or at a custom text marker. At the moment, there is no single method in Aspose.Words that can do this in one line of code.

However, a document in Aspose.Words is represented by a tree of nodes; the object model is rich and the task of combining documents is just a matter of moving nodes between the document trees. This article shows how to implement a method for inserting one document into another and using it in a variety of scenarios.

Documents can be inserted at a variety of locations and times. This article explains how to insert a document at a particular location.
### **Inserting a Document at Any Location**
To insert the content of one document to another at an arbitrary location the following simple InsertDocument method can be used. This technique will be referred to by other scenarios described below. Below method inserts contents of one document at a specified location in another document.

Below method inserts contents of one document at a specified location in another document. This method preserves the section breaks and section formatting of the inserted document.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-InsertDocumentIntoAnotherDocument-InsertDocumentWithSectionFormatting.java" >}}
### **Inserting a Document at a Bookmark**
Use the InsertDocument method shown above to insert documents in bookmarked places of the main template. To do this, just create a bookmarked paragraph where you want the document to be inserted. This bookmark should not enclose multiple paragraphs or text that you want to appear in the resulting document after the generation. Just set an empty paragraph and bookmark it. You can even put a small description of the inserted content inside this paragraph. Below example Invokes the InsertDocument method shown above to insert a document at a bookmark. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document).

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-InsertDocumentIntoAnotherDocument-InsertADocumentAtABookmark.java" >}}
### **Inserting a Document During Mail Merge**
This example relies on the InsertDocument method is shown at the beginning of the article to insert a document into a merge field during mail merge execution. The below code example demonstrates how to use the InsertDocument method to insert a document into a merge field during a mail merge. You can download the template files of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document).

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-InsertDocumentIntoAnotherDocument-InsertDocumentAtMailMerge.java" >}}

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-InsertDocumentIntoAnotherDocument-InsertDocumentAtMailMergeHandler.java" >}}

If a document is stored as binary data in the database field (BLOB field), use the following example. Below example a slight variation to the above example to load a document from a BLOB database field instead of a file.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-InsertDocumentIntoAnotherDocument-InsertDocumentAtMailMergeBlobHandler.java" >}}
### **Inserting a Document During Replace**
Sometimes, there is a requirement to insert documents to places marked with some text. For example, the template can contain paragraphs with the text [INTRODUCTION], [CONCLUSION], and so forth. In the resulting document, these paragraphs should be replaced with the content taken from external documents. This can be achieved with the following code, which also uses the InsertDocument method. The below code example shows how to insert the content of one document into another during a customized find and replace operation. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/InsertDocumentIntoAnother/InsertDocument1.doc).

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-InsertDocumentIntoAnotherDocument-InsertDocumentAtReplace.java" >}}

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/InsertDocumentIntoAnother/InsertDocument2.doc).

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-InsertDocumentIntoAnotherDocument-InsertDocumentAtReplaceHandler.java" >}}
