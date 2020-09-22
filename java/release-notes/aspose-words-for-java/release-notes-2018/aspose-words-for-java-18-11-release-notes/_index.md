---
title: Aspose.Words for Java 18.11 Release Notes
type: docs
weight: 20
url: /java/aspose-words-for-java-18-11-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 18.11](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/18.11).

{{% /alert %}} 

## **Major Features**

There are 81 improvements and fixes in this regular monthly release. The most notable are:

- Aspose.Words for Java release jar is tested on Java 11.
- Compatibility with GroupDocs Total License is improved.
- GraphicsQualityOptions is better mapped to Java.
- We did yet another step to shrink (already small) pixel difference between .Net and Java generated images, borders, etc.
- JavaDoc for obsolette members become more clear.
- Fixed hang with autosized tables when cell has right aligned floaters.
- Fixed wrong visual order of text in specific cases.
- Fixed non-breaking space widths calculation.
- Implemented support for floating table metrics when calculating grid.
- ROP (raster operations) emulation code was improved, resulting in a significant performance boost (up to 5 times) when rendering the corresponding metafiles.
- Improved legacy vertical writing support in EMF rendering. Fonts with the '@' prefix additionally rotate the Japanese glyphs.
- Improved calculation of the shape boundaries, more accurately mimicking the MS Word output.
- Improved the rendering of DrawingML charts canvases overlay. Markers of the “nofill” series are rendered on the foreground.
- Improved rendering of DrawingML chart axes for documents created using MS Word 2007.
- Fixed a bug with incorrect resolution of the system “window” color when rendering of VML shapes.
- Fixed an issue with underline/strikeout text effects in EMF/WMF rendering.
- Fixed a document rendering issue when font with English name could not be found in the system with a different locale.
- Fixed bug with rendering of DrawingML chart markers, if series data are not sorted in ascending order.
- Fixed a bug causing shifts of rotated shapes in DrawingML chart while rendering.
- Provided TxtSaveOptions.ExportHeadersFootersMode property.

## **Full List of Issues Covering all Changes in this Release**

