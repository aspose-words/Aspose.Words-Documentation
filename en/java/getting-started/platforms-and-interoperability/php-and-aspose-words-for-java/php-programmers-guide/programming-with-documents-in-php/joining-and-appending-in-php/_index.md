---
title: Joining And Appending in PHP
second_title: Aspose.Words for Java
articleTitle: Joining And Appending in PHP
linktitle: Joining And Appending in PHP
description: "Joining And Appending Documents using PHP."
type: docs
weight: 10
url: /java/joining-and-appending-in-php/
timestamp: 2024-01-27-14-07-04
---

## Aspose.Words - Joining And Appending

For joining and appending using Aspose.Words Java Apis in php, simply use appendDocument method.

**Php Code**

{{< highlight csharp >}}
$dstDoc = new Java("com.aspose.words.Document",AppendDocument::$gDataDir . "TestFile.Destination.doc");
$srcDoc = new Java("com.aspose.words.Document",AppendDocument::$gDataDir . "TestFile.Source.doc");
$importFormatMode = new Java("com.aspose.words.ImportFormatMode");
$dstDoc->appendDocument($srcDoc, $importFormatMode->KEEP_SOURCE_FORMATTING);
$dstDoc->save(AppendDocument::$gDataDir . "TestFile.SimpleAppendDocument Out.docx");
{{< /highlight >}}

## Download Running Code

Download **Joining And Appending (Aspose.Words)** form any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_PHP/src/programmingwithdocuments/joiningandappending/php/AppendDocument.php)
