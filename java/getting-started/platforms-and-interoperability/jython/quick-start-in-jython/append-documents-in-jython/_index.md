---
title: Append Documents in Jython
description: Jython: Append Documents using Aspose.Words for Java 
type: docs
weight: 10
url: /java/append-documents-in-jython/
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
