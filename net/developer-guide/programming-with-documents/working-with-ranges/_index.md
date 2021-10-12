---
title: Working with Ranges
type: docs
weight: 65
url: /net/working-with-ranges/
---

{{% alert color="primary" %}} 

In Aspose.Words, a Range is a “flat window” into an otherwise tree-like model of the document.

{{% /alert %}} 

If you have worked with Microsoft Word Automation, you probably know that one of the main tools to examine and modify document content is the **Range** object. **Range** is like a "window" into the document content and formatting. Aspose.Words also has the [Range](http://www.aspose.com/api/net/words/aspose.words/range) class and it is designed to look and act similarly to **Range** in Microsoft Word. Although **Range** cannot cover an arbitrary portion of a document and does not have a **Start** and **End**, you can access the range covered by any document node including the [Document](http://www.aspose.com/api/net/words/aspose.words/document) itself. In other words, each node has its own range. The **Range** object allows you to access and modify text, bookmarks and form fields within the range.

## Retrieving Plain Text

Use the Range.Text property to retrieve plain, unformatted text of the range. Below example shows how to get a plain, unformatted text of a range. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

## Deleting Text

Range enables the deletion of all characters of the range by calling Range.Delete. Below example demonstrates how to delete all characters of a range. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}
