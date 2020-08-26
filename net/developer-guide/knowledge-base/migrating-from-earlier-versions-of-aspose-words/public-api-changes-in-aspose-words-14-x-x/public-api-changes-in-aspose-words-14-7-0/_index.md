---
title: Public API Changes in Aspose.Words 14.7.0
type: docs
weight: 70
url: /net/public-api-changes-in-aspose-words-14-7-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 14.7.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 
### **ImageColorSpaceExportMode Property Added to PdfSaveOptions Class**
Images in PDF document now can be saved in CMYK color space. It is controlled by PdfSaveOptions.ImageColorSpaceExportMode property.

**ImageColorSpaceExportMode**

{{< highlight csharp >}}
/// <summary>
/// Specifies how the color space will be selected for the images in PDF document.
/// </summary>
/// <remarks>
/// The default value is <see cref="PdfImageColorSpaceExportMode.Auto"/>.
/// If <see cref="PdfImageColorSpaceExportMode.SimpleCmyk"/> value is specified,
/// <see cref="ImageCompression"/> option is ignored and
/// Flate compression is used for all images in the document.
/// </remarks>
public PdfImageColorSpaceExportMode ImageColorSpaceExportMode {get;set;}
{{< /highlight >}}

Where PdfImageColorSpaceExportMode is enum:

**PdfImageColorSpaceExportMode**

{{< highlight csharp >}}
/// <summary>
/// Specifies how the color space will be selected for the images in PDF document.
/// </summary>
public enum PdfImageColorSpaceExportMode
{
/// <summary>
/// Aspose.Words automatically selects the most appropriate color space for each image.
/// </summary>
/// <remarks>
/// <para>Most of the images are saved in RGB color space. Also Indexed and Grayscale color spaces may be used. CMYK color space is never used.</para>
/// <para>For some images the color space may be different on different platforms.</para>
/// </remarks>
Auto,
/// <summary>
/// Aspose.Words coverts RGB images to CMYK color space using simple formula.
/// </summary>
/// <remarks>
/// <para>
/// Images in RGB color space are converted to CMYK using formula:
/// Black   = minimum(1-Red,1-Green,1-Blue).
/// Cyan    = (1-Red-Black)/(1-Black).
/// Magenta = (1-Green-Black)/(1-Black).
/// Yellow  = (1-Blue-Black)/(1-Black).
/// RGB values are normalized - they are between 0 and 1.0.
/// </para>
/// </remarks>
SimpleCmyk
}
{{< /highlight >}}

If user wants to save images in PDF in CMYK color space, he should use the code:

**Usage**

{{< highlight csharp >}}
PdfSaveOptions options = new PdfSaveOptions();

// Set CMYK color space for images in the PDF document.
options.ImageColorSpaceExportMode = PdfImageColorSpaceExportMode.SimpleCmyk;
doc.Save("MyDocument.pdf", options);
{{< /highlight >}}

Note that current implementation of CMYK support has some restrictions: JPEG codec is not supported; simple formula for RGB->CMYK conversion is used, no ICC profiles are supported.
### **ShowRevisionMarks, ShowRevisionBars and ShowOriginalRevision Added to Document.LayoutOptions.RevisionOptions Class**
The following three new public members are added to the Document.LayoutOptions.RevisionOptions class

**new options in RevisionOptions**

{{< highlight csharp >}}
/// <summary>
/// Allow to specify whether revision text should be marked with special formatting markup.
/// Default value for this property is <c>true</c>.
/// </summary>
public bool ShowRevisionMarks {get;set;}
/// <summary>
/// Allows to specify whether revision bars should be rendered near lines containing revised content.
/// Default value for this property is <c>true</c>.
/// </summary>
public bool ShowRevisionBars {get;set;}
/// <summary>
/// Allows to specify whether the original text should be shown instead of revised one.
/// Default value for this property is <c>false</c>.
/// </summary>
public bool ShowOriginalRevision {get;set;}
{{< /highlight >}}
### **Priority Property Added to FontSourceBase Class**
Priority property has been added to the FontSourceBase class. This property is used when there are fonts with the same family name and style in different font sources. In this case Aspose.Words selects the font from the source with the higher priority value.

**Usage**

{{< highlight csharp >}}

// Aspose.Words will prefer fonts from "Folder1" over the fonts from "Folder2".
FolderFontSource folder1 = new FolderFontSource("Folder1", false, 2);
FolderFontSource folder2 = new FolderFontSource("Folder2", false, 1);
FontSettings.SetFontsSources(new FontSourceBase[] {folder1, folder2});
{{< /highlight >}}
### **New Public Values Added for ParagraphAlignment Enumeration**
The following new public values are added to ParagraphAlignment Enumeration:

{{< highlight csharp >}}
/// <summary>
/// Arabic only. Kashida length for text is extended to a medium length determined by the consumer.
/// </summary>
ArabicMediumKashida = 5,
/// <summary>
/// Arabic only. Kashida length for text is extended to its widest possible length.
/// </summary>
ArabicHighKashida = 7,
/// <summary>
/// Arabic only. Kashida length for text is extended to a slightly longer length.
/// </summary>
ArabicLowKashida = 8,
/// <summary>
/// Thai only. Text is justified with an optimization for Thai.
/// </summary>
ThaiDistributed = 9
{{< /highlight >}}
