---
title: Remove Breaks in PHP
second_title: Aspose.Words for Java
articleTitle: Remove Breaks in PHP
linktitle: Remove Breaks in PHP
description: "Remove Breaks using PHP."
type: docs
weight: 35
url: /java/remove-breaks-in-php/
---

## Aspose.Words - Remove Breaks

**Php Code**

{{< highlight csharp >}}
public static function main() {
// The sample infrastructure.
$dataDir = "/usr/local/apache-tomcat-8.0.22/webapps/JavaBridge/Aspose.Words-for-Java_For_PHP/src/programmingwithdocuments/workingwithdocument/removebreaks/data/";

// Open the document.
$doc = new Java("com.aspose.words.Document",$dataDir . "TestFile.doc");

// Remove the page and section breaks from the document.

// In Aspose.Words section breaks are represented as separate Section nodes in the document.

// To remove these separate sections the sections are combined.
RemoveBreaks::removePageBreaks($doc);
RemoveBreaks::removeSectionBreaks($doc);

// Save the document.
$doc->save($dataDir . "TestFile Out.doc");
}
//ExStart
//ExFor:ControlChar.PageBreak
//ExId:RemoveBreaks_Pages
//ExSummary:Removes all page breaks from the document.
private static function removePageBreaks($doc) {
// Retrieve all paragraphs in the document.
$nodeType = Java("com.aspose.words.NodeType");
$paragraphs = $doc->getChildNodes($nodeType->PARAGRAPH, true);
$paragraphs_count = $paragraphs->getCount();
$paragraphs_count = java_values($paragraphs_count);

// echo "<pre>";

// echo java_inspect($paragraphs); exit;
$i = 0;
while($i < $paragraphs_count){
$paragraphs = $doc->getChildNodes($nodeType->PARAGRAPH, true);
$para = $paragraphs->get($i);
if ($para->getParagraphFormat()->getPageBreakBefore())
$para->getParagraphFormat()->setPageBreakBefore(false);
$runs = $para->getRuns()->toArray();
foreach($runs as $run){
//echo "<pre>"; echo java_inspect($run); exit;
$controlChar = Java("com.aspose.words.ControlChar");
if (java_values($run->getText()->contains($controlChar->PAGE_BREAK))) {
$run_text = java_values($run->getText());
$run_text = str_replace($controlChar->PAGE_BREAK,"",$run_text);
$run->setText($run_text);
}
}
$i++;
}
}
//ExEnd
//ExStart
//ExId:RemoveBreaks_Sections
//ExSummary:Combines all sections in the document into one.
private static function removeSectionBreaks($doc) {
// Loop through all sections starting from the section that precedes the last one

// and moving to the first section.
$i = $doc->getSections()->getCount();
$i = java_values($i);
$i = $i - 2;
while ($i >= 0)
{
// Copy the content of the current section to the beginning of the last section.
$doc->getLastSection()->prependContent($doc->getSections()->get($i));

// Remove the copied section.
$doc->getSections()->get($i)->remove();
$i--;
}
}
{{< /highlight >}}

## Download Running Code

Download **Remove Breaks (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_PHP/src/programmingwithdocuments/workingwithdocument/removebreaks/php/RemoveBreaks.php)
