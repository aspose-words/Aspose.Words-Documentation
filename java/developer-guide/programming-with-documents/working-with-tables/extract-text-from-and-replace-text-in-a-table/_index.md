---
title: Extract Text from and Replace Text in a Table
type: docs
weight: 100
url: /java/extract-text-from-and-replace-text-in-a-table/
---

## **Extract Plain Text from a Table**

A Table like any other node in Aspose.Words has access to a [Range](http://www.aspose.com/api/java/words/com.aspose.words/classes/Range) object. Using this object, you can call methods over the entire table range to extract the table as plain text. The [Range.getText()](http://www.aspose.com/api/java/words/com.aspose.words/classes/range/methods/getText\(\)/) property is used for this purpose. Below example shows how to print the text range of a table.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ExtractOrReplaceText-ExtractPlainTextFromATable-PrintTextRangeOfATable.java" >}}

{{% alert color="primary" %}} 

The same technique is used to extract the content from individual cells of a table only.

{{% /alert %}} 

Below example shows how to print the text range of row and table elements.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ExtractOrReplaceText-ExtractPlainTextFromATable-PrintTextRangeOfRowAndTableElements.java" >}}

## **Replace Text in a Table**

Using a table’s range object you can replace text within the table. However, there are currently restrictions which prevent any replacement with special characters being made so care must be taken to ensure that the replacement string does not carry over more than one paragraph or cell. If such a replacement is made which spans across multiple nodes, such as paragraphs or cells, then an exception is thrown.

Normally the replacement of text should be done at the cell level (per cell) or at the paragraph level.

Shows how to replace all instances of string of text in a table and cell.

{{< gist "" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ExtractOrReplaceText-ReplaceText-.java" >}}
