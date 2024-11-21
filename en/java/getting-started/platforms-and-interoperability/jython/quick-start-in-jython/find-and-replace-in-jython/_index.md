---
title: Find And Replace in Jython
second_title: Aspose.Words for Java
articleTitle: Find And Replace in Jython
linktitle: Find And Replace in Jython
description: "Find And Replace text in a Document using Jython."
type: docs
weight: 40
url: /java/find-and-replace-in-jython/
timestamp: 2024-01-27-14-07-04
---

## Aspose.Words - Find And Replace

To Find And Replace in a document using **Aspose.Words Java for Jython**. Here you can see example code.

**Jython Code**

{{< highlight ruby >}}
from aspose-words import Settings
from com.aspose.words import Document
class FindAndReplace:
    def __init__(self):
        dataDir = Settings.dataDir + 'quickstart/'
        doc = Document(dataDir + 'ReplaceSimple.doc')

        # Check the text of the document.
        print "Original document text: " + doc.getRange().getText()

        # Replace the text in the document.
        doc.getRange().replace("_CustomerName_", "James Bond", False, False)

        # Check the replacement was made.
        print "Document text after replace: " + doc.getRange().getText()
        doc.save(dataDir + 'ReplaceSimple_Out.doc')
if __name__ == '__main__':
    FindAndReplace()
{{< /highlight >}}

## Download Running Code

Download running code from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
