---
title: Joining And Appending in Jython
type: docs
weight: 10
url: /java/joining-and-appending-in-jython/
---

## **Aspose.Words - Joining And Appending**

To Join And Append documents using **Aspose.Words Java for Jython**. Here you can see sample code.

**Jython Code**

{{< highlight ruby >}}
from aspose-words import Settings
from com.aspose.words import Document
from com.aspose.words import ImportFormatMode
from com.aspose.words import SectionStart
class AppendDocument:
    def __init__(self):
        self.dataDir = Settings.dataDir + 'programming_documents/'
        self.simple_append_document()
        self.keep_source_formatting()
    def simple_append_document(self):
        """
            Shows how to append a document to the end of another document using no additional options.
        """
        dstDoc = Document(self.dataDir + "TestFile.Destination.doc")
        srcDoc = Document(self.dataDir + "TestFile.Source.doc")

        # Append the source document to the destination document using no extra options.
        dstDoc.appendDocument(srcDoc, ImportFormatMode.KEEP_SOURCE_FORMATTING)
        dstDoc.save(self.dataDir + "TestFile.SimpleAppendDocument Out.docx")
    def keep_source_formatting(self):
        """
            Shows how to append a document to the end of another document using no additional options.
        """
        dstDoc = Document(self.dataDir + "TestFile.Destination.doc")
        srcDoc = Document(self.dataDir + "TestFile.Source.doc")

        # Append the source document to the destination document using no extra options.
        dstDoc.appendDocument(srcDoc, ImportFormatMode.KEEP_SOURCE_FORMATTING)
        dstDoc.save(self.dataDir + "TestFile.KeepSourceFormatting Out.docx")
if __name__ == '__main__':        
    AppendDocument()
{{< /highlight >}}

## **Download Running Code**

Download running code from any of the below mentioned social coding sites:

- [CodePlex](https://asposewordsjavajython.codeplex.com/releases/view/619260)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
