---
title: Load And Save To Disk in Jython
description: Jython: Load And Save Word Document To Disk using Aspose.Words for Java 
type: docs
weight: 60
url: /java/load-and-save-to-disk-in-jython/
---

## Aspose.Words - Load And Save To Disk

To Load And Save a Document to Disk using **Aspose.Words Java for Jython**. Here you can see example code.

**Jython Code**

{{< highlight ruby >}}
from aspose-words import Settings
from com.aspose.words import Document
class LoadAndSaveToDisk:
    def __init__(self):
        dataDir = Settings.dataDir + 'quickstart/'
        doc = Document(dataDir + 'Document.doc')
        doc.save(dataDir + 'Document_Out.doc')
        print "Document saved."
if __name__ == '__main__':
    LoadAndSaveToDisk()
{{< /highlight >}}

## Download Running Code

Download running code from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
