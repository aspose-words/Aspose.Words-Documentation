---
title: Find And Replace in PHP
second_title: Aspose.Words for Java
articleTitle: Find And Replace in PHP
linktitle: Find And Replace in PHP
description: "Find And Replace text in Document using PHP."
type: docs
weight: 30
url: /java/find-and-replace-in-php/
timestamp: 2024-01-27-14-07-04
---

## Aspose.Words - Find And Replace

To replace text using Aspose.Words Java in php, simply invoke the replace() method.

**Php Code**

{{< highlight csharp >}}

 // The path to the documents directory.
 $doc = new Java("com.aspose.words.Document","ReplaceSimple.doc");

 // Replace the text in the document.
 $doc->getRange()->replace("_CustomerName_", "James Bond", false, false);
 }
{{< /highlight >}}

## Download Running Code

Download **Find And Replace (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_PHP/src/quickstart/findandreplace/php/FindAndReplace.php)
