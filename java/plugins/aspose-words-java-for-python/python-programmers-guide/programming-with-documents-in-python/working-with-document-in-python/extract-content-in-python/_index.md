---
title: Extract Content in Python
type: docs
weight: 10
url: /java/extract-content-in-python/
---

## **Aspose.Words - Extract Content**
**Python Code**

{{< highlight csharp >}}
# Load in the document
doc = self.Document(self.dataDir + "TestFile.doc")
\# Gather the nodes. The GetChild method uses 0-based index
startPara = doc.getFirstSection().getChild(self.NodeType.PARAGRAPH, 6, True)
endPara = doc.getFirstSection().getChild(self.NodeType.PARAGRAPH, 10, True)
\# Extract the content between these nodes in the document. Include these markers in the extraction.
extractedNodes = self.extractContents(startPara, endPara, True)
\# Insert the content into a new separate document and save it to disk.
dstDoc = self.generateDocument(doc, extractedNodes)
dstDoc.save(self.dataDir + "TestFile.Paragraphs Out.doc")
{{< /highlight >}}
## **Download Running Code**
Download **Extract Content (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/programmingwithdocuments/workingwithdocument/extractcontent/ExtractContent.py)