|**Key**|**Summary**|**Category**|
| :- | :- | :- |
|WORDSJAVA-1818|Encrypted ODT file cannot be opened with OOo|Bug|
|WORDSJAVA-1857|Non-breakable space vanishes in Online API JavaDoc.|Bug|
|WORDSJAVA-1863|Absent crop on Svg Simple Stroke Line Cap.|Bug|
|WORDSJAVA-1876|When DOCX is saved as PDF, images are shown as red X|Bug|
|WORDSJAVA-1896|Canvas with half-tone meshing rendered unreadable|Bug|
|WORDSJAVA-1907|Images are distorted in generated PDF|Bug|
|WORDSJAVA-1908|Dashes in bullets list disappear in rendered PDF|Bug|
|WORDSJAVA-1368|Aspose.Words for Java - API reference doesn't contain information about obsolete properties and methods|Enhancement|
|WORDSJAVA-1918|Unsupported PNG image subformat while converting to PDF.|Enhancement|
|WORDSJAVA-1937|SVG round and square|Enhancement|
|WORDSJAVA-1927|Run Aspose.Words jdk16 jar under JDK 11|Feature|
|WORDSNET-11330|Empty pages are created after conversion from Docx to Doc|Bug|
|WORDSNET-17496|Incorrect color of the axis if WordStyle2010 is false after converting to PDF|Bug|
|WORDSNET-17476|Orientation of characters in pictures changes during rendering|Bug|
|WORDSNET-17517|Color Shading issues of Drawings in generated PDF|Bug|
|WORDSNET-17420|Font Changed after a load/save Cycle of an RTF File|Bug|
|WORDSNET-17472|DOCX to PDF conversion issue with SAVEDATE rendering|Bug|
|WORDSNET-17467|Combo charts with custom combination renders incorrectly|Bug|
|WORDSNET-16661|Incorrect position of Picture in PDF|Bug|
|WORDSNET-17447|Problem with ListNum Cross References when converting to PDF|Bug|
|WORDSNET-17515|Image misplaced in rendered PDF|Bug|
|WORDSNET-16792|The user shape in the chart is shifted after converting to PDF|Bug|
|WORDSNET-17530|Aspose.Words considers TextBox shapes as Rectangles|Bug|
|WORDSNET-17606|An evaluation mark is added to a nested document being inserted dynamically while building a report in a venture licensed mode|Bug|
|WORDSNET-16217|FindReplaceOptions.FindWholeWordsOnly does not replace standalone word|Bug|
|WORDSNET-16710|Some PostScript tests fail with GoldDifferenceException by circle|Bug|
|WORDSNET-9702|Chart color is changed after using Document.AppendDocument|Bug|
|WORDSNET-7750|A Shape in Table gets cropped when rendered to fixed page formats|Bug|
|WORDSNET-17480|Layout looks broken when rendering barcode|Bug|
|WORDSNET-16855|Paragraph border is lost in output ODT|Bug|
|WORDSNET-16762|Styles.AddCopy does not copy list number style|Bug|
|WORDSNET-16682|Shape is rendered improperly|Bug|
|WORDSNET-16694|Shape is rendered improperly|Bug|
|WORDSNET-16685|Shape is rendered improperly|Bug|
|WORDSNET-17559|Some elements in charts missing when converting DOCX to PDF|Bug|
|WORDSNET-17332|The text is rendered towards left side of page in output HtmlFixed|Bug|
|WORDSNET-16977|RTL text has wrong order|Bug|
|WORDSNET-16146|The output PDF document words are getting mixed up|Bug|
|WORDSNET-8681|/arabic characters order/ RTF to XPS conversion issue with Arabic Text|Bug|
|WORDSNET-15287|/arabic characters order/ Doc to Pdf conversion issue with Arabic text|Bug|
|WORDSNET-8581|English words are rendering in reverse order in fixed page formats|Bug|
|WORDSNET-7370|/strong ltr text marked as rtl/ Non-RTL text gets written backward in Pdf|Bug|
|WORDSNET-16497|Incorrect and flipped content in the PDF rendition|Bug|
|WORDSNET-10415|/arabic characters order/ Arabic characters are rendered in incorrect order|Bug|
|WORDSNET-17457|Conversion failed with error Infinite loop detected|Bug|
|WORDSNET-17583|Foreign language text inside WordArt rendered incorrectly in PDF|Bug|
|WORDSNET-17409|Font of tab is changed after DOCX-HTML-DOCX round-trip|Bug|
|WORDSNET-17410|Strike-through formatting is lost in output PDF|Bug|
|WORDSNET-17541|The position of shape is changed after conversion from DOCX to PDF|Bug|
|WORDSNET-17507|/printer metrics/ A Table Row is Pushed to next Page in PDF|Bug|
|WORDSNET-17425|Incorrect non-breaking space width in AW pdf output|Bug|
|WORDSNET-2553|Width of merged cells is incorrect|Bug|
|WORDSNET-17618|Document.copyStylesFromTemplate() issues|Bug|
|WORDSNET-17167|DOCX to HTML conversion issue with alignment of math images|Enhancement|
|WORDSNET-16709|CustomBarcodeGenerator is not available for netstandard.|Enhancement|
|WORDSNET-17431|Customer wants to get extensions of embedded files|Enhancement|
|WORDSNET-17611|Update to SkiaSharp 1.60.3|Enhancement|
|WORDSNET-16687|TestDefect3613 Gradient fill has artifact line.|Enhancement|
|WORDSNET-16696|TestJira13671 metafile is rendered improperly|Enhancement|
|WORDSNET-9751|/table grid/ Docx to Pdf conversion issue with table position|Enhancement|
|WORDSNET-17587|Document.Protect does not work with AllowOnlyFormFields protection type|Enhancement|
|WORDSNET-17584|Rework performance tests to use the new engine|Enhancement|
|WORDSNET-17465|License.SetLicense throws System.Xml.XmlException|Exception|
|WORDSNET-17390|License.SetLicense throws System.Xml.XmlException|Exception|
|WORDSNET-17461|License.SetLicense throws System.Exception|Exception|
|WORDSNET-17412|License.SetLicense throws System.Xml.XmlException|Exception|
|WORDSNET-17581|SetLicense throws 'Invalid license signature' exception|Exception|
|WORDSNET-17529|Aspose.Words.FileCorruptedException is thrown while loading DOCX|Exception|
|WORDSNET-17375|Aspose.Words generated DOCX is corrupted|Exception|
|WORDSNET-17317|Document.Compare throws System.InvalidOperationException|Exception|
|WORDSNET-17605|System.InvalidOperationException is thrown while importing sections|Exception|
|WORDSNET-17221|Exception is thrown when loading HTML during DOCX-HTML-DOCX roundtrip|Exception|
|WORDSNET-11546|Provide TxtSaveOptions.ExportHeadersFootersMode Property|Feature|
|WORDSNET-17386|Removing colon between empty MERGEFIELDs|Feature|
|WORDSNET-9498|Add Table property for 'Allow spacing between cells' option|Feature|
|WORDSNET-12695|Implement mass copy of styles|Feature|
|WORDSNET-7763|Style.Name do not override the existing style after calling Style.AddCopy method|Feature|
|WORDSNET-17436|ExportDocumentStructure does not create tags for PDF|Regression|
|WORDSNET-17585|Performance test failed|Regression|
|WORDSNET-17494|Infinite loop detected when invoking UpdatePageLayout method|Regression|

