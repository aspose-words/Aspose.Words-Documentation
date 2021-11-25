---
title: Autofit Setting to Tables in Jython
description: Jython: Autofit Setting to Tables using Aspose.Words for Java 
type: docs
weight: 63
url: /java/autofit-setting-to-tables-in-jython/
---

## Aspose.Words - Autofit Setting to Tables

To do Autofit Setting to Tables using **Aspose.Words Java for Jython**. Here you can see sample code.

**Jython Code**

{{< highlight ruby >}}
from aspose-words import Settings
from com.aspose.words import Document
from com.aspose.words import NodeType
from com.aspose.words import AutoFitBehavior
class AutoFitTables:
    def __init__(self):
        self.dataDir = Settings.dataDir + 'programming_documents/'
        doc = Document(self.dataDir + "TestFile.doc")
        self.autofit_table_to_contents(doc)
        self.autofit_table_to_fixed_width_columns(doc)
        self.autofit_table_to_window(doc)
    def autofit_table_to_contents(self, doc):
        table = doc.getChild(NodeType.TABLE, 0, True)

        # Auto fit the table to the cell contents
        table.autoFit(AutoFitBehavior.AUTO_FIT_TO_CONTENTS)
    
        # Save the document to disk.
        doc.save(self.dataDir + "AutoFitToContents.doc")
        print "Table auto fit to contents successfully."
    def autofit_table_to_fixed_width_columns(self, doc):
        table = doc.getChild(NodeType.TABLE, 0, True)
    
        # Disable autofitting on this table.
        table.autoFit(AutoFitBehavior.FIXED_COLUMN_WIDTHS)
    
        # Save the document to disk.
        doc.save(self.dataDir + "AutoFitToFixedWidth.doc")
        print "Table auto fit to fixed width columns successfully." 
    def autofit_table_to_window(self, doc):
        table = doc.getChild(NodeType.TABLE, 0, True)
    
        # Autofit the first table to the page width.
        table.autoFit(AutoFitBehavior.AUTO_FIT_TO_WINDOW)
    
        # Save the document to disk.
        doc.save(self.dataDir + "AutoFitToWindow.doc")
        print "Table auto fit to windows successfully." 
if __name__ == '__main__':        
    AutoFitTables()
{{< /highlight >}}

## Download Running Code

Download running code from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
