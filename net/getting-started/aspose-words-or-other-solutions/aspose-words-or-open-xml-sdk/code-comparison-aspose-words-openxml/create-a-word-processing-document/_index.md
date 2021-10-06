---
title: Create a Document
description: "Aspose.Words for .NET allows you to create a Word Processing document easily and fast instead of using Open XML SDK."
type: docs
weight: 10
url: /net/create-a-word-processing-document/
---

On this page we will look at how to create a document using Aspose.Words or Open XML SDK.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

In Aspose.Words, we normally use the [Document](https://apireference.aspose.com/words/net/aspose.words/document) class to create a document and the [DocumentBuilder](https://apireference.aspose.com/words/net/aspose.words/documentbuilder) class to modify it.

The following code example shows how to create a document:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("Hello World!");
doc.Save("CreateDocument.docx");
{{< /highlight >}}

{{< /tab >}}

{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

Following are the namespaces we need to add:

{{< highlight csharp >}}
using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using NUnit.Framework;
{{< /highlight >}}

The following code example shows how to create a document:

{{< highlight csharp >}}
public void CreateADocumentFeature()
{
	using (WordprocessingDocument wordDocument =
		WordprocessingDocument.Create(ArtifactsDir + "Create a document - OpenXML.docx",
			WordprocessingDocumentType.Document))
	{
		MainDocumentPart mainPart = wordDocument.AddMainDocumentPart();
		// Create the document structure and add some text.
		mainPart.Document = new Document();
		Body body = mainPart.Document.AppendChild(new Body());
		Paragraph para = body.AppendChild(new Paragraph());
		Run run = para.AppendChild(new Run());
		run.AppendChild(new Text("Create text in body - Create wordprocessing document"));
	}
}
{{< /highlight >}}

{{< /tab >}}

{{< /tabs >}}

{{< /nosnippet >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20OpenXML%20Words/Aspose.Words%20VS%20OpenXML).

{{% /alert %}}

{{% alert color="primary" %}} 

For more information about Aspose.Words features please visit [Create or Load a Document](https://docs.aspose.com/words/net/create-or-load-a-document/).

{{% /alert %}}