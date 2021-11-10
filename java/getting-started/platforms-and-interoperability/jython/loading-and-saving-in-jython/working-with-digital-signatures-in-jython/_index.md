---
title: Working with Digital Signatures in Jython
type: docs
weight: 40
url: /java/working-with-digital-signatures-in-jython/
---

## Aspose.Words - Working with Digital Signatures

To Work with Digital Signatures using **Aspose.Words Java for Jython**. Here you can see sample code.

**Jython Code**

{{< highlight ruby >}}
from aspose-words import Settings
from com.aspose.words import FileFormatUtil
from java.text import MessageFormat
from java.io import File
class DigitalSignatures:
    def __init__(self):
        dataDir = Settings.dataDir + 'loading_saving/'

        # The path to the document which is to be processed.
        filePath = dataDir + "document.doc"
        info = FileFormatUtil.detectFileFormat(filePath)
        if info.hasDigitalSignature():
            print MessageFormat.format(
                    "Document {0} has digital signatures, they will be lost if you open/save this document with Aspose.Words.",
                    File(doc).getName())
        else:
            print "Document has no digital signature."
        print "Process Completed Successfully"
if __name__ == '__main__':
    DigitalSignatures()
{{< /highlight >}}

## Download Running Code

Download running code from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
