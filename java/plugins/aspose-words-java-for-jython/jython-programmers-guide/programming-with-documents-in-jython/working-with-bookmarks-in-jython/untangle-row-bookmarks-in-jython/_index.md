---
title: Untangle Row Bookmarks in Jython
type: docs
weight: 30
url: /java/untangle-row-bookmarks-in-jython/
---

## **Aspose.Words - Untangle Row Bookmarks**
To Untangle Row Bookmarks using **Aspose.Words Java for Jython**. Here you can see sample code.

**Jython Code**

{{< highlight ruby >}}
def untangle_row_bookmarks(self, doc):
        bookmarks = doc.getRange().getBookmarks()
        bookmarks_count = bookmarks.getCount()
        x = 0
        while x < bookmarks_count:
            bookmark = bookmarks.get(x)

            # Get the parent row of both the bookmark and bookmark end node.
            row1 = bookmark.getBookmarkStart().getAncestor(Row)
            row2 = bookmark.getBookmarkEnd().getAncestor(Row)

            # If both rows are found okay and the bookmark start and end are contained
            # in adjacent rows, then just move the bookmark end node to the end
            # of the last paragraph in the last cell of the top row.
            if row1 is not None and row2 is not None and row1.getNextSibling() == row2:
                row1.getLastCell().getLastParagraph().appendChild(bookmark.getBookmarkEnd())
            x = x + 1
{{< /highlight >}}
## **Download Running Code**
Download running code from any of the below mentioned social coding sites:

- [CodePlex](https://asposewordsjavajython.codeplex.com/releases/view/619260)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
