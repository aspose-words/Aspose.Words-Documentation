---
title: Open a Document for Read-only Access
second_title: Aspose.Words for .NET
articleTitle: Open a Document for Read-only Access
linktitle: Open a Document for Read-only Access
description: "Open a document for read-only easily and fast instead of using Open XML SDK in C#."
type: docs
weight: 30
url: /net/open-a-word-processing-document-for-read-only-access/
timestamp: 2024-01-27-14-07-04
---

Sometimes you want to open a document to inspect or retrieve some information, and you want to do so in such a way that the document remains unchanged. In these instances, you want to open the document as read-only.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

Aspose.Words has the public class [WriteProtection](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/) that specifies write protection settings for a document. Make a document read-only to restrict editing by using the [ReadOnlyRecommended](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/readonlyrecommended/) property and the [SetPassword](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/setpassword/) method.

The following code example shows how to make your document read-only:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

{{< /tab >}}

{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

The code sample below shows how you can add some text and attempt to save the changes to show that access is read-only. Once you have access to the body of the main document part, you add text by adding instances of the **Paragraph, Run, and Text** classes. This generates the required **WordprocessingML** markup.

The following code example shows how to make your document read-only:

{{< highlight csharp >}}
public void OpenReadOnlyAccessFeature()
{
	// Open a `WordprocessingDocument` based on a filepath.
	using (WordprocessingDocument wordDocument = WordprocessingDocument.Open(MyDir + "Open readonly access.docx", false))
	{
		// Assign a reference to the existing document body.  
		Body body = wordDocument.MainDocumentPart.Document.Body;
		// Attempt to add some text.
		Paragraph para = body.AppendChild(new Paragraph());
		Run run = para.AppendChild(new Run());
		run.AppendChild(new Text("Append text in body, but text is not saved - Open wordprocessing document readonly"));
		// Call the "Save" method to generate an exception and show that access is read-only.
		using (Stream stream = File.Create(ArtifactsDir + "Open readonly access - OpenXML.docx"))
		{
			wordDocument.MainDocumentPart.Document.Save(stream);
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

For more information about Aspose.Words features please visit [Open a Document Read-Only](/words/net/open-a-document-read-only/).

{{% /alert %}}
