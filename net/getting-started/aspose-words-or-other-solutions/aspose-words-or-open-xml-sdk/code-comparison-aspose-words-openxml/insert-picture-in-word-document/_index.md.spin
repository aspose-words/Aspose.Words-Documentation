---
title: Insert Image into a Word document
description: "Aspose.Words for .NET {allows|enables} you to insert image into a Word document easily and fast instead of using Open XML SDK."
type: docs
weight: 80
url: /net/insert-picture-in-word-document/
---

On this page we will look at how to insert images into a Word document using Aspose.Words or Open XML SDK.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

[DocumentBuilder](https://apireference.aspose.com/words/net/aspose.words/documentbuilder) is a powerful class that is associated with a [Document](https://apireference.aspose.com/words/net/aspose.words/document) and allows to build a dynamic document from scratch or  add new elements to an existing document. It provides methods to insert text, paragraphs, lists, tables, images, and other contents, as well as specification of font, paragraph, section formatting, and other things.

The DocumentBuilder complements classes and methods available in the Aspose.Words Document Object Model (DOM) to simplify the most common document building tasks such as inserting text, tables, fields, and hyperlinks.

The following code example {shows|demonstrates} how to insert an image into a document at a specified position and size:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

{{< /tab >}}

{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

Following are the namespaces we need to add:

{{< highlight csharp >}}
using System.IO;
using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
using NUnit.Framework;
using A = DocumentFormat.OpenXml.Drawing;
using DW = DocumentFormat.OpenXml.Drawing.Wordprocessing;
using Paragraph = DocumentFormat.OpenXml.Wordprocessing.Paragraph;
using PIC = DocumentFormat.OpenXml.Drawing.Pictures;
using Run = DocumentFormat.OpenXml.Wordprocessing.Run;
{{< /highlight >}}

The following code example {shows|demonstrates} how to insert image into a body part of a Word document using the main function **InsertAPicture** and then a sub function **AddImageToBody**.

{{< highlight csharp >}}
public static void InsertPictureInWordDocumentFeature()
{
	using (WordprocessingDocument wordprocessingDocument =
		WordprocessingDocument.Create(ArtifactsDir + "Insert picture - OpenXML.docx",
			WordprocessingDocumentType.Document))
	{
		MainDocumentPart mainPart = wordprocessingDocument.MainDocumentPart;
		ImagePart imagePart = mainPart.AddImagePart(ImagePartType.Jpeg);
		using (FileStream stream = new FileStream(MyDir + "Aspose.Words.png", FileMode.Open))
		{
			imagePart.FeedData(stream);
		}
		AddImageToBody(wordprocessingDocument, mainPart.GetIdOfPart(imagePart));
	}
}
private static void AddImageToBody(WordprocessingDocument wordDoc, string relationshipId)
{
	// Define the reference of the image.
	var element =
		new Drawing(
			new DW.Inline(
				new DW.Extent { Cx = 990000L, Cy = 792000L },
				new DW.EffectExtent
				{
					LeftEdge = 0L,
					TopEdge = 0L,
					RightEdge = 0L,
					BottomEdge = 0L
				},
				new DW.DocProperties
				{
					Id = 1U,
					Name = "Picture 1"
				},
				new DW.NonVisualGraphicFrameDrawingProperties(
					new A.GraphicFrameLocks { NoChangeAspect = true }),
				new A.Graphic(
					new A.GraphicData(
						new PIC.Picture(
							new PIC.NonVisualPictureProperties(
								new PIC.NonVisualDrawingProperties
								{
									Id = 0U,
									Name = "New Bitmap Image.jpg"
								},
								new PIC.NonVisualPictureDrawingProperties()),
							new PIC.BlipFill(
								new A.Blip(
									new A.BlipExtensionList(
										new A.BlipExtension
											{
												Uri =
													"{28A0092B-C50C-407E-A947-70E740481C1C}"
											})
											)
											{
												Embed = relationshipId,
												CompressionState =
												A.BlipCompressionValues.Print
											},
											new A.Stretch(
												new A.FillRectangle())),
										new PIC.ShapeProperties(
											new A.Transform2D(
												new A.Offset { X = 0L, Y = 0L },
												new A.Extents { Cx = 990000L, Cy = 792000L }),
											new A.PresetGeometry(
												new A.AdjustValueList()
											) { Preset = A.ShapeTypeValues.Rectangle }))
					) { Uri = "http://schemas.openxmlformats.org/drawingml/2006/picture" })
		)
		{
			DistanceFromTop = 0U,
			DistanceFromBottom = 0U,
			DistanceFromLeft = 0U,
			DistanceFromRight = 0U,
			EditId = "50D07946"
		});
	// Append the reference to body, the element should be in a Run.
	wordDoc.MainDocumentPart.Document.Body.AppendChild(new Paragraph(new Run(element)));
}
{{< /highlight >}}

{{< /tab >}}

{{< /tabs >}}

{{< /nosnippet >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20OpenXML%20Words/Aspose.Words%20VS%20OpenXML).

{{% /alert %}}

{{% alert color="primary" %}} 

For more information about Aspose.Words features please visit [Working with Images](/words/net/working-with-images/).

{{% /alert %}}