---
title: Copy Bookmarked Text in Python
type: docs
weight: 30
url: /java/copy-bookmarked-text-in-python/
---

## Aspose.Words - Copy Bookmarked Text

To copy bookmarked text, see below example in Python

**Python Code**

{{< highlight csharp >}}

## Load the source document.

srcDoc = self.Document(self.dataDir + "Template.doc")
\# This is the bookmark whose content we want to copy.
srcBookmark = srcDoc.getRange().getBookmarks().get("ntf010145060")
\# We will be adding to this document.
dstDoc = self.Document()
\# Let's say we will be appending to the end of the body of the last section.
dstNode = dstDoc.getLastSection().getBody()
\# It is a good idea to use this import context object because multiple nodes are being imported.
\# If you import multiple times without a single context, it will result in many styles created.
importer = self.NodeImporter(srcDoc, dstDoc, self.ImportFormatMode.KEEP_SOURCE_FORMATTING)
\# Do it once.
self.appendBookmarkedText(importer, srcBookmark, dstNode)
\# Do it one more time for fun.
self.appendBookmarkedText(importer, srcBookmark, dstNode)
\# Save the finished document.
dstDoc.save(self.dataDir + "Template Out.doc")
{{< /highlight >}}

## Download Running Code

Download **Copy Bookmarked Text (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/programmingwithdocuments/workingwithbookmarks/copybookmarkedtext/CopyBookmarkedText.py)
