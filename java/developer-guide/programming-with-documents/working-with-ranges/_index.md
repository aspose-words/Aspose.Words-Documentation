---
title: Working with Ranges
type: docs
weight: 35
url: /java/working-with-ranges/
---

## Ranges Overview

If you have worked with Microsoft Word Automation, you probably know that one of the main tools to examine and modify document content is the Range object.Range is like a "window" into the document content and formatting.

Aspose.Words also has the [Range](https://apireference.aspose.com/words/java/com.aspose.words/Range) class and it is designed to look and act similarly to Range in Microsoft Word. Although Range cannot cover an arbitrary portion of a document and does not have a Start and End, you can access the range covered by any document node including the [Document](https://apireference.aspose.com/words/java/com.aspose.words/Document) itself. In other words, each node has its own range. The Range object enables you to access and modify text, bookmarks and form fields within the range.

## Retrieving Plain Text

Use the Range.Text property to retrieve the plain, unformatted text of the range. The code example given below shows how to get a plain, unformatted text of a range. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/Ranges/RangesGetText/Document.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-1.java" >}}

## Deleting Text

The Range class allows the deletion of all characters of the range by calling [Range.delete](https://apireference.aspose.com/words/java/com.aspose.words/range#delete()). The code example given below demonstrates how to delete all characters of a range. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/Ranges/RangesDeleteText/Document.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-1.java" >}}
