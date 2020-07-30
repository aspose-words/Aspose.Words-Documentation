---
title: Track Changes in Documents
type: docs
weight: 70
url: /net/track-changes-in-documents/
---

## **Aspose.Words - Track Changes in Documents**
The **Document.AcceptAllRevisions** method allows you to "accept" all revisions in the document. Calling this method is similar to selecting "Accept All Changes" in Microsoft Word. Aspose.Words will actually delete fragments that were "delete revisions", retain fragments that were "insert revisions" and apply formatting changes. Note that comments are not affected during this operation.

**C#**

{{< highlight cs >}}

 Document doc = new Document("../../data/document.doc");

doc.AcceptAllRevisions();

doc.Save("AsposeAcceptChanges.doc", SaveFormat.Doc);

{{< /highlight >}}
## **Download Running Code**
Download **Track Changes in Documents (Aspose.Words)** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1475283)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Track.Changes.In.Documents.Aspose.Words.zip)

{{% alert color="primary" %}} 

For more details, visit [Manage Tracking Changes](http://www.aspose.com/docs/display/wordsnet/Manage+Tracking+Changes).

{{% /alert %}}
