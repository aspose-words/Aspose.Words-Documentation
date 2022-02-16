---
title: Load And Save To Stream in Python – Aspose.Words for Java
articleTitle: Load And Save To Stream in Python
linktitle: Load And Save To Stream in Python
description: "Python: Load And Save Document To Stream using Aspose.Words for Java."
type: docs
weight: 60
url: /java/load-and-save-to-stream-in-python/
---

## Aspose.Words - Load And Save To Stream

**Python Code**

{{< highlight csharp >}}
Document =jpype.JClass("com.aspose.words.Document")
FileInputStream = jpype.JClass("java.io.FileInputStream")
FileOutputStream = jpype.JClass("java.io.FileOutputStream")
ByteArrayOutputStream = jpype.JClass("java.io.ByteArrayOutputStream")
SaveFormat = jpype.JClass("com.aspose.words.SaveFormat")
\# Open the stream. Read only access is enough for Aspose.Words to load a document.
stream = FileInputStream(srcDocFile)
\# Load the entire document into memory.
doc = Document(stream)
\# You can close the stream now, it is no longer needed because the document is in memory.
stream.close()
\# ... do something with the document
\# Convert the document to a different format and save to stream.
dstStream = ByteArrayOutputStream()
doc.save(dstStream, SaveFormat.RTF)
output = FileOutputStream(outputRtfFile)
output.write(dstStream.toByteArray())
output.close()
{{< /highlight >}}

## Download Running Code

Download **Load And Save To Stream (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/quickstart/LoadAndsaveToStream/LoadAndSaveToStream.py)
