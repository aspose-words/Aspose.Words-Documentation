---
title: Extract Content in Jython
type: docs
weight: 33
url: /java/extract-content-in-jython/
---

## Aspose.Words - Extract Content

To Extract Content from document using **Aspose.Words Java for Jython**. Here you can see sample code.

**Jython Code**

{{< highlight ruby >}}
def extract_content_between_paragraphs(self, doc):
    """
        Shows how to extract the content between specific paragraphs using the ExtractContent method above.
    """

    # Gather the nodes. The GetChild method uses 0-based index
    startPara = doc.getFirstSection().getChild(NodeType.PARAGRAPH, 6, True)
    endPara = doc.getFirstSection().getChild(NodeType.PARAGRAPH, 10, True)
    
    # Extract the content between these nodes in the document. Include these markers in the extraction.
    extractedNodes = self.extract_contents(startPara, endPara, True)
    
    # Insert the content into a new separate document and save it to disk.
    dstDoc = self.generate_document(doc, extractedNodes)
    dstDoc.save(self.dataDir + "TestFile.Paragraphs Out.doc")
def extract_content_between_block_level_nodes(self, doc):
    """
        Shows how to extract the content between a paragraph and table using the ExtractContent method.
    """
    startPara = doc.getLastSection().getChild(NodeType.PARAGRAPH, 2, True)
    endTable = doc.getLastSection().getChild(NodeType.TABLE, 0, True)

    # Extract the content between these nodes in the document. Include these markers in the extraction.
    extractedNodes = self.extract_contents(startPara, endTable, True)
    
    # Lets reverse the array to make inserting the content back into the document easier.
    Collections.reverse(extractedNodes[::-1])
    while (len(extractedNodes) > 0):
    
        # Insert the last node from the reversed list
        endTable.getParentNode().insertAfter(extractedNodes[0], endTable)
    
        # Remove this node from the list after insertion.
        del extractedNodes[0]
    
    # Save the generated document to disk.
    doc.save(self.dataDir + "TestFile.DuplicatedContent Out.doc")
{{< /highlight >}}

## Download Running Code

Download running code from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
