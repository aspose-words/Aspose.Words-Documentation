---
title: Moving the Cursor of Document
type: docs
weight: 10
url: /java/moving-the-cursor-of-document/
---

## **Aspose.Words - Moving the Cursor**
If you need to move to the beginning of the document, call **DocumentBuilder.moveToDocumentStart**. If you need to move to the end of the document, call **DocumentBuilder.moveToDocumentEnd**.

**Java**

{{< highlight java >}}

 Document doc = new Document(dataDir + "document.doc");

DocumentBuilder builder = new DocumentBuilder(doc);

//Shows how to access the current node in a document builder.

Node curNode = builder.getCurrentNode();

Paragraph curParagraph = builder.getCurrentParagraph();

// Shows how to move a cursor position to a specified node.

builder.moveTo(doc.getFirstSection().getBody().getLastParagraph());

// Shows how to move a cursor position to the beginning or end of a document.

builder.moveToDocumentEnd();

builder.writeln("This is the end of the document.");

builder.moveToDocumentStart();

builder.writeln("This is the beginning of the document.");

{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/movingcursor/AsposeMovingCursor.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/movingcursor/AsposeMovingCursor.java)

{{% alert color="primary" %}} 

For more details, visit [Moving the Cursor](/words/java/using-documentbuilder-to-modify-a-document/#usingdocumentbuildertomodifyadocument-movingthecursor).

{{% /alert %}}
