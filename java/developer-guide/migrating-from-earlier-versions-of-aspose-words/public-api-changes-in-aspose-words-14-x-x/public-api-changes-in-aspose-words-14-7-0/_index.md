---
title: Public API Changes in Aspose.Words 14.7.0
type: docs
weight: 70
url: /java/public-api-changes-in-aspose-words-14-7-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 14.7.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## **ImageColorSpaceExportMode Property Added to PdfSaveOptions Class**

Images in PDF document now can be saved in CMYK color space. It is controlled by PdfSaveOptions.ImageColorSpaceExportMode property.

**ImageColorSpaceExportMode**

{{< highlight csharp >}}
/** 
 Specifies how the color space will be selected for the images in PDF document.
 The default value is <see cref="PdfImageColorSpaceExportMode.Auto"/>.
 If <see cref="PdfImageColorSpaceExportMode.SimpleCmyk"/> value is specified,
 <see cref="ImageCompression"/> option is ignored and
 Flate compression is used for all images in the document.
*/
public final PdfImageColorSpaceExportMode getImageColorSpaceExportMode();
public final void setImageColorSpaceExportMode(PdfImageColorSpaceExportMode value);
{{< /highlight >}}

Where PdfImageColorSpaceExportMode is enum:

**PdfImageColorSpaceExportMode**

{{< highlight csharp >}}
/** 
 Specifies how the color space will be selected for the images in PDF document.
*/
public enum PdfImageColorSpaceExportMode
{
/** 
 Aspose.Words automatically selects the most appropriate color space for each image.
 <p>Most of the images are saved in RGB color space. Also Indexed and Grayscale color spaces may be used. CMYK color space is never used.</p>
 <p>For some images the color space may be different on different platforms.</p>
*/
Auto(0),
/** 
 Aspose.Words coverts RGB images to CMYK color space using simple formula.
 <p>
 Images in RGB color space are converted to CMYK using formula:
 Black   = minimum(1-Red,1-Green,1-Blue).
 Cyan    = (1-Red-Black)/(1-Black).
 Magenta = (1-Green-Black)/(1-Black).
 Yellow  = (1-Blue-Black)/(1-Black).
 RGB values are normalized - they are between 0 and 1.0.
 </p>
*/
SimpleCmyk(1);
}
{{< /highlight >}}

If user wants to save images in PDF in CMYK color space, he should use the code:

**Usage**

{{< highlight csharp >}}
PdfSaveOptions options = new PdfSaveOptions();

// Set CMYK color space for images in the PDF document.
options.setImageColorSpaceExportMode(PdfImageColorSpaceExportMode.SIMPLE_CMYK);
doc.save("MyDocument.pdf", options);
{{< /highlight >}}

Note that current implementation of CMYK support has some restrictions: JPEG codec is not supported; simple formula for RGB->CMYK conversion is used, no ICC profiles are supported.

## **ShowRevisionMarks, ShowRevisionBars and ShowOriginalRevision Added to Document.LayoutOptions.RevisionOptions Class**

The following three new public members are added to the Document.LayoutOptions.RevisionOptions class

**new options in RevisionOptions**

{{< highlight csharp >}}
/** 
 Allow to specify whether revision text should be marked with special formatting markup.
 Default value for this property is <c>true</c>.
*/
public final boolean getShowRevisionMarks();
public final void setShowRevisionMarks(boolean value);
/** 
 Allows to specify whether revision bars should be rendered near lines containing revised content.
 Default value for this property is <c>true</c>.
*/
public final boolean getShowRevisionBars();
public final void setShowRevisionBars(boolean value);
/** 
 Allows to specify whether the original text should be shown instead of revised one.
 Default value for this property is <c>false</c>.
*/
public final boolean getShowOriginalRevision();
public final void setShowOriginalRevision(boolean value);
{{< /highlight >}}

## **Priority Property Added to FontSourceBase Class**

Priority property has been added to the FontSourceBase class. This property is used when there are fonts with the same family name and style in different font sources. In this case Aspose.Words selects the font from the source with the higher priority value.

**Usage**

{{< highlight csharp >}}

// Aspose.Words will prefer fonts from "Folder1" over the fonts from "Folder2".
FolderFontSource folder1 = new FolderFontSource("Folder1", false, 2);
FolderFontSource folder2 = new FolderFontSource("Folder2", false, 1);
FontSettings.setFontsSources(new FontSourceBase[] {folder1, folder2});
{{< /highlight >}}

## **New Public Values Added for ParagraphAlignment Enumeration**

The following new public values are added to ParagraphAlignment Enumeration:

{{< highlight csharp >}}
ArabicMediumKashida = 5, 
/** 
 Arabic only. Kashida length for text is extended to a medium length determined by the consumer.
*/
ArabicHighKashida = 7,
/** 
 Arabic only. Kashida length for text is extended to its widest possible length.
*/
 ArabicLowKashida = 8,
/** 
 Arabic only. Kashida length for text is extended to a slightly longer length.
*/
ThaiDistributed = 9
/** 
 Thai only. Text is justified with an optimization for Thai.
*/
{{< /highlight >}}
