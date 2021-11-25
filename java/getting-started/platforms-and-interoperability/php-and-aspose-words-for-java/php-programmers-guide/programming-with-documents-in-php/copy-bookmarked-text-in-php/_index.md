---
title: Copy Bookmarked Text in PHP
description: PHP: Copy Bookmarked Text using Aspose.Words for Java
type: docs
weight: 23
url: /java/copy-bookmarked-text-in-php/
---

## Aspose.Words - Copy Bookmarked Text

To copy bookmarked text, see below example in php

**Php Code**

{{< highlight csharp >}}
public static function main() {
$dataDir = "/usr/local/apache-tomcat-8.0.22/webapps/JavaBridge/Aspose.Words-for-Java_For_PHP/src/programmingwithdocuments/workingwithbookmarks/copybookmarkedtext/data/";

// Load the source document.
$srcDoc = new Java("com.aspose.words.Document", $dataDir . "Template.doc");

// This is the bookmark whose content we want to copy.
$srcBookmark = $srcDoc->getRange()->getBookmarks()->get("ntf010145060");

// We will be adding to this document.
$dstDoc = new Java("com.aspose.words.Document");

// Let's say we will be appending to the end of the body of the last section.
$dstNode = $dstDoc->getLastSection()->getBody();

// It is a good idea to use this import context object because multiple nodes are being imported.

// If you import multiple times without a single context, it will result in many styles created.
$importFormatMode = java('com.aspose.words.ImportFormatMode');
$importer = new Java("com.aspose.words.NodeImporter", $srcDoc, $dstDoc, $importFormatMode->KEEP_SOURCE_FORMATTING);

// Do it once.
CopyBookmarkedText::appendBookmarkedText($importer, $srcBookmark, $dstNode);

// Do it one more time for fun.
CopyBookmarkedText::appendBookmarkedText($importer, $srcBookmark, $dstNode);

// Save the finished document.
$dstDoc->save($dataDir . "Template Out.doc");
}
/**
\* Copies content of the bookmark and adds it to the end of the specified node.
\* The destination node can be in a different document.
\*
\* @param importer Maintains the import context.
\* @param srcBookmark The input bookmark.
\* @param dstNode Must be a node that can contain paragraphs (such as a Story).
*/
private static function appendBookmarkedText($importer,$srcBookmark,$dstNode ) {
$startPara = $srcBookmark->getBookmarkStart()->getParentNode();

// This is the paragraph that contains the end of the bookmark.
$endPara = $srcBookmark->getBookmarkEnd()->getParentNode();
if ((java_values($startPara) == null) || (java_values($endPara) == null))
throw new Exception("Parent of the bookmark start or end is not a paragraph, cannot handle this scenario yet.");

// Limit ourselves to a reasonably simple scenario.
$spara =  java_values($startPara->getParentNode());
$epara = java_values($endPara->getParentNode());
if (trim($spara) != trim($epara)){
throw new Exception("Start and end paragraphs have different parents, cannot handle this scenario yet.");
}

// We want to copy all paragraphs from the start paragraph up to (and including) the end paragraph,

// therefore the node at which we stop is one after the end paragraph.
$endNode = $endPara->getNextSibling();

// This is the loop to go through all paragraph-level nodes in the bookmark.
$curNode = $startPara;
$cNode = java_values($curNode);
$eNode = java_values($endNode);
//echo $cNode . "<BR>1" . $eNode; exit;
while(trim($cNode) != trim($eNode) ) {
// This creates a copy of the current node and imports it (makes it valid) in the context

// of the destination document. Importing means adjusting styles and list identifiers correctly.
$newNode = $importer->importNode(java_values($curNode), true);
$curNode = $curNode->getNextSibling();
$cNode = java_values($curNode);
$dstNode->appendChild(java_values($newNode));
}
}
{{< /highlight >}}

## Download Running Code

Download **Copy Bookmarked Text (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_PHP/src/programmingwithdocuments/workingwithbookmarks/copybookmarkedtext/php/CopyBookmarkedText.php)
