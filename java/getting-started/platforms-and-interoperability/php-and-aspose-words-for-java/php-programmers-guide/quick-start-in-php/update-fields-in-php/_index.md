---
title: Update Fields in PHP
description: PHP: update fields of Word Document using Aspose.Words for Java
type: docs
weight: 80
url: /java/update-fields-in-php/
---

## Aspose.Words - Update Fields

To update fields of Word Document using Aspose.Words Java Apis in Php, simply invoke updateFields of Document object.

**Php Code**

{{< highlight csharp >}}
$doc = new Java("com.aspose.words.Document");

// Use the document builder to insert some content and fields.
$builder = new Java("com.aspose.words.DocumentBuilder",$doc);

// Insert a table of contents at the beginning of the document.
$builder->insertTableOfContents("\\o \"1-3\" \\h \\z \\u");
$builder->writeln();

// Insert some other fields.
$builder->write("Page: ");
$builder->insertField("PAGE");
$builder->write(" of ");
$builder->insertField("NUMPAGES");
$builder->writeln();

// Call the method below to update the TOC.
$doc->updateFields();
{{< /highlight >}}

## Download Running Code

Download **Update Fields (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_PHP/src/quickstart/updatefields/php/UpdateFields.php)
