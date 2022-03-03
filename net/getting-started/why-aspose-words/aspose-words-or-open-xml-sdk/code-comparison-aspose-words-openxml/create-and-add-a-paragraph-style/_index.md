---
title: Create and Add a Paragraph Style
second_title: Aspose.Words for .NET
articleTitle: Create and Add a Paragraph Style
linktitle: Create and Add a Paragraph Style
description: "Create and add a paragraph style easily and fast instead of using Open XML SDK in C#."
type: docs
weight: 120
url: /net/create-and-add-a-paragraph-style/
---

On this page we will look at how to create and add a paragraph style.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

In Aspose.Words, you can specify a paragraph style using the [Font](https://apireference.aspose.com/words/net/aspose.words/font) class.

The following code example shows how to create and add a paragraph style:

{{< highlight csharp >}}
// Open the new document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
// Set font formatting properties
doc.Styles.Add(StyleType.Paragraph, "MyStyle");
Font font = builder.Font;
font.Bold = true;
font.Color = System.Drawing.Color.Red;
font.Italic = true;
font.Name = "Arial";
font.Size = 24;
font.Spacing = 5;
font.Underline = Underline.Double;
// Output formatted text.
builder.ParagraphFormat.Style = doc.Styles["MyStyle"];
builder.MoveToDocumentEnd();
builder.Writeln("I'm a very nice formatted string.");
doc.Save("ParagraphStyle.docx");
{{< /highlight >}}

{{< /tab >}}

{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

Following are the namespaces we need to add:

{{< highlight csharp >}}
using System.Linq;
using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using NUnit.Framework;
{{< /highlight >}}

The following code example shows how to create and add a paragraph style:

{{< highlight csharp >}}
public void CreateAndAddAParagraphStyleFeature()
{
	using (WordprocessingDocument doc =
		WordprocessingDocument.Create(ArtifactsDir + "Create and add a paragraph style - OpenXML.docx",
			WordprocessingDocumentType.Document))
	{
		// Get the Styles part for this document.
		// If the Styles part does not exist: add the styles part, and then add the style.
		StyleDefinitionsPart part =
			doc.MainDocumentPart.StyleDefinitionsPart ?? AddStylesPartToPackage(doc);
		// Set up a variable to hold the style ID.
		string parastyleId = "OverdueAmountPara";
		// Create and add a paragraph style to the specified styles part 
		// with the specified style ID, style name, and aliases.
		AddParagraphStyle(part,
			parastyleId,
			"Overdue Amount Para",
			"Late Due, Late Amount");
		// Add a paragraph with a run and some text.
		Paragraph p =
			new Paragraph(
				new Run(
					new Text("This is some text in a run in a paragraph.")));
		// Add the paragraph as a child element of the w:body element.
		doc.MainDocumentPart.Document.Body.AppendChild(p);
		// If the paragraph has no ParagraphProperties object, then create one.
		if (!p.Elements<ParagraphProperties>().Any())
		{
			p.PrependChild(new ParagraphProperties());
		}
		// Get a reference to the ParagraphProperties object.
		ParagraphProperties pPr = p.ParagraphProperties;
		// If a ParagraphStyleId object doesn't exist, then create one.
		if (pPr.ParagraphStyleId == null)
			pPr.ParagraphStyleId = new ParagraphStyleId();
		pPr.ParagraphStyleId.Val = parastyleId;
	}
}
// Create a new paragraph style with the specified style ID, primary style name, and aliases.
// Add it to the specified style definitions part.
public static void AddParagraphStyle(StyleDefinitionsPart styleDefinitionsPart,
string styleid, string stylename, string aliases = "")
{
	// Access the root element of the styles part.
	Styles styles = styleDefinitionsPart.Styles;
	if (styles == null)
	{
		styleDefinitionsPart.Styles = new Styles();
		styleDefinitionsPart.Styles.Save();
	}
	// Create a new paragraph style element and specify some of the attributes.
	Style style = new Style
	{
		Type = StyleValues.Paragraph,
		StyleId = styleid,
		CustomStyle = true,
		Default = false
	};
	// Create and add the child elements (properties of the style).
	Aliases aliases1 = new Aliases { Val = aliases };
	AutoRedefine autoredefine1 = new AutoRedefine { Val = OnOffOnlyValues.Off };
	BasedOn basedon1 = new BasedOn { Val = "Normal" };
	LinkedStyle linkedStyle1 = new LinkedStyle { Val = "OverdueAmountChar" };
	Locked locked1 = new Locked { Val = OnOffOnlyValues.Off };
	PrimaryStyle primarystyle1 = new PrimaryStyle { Val = OnOffOnlyValues.On };
	StyleHidden stylehidden1 = new StyleHidden { Val = OnOffOnlyValues.Off };
	SemiHidden semihidden1 = new SemiHidden { Val = OnOffOnlyValues.Off };
	StyleName styleName1 = new StyleName { Val = stylename };
	NextParagraphStyle nextParagraphStyle1 = new NextParagraphStyle { Val = "Normal" };
	UIPriority uipriority1 = new UIPriority { Val = 1 };
	UnhideWhenUsed unhidewhenused1 = new UnhideWhenUsed { Val = OnOffOnlyValues.On };
	if (aliases != "")
		style.Append(aliases1);
	style.Append(autoredefine1);
	style.Append(basedon1);
	style.Append(linkedStyle1);
	style.Append(locked1);
	style.Append(primarystyle1);
	style.Append(stylehidden1);
	style.Append(semihidden1);
	style.Append(styleName1);
	style.Append(nextParagraphStyle1);
	style.Append(uipriority1);
	style.Append(unhidewhenused1);
	// Create the StyleRunProperties object and specify some of the run properties.
	StyleRunProperties styleRunProperties1 = new StyleRunProperties();
	Bold bold1 = new Bold();
	Color color1 = new Color { ThemeColor = ThemeColorValues.Accent2 };
	RunFonts font1 = new RunFonts { Ascii = "Lucida Console" };
	Italic italic1 = new Italic();
	// Specify a 12 point size.
	FontSize fontSize1 = new FontSize { Val = "24" };
	styleRunProperties1.Append(bold1);
	styleRunProperties1.Append(color1);
	styleRunProperties1.Append(font1);
	styleRunProperties1.Append(fontSize1);
	styleRunProperties1.Append(italic1);
	// Add the run properties to the style.
	style.Append(styleRunProperties1);
	// Add the style to the styles part.
	styles.Append(style);
}
// Add a StylesDefinitionsPart to the document.
public static StyleDefinitionsPart AddStylesPartToPackage(WordprocessingDocument doc)
{
	Styles root = new Styles();
	var part = doc.MainDocumentPart.AddNewPart<StyleDefinitionsPart>();
	root.Save(part);
	return part;
}
{{< /highlight >}}

{{< /tab >}}

{{< /tabs >}}

{{< /nosnippet >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20OpenXML%20Words/Aspose.Words%20VS%20OpenXML).

{{% /alert %}}

{{% alert color="primary" %}}

For more information about Aspose.Words features please visit [Working with Paragraphs](/words/net/working-with-paragraphs/).

{{% /alert %}}
