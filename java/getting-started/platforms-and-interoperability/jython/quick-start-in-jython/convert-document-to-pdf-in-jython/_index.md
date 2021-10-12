---
title: Convert Document to PDF in Jython
type: docs
weight: 30
url: /java/convert-document-to-pdf-in-jython/
---

## Aspose.Words - Document to PDF

To convert Document to PDF using **Aspose.Words Java for Jython**. Here you can see example code.

**Jython Code**

{{< highlight ruby >}}
from aspose-words import Settings
from com.aspose.words import Document
class DocToPdf:
    def __init__(self):
        dataDir = Settings.dataDir + 'quickstart/'
        doc = Document(dataDir + 'Document.doc')
        doc.save(dataDir + 'Document.pdf')
        print "Converted document to PDF."
if __name__ == '__main__':
    DocToPdf()
{{< /highlight >}}

## Download Running Code

Download running code from any of the below mentioned social coding sites:

- [CodePlex](https://asposewordsjavajython.codeplex.com/releases/view/619260)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
