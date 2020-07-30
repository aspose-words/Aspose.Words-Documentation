---
title: Moving the Cursor in NPOI
type: docs
weight: 20
url: /net/moving-the-cursor-in-npoi/
---

## **Aspose.Words - Moving the Cursor**
If you need to move to the beginning of the document, call **DocumentBuilder.MoveToDocumentStart**. If you need to move to the end of the document, call **DocumentBuilder.MoveToDocumentEnd**.

**C#**

{{< highlight cs >}}

 Document doc = new Document("../../data/document.doc");

DocumentBuilder builder = new DocumentBuilder(doc);

//Shows how to access the current node in a document builder.

Node curNode = builder.CurrentNode;

Paragraph curParagraph = builder.CurrentParagraph;

// Shows how to move a cursor position to a specified node.

builder.MoveTo(doc.FirstSection.Body.LastParagraph);

// Shows how to move a cursor position to the beginning or end of a document.

builder.MoveToDocumentEnd();

builder.Writeln("This is the end of the document.");

builder.MoveToDocumentStart();

builder.Writeln("This is the beginning of the document.");

doc.Save("outputDocument.doc");

{{< /highlight >}}
## **Download Running Code**
Download **Moving the Cursor** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1475295)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Moving.the.Cursor.Aspose.Words.zip)

{{% alert color="primary" %}} 

For more details, visit [Moving the Cursor](http://www.aspose.com/docs/display/wordsnet/Moving+the+Cursor).

{{% /alert %}}
