---
title: Insert Image in NPOI
second_title: Aspose.Words for .NET
articleTitle: Insert Image in NPOI
linktitle: Insert Image in NPOI
description: "Add an image into a document easily and fast instead of using NPOI in C#."
type: docs
weight: 20
url: /net/insert-image-in-npoi/
timestamp: 2024-01-27-14-07-04
---

## Aspose.Words - Insert Image

This example inserts an image from a file at a specified position and size

**C#**

{{< highlight csharp >}}
using Aspose.Words;
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("test");
var widthEmus = (int)(400.0 * 9525);
var heightEmus = (int)(300.0 * 9525);
builder.InsertImage("../../image/HumpbackWhale.jpg", widthEmus, heightEmus);
doc.Save("test.docx");
{{< /highlight >}}

## NPOI HWPF XWPF - Insert Image

XWPFRun.addPicture is used to add an image to document.

**C#**

{{< highlight csharp >}}
using NPOI.XWPF.UserModel;
XWPFDocument doc = new XWPFDocument();
XWPFParagraph p2 = doc.CreateParagraph();
XWPFRun r2 = p2.CreateRun();
r2.SetText("test");
var widthEmus = (int)(400.0 * 9525);
var heightEmus = (int)(300.0 * 9525);
using (FileStream picData = new FileStream("../../image/HumpbackWhale.jpg", FileMode.Open, FileAccess.Read))
{
    r2.AddPicture(picData, (int)PictureType.PNG, "image1", widthEmus, heightEmus);
}
using (FileStream sw = File.Create("test.docx"))
{
    doc.Write(sw);
}
{{< /highlight >}}

## Download Running Code

Download **Insert Image** form any of the below mentioned social coding sites:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.WordsVsNPOI_1.0/Insert.Image.Aspose.Words.zip)
