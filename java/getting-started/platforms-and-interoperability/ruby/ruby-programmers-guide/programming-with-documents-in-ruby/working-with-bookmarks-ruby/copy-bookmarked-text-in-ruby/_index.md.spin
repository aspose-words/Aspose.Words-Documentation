---
title: Copy Bookmarked Text in Ruby
type: docs
weight: 10
url: /java/copy-bookmarked-text-in-ruby/
---

## Aspose.Words - Copy Bookmarked Text

Here is example code to copy bookmarked text in Ruby.

**Ruby Code**

{{< highlight ruby >}}
def append_bookmark_text()
    data_dir = File.dirname(File.dirname(File.dirname(__FILE__))) + '/data/bookmarks/'

    # Load the source document.
    src_doc = Rjb::import('com.aspose.words.Document').new(data_dir + "Template.doc")

    # This is the bookmark whose content we want to copy.
    src_bookmark = src_doc.getRange().getBookmarks().get("ntf010145060")

    # We will be adding to this document.
    dst_doc = Rjb::import('com.aspose.words.Document').new()

    # Let's say we will be appending to the end of the body of the last section.
    # node_type = Rjb::import('com.aspose.words.NodeType')
    dst_node = dst_doc.getLastSection().getBody()

    # It is a good idea to use this import context object because several nodes are being imported.
    # If you import a few times without a single context, it will result in many styles created.
    import_format_mode = Rjb::import('com.aspose.words.ImportFormatMode')
    importer = Rjb::import("com.aspose.words.NodeImporter").new(src_doc, dst_doc, import_format_mode.KEEP_SOURCE_FORMATTING)

    # This is the paragraph that contains the beginning of the bookmark.
    start_para = src_bookmark.getBookmarkStart().getParentNode()

    # This is the paragraph that contains the end of the bookmark.
    end_para = src_bookmark.getBookmarkEnd().getParentNode()
    if (start_para == "" || end_para == "") then
        raise "Parent of the bookmark start or end is not a paragraph, cannot handle this scenario yet."
    end
    util = Rjb::import("java.io.InputStream")

    # Limit ourselves to a reasonably simple scenario.
    spara = (start_para.getParentNode()).to_string
    epara = (end_para.getParentNode()).to_string
    if spara.strip != epara.strip then
    
	#if (start_para.getParentNode() != end_para.getParentNode()) then
        raise "Start and end paragraphs have different parents, cannot handle this scenario yet."
    end

    # We want to copy all paragraphs from the start paragraph up to (and including) the end paragraph,
    # therefore the node at which we stop is one after the end paragraph.
    endNode = end_para.getNextSibling()

    # This is the loop to go through all paragraph-level nodes in the bookmark.
    curNode = start_para
    cNode = curNode
    eNode = endNode
    while (cNode != eNode) do

        # This creates a copy of the current node and imports it (makes it valid) in the context
        # of the destination document. Importing means adjusting styles and list identifiers correctly.
        newNode = importer.importNode(curNode, true)
        curNode = curNode.getNextSibling()
        cNode = curNode
        dst_node.appendChild(newNode)
    end

    # Save the finished document.
    dst_doc.save(data_dir + "Template Out.doc");
end
{{< /highlight >}}

## Download Running Code

Download **Copy Bookmarked Text (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Ruby/lib/asposewordsjavaforruby/bookmarks.rb)
