---
title: Track Changes in Documents
second_title: Aspose.Words for Java
articleTitle: Track Changes in Documents
linktitle: Track Changes in Documents
description: "Track changes in documents. Docx4j does not provide an opportunity to track changes in a document."
type: docs
weight: 30
url: /java/track-changes-in-documents-using-aspose-words/
---

{{% alert color="primary" %}}

See more details in the [Track Changes in a Document](/words/java/track-changes-in-a-document/) article.

{{% /alert %}}

The [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) method allows you to "accept" all tracked changes in the document. Calling this method is similar to selecting "Accept All Changes" in Microsoft Word. Aspose.Words will actually delete fragments marked as "delete revisions", retain fragments marked as "insert revisions", and apply formatting changes. Note that comments are not affected during this operation.

The following code example shows how to accept all revisions in a document:

{{< highlight csharp >}}
Document doc = new Document("trackDoc.doc");
doc.acceptAllRevisions();
doc.save("AsposeAcceptChanges.doc", SaveFormat.DOC);
{{< /highlight >}}

See also:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0) for running code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/asposefeatures/documents/trackchanges/AsposeTrackChanges.java) for code example