## **Public API and Backward Incompatible Changes**

This section lists public API changes that were introduced in Aspose.Words 18.11. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### **Removing Colon between Empty MERGEFIELDs**

WORDSNET-17386 has now been resolved.

A customer requested a feature supported by Word where you can surround a colon with two merge fields and if both fields are empty then it will also remove the colon. In fact, Aspose.Words removes a paragraph with merge fields if it becomes empty or contains only white-spaces after mail merge, which is controlled by the **MailMergeCleanupOptions.RemoveEmptyParagraphs** option. However, MS Word considers paragraphs with some non-white-space symbols (including colon) empty, while Aspose.Words did not prior to the fix.

We could just hard-code the new Aspose.Words behavior but did not want to introduce something that could be treated as a regression. Given that, we have added another option:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value indicating whether paragraphs with punctuation marks are considered as empty
/// and should be removed if the <see cref="MailMergeCleanupOptions.RemoveEmptyParagraphs"/> option is specified.
/// </summary>
/// <remarks>
/// The default value is <c>true</c>.
/// </remarks>
/// <remarks>
/// Here is the complete list of cleanable punctuation marks:
/// <list type="bullet">
/// <item><description>!</description></item>
/// <item><description>,</description></item>
/// <item><description>.</description></item>
/// <item><description>:</description></item>
/// <item><description>;</description></item>
/// <item><description>?</description></item>
/// <item><description>¡</description></item>
/// <item><description>¿</description></item>
/// </list>
/// </remarks>
public bool CleanupParagraphsWithPunctuationMarks
{
    get { return mCleanupParagraphsWithPunctuationMarks; }
    set { mCleanupParagraphsWithPunctuationMarks = value; }
}
{{< /highlight >}}

*The default value of the option is* ***true*** *which means that the behavior was changed to mimic MS Word; however, the customers who rely on the old behavior are able to revert it by setting the option to* ***false**.*

The following sample demonstrates this case:

{{< highlight csharp >}}
document.MailMerge.CleanupOptions = MailMergeCleanupOptions.RemoveEmptyParagraphs;
document.MailMerge.CleanupParagraphsWithPunctuationMarks = false;
document.MailMerge.Execute(new string[] {"field"}, new object[] {null});
{{< /highlight >}}

### **Provide TxtSaveOptions.ExportHeadersFootersMode Property**

` `New public enum type was added:

{{< highlight csharp >}}

// Specifies the way headers and footers are exported to plain text format.
public enum TxtExportHeadersFootersMode
{
    // No headers and footers are exported.
    None,

    // Only primary headers and footers are exported at the beginning and end of each section.
    PrimaryOnly,

    // All headers and footers are placed after all section bodies at the very end of a document.
    AllAtEnd
}
{{< /highlight >}}

New public property was added to TxtSaveOptions class:

{{< highlight csharp >}}

// Specifies the way headers and footers are exported to the plain text format.
public TxtExportHeadersFootersMode ExportHeadersFootersMode
{{< /highlight >}}

The main advantage of new property over the old TxtSaveOptions.ExportHeadersFooters property is that it has new headers and footers export mode: 'AllAtEnd'.
In this mode Aspose.Words acts the way similar to MS Word: all headers and footers are placed after all section bodies at the very end of a document.

#### **UC**

{{< highlight csharp >}}
Document doc = new Document ("inputFileName");
TxtSaveOptions options = new TxtSaveOptions();
options.SaveFormat = SaveFormat.Text;

// All headers and footers are placed at the very end of the output document.
options.ExportHeadersFootersMode = TxtExportHeadersFootersMode.AllAtEnd;
doc.Save("outputFileNameA.txt", options);

// Only primary headers and footers are exported at the beginning and end of each section.
options.ExportHeadersFootersMode = TxtExportHeadersFootersMode.PrimaryOnly;
doc.Save("outputFileNameB.txt", options);

// No headers and footers are exported.
options.ExportHeadersFootersMode = TxtExportHeadersFootersMode.None;
doc.Save("outputFileNameC.txt", options);
{{< /highlight >}}

### **Obsolete Property ShowRevisionBalloons was Removed from RevisionOptions Class**

Obsolete property ShowRevisionBalloons was removed from RevisionOptions class. Please use ShowInBalloons property instead.

### **Obsolete Property IsShowParagraphMarks was Removed from LayoutOptions Class**

Obsolete property IsShowParagraphMarks was removed from LayoutOptions class. Please use ShowParagraphMarks property instead.

### **Obsolete Property IsShowHiddenText was Removed from LayoutOptions Class**

Obsolete property IsShowHiddenText was removed from LayoutOptions class. Please use ShowHiddenText property instead.
