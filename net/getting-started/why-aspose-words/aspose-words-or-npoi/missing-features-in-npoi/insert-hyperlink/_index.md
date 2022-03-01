---
title: Insert a Hyperlink – Aspose.Words for .NET
articleTitle: Insert a Hyperlink
linktitle: Insert a Hyperlink
description: "Insert a hyperlink into a document. NPOI does not provide an opportunity to insert a hyperlink using C#."
type: docs
weight: 110
url: /net/insert-hyperlink/
---

{{% alert color="primary" %}}

See more details in the ["Working with Hyperlinks and HTML"](/words/net/working-with-hyperlinks-and-html/) article.

{{% /alert %}}

The following code example shows how to inserts a hyperlink into a Word document using the [DocumentBuilder](https://apireference.aspose.com/words/net/aspose.words/documentbuilder) class:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Please make sure to visit ");

// Specify font formatting for the hyperlink.
builder.Font.Color = Color.Blue;
builder.Font.Underline = Underline.Single;

// Insert the link.
builder.InsertHyperlink("Aspose Website", "https://www.aspose.com", false);

// Revert to default formatting.
builder.Font.ClearFormatting();
builder.Write(" for more information.");
doc.Save("Insert_Hyperlink_In_Document.doc");
{{< /highlight >}}

See also:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/Aspose.WordsFeaturesmissinginNPOIv1.2) for code example
- [Github](https://github.com/asposewords/Aspose.Words-for-.NET/releases/download/Aspose.WordsFeaturesmissinginNPOIv1.2/02.04-InsertHyperlink.zip) for running code
