---
title: Extract Image from Word Document – Aspose.Words for .NET
articleTitle: Extract Image from Word Document
linktitle: Extract Image from Word Document
description: "Aspose.Words for .NET allows you to extract image from a document easily and fast instead of using Open XML SDK."
type: docs
weight: 90
url: /net/extract-image-from-word-document/
---

On this page we will look at how to extract image from a document using Aspose.Words or Open XML SDK.

{{< nosnippet >}}

{{< tabs tabTotal="2" tabID="1" tabName1="Aspose.Words" tabName2="Open XML SDK" >}}

{{< tab tabNum="1" >}}

In Aspose.Words, use the [Shape](https://apireference.aspose.com/words/net/aspose.words.drawing/shape) class to work with images. To select all shape nodes use the [GetChildNodes](https://apireference.aspose.com/words/net/aspose.words/compositenode/methods/getchildnodes) method and to extract image data use the [ImageData](https://apireference.aspose.com/words/net/aspose.words.drawing/shape/properties/imagedata) property.

The following code example shows how to extract images from a document and save them as files:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Extract image.docx");
// Save the document to memory and reload it.
using (MemoryStream stream = new MemoryStream())
{
	doc.Save(stream, SaveFormat.Doc);
	Document doc2 = new Document(stream);
	// "Shape" nodes that have the "HasImage" flag set contain and display images.
	IEnumerable<Shape> shapes = doc2.GetChildNodes(NodeType.Shape, true)
		.OfType<Shape>().Where(s => s.HasImage);
	int imageIndex = 0;
	foreach (Shape shape in shapes)
	{
		string imageFileName =
			$"Image.ExportImages.{imageIndex}_Aspose.Words_{FileFormatUtil.ImageTypeToExtension(shape.ImageData.ImageType)}";
		shape.ImageData.Save(ArtifactsDir + imageFileName);
		imageIndex++;
	}
}
{{< /highlight >}}

{{< /tab >}}

{{< tab tabNum="2" >}}

You can also do the same using the Open XML SDK. At the same time, note that it looks somewhat more complicated and more cumbersome.

Following are the namespaces we need to add:

{{< highlight csharp >}}
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using DocumentFormat.OpenXml.Packaging;
using NUnit.Framework;
{{< /highlight >}}

The following code example shows how to extract images from a document and save them as files:

{{< highlight csharp >}}
public void ExtractImageFromWordDocumentFeature()
{
	using (WordprocessingDocument doc = WordprocessingDocument.Open(MyDir + "Extract image.docx", false))
	{
		int imgCount = doc.MainDocumentPart.GetPartsOfType<ImagePart>().Count();
		if (imgCount > 0)
		{
			List<ImagePart> imgParts = new List<ImagePart>(doc.MainDocumentPart.ImageParts);
			foreach (ImagePart imgPart in imgParts)
			{
				Image img = Image.FromStream(imgPart.GetStream());
				string imgfileName = imgPart.Uri.OriginalString.Substring(imgPart.Uri.OriginalString.LastIndexOf("/") + 1);
				img.Save(ArtifactsDir + imgfileName);
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

For more information about Aspose.Words features please visit [How to Extract Images from a Document](/words/net/working-with-images/#how-to-extract-images-from-a-document).

{{% /alert %}}





