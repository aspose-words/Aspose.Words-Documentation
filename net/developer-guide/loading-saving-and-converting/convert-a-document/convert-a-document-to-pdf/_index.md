---
title: Convert a Document to PDF
description: "Aspose.Words for .NET allows you to convert a document from almost any format to PDF. For example, you can convert a document from Microsoft Word formats, such as DOC or DOCX, or from popular single-page or multi-page image formats, to PDF."
type: docs
weight: 10
url: /net/convert-a-document-to-pdf/
---

The ability to easily and reliably convert documents from one format to another is a key feature of Aspose.Words. One of the most popular formats for converting is PDF – a fixed-layout format, which preserves the original appearance of a document during its rendering on various platforms. The “rendering” term is used in Aspose.Words to describe the process of converting a document into a file format that is paginated or has the concept of pages.

## Convert Word File to PDF {#convert-a-word-document-to-pdf}

Conversion from Word to PDF is a rather complex process that requires multiple stages of calculation. Aspose.Words layout engine mimics the way the Microsoft Word’s page layout engine works, making PDF output documents look as close as possible to what you can see in Microsoft Word.

With Aspose.Words you can programmatically convert a document from Word formats, such as DOC or DOCX, to PDF without using Microsoft Office. This article explains how to perform this conversion.

{{% alert color="primary" %}} 

Note that the number of pages in a document affects the conversion time.

{{% /alert %}} 

### Convert DOC or DOCX to PDF {#converting-doc-or-docx-to-pdf}

Converting from the DOC or DOCX document format into the PDF format in Aspose.Words is very easy and can be accomplished with just two lines of code that:

1. Load your document into a [Document](https://apireference.aspose.com/words/net/aspose.words/document) object using one of its constructors by specifying the document name with its format extension.
1. Invoke one of the [Document.Save](https://apireference.aspose.com/words/net/aspose.words/document/methods/save/index) methods on the **Document** object and specify the desired output format as PDF by entering a file name with the “.PDF” extension.

The following code example demonstrates how to convert a document from DOCX into PDF using the [Save](https://apireference.aspose.com/words/net/aspose.words.document/save/methods/2) method:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Doc2Pdf-Doc2Pdf.cs" >}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}} 

Sometimes it is necessary to specify additional options, which can affect the result of saving a document as a PDF. These options can be specified by the use of the [PdfSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions) class, containing properties that determine how the PDF output will be displayed.

Note that with the same technique, you can convert any flow-layout format document to PDF format.

{{% /alert %}} 

### Convert to Different PDF Standards {#converting-to-various-pdf-standards}

Aspose.Words provides the [PdfCompliace ](https://apireference.aspose.com/words/net/aspose.words.saving/pdfcompliance)enumeration to support the conversion of DOC or DOCX into various PDF format standards (such as PDF 1.7, PDF 1.5, etc.).

The following code example shows how to convert a document to PDF 1.7 using [PdfSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions) with compliance to PDF17:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ConversionToPDF17.cs" >}}

## Convert Images to PDF {#convert-an-image-to-pdf}

Converting to PDF is not restricted by Microsoft Word document formats. Any format supported by Aspose.Words, including programmatically created, can also be converted to PDF. For example, we can convert single-page images, such as JPEG, PNG, BMP, EMF, or WMF, as well as multi-page images, such as TIFF and GIF, to PDF.

The following code example demonstrates how to convert JPEG and TIFF images to PDF:

**.NET**

{{< highlight csharp >}}

// Convert image in a specified format to PDF.
ConvertImageToPdf(dataDir + "Test.jpg", dataDir + "TestJpg_out.pdf");
ConvertImageToPdf(dataDir + "Test.tiff", dataDir + "TestTif_out.pdf");
{{< /highlight >}}

**.NET**

{{< highlight csharp >}}
public void ConvertImageToPdf(string inputFileName, string outputFileName)
{
	// Create Document and DocumentBuilder.
	// The builder makes it simple to add content to the document.
	Document doc = new Document();
	DocumentBuilder builder = new DocumentBuilder(doc);

	// Read the image from file, ensure it is disposed.
	using (Image image = Image.FromFile(inputFileName))
	{
		// Find which dimension the frames in this image represent. For example
	    // The frames of a BMP or TIFF are "page dimension" whereas frames of a GIF image are "time dimension". 
	    FrameDimension dimension = new FrameDimension(image.FrameDimensionsList[0]);
	
	    // Get the number of frames in the image.
	    int framesCount = image.GetFrameCount(dimension);
	
	    // Loop through all frames.
		for (int frameIdx = 0; frameIdx < framesCount; frameIdx++)
		{
	    	// Insert a section break before each new page, in case of a multi-frame TIFF.
	        if (frameIdx != 0)
	        	builder.InsertBreak(BreakType.SectionBreakNewPage);
	
	    	// Select active frame.
	    	image.SelectActiveFrame(dimension, frameIdx);
	
	        // We want the size of the page to be the same as the size of the image.
		    // Convert pixels to points to size the page to the actual image size.
	    	PageSetup ps = builder.PageSetup;
	    	ps.PageWidth = ConvertUtil.PixelToPoint(image.Width, image.HorizontalResolution);
	        ps.PageHeight = ConvertUtil.PixelToPoint(image.Height, image.VerticalResolution);
	
	        // Insert the image into the document and position it at the top left corner of the page.
		    builder.InsertImage(
	    	    image,
	            RelativeHorizontalPosition.Page,
	            0,
		        RelativeVerticalPosition.Page,
	    	    0,
	        	ps.PageWidth,
	 	       	ps.PageHeight,
	 	       	WrapType.None);
		}
	}
	
	// Save the document to PDF.
	doc.Save(outputFileName);
}
{{< /highlight >}}

To make this code work, you need to add references to Aspose.Words and System.Drawing to your project.

## See Also

- The article [“Rendering"](/words/net/rendering/) for more information on the fixed-page and flow-layout formats
- The article ["Converting to Fixed-page Format"](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) for more information on the page layout
- The article ["Specify Rendering Options When Converting to PDF"](/words/net/specify-rendering-options-when-converting-to-pdf/) for more information on using the PdfSaveOptions class
