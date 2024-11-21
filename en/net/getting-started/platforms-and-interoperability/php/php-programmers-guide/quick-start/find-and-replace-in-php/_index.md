---
title: Find and Replace in PHP
second_title: Aspose.Words for .NET
articleTitle: Find and Replace in PHP
linktitle: Find and Replace in PHP
description: "Using Aspose.Words for .NET in PHP via COM to find and replace text in MS Word documents in C#."
type: docs
weight: 30
url: /net/find-and-replace-in-php/
timestamp: 2024-01-27-14-07-04
---

## Aspose.Words - Find and Replace Example

Find and Replace Example

**PHP Code**

{{< highlight php >}}
$dataDir = '.';
$comHelper = new \COM("Aspose.Words.ComHelper");
$doc = $comHelper->Open($dataDir."/ReplaceSimple.doc");

// Check the text of the document
print "Original document text: " . $doc->Range->Text . PHP_EOL;

// Replace the text in the document.
$doc->Range->Replace("_CustomerName_", "James Bond", false, false);

// Check the replacement was made.
print "Original document text: " . $doc->Range->Text . PHP_EOL;

// Save the modified document.
$doc->Save($dataDir . "/ReplaceSimple Out.doc");
print "Text found and replaced successfully.\nFile saved at " . $dataDir . "ReplaceSimple Out.doc" . PHP_EOL;
{{< /highlight >}}

## Download Running Code

Download **Find and Replace Example (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Plugins/Aspose_Words_NET_for_PHP/src/aspose/words/quickstart/FindAndReplace.php)
