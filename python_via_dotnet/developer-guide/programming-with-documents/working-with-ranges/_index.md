---
title: Working with Ranges in Python
second_title: Aspose.Words for Python via .NET
articleTitle: Working with Ranges
linktitle: Working with Ranges
description: "Work with ranges in a document using Python."
type: docs
weight: 130
url: /python-net/working-with-ranges/
aliases: [/python/working-with-ranges/]
---

{{% alert color="primary" %}}

In Aspose.Words, a [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) is a “flat window” into an otherwise tree-like model of the document.

{{% /alert %}}

If you have worked with Microsoft Word Automation, you probably know that one of the main tools to examine and modify document content is the [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) object. [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) is like a "window" into the document content and formatting. Aspose.Words also has the [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) class and it is designed to look and act similarly to **Range** in Microsoft Word. Although **Range** cannot cover an arbitrary portion of a document and does not have a **Start** and **End**, you can access the range covered by any document node including the [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) itself. In other words, each node has its own range. The [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) object allows you to access and modify text, bookmarks and form fields within the range.

## Retrieve Plain Text

Use the [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) property to retrieve plain, unformatted text of the range.

The following code example shows how to get a plain, unformatted text of a range:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Deleting Text

Range allows the deletion of all characters of the range by calling [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/). 

The following code example shows how to delete all characters of a range:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}