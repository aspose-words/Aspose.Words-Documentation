---
title: Working With Nodes in Python
description: Python: Working With Nodes using Aspose.Words for Java
type: docs
weight: 90
url: /java/working-with-nodes-in-python/
---

## Aspose.Words - Working With Nodes

To get Node Type using Aspose.Words Java Apis in Python, simply invoke getNodeType method.

**Python Code**

{{< highlight csharp >}}
Document = jpype.JClass("com.aspose.words.Document")
Paragraph = jpype.JClass("com.aspose.words.Paragraph")
Node = jpype.JClass("com.aspose.words.Node")
\# Create a new document.
doc = Document()
\# Creates and adds a paragraph node to the document.
para = Paragraph(doc)
\# Typed access to the last section of the document.
section = doc.getLastSection()
section.getBody().appendChild(para)
{{< /highlight >}}

## Download Running Code

Download **Working With Nodes (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/quickstart/workingwithnodes/WorkingWithNodes.py)
