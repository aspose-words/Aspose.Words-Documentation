---
title: Add Bookmark
type: docs
weight: 70
url: /net/add-bookmark/
---

## **VSTO**

{{< highlight csharp >}}
Word.Application wordApp = Application;
wordApp.Documents.Open("Add Bookmark.doc");
Document extendedDocument = Globals.Factory.GetVstoObject(this.Application.ActiveDocument);
Bookmark firstParagraph = extendedDocument.Controls.AddBookmark(
	extendedDocument.Paragraphs[1].Range, "FirstParagraph");
{{< /highlight >}}

## **Aspose.Words**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.StartBookmark("MyBookmark");
builder.Writeln("Text inside a bookmark.");
builder.EndBookmark("MyBookmark");
doc.Save("Adding Bookmark.doc");
{{< /highlight >}}

## **Download Sample Code**

- [Codeplex](http://goo.gl/6ohLvD)
- [Github](https://github.com/asposemarketplace/Aspose_for_VSTO/releases/download/Aspose.Words1.0/Add.Bookmark.Aspose.Words.zip)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-vsto/downloads/Add%20Bookmark%20\(Aspoe.Words\).zip)
