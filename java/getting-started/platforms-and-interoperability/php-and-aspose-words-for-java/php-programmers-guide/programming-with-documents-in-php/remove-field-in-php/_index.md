---
title: Remove Field in PHP – Aspose.Words for Java
articleTitle: Remove Field in PHP
linktitle: Remove Field in PHP
description: "PHP: Remove Field using Aspose.Words for Java."
type: docs
weight: 45
url: /java/remove-field-in-php/
---

## Aspose.Words - Insert Nested Fields

**Php Code**

{{< highlight csharp >}}
public static function main() {
// The path to the documents directory.
$dataDir = "/usr/local/apache-tomcat-8.0.22/webapps/JavaBridge/Aspose.Words-for-Java_For_PHP/src/programmingwithdocuments/workingwithfields/removefield/data/";
$doc = new Java("com.aspose.words.Document" , $dataDir . "Field.RemoveField.doc");
//ExStart
//ExFor:Field.Remove
//ExId:DocumentBuilder_RemoveField
//ExSummary:Removes a field from the document.
$field = $doc->getRange()->getFields()->get(0);

// Calling this method completely removes the field from the document.
$field->remove();
//ExEnd
}
{{< /highlight >}}

## Download Running Code

Download **Remove Field (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_PHP/src/programmingwithdocuments/workingwithfields/removefield/php/RemoveField.php)
