---
title: Add a Watermark
description: "Aspose.Words for .NET allows to add a watermark into a document. NPOI does not provide an opportunity to add a watermark."
type: docs
weight: 90
url: /net/add-watermark/
---

{{% alert color="primary" %}}

**Try online**

You can add a watermark online by using the [Watermark Maker](https://products.aspose.app/words/watermark) tool.

{{% /alert %}}

{{% alert color="primary" %}}

See more details in the ["Working with Watermark"](https://docs.aspose.com/words/net/working-with-watermark/) article.

{{% /alert %}} 

Sometimes you need to insert a watermark into a document, for instance, if you would like to print a draft document or mark it as confidential.

In Microsoft Word, you can quickly insert a watermark using the Insert Watermark option. Not multiple people using this command realize that such “watermark” is just a shape with text inserted into a header or footer and positioned in the centre of the page.

While in Aspose.Words there is no single “Insert Watermark” command like in Microsoft Word, it is very easy to insert any shape or image into a header or footer and thus create a watermark of any imaginable type.

The following code example shows how to work with watermarks using Aspose.Words:

{{< highlight csharp >}}
static void Main(string[] args)
{
	Document doc = new Document("../../data/document.doc");
	string watermarkText = "Aspose.Words for .NET";

	// Create a watermark shape. This will be a WordArt shape.
	// You are free to try other shape types as watermarks.
	Shape watermark = new Shape(doc, ShapeType.TextPlainText);
	
	// Set up the text of the watermark.
	watermark.TextPath.Text = watermarkText;
	watermark.TextPath.FontFamily = "Arial";
	watermark.Width = 500;
	watermark.Height = 100;
	
	// Text will be directed from the bottom-left to the top-right corner.
	watermark.Rotation = -40;
	
	// Remove the following two lines if you need a solid black text.
	watermark.Fill.Color = System.Drawing.Color.Gray;
 // Try LightGray to get more Word-style watermark
	watermark.StrokeColor = System.Drawing.Color.Gray;
 // Try LightGray to get more Word-style watermark
	// Place the watermark in the page center.
	watermark.RelativeHorizontalPosition = RelativeHorizontalPosition.Page;
	watermark.RelativeVerticalPosition = RelativeVerticalPosition.Page;
	watermark.WrapType = WrapType.None;
	watermark.VerticalAlignment = VerticalAlignment.Center;
	watermark.HorizontalAlignment = HorizontalAlignment.Center;

	// Create a new paragraph and append the watermark to this paragraph.
	Paragraph watermarkPara = new Paragraph(doc);
	watermarkPara.AppendChild(watermark);
	
	// Insert the watermark into all headers of each document section.
	foreach (Section sect in doc.Sections)
	{
		// There could be up to three different headers in each section, since we want
		// the watermark to appear on all pages, insert into all headers.
		insertWatermarkIntoHeader(watermarkPara, sect, HeaderFooterType.HeaderPrimary);
		insertWatermarkIntoHeader(watermarkPara, sect, HeaderFooterType.HeaderFirst);
		insertWatermarkIntoHeader(watermarkPara, sect, HeaderFooterType.HeaderEven);
	}
	doc.Save("waterMarks.doc");
}
static void insertWatermarkIntoHeader(Paragraph watermarkPara, Section sect, HeaderFooterType headerType)
{
	HeaderFooter header = sect.HeadersFooters[headerType];
	if (header == null)
	{
		// There is no header of the specified type in the current section, create it.
		header = new HeaderFooter(sect.Document, headerType);
		sect.HeadersFooters.Add(header);
	}

	// Insert a clone of the watermark into the header.
	header.AppendChild(watermarkPara.Clone(true));
}
{{< /highlight >}}

See also:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Add.Watermark.Aspose.Words.zip) for running code
