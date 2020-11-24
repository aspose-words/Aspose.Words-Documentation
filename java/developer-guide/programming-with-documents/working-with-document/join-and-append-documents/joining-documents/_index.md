---
title: Joining Documents
type: docs
weight: 10
url: /java/joining-documents/
---

{{% alert color="primary" %}} 

You can download the used template files in the given below examples from [here](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/joining_appending).

{{% /alert %}} 

## Join a Document onto another Document

The simplest way to join documents involves a single call the Document.appendDocument method. This method will append the Document object passed as a parameter to the end of the Document object which called the method. The second parameter accepts an ImportFormatMode enumeration which defines how conflicting styles are handled when one document is imported into the other. The code example given below shows how to append a document to the end of another document using no additional options.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-JoinNewPage-1.java" >}}

## Specifying How a Document is Joined Together

Documents are appended at the section level therefore the [PageSetup.getSectionStart](https://apireference.aspose.com/words/java/com.aspose.words/pagesetup#SectionStart) property of the Section object defines how the content of the current section is joined in relation to the previous section. If the [PageSetup.getSectionStart](https://apireference.aspose.com/words/java/com.aspose.words/pagesetup#SectionStart) property is set to SectionStart.NewPage for the first section in the source document then the content in this section is forced to start on a new page. Conversely if the property is set to SectionStart.Continuous then the content is allowed to flow on the same page directly after the previous section’s content.

### Specifying the Source Document to Flow Continuously or Start from a New Page

Specifying the [PageSetup.getSectionStart](https://apireference.aspose.com/words/java/com.aspose.words/pagesetup#SectionStart) property as **SectionStart.Continuous** for the first section of the source document will cause the content to appear together. The code example given below shows how to append a document to another document so the content flows continuously.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-JoinContinuous-1.java" >}}

The generated output is below. The content of the joined document flows continuously.

|![todo:image_alt_text](http://i.imgur.com/xDLCiCQ.png)|
| :- |
Specifying the [PageSetup.getSectionStart](https://apireference.aspose.com/words/java/com.aspose.words/pagesetup#SectionStart) property as **SectionStart.NewPage** instead will cause the appended content to appear on a new page. The code example given below shows how to append a document to another document so it starts on a new page.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-JoinNewPage-1.java" >}}

|![todo:image_alt_text](http://i.imgur.com/Ngyrybq.png)|
| :- |
Please note that sometimes even a section set to be continuous may be forced onto a different page. This can happen as a result of the sections having different page settings. For example if one section has a larger [PageSetup.getPageWidth](https://apireference.aspose.com/words/java/com.aspose.words/pagesetup#PageWidth) or [PageSetup.getPageHeight](https://apireference.aspose.com/words/java/com.aspose.words/pagesetup#PageHeight) setting then the two sections cannot flow on one page.

Please note that sometimes even a section set to be continuous may be forced onto a different page. This can happen as a result of the sections having different page settings. For example if one section has a larger [PageSetup.getPageWidth](https://apireference.aspose.com/words/java/com.aspose.words/pagesetup#PageWidth) or [PageSetup.getPageHeight](https://apireference.aspose.com/words/java/com.aspose.words/pagesetup#PageHeight) setting then the two sections cannot flow on one page.

By default a new document in Microsoft Word is created with sections to start on a new page. This option can be set under Page Setup in Microsoft Word as shown below.

|![todo:image_alt_text](http://i.imgur.com/MzMi9Dc.png)|
| :- |


This option is represented by the [PageSetup.getSectionStart](https://apireference.aspose.com/words/java/com.aspose.words/pagesetup#SectionStart) property of the **Section** object in Aspose.Words. This property is of no real interest in the first section of a document when it’s not being joined to another document as any section start type for the first section will not affect how the document is displayed. Due to this reason it is unlikely to be changed and therefore the first section of a document will almost always be set to start on a new page by default. This property does however become important when a document is being used to append to another as it defines how the source document is appended to the destination document. As a result of these documents that are appended without the [PageSetup.getSectionStart](https://apireference.aspose.com/words/java/com.aspose.words/pagesetup#SectionStart) property specifically defined will almost always result in the source document appearing on a new page by default.

### Appending a Document’s Content to Appear Together on the Same Page

A document can be appended so that the content will always appear together on the same page and not split across two pages. The code example given below shows how to append a document to another document while keeping the content from splitting across two pages.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-joining_appending-KeepSourceTogether-1.java" >}}

The code above will set the entire content of the appended document to be kept together on the same page using the [ParagraphFormat.getKeepWithNext](https://apireference.aspose.com/words/java/com.aspose.words/paragraphformat#KeepWithNext) property of the Paragraph class. The output produced is below. Since the position it is inserted at will cause the content to be split across two pages the entire content is moved to the next page instead. Please note this is different from setting the source document to appear on a new page, it is good to note that the source document is set to be appended continuously

|![todo:image_alt_text](http://i.imgur.com/Ngyrybq.png)|
| :- |

