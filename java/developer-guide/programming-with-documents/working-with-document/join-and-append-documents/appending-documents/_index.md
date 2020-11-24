---
title: Appending Documents
type: docs
weight: 20
url: /java/appending-documents/
---

{{% alert color="primary" %}} 

You can download the used template files in the below examples from [here](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/joining_appending).

{{% /alert %}} 

## Appending Documents Overview

This topic discusses how to programmatically join and append documents using Aspose.Words. Appending documents is a very common task, one which is fully supported. Using Aspose.Words you can easily append one document to another using just a one-line API call. This topic provides details and code examples on how to append documents and how to further control how the documents are joined. For instance, some examples show how to set an appended document to appear on the next page and how to restart the page numbering in the pages that are joined.

### Key Terms and Sample Documents

When appending documents the destination document is the base document to which the content from the source document is imported into. These are common terms used frequently in the context of appending and copying content from a document to a document. Each sample below shows how to append documents with different options. In these samples, we will be using these two main documents along with a few variants of them to demonstrate the different techniques outlined in this article.

The content of the destination document is below. In the code, this is loaded into a Document object referenced as “dstDoc” in our code. This document serves as the base document to which the source document is appended.

|![todo:image_alt_text](http://i.imgur.com/0Pxe9PW.png)|
| :- |
The content of the source document is found below. In the code, this also will be loaded into a Document object and referenced as “srcDoc”. This document is what will be appended to the destination document.

|![todo:image_alt_text](http://i.imgur.com/YgraK9q.png)|
| :- |

## How the AppendDocument Method Works

It’s useful to take a look at the logic behind the [Document.appendDocument](https://apireference.aspose.com/words/java/com.aspose.words/document#appendDocument(com.aspose.words.Document,int)) method. This will provide some useful background information which helps to:

- Gain a better understanding of how the method works so if a resulting document does not appear as expected you will have a better idea as to the reason why.
- Understand the general underlying process of how to copy nodes between documents. This is useful if you are planning to implement your own import method. The technique behind how a document is appended is the same and can be applied to specific node types as well. For example, importing content at the paragraph level instead of at the section level.
- Provide a sample implementation that can be used if you are using an older version of Aspose.Words before the [Document.appendDocument](https://apireference.aspose.com/words/java/com.aspose.words/document#appendDocument(com.aspose.words.Document,int)) method was introduced. You can use this code as a manual implementation to append documents.

The method below provides a manual implementation of the [Document.appendDocument](https://apireference.aspose.com/words/java/com.aspose.words/document#appendDocument(com.aspose.words.Document,int)) function which closely follows the same underlying process as used in the built-in method. The below example shows how to manually append the content from one document to the end of another document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-AppendDocumentManually-1.java" >}}

Each section is imported into the destination document and is appended to the end of the document. Since content is imported section by section this means settings such as page setup and headers and footers are preserved during the import.

It is also useful to note that because the joining point of two documents is at the section level the specific joining point occurs between the last section of the destination document and the first section of the source document. The section and page setup properties dictate how the two documents are joined together at the joining of the two sections. The most common of these settings is to define if the source document is to appear on the same page or a new page.

As suggested above this approach is not limited to just combining documents. It is a common approach that you should use when you need to copy nodes from one document into another. There are three simple steps to copy any node from one document to another:

1. Obtain the node in the source document that you want to copy.
1. Import the node into the destination document. Importing creates a new node that is a copy of the original node, but suitable for insertion into the destination document.
1. Insert the imported node into the destination document.

## Common Issues When Appending Documents

**Question:** I am using a blank document as a template to which further documents are appended. After executing my code the first page of the generated document is a blank page.

**Answer:** Even a blank document is not actually completely empty. For a minimal document to be valid it must have at least one section which contains a body, which in turn contains at least one paragraph. Along with this information, it is useful to remember that by default the first section of a document is set to start on a new page.

Due to the template document already containing one section it should become clear that the blank page appearing at the start of the document is actually the result of the next imported section appearing on a new page. To remedy this, the document needs to be fully empty before anything is appended to it. The [Document.removeAllChildren](https://apireference.aspose.com/words/java/com.aspose.words/classes/document/methods/removeAllChildren\(\)/) method is called to remove all sections from the document. This is demonstrated in the code below. The below example shows how to remove all content from a document before using it as a base to append documents.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-BaseDocument-1.java" >}}

**Question:** I am joining two documents together and specifying settings so the joined documents will run together by using the SectionStart.Continuous setting. The appended document does not appear on the same page instead it still appears on a separate page.

**Answer:** The most likely cause is almost always because of a difference in [PageSetup](https://apireference.aspose.com/words/java/com.aspose.words/classes/PageSetup) settings for the sections where the documents are joined together. Sections can be set as continuous to appear on the same page only if the settings which define the page structure are identical. For instance, a section that has larger [getPageWidth](https://apireference.aspose.com/words/java/com.aspose.words/classes/pagesetup/methods/getPageWidth\(\)/) and [getPageHeight](https://apireference.aspose.com/words/java/com.aspose.words/classes/pagesetup/methods/getPageHeight\(\)/) properties than what is found in the other document cannot be joined continuously. Even a very small difference in page size will cause the content to not flow continuously. For this reason, the page sizes and orientation should be set exactly identical between documents to be joined. In this example below the two documents were to be joined continuously but as you can visibly see the two documents have different page sizes and therefore the source document must start on a new page.

|![todo:image_alt_text](http://i.imgur.com/69XcM9M.png)|
| :- |
In order to solve this, the first section of the source document should have the appropriate **PageSetup** properties made identical to the last section of the destination document. This is because these are the two sections that will be joined and therefore to appear on the same page they must have the same settings. The code below shows how to do this. In some instances, other properties may need to be changed as well in order for the page. The example shows how to append a document to another document continuously which has different page settings.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-DifferentPageSetup-1.java" >}}

This should often only need to be done for the first section of the source document although if there are multiple continuous sections from the first section in the source document then this will need to be repeated for these sections as well.
**Question:** When rendering a document (to PDF, XPS or Image, etc) the document which is appended does not appear in the rendered output.
**Answer:** This is most likely because you have previously rendered the document or have called [Document.updatePageLayout](https://apireference.aspose.com/words/java/com.aspose.words/classes/document/methods/updatePageLayout\(\)/) before appending the document. When either of these methods is called the document is laid out into pages and is stored into memory. If any content is inserted after this action then it will be inserted into the Document Object Model but the layout of the pages will not be rebuilt to include this change until the page layout is updated again.

To solve this you will need to either remove the calls before appending the document if they are unneeded or call Document.updatePageLayout again after appending the document. This technique is demonstrated in the code below.  The example shows to rebuild the document layout after appending further content.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-UpdatePageLayout-1.java" >}}


## Append with ImportFormatOptions

Aspose.Words provides a new overloaded AppendDocument() method into a Document class. It allows specifying additional options that affect the formatting of a result document.

The following code example shows the usage of this method.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-AppendwithImportFormatOptions-AppendwithImportFormatOptions.java" >}}

## Ignore Header and Footer

Aspose.Words provides a boolean type ImportFormatOptions.IgnoreHeaderFooter property to include or exclude header and footer while appending documents. The default value is set to true.

The following code example demonstrates how to set this property.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithImportFormatOptions-IgnoreHeaderFooter.java" >}}
