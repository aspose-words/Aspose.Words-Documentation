---
title: Add Picture
second_title: Aspose.Words for .NET
articleTitle: Add Picture
linktitle: Add Picture
description: "Add an image into a document easily and fast instead of using VSTO in C#."
type: docs
weight: 50
url: /net/add-picture/
timestamp: 2024-01-27-14-07-04
---

## VSTO

{{< highlight csharp >}}
Word.Application wordApp = Application;
wordApp.Documents.Open(mypath+"Add Picture.doc");
//Add picture to Doc
this.Application.Selection.InlineShapes.AddPicture("download.jpg");
{{< /highlight >}}

## Aspose.Words

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
//Add picture
builder.InsertImage(MyDir + "download.jpg");
doc.Save("Adding Picture.doc");
{{< /highlight >}}

## Download Sample Code

- [Github](https://github.com/asposemarketplace/Aspose_for_VSTO/releases/download/Aspose.Words1.0/Add.Picture.Aspose.Words.zip)
