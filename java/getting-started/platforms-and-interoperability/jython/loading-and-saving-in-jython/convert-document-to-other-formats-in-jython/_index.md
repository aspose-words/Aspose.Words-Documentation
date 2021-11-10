---
title: Convert Document to Other Formats in Jython
type: docs
weight: 20
url: /java/convert-document-to-other-formats-in-jython/
---

## Aspose.Words - Convert Document to Other Formats

To Convert Document to Other Formats using **Aspose.Words Java for Jython**. Here you can see sample code.

**Jython Code**

{{< highlight ruby >}}
from aspose-words import Settings
from com.aspose.words import Document
from com.aspose.words import SaveFormat
class ConvertToFormats:
    def __init__(self):
        dataDir = Settings.dataDir + 'loading_saving/'

        # Load the document from disk.
        doc = Document(dataDir + "document.doc")
        doc.save(dataDir + "Aspose_DocToHTML.html",SaveFormat.HTML)
 
		# Save the document in HTML format.
        doc.save(dataDir + "Aspose_DocToPDF.pdf",SaveFormat.PDF)
		
		# Save the document in PDF format.
        doc.save(dataDir + "Aspose_DocToTxt.txt",SaveFormat.TEXT)
		
		# Save the document in TXT format.
        doc.save(dataDir + "Aspose_DocToJPG.jpg",SaveFormat.JPEG)
		
		# Save the document in JPEG format.
        print "Doc file converted in specified formats"
if __name__ == '__main__':
    ConvertToFormats()
{{< /highlight >}}

## Download Running Code

Download running code from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
