---
title: Public API Changes in Aspose.Words 15.6.0
type: docs
weight: 60
url: /net/public-api-changes-in-aspose-words-15-6-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 15.6.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## DML Effects and Text Effects are not Rendered in PdfA1a and PdfA1b

The issue WORDSNET-11919 has now been resolved. MS Word does not render effects in PdfA1, Aspose.Words now does the same. If PdfSaveOptions.Compliance is set to PdfCompliance.PdfA1b or PdfCompliance.PdfA1a, PdfSaveOptions.DmlEffectsRenderingMode always returns DmlEffectsRenderingMode.None.

### PICT Images Rendering Supported now.

The issue WORDSNET-9153 has now been resolved. Starting from version 15.6.0, Aspose.Words supports rendering and inserting PICT images.

If your document contains PICT image (usually this occurs in DOC files created on Mac), Aspose.Words converts this image to EMF format upon reading, just like MS Word does. Quality of the image is preserved, because both PICT and EMF formats are vector. The exception is if you are using Aspose.Words for Java, in this case PICT image is converted to PNG.

You can insert PICT image into the document using DocumentBuilder.InsertImage method. In this case Aspose.Words converts PICT to EMF or PNG (if you are using Aspose.Words for Java) on the fly and inserts EMF or PNG into the document.

### Public API for Custom Mark in FootNotes

New overload in DocumentBuilder allows inserting footnotes with custom marks:

**C#**

{{< highlight csharp >}}
/// <summary>
/// Inserts a footnote or endnote into the document.
/// </summary>
/// <param name="footnoteType">Specifies whether to insert a footnote or an endnote.</param>
/// <param name="footnoteText">Specifies the text of the footnote.</param>
/// <param name="referenceMark">Specifies the custom reference mark of the footnote.</param>
/// <returns>Returns a footnote object that was just created.</returns>
public Footnote DocumentBuilder.InsertFootnote(FootnoteType footnoteType, string footnoteText, string referenceMark)
{{< /highlight >}}

And also public writable property for adding custom mark:

**C#**

{{< highlight csharp >}}
/// <summary>
/// Gets/sets custom reference mark to be used for this footnote.
/// Default value is <see cref="String.Empty"/>, meaning auto-numbered footnotes are used.
/// </summary>
/// <remarks>
/// <para>
/// If this property is set to <see cref="String.Empty"/> or null, then <see cref="IsAuto"/> property will automatically be set to true,
/// if set to anything else then <see cref="IsAuto"/> will be set to false.
/// </para>
/// <para>
/// RTF-format can only store 1 symbol as custom reference mark, so upon export only the first symbol will be written others will be discard.
/// </para>
/// </remarks>
public string Footnote.ReferenceMark {get;set;}
{{< /highlight >}}

### Public Chart API Introduced.

The following items are implemented in Aspose.Words 15.6.0

1. Creating different types of OOXML charts from scratch.
1. Working with Charts through Shape.Chart object.
1. Four different overloads for Series.Add method, which were exposed to cover all possible variants of data sources for all Chart types.
1. Single ChartSeries object.
1. Chart appearance: ChartDataPoints and ChartDataLabels.

Please read more details and examples in the following section of documentation.

[Working with Charts](https://docs.aspose.com/words/net/working-with-charts/)

### Password Verification in Write-Protected Document.

WORDSNET-7893 is implemented now. A new WriteProtection.ValidatePassword method is added to the public API.

**C#**

{{< highlight csharp >}}
public bool ValidatePassword(string password);
{{< /highlight >}}

It returns true if the specified password is the same as the write-protection password the document was protected with. If document is not write-protected with password then returns false.
Usage example is as follows:

**C#**

{{< highlight csharp >}}
Document doc = new Document("path to input document");
if (doc.WriteProtection.ValidatePassword("password"))
 DoSomething();
 // password is correct.
else
 return false;
 // password is incorrect.
{{< /highlight >}}
