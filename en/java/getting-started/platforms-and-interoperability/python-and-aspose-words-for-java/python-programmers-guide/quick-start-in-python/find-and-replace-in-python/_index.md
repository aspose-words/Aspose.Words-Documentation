---
title: Find And Replace in Python
second_title: Aspose.Words for Java
articleTitle: Find And Replace in Python
linktitle: Find And Replace in Python
description: "Find And Replace inside MS Word Document using Python."
type: docs
weight: 30
url: /java/find-and-replace-in-python/
timestamp: 2024-01-27-14-07-04
---

## Aspose.Words - Find And Replace

To replace text using Aspose.Words Java in Python, simply invoke the replace() method.

**Python Code**

{{< highlight csharp >}}
 # The path to the documents directory.
 doc = jpype.Jclass("com.aspose.words.Document","ReplaceSimple.doc")
 FindReplaceDirection =jpype.JClass("com.aspose.words.FindReplaceDirection")
 FindReplaceOptions =jpype.JClass("com.aspose.words.FindReplaceOptions")
 doc = Document('data/ReplaceSimple.doc')
 # Replace the text in the document.
 doc.getRange().replace(_CustomerName_, James Bond, FindReplaceOptions(FindReplaceDirection.FORWARD))
{{< /highlight >}}

## Download Running Code

Download **Find And Replace (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/quickstart/findandreplace/findandreplace.py)
