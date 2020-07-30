---
title: Working with Ranges
type: docs
weight: 230
url: /java/working-with-ranges/
---

## **Ranges Overview**
If you have worked with Microsoft Word Automation, you probably know that one of the main tools to examine and modify document content is the Range object.Range is like a "window" into the document content and formatting.

Aspose.Words also has the [Range](http://www.aspose.com/api/java/words/com.aspose.words/classes/Range) class and it is designed to look and act similarly to Range in Microsoft Word. Although Range cannot cover an arbitrary portion of a document and does not have a Start and End, you can access the range covered by any document node including the [Document](http://www.aspose.com/api/java/words/com.aspose.words/classes/Document) itself. In other words, each node has its own range. TheRange object allows you to access and modify text, bookmarks and form fields within the range.
## **Retrieving Plain Text**
Use the Range.Text property to retrieve plain, unformatted text of the range. Below example shows how to get a plain, unformatted text of a range. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/Ranges/RangesGetText/Document.doc).

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-1.java" >}}
## **Deleting Text**
Range allows the deletion of all characters of the range by calling [Range.delete](http://www.aspose.com/api/java/words/com.aspose.words/classes/range/methods/delete\(\)/). Below example shows how to delete all characters of a range. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/Ranges/RangesDeleteText/Document.doc).

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-1.java" >}}
