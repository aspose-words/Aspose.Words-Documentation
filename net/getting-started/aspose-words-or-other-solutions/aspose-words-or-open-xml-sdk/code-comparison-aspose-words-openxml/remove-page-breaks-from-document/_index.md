---
title: Remove Page Breaks from a Document
description: "Aspose.Words for .NET enables you to remove page breaks from a document easily and fast instead of using Open XML SDK."
type: docs
weight: 160
url: /net/remove-page-breaks-from-document/
---

On this page we will look at how to remove page breaks from a document using Aspose.Words or Open XML SDK.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

In Aspose.Words, use the [PageBreak](https://apireference.aspose.com/words/net/aspose.words/controlchar/fields/pagebreak) field of the [ControlChar](https://apireference.aspose.com/words/net/aspose.words/controlchar) class to find all page breaks.

The following code example demonstrates how to remove page breaks from a document:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Remove page breaks.docx");
// Retrieve all paragraphs in the document.
NodeCollection paragraphs = doc.GetChildNodes(NodeType.Paragraph, true);
foreach (Paragraph para in paragraphs)
{
	// If the paragraph has a page break set before, then clear it.
	if (para.ParagraphFormat.PageBreakBefore)
		para.ParagraphFormat.PageBreakBefore = false;
	// Check all runs in the paragraph for page breaks and remove them.
	foreach (Run run in para.Runs)
		if (run.Text.Contains(ControlChar.PageBreak))
			run.Text = run.Text.Replace(ControlChar.PageBreak, string.Empty);
}
doc.Save(ArtifactsDir + "Remove page breaks - Aspose.Words.docx");
{{< /highlight >}}

{{< /tab >}}

{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

Following are the namespaces we need to add:

{{< highlight csharp >}}
using System.Collections.Generic;
using System.IO;
using System.Linq;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using NUnit.Framework;
{{< /highlight >}}

The following code example demonstrates how to remove page breaks from a document:

{{< highlight csharp >}}
public void RemovePageBreaksFeature()
{
	using (WordprocessingDocument myDoc = WordprocessingDocument.Open(MyDir + "Remove page breaks.docx", true))
	{
		MainDocumentPart mainPart = myDoc.MainDocumentPart;
		List<Break> breaks = mainPart.Document.Descendants<Break>().ToList();
		foreach (Break b in breaks)
			b.Remove();
		using (Stream stream = File.Create(ArtifactsDir + "Remove page breaks - OpenXML.docx"))
		{
			mainPart.Document.Save(stream);
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

For more information about Aspose.Words features please visit [Remove Page and Section Breaks](https://docs.aspose.com/words/net/working-with-sections/#how-to-remove-page-and-section-breaks).

{{% /alert %}}

