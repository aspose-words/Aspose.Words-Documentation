---
title: Load And Save To Disk in PHP
description: PHP: Load And Save Document To Disk using Aspose.Words for Java
type: docs
weight: 50
url: /java/load-and-save-to-disk-in-php/
---

## Aspose.Words - Load And Save To Disk

To load a word Document using Aspose.Words for Java in Php, simply create Document Object by providing it a document name with full path.
To save a word Document using Aspose.Words for Java in Php, simply invoke save method of Document object.

**Php Code**

{{< highlight csharp >}}

// The path to the documents directory.
$dataDir = "";

// Load the document from the absolute path on disk.
$doc = new Java("com.aspose.words.Document", $dataDir . "Document.doc");

// Save the document as DOCX document.");
$doc->save($dataDir . "Document Out.docx");
{{< /highlight >}}

## Download Running Code

Download **Load And Save To Disk (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_PHP/src/quickstart/loadandsavetodisk/php/LoadAndSaveToDisk.php)
