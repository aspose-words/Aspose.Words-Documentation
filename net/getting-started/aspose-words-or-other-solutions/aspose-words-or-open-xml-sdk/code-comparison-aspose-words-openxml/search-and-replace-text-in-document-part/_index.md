---
title: Find and Replace Text in a Document Part
description: "Aspose.Words for .NET allows you to find and replace text from a document part easily and fast instead of using Open XML SDK."
type: docs
weight: 140
url: /net/search-and-replace-text-in-document-part/
---

On this page we will look at how to find and replace text from a document part using Aspose.Words or Open XML SDK.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

In Aspose.Words, use the [Replace](https://apireference.aspose.com/words/net/aspose.words/range/methods/replace/index) method to find and replace text.

The following code example shows how to find and replace text from a document part:

{{< highlight csharp >}}
public static void SearchAndReplaceTextFeature()
{
	Document doc = new Document(MyDir + "Search and replace text.docx");
	Regex regex = new Regex("Hello World!", RegexOptions.IgnoreCase);
	doc.Range.Replace(regex, "Hi Everyone!");
	doc.Save(ArtifactsDir + "Search and replace text - Aspose.Words.docx");
}
{{< /highlight >}}

{{< /tab >}}

{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

Following are the namespaces we need to add:

{{< highlight csharp >}}
using System.IO;
using System.Text.RegularExpressions;
using DocumentFormat.OpenXml.Packaging;
using NUnit.Framework;
{{< /highlight >}}

The following code example shows how to find and replace text from a document part:

{{< highlight csharp >}}
public static void SearchAndReplaceTextFeature()
{
	using (WordprocessingDocument wordDoc = WordprocessingDocument.Open(MyDir + "Search and replace text.docx", true))
	{
		string docText;
		using (StreamReader sr = new StreamReader(wordDoc.MainDocumentPart.GetStream()))
		{
			docText = sr.ReadToEnd();
		}
		Regex regexText = new Regex("Hello world!");
		docText = regexText.Replace(docText, "Hi Everyone!");
		using (StreamWriter sw = new StreamWriter(File.Create(ArtifactsDir + "Search and replace text - OpenXML.docx")))
		{
			sw.Write(docText);
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

For more information about Aspose.Words features please visit [Find and Replace](https://docs.aspose.com/words/net/find-and-replace/).

{{% /alert %}}
