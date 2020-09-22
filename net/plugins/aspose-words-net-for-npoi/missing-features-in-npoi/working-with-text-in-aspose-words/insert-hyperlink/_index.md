---
title: Insert Hyperlink
type: docs
weight: 30
url: /net/insert-hyperlink/
---

The code sample below inserts **hyperlink** in a Word document using **DocumentBuilder** class

##### **Example**

**C#**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Please make sure to visit ");

// Specify font formatting for the hyperlink.
builder.Font.Color = Color.Blue;
builder.Font.Underline = Underline.Single;

// Insert the link.
builder.InsertHyperlink("Aspose Website", "http://www.aspose.com", false);

// Revert to default formatting.
builder.Font.ClearFormatting();
builder.Write(" for more information.");
doc.Save("Insert_Hyperlink_In_Document.doc");
{{< /highlight >}}

## **Download Sample Code**

- [CodePlex](https://asposewordsnpoi.codeplex.com/downloads/get/1556914)
- [Github](https://github.com/asposewords/Aspose.Words-for-.NET/releases/tag/Aspose.WordsFeaturesmissinginNPOIv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/More-Code-Examples-of-d19b2e19)

## **Download Running Code**

- [CodePlex](https://asposewordsnpoi.codeplex.com/SourceControl/latest#Missing Features of NPOI HWPF and XWPF/Aspose.Words/02-WorkingWithText/02.04-InsertHyperlink/)
- [Github](https://github.com/asposewords/Aspose.Words-for-.NET/releases/download/Aspose.WordsFeaturesmissinginNPOIv1.2/02.04-InsertHyperlink.zip)
- [Code.MSDN](https://code.msdn.microsoft.com/More-Code-Examples-of-d19b2e19/view/SourceCode#content)

{{% alert color="primary" %}} 

For more details, visit [DocumentBuilder InsertHyperlink Method](https://apireference.aspose.com/net/words/aspose.words/documentbuilder/methods/inserthyperlink).

{{% /alert %}}
