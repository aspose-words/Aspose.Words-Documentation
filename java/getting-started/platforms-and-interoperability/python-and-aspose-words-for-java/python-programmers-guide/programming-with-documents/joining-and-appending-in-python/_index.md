---
title: Joining And Appending in Python
second_title: Aspose.Words for Java
articleTitle: Joining And Appending in Python
linktitle: Joining And Appending in Python
description: "Joining and appending Document using Python."
type: docs
weight: 10
url: /java/joining-and-appending-in-python/
---

## Aspose.Words - Joining And Appending

For joining and appending using Aspose.Words Java Apis in Python, simply use appendDocument method.

**Python Code**

{{< highlight csharp >}}
dstDoc = self.Document(self.gDataDir + "TestFile.Destination.doc")
srcDoc = self.Document(self.gDataDir + "TestFile.Source.doc")
\# Append the source document to the destination document using no extra options.
dstDoc.appendDocument(srcDoc, self.ImportFormatMode.KEEP_SOURCE_FORMATTING)
{{< /highlight >}}

## Download Running Code

Download **Joining And Appending (Aspose.Words)** form any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/programmingwithdocuments/joiningandappending/AppendDocument.py)
