---
title: Working with Ranges – Aspose.Words for Python via .NET
articleTitle: Working with Ranges
linktitle: Working with Ranges
description: "Work with ranges in a document using python."
type: docs
weight: 65
url: /python-net/working-with-ranges/
aliases: [/python/working-with-ranges/]
---

{{% alert color="primary" %}} 

In Aspose.Words, a **Range** is a “flat window” into an otherwise tree-like model of the document.

{{% /alert %}} 

If you have worked with Microsoft Word Automation, you probably know that one of the main tools to examine and modify document content is the **Range** object. **Range** is like a "window" into the document content and formatting. Aspose.Words also has the **Range** class and it is designed to look and act similarly to **Range** in Microsoft Word. Although **Range** cannot cover an arbitrary portion of a document and does not have a **Start** and **End**, you can access the range covered by any document node including the **Document** itself. In other words, each node has its own range. The **Range** object allows you to access and modify text, bookmarks and form fields within the range.

## Retrieving Plain Text

Use the **Range.text** property to retrieve plain, unformatted text of the range. Below example shows how to get a plain, unformatted text of a range. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

## Deleting Text

Range allows the deletion of all characters of the range by calling Range.Delete. Below example shows how to delete all characters of a range. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}
