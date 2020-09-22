---
title: Append Documents in Python
type: docs
weight: 10
url: /java/append-documents-in-python/
---

## **Aspose.Words - Append Documents**

To append documents using Aspose.Words Java in Python, simply invoke the appendDocument() method of Document class and specify the second document to append at end.

**Python Code**

{{< highlight csharp >}}
Document = jpype.JClass("com.aspose.words.Document")
doc1 = Document("data/doc1.doc")
doc2 = Document("data/doc2.doc")
ImportFormatMode = jpype.JClass("com.aspose.words.ImportFormatMode)
doc1.appendDocument(doc2), ImportFormatMode->KEEP_SOURCE_FORMATTING)
{{< /highlight >}}

## **Download Running Code**

Download **Append Documents (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_Java_for_Python/tests/quickstart/appenddocument/appenddocument.py)
