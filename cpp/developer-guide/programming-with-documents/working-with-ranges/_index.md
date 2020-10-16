---
title: Working with Ranges
type: docs
weight: 100
url: /cpp/working-with-ranges/
---

{{% alert color="primary" %}} 

In Aspose.Words, a Range is a “flat window” into an otherwise tree-like model of the document.

{{% /alert %}} 

## Ranges Overview

If you have worked with Microsoft Word Automation, you probably know that one of the main tools to examine and modify document content is the **Range** object. **Range** is like a "window" into the document content and formatting. Aspose.Words also has the Range class and it is designed to look and act similarly to **Range** in Microsoft Word. Although **Range** cannot cover an arbitrary portion of a document and does not have a **Start** and **End**, you can access the range covered by any document node including the Document itself. In other words, each node has its own range. The **Range** object allows you to access and modify text, bookmarks and form fields within the range.

## Retrieving Plain Text

Use the Range.Text property to retrieve plain, unformatted text of the range. Below example shows how to get a plain, unformatted text of a range. You can download the template file of this example from here.

{{< gist "aspose-words" "38845012a35610163a07b547a36d6563" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

## Deleting Text

Range allows the deletion of all characters of the range by calling Range.Delete. Below example shows how to delete all characters of a range. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Ranges/Document.doc).

{{< gist "aspose-words" "38845012a35610163a07b547a36d6563" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}
