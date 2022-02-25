---
title: Aspose.Words for Java 20.8 Release Notes
articleTitle: Aspose.Words for Java 20.8 Release Notes
linktitle: Aspose.Words for Java 20.8 Release Notes
description: "Aspose.Words for Java 20.8 Release Notes – the latest updates and fixes."
type: docs
weight: 9
url: /java/aspose-words-for-java-20-8-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 20.8](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.8).

{{% /alert %}}

## Major Features

There are 93 improvements and fixes in this regular monthly release. The most notable are:

- Multi-page TIFF rendering improved.
- Json engine improvements.
- Implemented Markdown ‘Inline Images’ feature.
- Added new font substitution rule for font name processing.
- Added flag indicating whether images must be skipped while loading PDF document.
- Implemented support for SVG images embedded using data URLs upon HTML import.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
| WORDSJAVA-2427 | Crosstest all Encodings Java vs. .NET. | New Feature |
| WORDSJAVA-2430 | New platform-independent Generic CMYK Profile | New Feature |
| WORDSJAVA-2432 | SonarQube report for the new code. | New Feature |
| WORDSNET-19654 | Add support for SVG images embedded using   data URLs | New Feature |
| WORDSNET-18471 | ResolveFontNames option for HtmlFixedSaveOptions and SvgSaveOptions | New Feature |
| WORDSNET-20467 | Implement Markdown "Inline Images" feature | New Feature |
| WORDSJAVA-2357 | High Memory Consumption on Converting to PDF | Bug
| WORDSJAVA-2381 | Number of Pages Specified via ImageSaveOptions.PageCount aren't Rendering in Multi-Page TIFF | Bug
| WORDSJAVA-2387 | Infinite loop when calling NodeRendererBase.renderToSize | Bug
| WORDSJAVA-2393 | DOC to TIFF conversion generates stretched result | Bug
| WORDSJAVA-2419 | JsonDataSource with nested array wrongly parses a number value. | Bug
| WORDSJAVA-2420 | Json adds timezone letter to dateTimeProperty filed after deserialization of input XML. | Bug
| WORDSJAVA-2422 | Json reads DBNull instead of EoF. | Bug
| WORDSJAVA-2428 | Single page TIFF is created from DOCX when IDE is Eclipse | Bug
| WORDSJAVA-2429 | NullPointerException with aspose.words-for-java-20.7-(jdk1.6-only) | Bug
| WORDSNET-7201 | Problem with Copy Macros from one document to another | Bug |
| WORDSNET-20693 | Elements of the SVG shape are disappeared when building the effect | Bug |
| WORDSNET-20473 | Aspose.Words.FileCorruptedException occurs upon loading a DOC | Bug |
| WORDSNET-20787 | File Corrupted Exception upon loading a DOC | Bug |
| WORDSNET-8804 | Mhtml to PDF conversion issue with Unicode characters rendering | Bug |
| WORDSNET-20587 | PDF Export - endnotes from 2 separate sections appearing at end of first   section | Bug |
| WORDSNET-20639 | DOCX to PDF conversion issue with UTF8-Encoding | Bug |
| WORDSNET-20638 | The gradient color with the "satMod" property is incorrect   after converting to PDF | Bug |
| WORDSNET-13503 | Indic character support - Hindi or Tamil or malayalam | Bug |
| WORDSNET-16287 | DOCM to PDF conversion issue with Dubai Font | Bug |
| WORDSNET-13981 | The link between textboxes is broken during open/save | Bug |
| WORDSNET-6472 | Incorrect shaping observed | Bug |
| WORDSNET-11477 | Tamil language characters are incorrectly rendering | Bug |
| WORDSNET-20199 | Custom fonts render incorrectly in output PDF | Bug |
| WORDSNET-18730 | DOC to HTML conversion issue with H4 font size | Bug |
| WORDSNET-20673 | SVG image is not properly imported in Word file | Bug |
| WORDSNET-20678 | Incorrect table of contents when updating the form fields of a docx | Bug |
| WORDSNET-20775 | StructuredDocumentTag.Checked throws InvalidOperationException (Custom   XML part is not found) | Bug |
| WORDSNET-20622 | Text font formatting is corrupted after setting FontInfos (Embedded   Fonts) | Bug |
| WORDSNET-20800 | MathML vertical spacing to PDF | Bug |
| WORDSNET-20801 | Horizontal spacing issue | Bug |
| WORDSNET-14335 | Units in revisions change from "Inch" to "cm" in PDF | Bug |
| WORDSNET-19704 | text-align : left style is not exported in output HTML | Bug |
| WORDSNET-15327 | DOCX to PDF conversion issue with Tamil text | Bug |
| WORDSNET-20603 | RTF to RTF conversion moves page sizing and margin information from   document level to per-section level | Bug |
| WORDSNET-8476 | Different fonts are applied to characters of same Arabic word in PDF | Bug |
| WORDSNET-20806 | Exception while loading DOC file | Bug |
| WORDSNET-20690 | Empty Rich Text CustomXmlPart control PDF save issue | Bug |
| WORDSNET-19394 | Converting MHTML to PDF generates empty PDF file | Bug |
| WORDSNET-20656 | A generic error occurred in GDI\+ when converting DOCX to PNG | Bug |
| WORDSNET-20699 | PDF to DOCX blank output | Bug |
| WORDSNET-20645 | InvalidOperationException while loading the PDF | Bug |
| WORDSNET-20703 | XML (or DOCX) Document hangs upon loading | Bug |
| WORDSNET-20706 | "ArgumentException: The argument cannot be null or empty   string" occurs upon loading a DOC | Bug |
| WORDSNET-20712 | System.InvalidCastException is thrown while importing RTF | Bug |
| WORDSNET-20713 | Aspose.Words.FileCorruptedException is thrown while importing RTF | Bug |
| WORDSNET-20714 | BuiltInDocumentProperties.Words returns incorrect word count | Bug |
| WORDSNET-20720 | DOCX to PDF conversion issue with Chart rendering | Bug |
| WORDSNET-20719 | Incorrect colors with "SatOff" property if the color saturation   is zero after converting to PDF | Bug |
| WORDSNET-20250 | Cell's blue background color does not expand to the full Table width | Bug |
| WORDSNET-20660 | Chart background and formatting is lost after ODT to DOCX conversion | Bug |
| WORDSNET-20260 | Header content moves down and overlaps with Body's content in PDF | Bug |
| WORDSNET-19459 | DOCX to PDF/TIFF conversion issue with Chart rendering | Bug |
| WORDSNET-20734 | PDF to DOCX ignore images | Bug |
| WORDSNET-20735 | After the comparison the output document loses font size and color | Bug |
| WORDSNET-20739 | Couldn't load document, FileCorruptedException after ArgumentOutOfRange | Bug |
| WORDSNET-20588 | document.PageCount throws IndexOutOfRangeException | Bug |
| WORDSNET-19768 | Re-save for document causes wrong cell paddings | Bug |
| WORDSNET-20423 | Incorrect height of the brackets math element | Bug |
| WORDSNET-14900 | Hindi text content not formatted correctly when converted from DOCX to   PDF | Bug |
| WORDSNET-16533 | Word Unicode content save to Pdf format rendering error | Bug |
| WORDSNET-17846 | Document.PageCount throws System.ArgumentException on certain files | Bug |
| WORDSNET-20750 | Document.Compare() method does not work properly | Bug |
| WORDSNET-20741 | Error when opening specific document | Bug |
| WORDSNET-20691 | Document.UpdateFields does not update the TOC correctly | Bug |
| WORDSNET-20078 | Footer contents are lost after conversion from DOTX to PDF | Bug |
| WORDSNET-20413 | Comment becomes part of content | Bug |
| WORDSNET-20669 | System.NullReferenceException thrown when saving to PDF | Bug |
| WORDSNET-20460 | Fill Color of Graphics Object Lost during DOCX to PDF Conversion | Bug |
| WORDSNET-20799 | FileFormatUtil.DetectFileFormat throws   Aspose.Words.FileCorruptedException | Bug |
| WORDSNET-20777 | Error occured while updating page layout after split document's nodes   into pages | Bug |
| WORDSNET-20783 | Loading particular markdown document raises InvalidCastException | Bug |
| WORDSNET-20762 | "File is corrupted or damaged" exception is thrown when opening   DOCX file | Bug |
| WORDSNET-20781 | Incorrect paragraph border drawing after conversion to PDF | Bug |
| WORDSNET-20749 | Dots in picture are changed in converted PDF when open in Chrome | Bug |
| WORDSNET-20555 | Math Type 6.0 Equation Objects Truncated in PDF | Bug |
| WORDSNET-20751 | Incorrect table style applied on conversion Word to Pdf | Bug |
| WORDSNET-20634 | Document.UpdateFields throws exception - Cannot insert a node of this   type at this location | Bug |
| WORDSNET-20565 | Large blank spaces appear during PDF to DOC conversion | Bug |
| WORDSNET-20566 | Unwanted text added to footer during PDF to DOC conversion | Bug |
| WORDSNET-20764 | "Parameter is not valid" exception thrown when rendering DOCX   file | Bug |
| WORDSNET-20571 | DOCX to PDF conversion issue with Chinese date and time | Bug |
| WORDSNET-20608 | Text gets bold and truncated after DOCX to PDF conversion | Bug |
| WORDSNET-20625 | RTF to PDF conversion issue with Hindi text | Bug |
| WORDSNET-16941 | Reference field is lost in output PDF | Bug |
| WORDSNET-20210 | Font missing (error) when converting to PDF | Bug |
| WORDSNET-20337 | DOCX to PDF - Additional page in PDF | Bug |
| WORDSNET-19706 | File format detected as TEXT instead of MHTML | Bug |

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 20.8. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies existing behavior is especially important and is documented here.

