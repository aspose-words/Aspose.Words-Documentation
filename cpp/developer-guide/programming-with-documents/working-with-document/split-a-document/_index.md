---
title: Split a Document
type: docs
weight: 75
url: /cpp/split-a-document/
---

*Splitting* or *split a document* is the process of breaking a large document into a greater number of smaller files. There are various reasons to split a file. For example, you only need some pages from a specific document and not the entire one. Or for privacy reasons, you want to share only some parts of a document with others. With the splitting feature, you can get only the required parts of the document and do the necessary actions with them, for example, to mark up, save, or send.

Aspose.Words provides you with an efficient way to split one document into multiple documents by headings or sections. You can also split a document by pages or by page ranges which can be achieved by using **DocumentPageSplitter** helper class. Both splitting options will be described in this article.

To split a document into smaller files using Aspose.Words, you need to follow these steps:

1. Load the document in any supported format.
1. Split the document.
1. Save the output documents.

After you split a document, you will be able to open all the output documents that will start with the required pages, text, etc.

## Split a Document Using Different Criteria

Aspose.Words allows you to split EPUB or HTML documents into chapters according to various criteria. In the process, the style and layout of the source document are preserved for the output documents.

You can specify criteria using the [DocumentSplitCriteria](https://apireference.aspose.com/words/cpp/namespace/aspose.words.saving/#a21c39143a76e997332687767db80fc07) enumeration. So you can divide a document into chapters using one of the following criteria or combine more than one criteria together:

- heading paragraph,
- section break,
- column break,
- page break.

When saving the output to HTML, Aspose.Words save each individual chapter as a separate HTML file. As a result, the document will be split into multiple HTML files. When saving the output to EPUB, Aspose.Words save the result in a single EPUB file regardless of the DocumentSplitCriteria value you used. So, using DocumentSplitCriteria for EPUB documents only affects the appearance of their content in reader applications: content will be divided into chapters and the document will no longer appear continuous.

{{% alert color="primary" %}} 

You cannot split a document using the [DocumentSplitCriteria](https://apireference.aspose.com/words/cpp/namespace/aspose.words.saving/#a21c39143a76e997332687767db80fc07) property when saving to MHTML format.

{{% /alert %}} 

In this section, we consider only some of the possible split criteria.

### Split a Document by Sections

Aspose.Words also enables you to use section breaks to split documents and save them to HTML. For this purpose, use **SectionBreak** as the **DocumentSplitCriteria**:

The following code example shows how to split a document into smaller parts by section breaks (without using the DocumentSplitCriteria property):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cpp" >}}

## Splitting by Pages

You can also split a document page by page, by page ranges, or starting with the specified page numbers. In such a case a helper class DocumentPageSplitter can do the job.

This section describes several use cases of dividing documents by paged using the **DocumentPageSplitter** class. Please note that you can use any output format supported by Aspose.Words.

You cannot use **DocumentPageSplitter** to split single-page documents.

{{% alert color="primary" %}} 

You can see the implementation of the DocumentPageSplitter class on [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/cpp/Loading-and-Saving/PageSplitter.cpp).

{{% /alert %}} 

### Split a Document Page by Page

Aspose.Words enables you to split a multi-page document page by page.

The following code example shows how to divide a document and save each page as a separate document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-SplitDocumentPageByPage.cpp" >}}

### Split a Document by Page Ranges

Aspose.Words allows splitting a multi-page document by page ranges. You can split one file into multiple files with various page ranges or just select one range and save only this part of the source document. Note that you can choose the page range according to the maximum and minimum page number of a document.

The following code example shows how to split a document into smaller parts by page range with specific start and end indexes:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-SplitDocumentByPageRange.cpp" >}}

## Merge the Split Document with Another File

Aspose.Words enables you to merge the output split document with another document to form a new document. This can be called document merging.

The following code example shows how to merge a split document with another document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cpp" >}}
