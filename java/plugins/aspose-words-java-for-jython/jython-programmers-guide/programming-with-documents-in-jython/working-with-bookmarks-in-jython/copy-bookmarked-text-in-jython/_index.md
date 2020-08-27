---
title: Copy Bookmarked Text in Jython
type: docs
weight: 10
url: /java/copy-bookmarked-text-in-jython/
---

## **Aspose.Words - Copy Bookmarked Text**
To Copy Bookmarked Text using **Aspose.Words Java for Jython**. Here you can see sample code.

**Jython Code**

{{< highlight ruby >}}
    def copy_bookmarked_text(self):
        # Load the source document.
        srcDoc = Document(self.dataDir + "Template.doc")
        # This is the bookmark whose content we want to copy.
        srcBookmark = srcDoc.getRange().getBookmarks().get("ntf010145060")
        # We will be adding to this document.
        dstDoc = Document()
        # Let's say we will be appending to the end of the body of the last section.
        dstNode = dstDoc.getLastSection().getBody()
        # It is a good idea to use this import context object because multiple nodes are being imported.
        # If you import multiple times without a single context, it will result in many styles created.
        importer = NodeImporter(srcDoc, dstDoc, ImportFormatMode.KEEP_SOURCE_FORMATTING)
        # Do it once.
        self.append_bookmarked_text(importer, srcBookmark, dstNode)
        # Do it one more time for fun.
        self.append_bookmarked_text(importer, srcBookmark, dstNode)
        # Save the finished document.
        dstDoc.save(self.dataDir + "Template Out.doc")
    def append_bookmarked_text(self, importer, srcBookmark, dstNode):
        # This is the paragraph that contains the beginning of the bookmark.
        startPara = srcBookmark.getBookmarkStart().getParentNode()
        # This is the paragraph that contains the end of the bookmark.
        endPara = srcBookmark.getBookmarkEnd().getParentNode()
        if startPara is None or endPara is None :
            raise ValueError('Parent of the bookmark start or end is not a paragraph, cannot handle this scenario yet.')
        # Limit ourselves to a reasonably simple scenario.
        if startPara.getParentNode() != endPara.getParentNode() :
            raise ValueError('Start and end paragraphs have different parents, cannot handle this scenario yet.')
        # We want to copy all paragraphs from the start paragraph up to (and including) the end paragraph,
        # therefore the node at which we stop is one after the end paragraph.
        endNode = endPara.getNextSibling()
        # This is the loop to go through all paragraph-level nodes in the bookmark.
        curNode = startPara
        while curNode != endNode :
            # This creates a copy of the current node and imports it (makes it valid) in the context
            # of the destination document. Importing means adjusting styles and list identifiers correctly.
            newNode = importer.importNode(curNode, True)
            # Now we simply append the new node to the destination.
            dstNode.appendChild(newNode)
            curNode = curNode.getNextSibling()
{{< /highlight >}}
## **Download Running Code**
Download running code from any of the below mentioned social coding sites:

- [CodePlex](https://asposewordsjavajython.codeplex.com/releases/view/619260)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
