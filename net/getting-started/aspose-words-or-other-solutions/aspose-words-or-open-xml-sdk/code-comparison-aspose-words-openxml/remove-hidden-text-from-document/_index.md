---
title: Remove Hidden Text from Document
description: "Aspose.Words for .NET enables you to remove hidden text from a document easily and fast instead of using Open XML SDK."
type: docs
weight: 150
url: /net/remove-hidden-text-from-document/
---

On this page we will look at how to remove hidden text from a document using Aspose.Words or Open XML SDK.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

In Aspose.Words, use the [ParagraphBreakFont](https://apireference.aspose.com/words/net/aspose.words/paragraph/properties/paragraphbreakfont) and the [Hidden](https://apireference.aspose.com/words/net/aspose.words/font/properties/hidden) properties to find all hidden text.

The following code example shows how to remove hidden text from a Word Document:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Remove hidden text.docx");
foreach (Paragraph par in doc.GetChildNodes(NodeType.Paragraph, true))
{
	par.ParagraphBreakFont.Hidden = false;
	foreach (Run run in par.GetChildNodes(NodeType.Run, true))
	{
		if (run.Font.Hidden)
		run.Font.Hidden = false;
	}
}
doc.Save(ArtifactsDir + "Remove hidden text - Aspose.Words.docx");
{{< /highlight >}}

{{< /tab >}}

{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

Following are the namespaces we need to add:

{{< highlight csharp >}}
using System.IO;
using System.Xml;
using DocumentFormat.OpenXml.Packaging;
using NUnit.Framework;
{{< /highlight >}}

The following code example shows how to remove hidden text from a Word document:

{{< highlight csharp >}}
public void RemoveHiddenTextFeature()
{
	const string wordmlNamespace = "http://schemas.openxmlformats.org/wordprocessingml/2006/main";
	using (WordprocessingDocument wdDoc = WordprocessingDocument.Open(MyDir + "Remove hidden text.docx", true))
	{
		// Manage namespaces to perform XPath queries.
		NameTable nt = new NameTable();
		XmlNamespaceManager nsManager = new XmlNamespaceManager(nt);
		nsManager.AddNamespace("w", wordmlNamespace);
		// Get the document part from the package.
		// Load the XML in the document part into an XmlDocument instance.
		XmlDocument xdoc = new XmlDocument(nt);
		xdoc.Load(wdDoc.MainDocumentPart.GetStream());
		XmlNodeList hiddenNodes = xdoc.SelectNodes("//w:vanish", nsManager);
		foreach (XmlNode hiddenNode in hiddenNodes)
		{
			XmlNode topNode = hiddenNode.ParentNode.ParentNode;
			XmlNode topParentNode = topNode.ParentNode;
			topParentNode.RemoveChild(topNode);
			if (!(topParentNode.HasChildNodes))
				topParentNode.ParentNode.RemoveChild(topParentNode);
		}
		using (Stream stream = File.Create(ArtifactsDir + "Remove hidden text - OpenXML.docx"))
		{
			xdoc.Save(stream);
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
