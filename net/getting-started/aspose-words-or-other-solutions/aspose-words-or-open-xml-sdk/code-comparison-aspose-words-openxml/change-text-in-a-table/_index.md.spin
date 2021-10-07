---
title: Change Text in a Table
description: "Aspose.Words for .NET {allows|enables} you to change text in a table easily and fast instead of using Open XML SDK."
type: docs
weight: 110
url: /net/change-text-in-a-table/
---

On this page we will look at how to change text in a table using Aspose.Words or Open XML SDK.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

In Aspose.Words text in a table can be normally changed using the [Range.Replace](https://apireference.aspose.com/words/net/aspose.words.range/replace/methods/1) method.

The following code example {shows|demonstrates} how to change text in a table:

{{< highlight csharp >}}
public void ChangeTextInATableFeature()
{
	Document doc = new Document(MyDir + "Change text in a table.docx");
	// Get the first table in the document.
	Table table = (Table)doc.GetChild(NodeType.Table, 0, true);
	// Replace any instances of our string in the last cell of the table only.
	FindReplaceOptions options = new FindReplaceOptions
	{
		MatchCase = true, 
		FindWholeWordsOnly = true
	};
	table.Rows[1].Cells[2].Range.Replace("Mr", "test", options);
	doc.Save(ArtifactsDir + "Change text in a table - Aspose.Words.docx");
}
{{< /highlight >}}

{{< /tab >}}

{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

Following are the namespaces we need to add:

{{< highlight csharp >}}
using System.Linq;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using NUnit.Framework;
{{< /highlight >}}

The following code example {shows|demonstrates} how to change text in a table:

{{< highlight csharp >}}
public void ChangeTextInATableFeature()
{
	// Use the file name and path passed in as an argument to 
	// open an existing document.            
	using (WordprocessingDocument doc =
	WordprocessingDocument.Open(MyDir + "Change text in a table.docx", true))
	{
		// Find the first table in the document.
		Table table =
		doc.MainDocumentPart.Document.Body.Elements<Table>().First();
		// Find the second row in the table.
		TableRow row = table.Elements<TableRow>().ElementAt(1);
		// Find the third cell in the row.
		TableCell cell = row.Elements<TableCell>().ElementAt(2);
		// Find the first paragraph in the table cell.
		Paragraph p = cell.Elements<Paragraph>().First();
		// Find the first run in the paragraph.
		Run r = p.Elements<Run>().First();
		// Set the text for the run.
		Text t = r.Elements<Text>().First();
		t.Text = "The text from the OpenXML API example";
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

For more information about Aspose.Words features please visit [Working with Tables](https://docs.aspose.com/words/net/working-with-tables/).

{{% /alert %}}