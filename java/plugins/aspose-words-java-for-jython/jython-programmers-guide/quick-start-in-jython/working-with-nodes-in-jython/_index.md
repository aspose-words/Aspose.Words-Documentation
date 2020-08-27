---
title: Working With Nodes in Jython
type: docs
weight: 100
url: /java/working-with-nodes-in-jython/
---

## **Aspose.Words - Working With Nodes**
To Work With Nodes using **Aspose.Words Java for Jython**. Here you can see example code.

**Jython Code**

{{< highlight ruby >}}
from aspose-words import Settings
from com.aspose.words import Document
from com.aspose.words import Node
from com.aspose.words import Paragraph
class WorkingWithNodes:
    def __init__(self):

        # Create a new document.
        doc = Document()

        # Creates and adds a paragraph node to the document.
        para = Paragraph(doc)

        # Typed access to the last section of the document.
        section = doc.getLastSection()
        section.getBody().appendChild(para)

        # Next print the node type of one of the nodes in the document.
        nodeType = doc.getFirstSection().getBody().getNodeType()
        print "NodeType: " + Node.nodeTypeToString(nodeType)
if __name__ == '__main__':
    WorkingWithNodes()
{{< /highlight >}}
## **Download Running Code**
Download running code from any of the below mentioned social coding sites:

- [CodePlex](https://asposewordsjavajython.codeplex.com/releases/view/619260)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Jython-v1.0.0)
