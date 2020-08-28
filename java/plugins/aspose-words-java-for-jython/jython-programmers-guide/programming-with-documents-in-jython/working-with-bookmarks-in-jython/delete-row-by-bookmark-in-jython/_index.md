---
title: Delete Row By Bookmark in Jython
type: docs
weight: 20
url: /java/delete-row-by-bookmark-in-jython/
---

## **Aspose.Words - Delete Row By Bookmark**
To Delete Row By Bookmark using **Aspose.Words Java for Jython**. Here you can see sample code.

**Jython Code**

{{< highlight ruby >}}
def delete_row_by_bookmark(self, doc, bookmarkName):

    # Find the bookmark in the document. Exit if cannot find it.
    bookmark = doc.getRange().getBookmarks().get(bookmarkName)
    if bookmark is None:
        return

    # Get the parent row of the bookmark. Exit if the bookmark is not in a row.
    row = bookmark.getBookmarkStart().getAncestor(Row)
    if row is None:
        return

    # Remove the row.
    row.remove()
{{< /highlight >}}
## **Download Running Code**
Download running code from any of the below mentioned social coding sites:

- [CodePlex](https://asposewordsjavajython.codeplex.com/releases/view/619260)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
