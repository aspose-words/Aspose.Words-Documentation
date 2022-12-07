---
title: Working with Ranges in Java
second_title: Aspose.Words for Java
articleTitle: Working with Ranges
linktitle: Working with Ranges
description: "Introduction to Range feature in Aspose.Words for Java."
type: docs
weight: 35
url: /java/working-with-ranges/
---

## Ranges Overview

If you have worked with Microsoft Word Automation, you probably know that one of the main tools to examine and modify document content is the Range object.Range is like a "window" into the document content and formatting.

Aspose.Words also has the [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) class and it is designed to look and act similarly to Range in Microsoft Word. Although Range cannot cover an arbitrary portion of a document and does not have a Start and End, you can access the range covered by any document node including the [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) itself. In other words, each node has its own range. The Range object allows you to access and modify text, bookmarks and form fields within the range.

## Retrieving Plain Text

Use the Range.Text property to retrieve the plain, unformatted text of the range. The code example given below shows how to get a plain, unformatted text of a range. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

## Deleting Text

The Range class allows the deletion of all characters of the range by calling [Range.delete](https://reference.aspose.com/words/java/com.aspose.words/range#delete()). The code example given below shows how to delete all characters of a range. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}
