---
title: Work with Text in a Table
second_title: Aspose.Words for .NET
articleTitle: Work with Text in a Table
linktitle: Work with Text in a Table
description: ""
type: docs
weight: 55
url: /net/work-with-text-in-a-table/
---

text

## Working with Alternative Text of Table

The title and description of the table provide alternative text-based representations of the information contained in the table. MS Word allows setting this information (*Right-click the table, click Table Properties, click the Alt Text tab, and then set the title and description of the table*). With Aspose.Words you can achieve this by using Table.Title and Table.Description properties. These properties are meaningful for ISO/IEC 29500 compliant DOCX documents. When saved to pre-ISO/IEC 29500 formats, these properties are ignored. The following code example shows how to set the table's title and description properties.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-ApplyFormatting-SetTableTitleandDescription.cs" >}}







## Extract Plain Text from a Table

A Table like any other node in Aspose.Words has access to a Range object. Using this object, you can call methods over the entire table range to extract the table as plain text. The Range.Text property is used for this purpose. Below example shows how to print the text range of a table.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Tables-ExtractOrReplaceText-ExtractText.cs" >}}

{{% alert color="primary" %}}

The same technique is used to extract the content from individual cells of a table only.

{{% /alert %}}

Below example shows how to print the text range of row and table elements.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Tables-ExtractOrReplaceText-PrintTextRangeOFRowAndTable.cs" >}}

## Replace Text in a Table

Using a table’s range object you can replace text within the table. However, there are currently restrictions which prevent any replacement with special characters being made so care must be taken to ensure that the replacement string does not carry over more than one paragraph or cell. If such a replacement is made which spans across multiple nodes, such as paragraphs or cells, then an exception is thrown.

Normally the replacement of text should be done at the cell level (per cell) or at the paragraph level.

Below example shows how to replace all instances of string of text in a table and cell.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Tables-ExtractOrReplaceText-ReplaceText.cs" >}}/words/net/logical-levels-of-nodes-in-a-document/)