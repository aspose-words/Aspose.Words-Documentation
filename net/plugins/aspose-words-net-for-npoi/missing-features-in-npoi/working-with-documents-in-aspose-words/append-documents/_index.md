---
title: Append Documents
type: docs
weight: 20
url: /net/append-documents/
---

{{% alert color="primary" %}} 

You can try to merge documents and view the results online at this link:

<https://products.aspose.app/words/merger>

{{% /alert %}} 
## **Aspose.Words - Append Documents**
To append documents using Aspose.Words, simply invoke the AppendDocument() method of Document class and specify the second document to append at end.

**C#**

{{< highlight csharp >}}
Document doc1 = new Document("../../data/doc1.doc");
Document doc2 = new Document("../../data/doc2.doc");
Document doc3 = doc1.Clone();
doc3.AppendDocument(doc2, ImportFormatMode.KeepSourceFormatting);
doc3.Save("appendedDocument.doc");
{{< /highlight >}}
## **Download Running Code**
Download **Append Documents (Aspose.Words)** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1475278)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Append.Documents.Aspose.Words.zip)

For more details, visit [Appending Documents Overview](https://docs.aspose.com/words/net/join-and-append-documents/)
