---
title: Remove Field in Jython
description: Jython: Remove Field using Aspose.Words for Java 
type: docs
weight: 45
url: /java/remove-field-in-jython/
---

## Aspose.Words - Remove Field

To Remove Field using **Aspose.Words Java for Jython**. Here you can see sample code.

**Jython Code**

{{< highlight ruby >}}
from aspose-words import Settings
from com.aspose.words import Document
class RemoveField:
    def __init__(self):
        dataDir = Settings.dataDir + 'programming_documents/'
        doc = Document(dataDir + "RemoveField.doc")
        field = doc.getRange().getFields().get(0)

        # Calling this method completely removes the field from the document.
        field.remove()
        doc.save(dataDir + "RemoveField Out.docx")
        print "Field removed from the document successfully."
if __name__ == '__main__':        
    RemoveField()
{{< /highlight >}}

## Download Running Code

Download running code from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
