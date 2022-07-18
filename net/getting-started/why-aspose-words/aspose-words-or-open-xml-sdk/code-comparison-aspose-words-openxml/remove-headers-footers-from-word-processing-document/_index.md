---
title: Remove Headers and Footers from a Word Document
second_title: Aspose.Words for .NET
articleTitle: Remove Headers and Footers from a Word Document
linktitle: Remove Headers and Footers from a Word Document
description: "Remove headers or footers from a word processing document easily and fast instead of using Open XML SDK in C#."
type: docs
weight: 70
url: /net/remove-headers-footers-from-word-processing-document/
aliases: [/net/remove-the-headers-and-footers-from-a-word-processing-document/]
---

On this page we will look at how to remove headers or footers from a Word processing document using Aspose.Words or Open XML SDK.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

Aspose.Words provide API for working with headers and footers in Microsoft Word document. We can use the [Section.HeadersFooters](https://reference.aspose.com/words/net/aspose.words/headerfootercollection) object to get the collection of header/footer in a document section. The [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter) class is a container for section header or footer text. That being said, **HeaderFooter** is a section-level node and can only be a child of a section. There can be only one or each **HeaderFooter** of [HeaderFooterType](https://reference.aspose.com/words/net/aspose.words/headerfootertype) in a section.

The following code example shows how to remove header and footer from a Word document:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");
foreach (Section section in doc)
{
	section.HeadersFooters.RemoveAt(0);
	// Odd pages use the primary footer.
	HeaderFooter footer = section.HeadersFooters[HeaderFooterType.FooterPrimary];
	footer?.Remove();
}
doc.Save(ArtifactsDir + "Remove header and footer - Aspose.Words.docx");
{{< /highlight >}}

{{< /tab >}}

{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

To use the code example, you must install the Open XML SDK 2.5. Then you must explicitly reference the following assemblies in your project:

- WindowsBase
- DocumentFormat.OpenXml (installed by the Open XML SDK)

Following are the namespaces we need to add:

{{< highlight csharp >}}
using System.IO;
using System.Linq;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using NUnit.Framework;
{{< /highlight >}}

The **RemoveHeadersAndFooters** method works with the document you specify, deleting all of the header and footer parts and references to those parts. The code starts by opening the document, using the Open method and indicating that the document should be opened for read/write access (the final true parameter). Given the open document, the code uses the **MainDocumentPart** property to navigate to the main document, storing the reference in a variable named docPart.

Given a reference to the document part, the code next determines if it has any work to do─that is, if the document contains any headers or footers. This simple method **DeleteParts** provides a shortcut for deleting a collection of parts.

To remove the stranded references, the code first retrieves a collection of **HeaderReference** elements, converts the collection to a List, and then loops through the collection, calling the **Remove** method for each element found.

The following code example shows how to remove header and footer from a Word document:

{{< highlight csharp >}}
public void RemoveHeaderFooterFeature()
{
	using (WordprocessingDocument doc = WordprocessingDocument.Open(MyDir + "Document.docx", true))
	{
		var mainDocumentPart = doc.MainDocumentPart;
		// Count the header and footer parts and continue if there are any.
		if (mainDocumentPart.HeaderParts.Any() || mainDocumentPart.FooterParts.Any())
		{
			// Remove the header and footer parts.
			mainDocumentPart.DeleteParts(mainDocumentPart.HeaderParts);
			mainDocumentPart.DeleteParts(mainDocumentPart.FooterParts);
			// Get a reference to the root element of the main document part.
			Document document = mainDocumentPart.Document;
			// Remove all references to the headers and footers.
			// First, create a list of all descendants of type HeaderReference.
			// Then, navigate the list and call remove on each item to delete the reference.
			var headers = document.Descendants<HeaderReference>().ToList();
			foreach (var header in headers)
				header.Remove();
			// First, create a list of all descendants of type FooterReference.
			// Then, navigate the list and call remove on each item to delete the reference.
			var footers = document.Descendants<FooterReference>().ToList();
			foreach (var footer in footers)
				footer.Remove();
			using (Stream stream = File.Create(ArtifactsDir + "Remove header and footer - OpenXML.docx"))
			{
				document.Save(stream);
			}
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

For more information about Aspose.Words features please visit [Working with Headers and Footers](/words/net/working-with-headers-and-footers/).

{{% /alert %}}
