---
title: Open a Document from a Stream
description: "Aspose.Words for .NET allows you to load a document from a stream easily and fast instead of using Open XML SDK."
type: docs
weight: 20
url: /net/open-a-word-processing-document-from-a-stream/
---

On this page we will look at how to load a document from a stream using Aspose.Words or Open XML SDK.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

Simply pass a stream object that contains the document into the [Document](https://apireference.aspose.com/net/words/aspose.words/document/constructors/main) constructor.

The following code example shows how to open a document from a stream:

{{< highlight csharp >}}
Stream stream = File.Open(MyDir + "Document.docx", FileMode.Open);
using (stream)
{
	Document doc = new Document(stream);
	DocumentBuilder builder = new DocumentBuilder(doc);
	builder.Writeln("Append text in body - Open and add to wordprocessing stream");
	doc.Save(ArtifactsDir + "Open document from stream - Aspose.Words.docx");
}
{{< /highlight >}}

{{< /tab >}}

{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

The example of the **OpenAndAddToWordprocessingStream** method shown here can be used to open a Word document from an already open stream and append some text using the Open XML SDK. You can call it by passing a handle to the open stream as the first parameter and the text to add as the second. For example, the following code example opens the *OpenDocumentFromStream.docx* file in the Public Documents folder and adds text to it:

{{< highlight csharp >}}
public void OpenDocumentFromStreamFeature()
{
	using (Stream stream = File.Open(MyDir + "Document.docx", FileMode.Open))
	{
		using (WordprocessingDocument wordprocessingDocument = WordprocessingDocument.Open(stream, true))
		{
			Body body = wordprocessingDocument.MainDocumentPart.Document.Body;
			Paragraph para = body.AppendChild(new Paragraph());
			Run run = para.AppendChild(new Run());
			run.AppendChild(new Text("Append text in body - Open and add to wordprocessing stream"));
		}
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

For more information about Aspose.Words features please visit [Create or Load a Document](https://docs.aspose.com/words/net/create-or-load-a-document/#load-from-a-stream).

{{% /alert %}}
