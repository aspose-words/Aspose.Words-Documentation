---
title: Untangle Row Bookmarks in Ruby
type: docs
weight: 20
url: /java/untangle-row-bookmarks-in-ruby/
---

## **Aspose.Words - Untangle Row Bookmarks**
Example code to untangle row bookmarks.

**Ruby Code**

{{< highlight ruby >}}
def untangle_row_bookmark(doc)
    bookmarks = doc.getRange().getBookmarks()
    bookmarks_count = bookmarks.getCount()
    i = 0
    while i < bookmarks_count do
        bookmark = bookmarks.get(i)
        row1 = bookmark.getBookmarkStart().getAncestor(Rjb::import("com.aspose.words.Row"))
        row2 = bookmark.getBookmarkEnd().getAncestor(Rjb::import("com.aspose.words.Row"))

        # If both rows are found okay and the bookmark start and end are contained

        # in adjacent rows, then just move the bookmark end node to the end

        # of the last paragraph in the last cell of the top row.
        if ((row1 != "") && (row2 != "") && (row1.getNextSibling() == row2)) then
            row1.getLastCell().getLastParagraph().appendChild(bookmark.getBookmarkEnd())
        end
        $i +=1
    end

    # Save the document.
    doc.save(@data_dir + "TestDefect1352 Out.doc")
end
def delete_row_by_bookmark(doc, bookmark_name)
    raise 'bookmark_name not specified.' if bookmark_name.empty?
    bookmark = doc.getRange().getBookmarks().get(bookmark_name)
    if bookmark.nil? then
        return
    end

    # Get the parent row of the bookmark. Exit if the bookmark is not in a row.
    row = bookmark.getBookmarkStart().getAncestor(Rjb::import('com.aspose.words.Row'))
    if row.nil? then
        return
    end

    # Remove the row.
    row.remove()

    # Save the document.
    doc.save(@data_dir + "TestDefect1352 Out.doc")
end
{{< /highlight >}}
## **Download Running Code**
Download **Untangle Row Bookmarks (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/bookmarks.rb)
