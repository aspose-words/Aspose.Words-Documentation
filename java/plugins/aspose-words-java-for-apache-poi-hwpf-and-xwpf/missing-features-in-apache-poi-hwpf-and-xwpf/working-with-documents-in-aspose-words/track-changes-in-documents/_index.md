---
title: Track Changes in Documents
type: docs
weight: 80
url: /java/track-changes-in-documents/
---

## **Aspose.Words - Track Changes in Documents**
The **Document.AcceptAllRevisions** method allows you to "accept" all revisions in the document. Calling this method is similar to selecting "Accept All Changes" in Microsoft Word. Aspose.Words will actually delete fragments that were "delete revisions", retain fragments that were "insert revisions" and apply formatting changes. Note that comments are not affected during this operation.

**Java**

{{< highlight java >}}

 Document doc = new Document(dataDir + "trackDoc.doc");

doc.acceptAllRevisions();

doc.save(dataDir + "AsposeAcceptChanges.doc", SaveFormat.DOC);

{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/trackchanges/AsposeTrackChanges.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/trackchanges/AsposeTrackChanges.java)

{{% alert color="primary" %}} 

For more details, visit [Manage Tracking Changes](/words/java/working-with-document/#workingwithdocument-managetrackingchanges).

{{% /alert %}}
