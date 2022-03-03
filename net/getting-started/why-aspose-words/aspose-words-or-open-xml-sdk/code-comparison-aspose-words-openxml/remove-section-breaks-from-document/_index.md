---
title: Remove Section Breaks from a Document
second_title: Aspose.Words for .NET
articleTitle: Remove Section Breaks from a Document
linktitle: Remove Section Breaks from a Document
description: "Remove section breaks from a document easily and fast instead of using Open XML SDK in C#."
type: docs
weight: 170
url: /net/remove-section-breaks-from-document/
---

On this page we will look at how to remove section breaks from a document using Aspose.Words or Open XML SDK.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

In Aspose.Words, use the [SectionBreak](https://apireference.aspose.com/words/net/aspose.words/controlchar/fields/sectionbreak) field of the [ControlChar](https://apireference.aspose.com/words/net/aspose.words/controlchar) class to find all section breaks.

The following code example shows how to remove page breaks from a document:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Remove section breaks.docx");
// Loop through all sections starting from the section that precedes the last one 
for (int i = doc.Sections.Count - 2; i >= 0; i--)
{
	// Copy the content of the current section to the beginning of the last section.
	doc.LastSection.PrependContent(doc.Sections[i]);
	// Remove the copied section.
	doc.Sections[i].Remove();
}
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

The following code example shows how to remove section breaks from a document:

{{< highlight csharp >}}
public void RemoveSectionBreaksFeature()
{
	using (WordprocessingDocument myDoc = WordprocessingDocument.Open(MyDir + "Remove section breaks.docx", true))
	{
		MainDocumentPart mainPart = myDoc.MainDocumentPart;
		List<ParagraphProperties> paraProps = mainPart.Document.Descendants<ParagraphProperties>()
			.Where(IsSectionProps).ToList();
		foreach (ParagraphProperties pPr in paraProps)
			pPr.RemoveChild(pPr.GetFirstChild<SectionProperties>());
		using (Stream stream = File.Create(ArtifactsDir + "Remove section breaks - OpenXML.docx"))
		{
			mainPart.Document.Save(stream);
		}
	}
}
private static bool IsSectionProps(ParagraphProperties pPr)
{
	SectionProperties sectPr = pPr.GetFirstChild<SectionProperties>();
	if (sectPr == null)
		return false;
		return true;
}
{{< /highlight >}}

{{< /tab >}}

{{< /tabs >}}

{{< /nosnippet >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20OpenXML%20Words/Aspose.Words%20VS%20OpenXML).

{{% /alert %}}

{{% alert color="primary" %}}

For more information about Aspose.Words features please visit [Remove Page and Section Breaks](/words/net/working-with-sections/#how-to-remove-page-and-section-breaks).

{{% /alert %}}
