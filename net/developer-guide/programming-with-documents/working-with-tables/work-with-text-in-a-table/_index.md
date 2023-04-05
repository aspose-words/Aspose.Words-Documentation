---
title: Work with Text in a Table
second_title: Aspose.Words for .NET
articleTitle: Work with Text in a Table
linktitle: Work with Text in a Table
description: "Replace text in a table in C#. Extract Plain Text from Table or Cell using C#."
type: docs
weight: 60
url: /net/work-with-text-in-a-table/
---

As mentioned in previous articles, a table usually contains plain text, although other content such as images or even other tables can be placed in table cells.

Adding text or other content to the table is carried out using the appropriate methods of the [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) class and is described in the **"Create a Table"** article. In this article, we will talk about how to work with text in an already existing table.

## Replace Text in a Table

The table, like any other node in Aspose.Words, has access to the [Range](https://reference.aspose.com/words/net/aspose.words/range/) object. Using the table range object, you can replace text in a table.

The ability to use special characters when replacing is currently supported, so it is possible to replace existing text with multi-paragraph text. To do this, you need to use the special metacharacters described in the corresponding [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) method.

{{% alert color="primary" %}}

Typically, text replacement should be done at the cell level (per cell) or at the paragraph level.

{{% /alert %}}

The following code example shows how to replace all instances of a string of text in the cells of an entire table:

{{< gist "aspose-words-gists" "7267ba4569c671e5f6c7a58bba57297a" "replace-text.cs" >}}

## Extract Plain Text from Table or Cell

Using the **Range** object, you can also call methods on the entire table range and extract the table as plain text. To do this, use the [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) property. 

The following code example shows how to print the text range of a table:

{{< gist "aspose-words-gists" "7267ba4569c671e5f6c7a58bba57297a" "extract-text.cs" >}}

The same technique is used to extract content from individual table cells only.

The following code example shows how to print a text range of row and table elements:

{{< gist "aspose-words-gists" "7267ba4569c671e5f6c7a58bba57297a" "print-text-range-row-and-table.cs" >}}

## Working with Alternative Table Text

Microsoft Word tables have a `table title` and `table description` that provide an alternative textual representation of the information contained in the table.

In Aspose.Words, you can also add a table title and description using the [Title](https://reference.aspose.com/words/net/aspose.words.tables/table/title/) and [Description](https://reference.aspose.com/words/net/aspose.words.tables/table/description/) properties. These properties are meaningful for DOCX documents conforming to the ISO/IEC 29500. When saving in formats earlier than ISO/IEC 29500, these properties are ignored.

The following code example shows how to set the title and description properties of a table:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "tabletitle-and-description.cs" >}}