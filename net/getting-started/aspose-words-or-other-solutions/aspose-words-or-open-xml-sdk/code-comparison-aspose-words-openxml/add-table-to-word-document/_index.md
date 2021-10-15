---
title: Add Table to Word Document
description: "Aspose.Words for .NET allows you to add a table to a Word document easily and fast instead of using Open XML SDK."
type: docs
weight: 100
url: /net/add-table-to-word-document/
---

On this page we will look at how to add a table to a document in a Word format using Aspose.Words or Open XML SDK.

{{< nosnippet >}}
{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}
{{< tab tabNum="1" >}}

In Aspose.Words a table is normally inserted using [DocumentBuilder](https://apireference.aspose.com/words/net/aspose.words/documentbuilder). Use its methods to build a table and insert content into table cells, for example, the following:

- [StartTable](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/starttable)
- [InsertCell](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/insertcell)
- [EndRow](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/endrow)
- [EndTable](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/endtable)
- Writeln

The following code example demonstrates how to add a table to a document:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
// Start the table, then populate the first row with two cells.
builder.StartTable();
builder.InsertCell();
builder.Write("Row 1, Cell 1.");
builder.InsertCell();
builder.Write("Row 1, Cell 2.");
// Call the builder's "EndRow" method to start a new row.
builder.EndRow();
builder.InsertCell();
builder.Write("Row 2, Cell 1.");
builder.InsertCell();
builder.Write("Row 2, Cell 2.");
builder.EndTable();
// Save the document.
doc.Save("CreateTable.docx");
{{< /highlight >}}

{{< /tab >}}
{{< tab tabNum="2" >}}

Below are the namespaces for use:

{{< highlight csharp >}}
using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using NUnit.Framework;
{{< /highlight >}}

The basic document structure of a **WordProcessingML** document consists of the document and body elements, followed by one or more block level elements such as p, which represents a paragraph. A paragraph contains one or more r elements. The r stands for run, which is a region of text with a common set of properties, such as formatting. A run contains one or more t elements. The t element contains a range of text.

To create this structure this function **CreateWordprocessingDocument** is used in below code. By using **AddTable** function we can add table to word document by passing filename and data string.

The following code example demonstrates how to add a table to a document:

{{< highlight csharp >}}
public void AddTableFeature()
{
	string[,] data = {{"Mike", "Amy"}, {"Mary", "Albert"}};
	using (WordprocessingDocument wordDocument =
	WordprocessingDocument.Create(ArtifactsDir + "Add Table - OpenXML.docx",
	WordprocessingDocumentType.Document))
	{
		MainDocumentPart mainPart = wordDocument.AddMainDocumentPart();
		mainPart.Document = new Document();
		Body body = mainPart.Document.AppendChild(new Body());
		Paragraph para = body.AppendChild(new Paragraph());
		Run run = para.AppendChild(new Run());
		run.AppendChild(new Text("Create text in body - Create wordprocessing document"));
		Table table = new Table();
		TableProperties props = new TableProperties(
			new TableBorders(
				new TopBorder
		{
			Val = new EnumValue<BorderValues>(BorderValues.Single),
			Size = 12
		},
		new BottomBorder
		{
			Val = new EnumValue<BorderValues>(BorderValues.Single),
			Size = 12
		},
		new LeftBorder
		{
			Val = new EnumValue<BorderValues>(BorderValues.Single),
			Size = 12
		},
		new RightBorder
		{
			Val = new EnumValue<BorderValues>(BorderValues.Single),
			Size = 12
		},
		new InsideHorizontalBorder
		{
			Val = new EnumValue<BorderValues>(BorderValues.Single),
			Size = 12
		},
		new InsideVerticalBorder
		{
			Val = new EnumValue<BorderValues>(BorderValues.Single),
			Size = 12
		}));
		table.AppendChild(props);
		for (var i = 0; i <= data.GetUpperBound(0); i++)
		{
			var tr = new TableRow();
			for (var j = 0; j <= data.GetUpperBound(1); j++)
			{
				var tc = new TableCell();
				tc.Append(new Paragraph(new Run(new Text(data[i, j]))));
				// Assume you want automatically sized columns.
				tc.Append(new TableCellProperties(
				new TableCellWidth {Type = TableWidthUnitValues.Auto}));
				tr.Append(tc);
			}
			table.Append(tr);
		}
		mainPart.Document.Body.Append(table);
		mainPart.Document.Save();
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
