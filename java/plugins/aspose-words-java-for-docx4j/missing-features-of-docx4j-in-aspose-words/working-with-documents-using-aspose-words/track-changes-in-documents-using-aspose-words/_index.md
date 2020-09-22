---
title: Track Changes in Documents using Aspose.Words
type: docs
weight: 100
url: /java/track-changes-in-documents-using-aspose-words/
---

## **Aspose.Words - Track Changes in Documents**

The **Document.AcceptAllRevisions** method allows you to "accept" all revisions in the document. Calling this method is similar to selecting "Accept All Changes" in Microsoft Word. Aspose.Words will actually delete fragments that were "delete revisions", retain fragments that were "insert revisions" and apply formatting changes. Note that comments are not affected during this operation.

**Java**

{{< highlight csharp >}}
Document doc = new Document("trackDoc.doc");
doc.acceptAllRevisions();
doc.save("AsposeAcceptChanges.doc", SaveFormat.DOC);
{{< /highlight >}}

## **Download Running Code**

- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/releases/view/618874)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)

## **Download Sample Code**

- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/documents/trackchanges/AsposeTrackChanges.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/asposefeatures/documents/trackchanges/AsposeTrackChanges.java)

{{% alert color="primary" %}} 

For more details, visit [Manage Tracking Changes](/words/java/working-with-document/#workingwithdocument-managetrackingchanges).

{{% /alert %}}
