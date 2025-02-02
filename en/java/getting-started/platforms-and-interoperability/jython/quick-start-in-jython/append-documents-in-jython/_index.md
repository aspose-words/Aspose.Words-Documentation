---
title: Append Documents in Jython
second_title: Aspose.Words for Java
articleTitle: Append Documents in Jython
linktitle: Append Documents in Jython
description: "Append Documents using Jython."
type: docs
weight: 10
url: /java/append-documents-in-jython/
timestamp: 2024-01-27-14-07-04
---

## Aspose.Words - Append Documents

To append documents using **Aspose.Words Java for Jython**. Here you can see example code.

**Jython Code**

{{< highlight ruby >}}
from aspose-words import Settings
from com.aspose.words import Document
from com.aspose.words import ImportFormatMode
class AppendDocuments:
    def __init__(self):
        dataDir = Settings.dataDir + 'quickstart/'
        dstDoc = Document(dataDir + 'TestFile.Destination.doc')
        srcDoc = Document(dataDir + 'TestFile.Source.doc')
        dstDoc.appendDocument(srcDoc,ImportFormatMode.KEEP_SOURCE_FORMATTING)
        dstDoc.save(dataDir + 'AppendDocuments.doc')
        print ("Documents appended successfully.")
if __name__ == '__main__':
    AppendDocuments()
{{< /highlight >}}

## Download Running Code

Download **Append Documents (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
