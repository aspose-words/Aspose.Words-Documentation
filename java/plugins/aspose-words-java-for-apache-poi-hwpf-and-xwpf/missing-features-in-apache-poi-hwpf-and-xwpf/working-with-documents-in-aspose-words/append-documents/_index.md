---
title: Append Documents
type: docs
weight: 20
url: /java/append-documents/
---

{{% alert color="primary" %}} 

You can try to merge documents and view the results online at this link:

<https://products.aspose.app/words/merger>

{{% /alert %}} 
## **Aspose.Words - Append Documents**
To append documents using Aspose.Words, simply invoke the appendDocument() method of Document class and specify the second document to append at end.

**Java**

{{< highlight csharp >}}
Document doc1 = new Document(dataDir + "doc1.doc");
Document doc2 = new Document(dataDir + "doc2.doc");
doc1.appendDocument(doc2, ImportFormatMode.KEEP_SOURCE_FORMATTING);
{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/appenddoc/AsposeAppendDocs.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/appenddoc/AsposeAppendDocs.java)

For more details, visit [Appending Documents Overview](/words/java/appending-documents/)
