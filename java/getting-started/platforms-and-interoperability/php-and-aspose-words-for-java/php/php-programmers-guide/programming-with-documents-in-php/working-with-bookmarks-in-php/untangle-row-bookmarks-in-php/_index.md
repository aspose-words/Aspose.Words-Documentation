---
title: Untangle Row Bookmarks in PHP
type: docs
weight: 20
url: /java/untangle-row-bookmarks-in-php/
---

## Aspose.Words - Copy Bookmarked Text

**Php Code**

{{< highlight csharp >}}
/**
\* The main entry point for the application.
*/
public static function main(){
$dataDir = "/usr/local/apache-tomcat-8.0.22/webapps/JavaBridge/Aspose.Words-for-Java_For_PHP/src/programmingwithdocuments/workingwithbookmarks/untanglerowbookmarks/data/";

// Load a document.
$doc = new Java("com.aspose.words.Document", $dataDir . "TestDefect1352.doc");

// This perform the custom task of putting the row bookmark ends into the same row with the bookmark starts.
UntangleRowBookmarks::untangleRowBookmark($doc);

// Now we can easily delete rows by a bookmark without damaging any other row's bookmarks.
UntangleRowBookmarks::deleteRowByBookmark($doc, "ROW2");

// Save the finished document.
$doc->save($dataDir . "TestDefect1352 Out.doc");
}
public static function untangleRowBookmark($doc) {
$bookmarks = $doc->getRange()->getBookmarks();
$bookmarks_count = java_values($bookmarks->getCount());
$x = 0;
while($x < 8)
{
$bookmark = $bookmarks->get($x);
//$row = new Java("com.aspose.words.Row");
$row1 = $bookmark->getBookmarkStart()->getAncestor(Java("com.aspose.words.Row"));
$row2 = $bookmark->getBookmarkEnd()->getAncestor(Java("com.aspose.words.Row"));

// If both rows are found okay and the bookmark start and end are contained

// in adjacent rows, then just move the bookmark end node to the end

// of the last paragraph in the last cell of the top row.
if ((java_values($row1) != null) && (java_values($row2) != null) && (java_values($row1->getNextSibling()) == java_values($row2)))
$row1->getLastCell()->getLastParagraph()->appendChild($bookmark->getBookmarkEnd());
$x++;
}
}
public static function deleteRowByBookmark($doc,$bookmarkName) {
// Find the bookmark in the document. Exit if cannot find it.
$bookmark = $doc->getRange()->getBookmarks()->get($bookmarkName);
//echo java_values($bookmark); exit;
if (java_values($bookmark) == null)
return;

// Get the parent row of the bookmark. Exit if the bookmark is not in a row.
$row = $bookmark->getBookmarkStart()->getAncestor(java('com.aspose.words.Row'));
//echo java_inspect($row); exit;
if (java_values($row) == null)
return;

// Remove the row.
$row->remove();
}
{{< /highlight >}}

## Download Running Code

Download **Untangle Row Bookmarks (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_PHP/src/programmingwithdocuments/workingwithbookmarks/untanglerowbookmarks/php/UntangleRowBookmarks.php)
