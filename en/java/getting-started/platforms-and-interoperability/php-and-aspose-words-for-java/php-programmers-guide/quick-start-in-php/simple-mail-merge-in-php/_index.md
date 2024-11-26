---
title: Simple Mail Merge in PHP
second_title: Aspose.Words for Java
articleTitle: Simple Mail Merge in PHP
linktitle: Simple Mail Merge in PHP
description: "Simple Mail Merge using PHP."
type: docs
weight: 70
url: /java/simple-mail-merge-in-php/
timestamp: 2024-01-27-14-07-04
---

## Aspose.Words - Simple Mail Merge

To use Mail Merge, simply invoke getMailMerge->execute method.

**Php Code**

{{< highlight csharp >}}
$doc = new Java("com.aspose.words.Document", "Template.doc");

// Fill the fields in the document with user data.
$doc->getMailMerge()->execute(
            array("FullName", "Company", "Address", "Address2", "City"),
            array("James Bond", "MI5 Headquarters", "Milbank", "", "London")
);

// Saves the document to disk.
$doc->save($dataDir . "MailMerge Result Out.docx");
{{< /highlight >}}

## Download Running Code

Download **Simple Mail Merge (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_PHP/src/quickstart/simplemailmerge/php/SimpleMailMerge.php)
