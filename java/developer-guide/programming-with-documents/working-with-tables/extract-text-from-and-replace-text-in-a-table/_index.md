---
title: Extract Text from and Replace Text in a Table
type: docs
weight: 100
url: /java/extract-text-from-and-replace-text-in-a-table/
---

## Extract Plain Text from a Table

A Table like any other node in Aspose.Words has access to a [Range](https://apireference.aspose.com/words/java/com.aspose.words/range) object. Using this object, you can call methods over the entire table range to extract the table as plain text. The [Range.getText()](https://apireference.aspose.com/words/java/com.aspose.words/range#Text) property is used for this purpose. 

The following code example shows how to print the text range of a table.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ExtractOrReplaceText-ExtractPlainTextFromATable-PrintTextRangeOfATable.java" >}}

{{% alert color="primary" %}} 

The same technique is used to extract the content from individual cells of a table only.

{{% /alert %}} 

The following code example shows how to print the text range of row and table elements.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ExtractOrReplaceText-ExtractPlainTextFromATable-PrintTextRangeOfRowAndTableElements.java" >}}

## Replace Text in a Table

Using a table’s range object you can replace text within the table. However, there are currently restrictions which prevent any replacement with special characters being made so care must be taken to ensure that the replacement string does not carry over more than one paragraph or cell. If such a replacement is made which spans across several nodes, such as paragraphs or cells, then an exception is thrown.

Normally the replacement of text should be done at the cell level (per cell) or at the paragraph level.

Shows how to replace all instances of a string of text in a table and cell.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ExtractOrReplaceText-ReplaceText-.java" >}}