### Added new FontNameSubstitutionRule

Related issue: WORDSNET-20199
Added new font substitution rule for font name processing. It will be checked at the step 4 before item a. at [Font Availability and Substitution](/words/java/manipulate-and-substitute-truetype-fonts/#font-availability-and-substitution). If this substitution rule will take place the warning with text "Font '<OriginalFont>' has not been found. Using '<SubstitutionFont>' font instead. Reason: font name substitution." will be issued.

{{< highlight csharp >}}
/// <summary>
 /// Font substitution rule for processing font name.
 /// </summary>
 /// <remarks>
 /// According to this rule Aspose.Words tries to process the font name to get the substitution. Particularly
 /// Aspose.Words tries to removes suffixes with '-' and ',' separators like it does the MS Word. 
 /// </remarks>
public class FontNameSubstitutionRule : FontSubstitutionRule
{
}
public class FontSubstitutionSettings
{
    /// <summary>
    /// Settings related to font name substitution rule.
    /// </summary>
    public FontNameSubstitutionRule FontNameSubstitution { get; }
}
{{< /highlight >}}

### Added new option to the PdfLoadOptions class

Related issue: WORDSNET-20779
Added flag indicating whether images must be skipped while loading PDF document.

{{< highlight csharp >}}
/// <summary>
 /// Gets or sets the flag indicating whether images must be skipped while loading PDF document. Default is False.
 /// </summary>
public bool SkipPdfImages
{
    get { return mSkipPdfImages; }
    set { mSkipPdfImages = value; }
}
{{< /highlight >}}

Use Case: Explains how to use SkipPdfImages flag.
{{< highlight csharp >}}
fLoadOptions options = new PdfLoadOptions();
 options.SkipPdfImages = true;
 Document doc = new Document("in.pdf", options);
{{< /highlight >}}

### Removed obsolete property FindReplaceOptions.PreserveMetaCharacters

Related issue: WORDSNET-20266
Removed obsolete property from FindReplaceOptions class.

{{< highlight csharp >}}
/ <summary>
 /// True indicates that meta-characters beginning with "&amp;" are preserved.
 /// Default value is false.
 /// </summary>
 [Obsolete("This property is obsolete. Please use &amp; character to escape meta-characters instead.")]
 public bool PreserveMetaCharacters
{{< /highlight >}}

Use Case: Explains how to replace text ignoring meta-characters.
{{< highlight csharp >}}
cumentBuilder builder = new DocumentBuilder();
 builder.Write("text&plain");
 doc.Range.Replace("&&", " & ");
 Console.WriteLine(doc.GetText());
 // The output is: text & plain\f
{{< /highlight >}}
