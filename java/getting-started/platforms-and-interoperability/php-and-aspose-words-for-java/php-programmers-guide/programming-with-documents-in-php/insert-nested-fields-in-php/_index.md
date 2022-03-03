---
title: Insert Nested Fields in PHP
second_title: Aspose.Words for Java
articleTitle: Insert Nested Fields in PHP
linktitle: Insert Nested Fields in PHP
description: "Insert Nested Fields using PHP."
type: docs
weight: 40
url: /java/insert-nested-fields-in-php/
---

## Aspose.Words - Insert Nested Fields

**Php Code**

{{< highlight csharp >}}
public static function main() {
// The path to the documents directory.
$dataDir = "/usr/local/apache-tomcat-8.0.22/webapps/JavaBridge/Aspose.Words-for-Java_For_PHP/src/programmingwithdocuments/workingwithfields/insertnestedfields/data/";
$doc = new Java("com.aspose.words.Document");
 // Document();
$builder = new Java("com.aspose.words.DocumentBuilder", $doc);
 // DocumentBuilder(doc);

// Insert few page breaks (just for testing)
$breakType = Java("com.aspose.words.BreakType");
for ($i = 0; $i < 5; $i++)
$builder->insertBreak($breakType->PAGE_BREAK);

// Move DocumentBuilder cursor into the primary footer.
$headerFooterType = Java("com.aspose.words.HeaderFooterType");
$builder->moveToHeaderFooter($headerFooterType->FOOTER_PRIMARY);

// We want to insert a field like this:

// { IF {PAGE} <> {NUMPAGES} "See Next Page" "Last Page" }
$field = $builder->insertField("IF ");
$builder->moveTo($field->getSeparator());
$builder->insertField("PAGE");
$builder->write(" <> ");
$builder->insertField("NUMPAGES");
$builder->write(" \"See Next Page\" \"Last Page\" ");

// Finally update the outer field to recalcaluate the final value. Doing this will automatically update

// the inner fields at the same time.
$field->update();
$doc->save($dataDir . "InsertNestedFields Out.docx");
}
{{< /highlight >}}

## Download Running Code

Download **Insert Nested Fields (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_PHP/src/programmingwithdocuments/workingwithfields/Insertnestedfields/php/InsertNestedFields.php)
