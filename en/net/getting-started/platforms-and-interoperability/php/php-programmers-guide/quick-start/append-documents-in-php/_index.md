---
title: Append Documents in PHP
second_title: Aspose.Words for .NET
articleTitle: Append Documents in PHP
linktitle: Append Documents in PHP
description: "Appending documents using Aspose.Words for .NET in PHP using COM in C#."
type: docs
weight: 10
url: /net/append-documents-in-php/
timestamp: 2024-01-27-14-07-04
---

## Aspose.Words - Append Documents Example

Find and Replace Example

**PHP Code**

{{< highlight php >}}
$dataDir = '.';
$comHelper = new \COM("Aspose.Words.ComHelper");

// Load the destination and source documents from disk.
$dstDoc = $comHelper->Open($dataDir."/TestFile.Destination.doc");
$srcDoc = $comHelper->Open($dataDir."/TestFile.Source.doc");

// Append the source document to the destination document while keeping the original formatting of the source document.
$dstDoc->AppendDocument($srcDoc,1);
$dstDoc->Save($dataDir . "/TestFile Out.docx");
echo "Document appended successfully.\nFile saved at " . $dataDir . "TestFile Out.docx" . PHP_EOL;
{{< /highlight >}}

## Download Running Code

Download **Append Documents Example (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose_Words_NET_for_PHP/src/aspose/words/quickstart)
