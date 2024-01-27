---
title: Open and Modify a Document
second_title: Aspose.Words for .NET
articleTitle: Open and Modify a Document
linktitle: Open and Modify a Document
description: "Open and modify an existing Word document easily and fast instead of using Open XML SDK in C#."
type: docs
weight: 40
url: /net/open-and-add-text-to-word-document/
---

On this page we will look at how to open an existing document and add text into it using Aspose.Words or Open XML SDK.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

In Aspose.Words, we normally use the [Document](https://reference.aspose.com/words/net/aspose.words/document/) class to create a document and the [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder) class to modify it.

The following code example shows how to open an existing document and add text into it:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
// Specify font formatting before adding text.
Aspose.Words.Font font = builder.Font;
font.Size = 16;
font.Bold = true;
font.Color = Color.Blue;
font.Name = "Arial";
font.Underline = Underline.Dash;
builder.Write("Insert text");
doc.Save("ModifiedDocument.docx");
{{< /highlight >}}

{{< /tab >}}

{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

Following are the namespace we need to use:

{{< highlight csharp >}}
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
{{< /highlight >}}

Below is the code explaining this functionality by using **OpenAndAddTextToWordDocument** as a function:

{{< highlight csharp >}}
public void OpenAndAddTextToWordDocumentFeature()
{
	// Open a `WordprocessingDocument` for editing using the filepath.
	using (WordprocessingDocument wordprocessingDocument = WordprocessingDocument.Open(MyDir + "Document.docx", true))
	{
		// Assign a reference to the existing document body.
		Body body = wordprocessingDocument.MainDocumentPart.Document.Body;
		// Add new text.
		Paragraph para = body.AppendChild(new Paragraph());
		Run run = para.AppendChild(new Run());
		run.AppendChild(new Text("Append text in body - Open and add text to word document"));
	}
}
{{< /highlight >}}

{{< /tab >}}

{{< /tabs >}}

{{< /nosnippet >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20OpenXML%20Words/Aspose.Words%20VS%20OpenXML).

{{% /alert %}}
