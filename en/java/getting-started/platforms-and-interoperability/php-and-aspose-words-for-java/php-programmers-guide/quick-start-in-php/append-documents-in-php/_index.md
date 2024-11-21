---
title: Append Documents in PHP
second_title: Aspose.Words for Java
articleTitle: Append Documents in PHP
linktitle: Append Documents in PHP
description: "Append Documents using PHP."
type: docs
weight: 10
url: /java/append-documents-in-php/
timestamp: 2024-01-27-14-07-04
---

## Aspose.Words - Append Documents

To append documents using Aspose.Words Java in php, simply invoke the appendDocument() method of Document class and specify the second document to append at end.

**Php Code**

{{< highlight csharp >}}
$doc1 = new Java("com.aspose.words.Document", "data/doc1.doc");
$doc2 = new Java("com.aspose.words.Document", "data/doc2.doc");
$importFormatMode = Java("com.aspose.words.ImportFormatMode);
$doc1->appendDocument(java_values($doc2), importFormatMode->KEEP_SOURCE_FORMATTING);
{{< /highlight >}}

## Download Running Code

Download **Append Documents (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_PHP/src/quickstart/appenddocuments/php/AppendDocuments.php)
