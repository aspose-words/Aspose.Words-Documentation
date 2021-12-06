---
title: Untangle Row Bookmarks in Python
description: "Python: Untangle Row Bookmarks using Aspose.Words for Java."
type: docs
weight: 20
url: /java/untangle-row-bookmarks-in-python/
---

## Aspose.Words - Untangle Row Bookmarks

**Python Code**

{{< highlight csharp >}}
 # Load a document.
doc = self.Document(self.dataDir + "TestDefect1352.doc")
\# This perform the custom task of putting the row bookmark ends into the same row with the bookmark starts.
self.untangleRowBookmarks(doc)
\# Now we can easily delete rows by a bookmark without damaging any other row's bookmarks.
self.deleteRowByBookmark(doc, "ROW2")
\# This is just to check that the other bookmark was not damaged.
if doc.getRange().getBookmarks().get("ROW1").getBookmarkEnd() is None:
    raise ValueError('Wrong, the end of the bookmark was deleted.')
\# Save the finished document.
doc.save(self.dataDir + "TestDefect1352 Out.doc")
{{< /highlight >}}

## Download Running Code

Download **Untangle Row Bookmarks (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/programmingwithdocuments/workingwithbookmarks/untanglerowbookmarks/UntangleRowBookmarks.py)
