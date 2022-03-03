---
title: Add Bookmark
second_title: Aspose.Words for .NET
articleTitle: Add Bookmark
linktitle: Add Bookmark
description: "Add a bookmark into a document easily and fast instead of using VSTO in C#."
type: docs
weight: 70
url: /net/add-bookmark/
---

## VSTO

{{< highlight csharp >}}
Word.Application wordApp = Application;
wordApp.Documents.Open("Add Bookmark.doc");
Document extendedDocument = Globals.Factory.GetVstoObject(this.Application.ActiveDocument);
Bookmark firstParagraph = extendedDocument.Controls.AddBookmark(
	extendedDocument.Paragraphs[1].Range, "FirstParagraph");
{{< /highlight >}}

## Aspose.Words

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.StartBookmark("MyBookmark");
builder.Writeln("Text inside a bookmark.");
builder.EndBookmark("MyBookmark");
doc.Save("Adding Bookmark.doc");
{{< /highlight >}}

## Download Sample Code

- [Github](https://github.com/asposemarketplace/Aspose_for_VSTO/releases/download/Aspose.Words1.0/Add.Bookmark.Aspose.Words.zip)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-vsto/downloads/Add%20Bookmark%20\(Aspoe.Words\).zip)
