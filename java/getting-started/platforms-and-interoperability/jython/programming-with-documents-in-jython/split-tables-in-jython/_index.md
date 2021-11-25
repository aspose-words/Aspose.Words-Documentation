---
title: Split Tables in Jython
description: Jython: Split Tables using Aspose.Words for Java 
type: docs
weight: 67
url: /java/split-tables-in-jython/
---

## Aspose.Words - Split Tables

To Split Tables using **Aspose.Words Java for Jython**. Here you can see sample code.

**Jython Code**

{{< highlight ruby >}}
from aspose-words import Settings
from com.aspose.words import Document
from com.aspose.words import NodeType
from com.aspose.words import Paragraph
class SplitTables:
    def __init__(self):
        dataDir = Settings.dataDir + 'programming_documents/'

        # Load the document.
        doc = Document(dataDir + "tableDoc.doc")
    
        # Get the first table in the document.
        firstTable = doc.getChild(NodeType.TABLE, 0, True)
    
        # We will split the table at the third row (inclusive).
        row = firstTable.getRows().get(2)
    
        # Create a new container for the split table.
        table = firstTable.deepClone(False)
    
        # Insert the container after the original.
        firstTable.getParentNode().insertAfter(table, firstTable)
    
        # Add a buffer paragraph to ensure the tables stay apart.
        firstTable.getParentNode().insertAfter(Paragraph(doc), firstTable)
        currentRow = ''
        while (currentRow != row) :
            currentRow = firstTable.getLastRow();
            table.prependChild(currentRow);
        doc.save(dataDir + "SplitTable.doc")
        print "Done."
if __name__ == '__main__':
    SplitTables()
{{< /highlight >}}

## Download Running Code

Download running code from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
