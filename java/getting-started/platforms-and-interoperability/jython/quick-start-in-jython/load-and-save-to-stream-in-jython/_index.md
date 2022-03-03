---
title: Load And Save To Stream in Jython
second_title: Aspose.Words for Java
articleTitle: Load And Save To Stream in Jython
linktitle: Load And Save To Stream in Jython
description: "Load And Save Word Document To Stream using Jython."
type: docs
weight: 70
url: /java/load-and-save-to-stream-in-jython/
---

## Aspose.Words - Load And Save To Stream

To Load And Save To Stream using **Aspose.Words Java for Jython**. Here you can see example code.

**Jython Code**

{{< highlight ruby >}}
from aspose-words import Settings
from com.aspose.words import Document
from com.aspose.words import SaveFormat
from java.io import ByteArrayOutputStream
from java.io import FileInputStream
from java.io import FileOutputStream
class LoadAndSaveToStream:
    def __init__(self):
        dataDir = Settings.dataDir + 'quickstart/'

        # Open the stream. Read only access is enough for Aspose.Words to load a document.
        stream = FileInputStream(dataDir + 'Document.doc')

        # Load the entire document into memory.
        doc = Document(stream)

        # You can close the stream now, it is no longer needed because the document is in memory.
        stream.close()

        # ... do something with the document
        # Convert the document to a different format and save to stream.
        dstStream = ByteArrayOutputStream()
        doc.save(dstStream, SaveFormat.RTF)
        output = FileOutputStream(dataDir + "Document Out.rtf")
        output.write(dstStream.toByteArray())
        output.close()
        print "Document loaded from stream and then saved successfully."
if __name__ == '__main__':
    LoadAndSaveToStream()
{{< /highlight >}}

## Download Running Code

Download running code from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
