---
title: Working with Ranges in C#
second_title: Aspose.Words for .NET
articleTitle: Working with Ranges
linktitle: Working with Ranges
description: "Introduction to Range feature in Aspose.Words for .NET."
type: docs
weight: 130
url: /net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

In Aspose.Words, a Range is a “flat window” into an otherwise tree-like model of the document.

{{% /alert %}}

If you have worked with Microsoft Word Automation, you probably know that one of the main tools to examine and modify document content is the **Range** object. **Range** is like a "window" into the document content and formatting.

Aspose.Words also has the [Range](https://reference.aspose.com/words/net/aspose.words/range/) class and it is designed to look and act similarly to **Range** in Microsoft Word. Although **Range** cannot cover an arbitrary portion of a document and does not have a **Start** and **End**, you can access the range covered by any document node including the [Document](https://reference.aspose.com/words/net/aspose.words/document/) itself. In other words, each node has its own range. The **Range** object allows you to access and modify text, bookmarks and form fields within the range.

## Retrieve Plain Text

Use the [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) property to retrieve plain, unformatted text of the range.

The following code example shows how to get a plain, unformatted text of a range:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Delete Text

Range allows the deletion of all characters of the range by calling [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/).

The following code example shows how to delete all characters of a range:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
