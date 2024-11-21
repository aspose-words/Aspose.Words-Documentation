---
title: Working With Comments in Python
second_title: Aspose.Words for Java
articleTitle: Working With Comments in Python
linktitle: Working With Comments in Python
description: "Working with comments using Python."
type: docs
weight: 35
url: /java/working-with-comments-in-python/
timestamp: 2024-01-27-14-07-04
---

## Aspose.Words - Process Comments

**Python Code**

{{< highlight csharp >}}
Document = jpype.Jclass("com.aspose.words.Document")
doc = Document("data/TestFile.doc")
\# Collect all comments in the document
comments = doc.getChildNodes(self.nodeType.COMMENT, True).toArray()
{{< /highlight >}}

## Download Running Code

Download **Process Comments (Aspose.Words)** form any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/programmingwithdocuments/workingwithcomments/processcomments/ProcessComments/ProcessComments.py)
