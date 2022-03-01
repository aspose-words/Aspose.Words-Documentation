---
title: Create Empty Document in NPOI – Aspose.Words for .NET
articleTitle: Create Empty Document in NPOI
linktitle: Create Empty Document in NPOI
description: "Create an empty document easily and fast instead of using NPOI using C#."
type: docs
weight: 30
url: /net/create-empty-document-in-npoi/
---

## Aspose.Words - Create Empty Document

Call the Document constructor without parameters to create a new blank document.

If you want to generate a document programmatically, the most reasonable step after creation is to use **DocumentBuilder** to add document contents.

**C#**

{{< highlight csharp >}}
using Aspose.Words;
Document doc = new Document();
doc.Save("blank.docx");
{{< /highlight >}}

## NPOI HWPF XWPF - Create Empty Document

Below example shows how to create a new document using NPOI XWPF

**C#**

{{< highlight csharp >}}
using NPOI.XWPF.UserModel;
XWPFDocument doc = new XWPFDocument();
doc.CreateParagraph();
using (FileStream sw = File.Create("blank.docx"))
{
    doc.Write(sw);
}
{{< /highlight >}}

## Download Running Code

Download **Create Empty Document** from any of the below mentioned social coding sites:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.WordsVsNPOI_1.0/Create.Empty.Document.Aspose.Words.zip)

{{% alert color="primary" %}}

For more details, visit [Create a New Document](/words/net/create-or-load-a-document/#create-a-new-document).

{{% /alert %}}
