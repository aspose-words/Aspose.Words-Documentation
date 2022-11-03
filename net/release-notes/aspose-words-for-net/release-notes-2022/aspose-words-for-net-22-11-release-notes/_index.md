---
title: 22.11 Release Notes
second_title: Aspose.Words for .NET
articleTitle: Aspose.Words for .NET 22.11 Release Notes
linktitle: Aspose.Words for .NET 22.11 Release Notes
description: "Aspose.Words for .NET 22.11 Release Notes – the latest updates and fixes."
type: docs
weight: 20
url: /net/aspose-words-for-net-22-11-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 22.11](https://www.nuget.org/packages/Aspose.Words/22.11.0).

{{% /alert %}}

## Major Features

There are 67 improvements and fixes in this regular monthly release. The most notable are:

- Implemented custom colored/grayscale printing mode.
- Added an ability to create the new structured document tags of Citation type.
- Implemented field updating progress tracking.
- Introduced the new property which allows to embed OLE attachments from the source document to the output PDF document.
- Changed default behavior when opening document of unknown format.

## Full List of Issues Covering all Changes in this Release (Reported by .NET Users)

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-24261|Consider providing a way to get number of pages printed in color|New Feature
|WORDSNET-23333|Provide an ability to track field updating progress|New Feature
|WORDSNET-23496|Import the borders and the margins of block-level HTML elements during loading alt chunks|New Feature
|WORDSNET-23491|Consider providing an ability to specify condition name in LINQ reporting syntax|New Feature
|WORDSNET-23489|Support tag headers to match opening and closing tags for LINQ Reporting Engine|New Feature
|WORDSNET-24350|Add a switch to trim the last paragraph break when inserting a document using LINQ Reporting Engine|New Feature
|WORDSNET-24421|Use information from the OpenType OS/2 table for precise subscript and superscript font sizes|New Feature
|WORDSNET-14001|Add feature to export OLE as attachment in PDF|New Feature
|WORDSNET-24395|Incorrect horizontal offsets if display units are set after converting to PDF|New Feature
|WORDSNET-24520|Date format of SDTs is lost after rendering|Bug
|WORDSNET-17324|Document.Compare does not mimic MS Word behavior|Bug
|WORDSNET-17298|It creates a new bullet and same change appears as both an insert and delete after Compare|Bug
|WORDSNET-14770|Document.Compare generates incorrect revision in output DOCX|Bug
|WORDSNET-18187|Comparing documents with AW gives different revisions from Word compare|Bug
|WORDSNET-21077|Wrong detections of revisions - deletion of runs in the next paragraph|Bug
|WORDSNET-23713|Cell preferred width does not match MS Word for RTF input|Bug
|WORDSNET-24375|PDF to PDF with signing: Formatting issues|Bug
|WORDSNET-24266|Axis title is rendered while it is invisible in MS Word|Bug
|WORDSNET-24490|DocumentBuilder.InsertField methods do not support cursor position at the end of a structured document tag|Bug
|WORDSNET-24113|TOC is not the same during DOCX->HTML->DOCX roundtrip|Bug
|WORDSNET-24399|Circled digits should be rotated like ideographic characters when TextBox has vertical direction|Bug
|WORDSNET-24311|System.Exception is thrown when HarfBuzz is used with Fody package|Bug
|WORDSNET-24470|Part of content is lost after open/save DOCX document|Bug
|WORDSNET-24484|Calculate of the position for the below bar|Bug
|WORDSNET-24467|Exception when loading docx|Bug
|WORDSNET-24491|DOCX to HTML: Link inside shapes refers to a non-existing external page|Bug
|WORDSNET-21894|DOCX to PDF conversion issue with chart axis and labels|Bug
|WORDSNET-24408|UnsupportedFileFormatException upon loading documents|Bug
|WORDSNET-24341|Implement caching of background shape for PDF |Bug
|WORDSNET-24507|DrHatchBrush shifted for cached shapes|Bug
|WORDSNET-24479|Chart is not added to the OTT document|Bug
|WORDSNET-24176|Text reflection position is incorrect after rendering to FixedHtml|Bug
|WORDSNET-24029|FileCorruptedException is thrown upon loading HTML when BlockImportMode.Preserve is used|Bug
|WORDSNET-21348|Document comparison issue with numbering|Bug
|WORDSNET-20025|Position of bookmark is incorrect after moving cursor to paragraph and inserting bookmark|Bug
|WORDSNET-17074|Tab stop are exported incorrectly when converting from DOCX to HTML|Bug
|WORDSNET-24473|Document compare throws System.InvalidOperationException: Unexpected node type exception|Bug
|WORDSNET-24407|Font is changed from "Calibri" to "Times New Roman" after comparing documents|Bug
|WORDSNET-24035|Content is pushed to the next page, that lead to incorrect page count|Bug
|WORDSNET-24471|Paragraph first line indent is incorrect after rendering|Bug
|WORDSNET-24366|Date format in chart's axis is incorrect|Bug
|WORDSNET-24036|"w14:checked" is not Sdt.CheckBox direct value|Bug
|WORDSNET-24418|PDF to DOCX: Footer overlap on the next page|Bug
|WORDSNET-24367|Axis labels are rendered improperly|Bug
|WORDSNET-22096|Error in low-level  comparison algorithm|Bug
|WORDSNET-24437|Formatting of heading is broken when use ImportFormatMode.UseDestinationStyles while appending document|Bug
|WORDSNET-23228|Imitate MS Word behavior for handling invalid table preferred width values|Bug
|WORDSNET-24274|Embedded PDF document is not rendered|Bug
|WORDSNET-24353|Aspose.Words hangs upon rendering document|Bug
|WORDSNET-20220|Table's column width is changed after conversion from HTML to DOCX|Bug

## Full List of Issues Covering all Changes in this Release (Reported by Java Users)

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-23141|Support Nullable values at LINQ Reporting Engine tags where not Nullable values are expected|New Feature
|WORDSNET-20906|Document Compare method incorrectly Deletes and then Inserts same Paragraph|Bug
|WORDSNET-18031|Document.Compare generates incorrect revisions|Bug
|WORDSNET-17310|Incorrect Revision for a List Paragraph when Comparing|Bug
|WORDSNET-18036|Document.Compare generates incorrect revisions|Bug
|WORDSNET-24516|NullReferenceException is thrown when check watermark type in the document without header/footer|Bug
|WORDSNET-24514|FileCorruptedException is thrown upon loading DOCX document|Bug
|WORDSNET-24423|DOCX to PDF: Placeholders in formula not rendered correctly|Bug
|WORDSNET-22563|Document.Compare issue with document comments|Bug
|WORDSNET-24396|Font size is incorrect after rendering the document|Bug
|WORDSNET-24483|InvalidCastException is thrown upon comparing document|Bug
|WORDSNET-24444|List list labels are incorrect after rendering document|Bug
|WORDSNET-24372|IF field is updated improperly when REF field is used|Bug
|WORDSNET-24370|Aspose.Words hangs upon rendering document|Bug
|WORDSNET-24429|Span tags created for the blank lines when ExportLanguageToSpanTag is set|Bug
|WORDSNET-17087|Make embedded objects in PDF clickable|Bug
|WORDSNET-23263|Custom style does not apply after HTML to DOCX conversion |Bug

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 22.11. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added PdfSaveOptions.EmbedAttachments property

Related issue: WORDSNET-14001

The new property allows to embed OLE attachments from source document to output PDF document.
{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value determining whether or not to embed attachments to the PDF document.
/// </summary>
/// <remarks>
/// <para>Default value is <c>false</c> and attachments are not embedded.</para>
/// <para>When the value is <c>true</c> attachments are embedded to the PDF document.</para>
/// <para>Embedding attachments is not supported when saving to PDF/A and PDF/UA compliance.
/// <c>false</c> value will be used automatically.</para>
/// <para>Embedding attachments is not supported when encryption is enabled. <c>false</c> value
/// will be used automatically.</para>
/// </remarks>
public bool EmbedAttachments { get; set; }
{{< /highlight >}}

### Allowed creation of structured document tags of Citation type

Related issue: WORDSNET-24458

Added an ability to create the new structured document tags of SdtType.Citation type.

Use Case:
{{< highlight csharp >}}
Document doc = new Document();

// Create a structured document tag of the Citation type.
StructuredDocumentTag sdt = new StructuredDocumentTag(doc, SdtType.Citation, MarkupLevel.Inline);

// Append to a paragraph.
Paragraph paragraph = doc.FirstSection.Body.FirstParagraph;
paragraph.AppendChild(sdt);

// Create a Citation field.
DocumentBuilder builder = new DocumentBuilder(doc);
builder.MoveToParagraph(0, -1);
builder.InsertField(@"CITATION Ath22 \l 1033 ", "(Author1, 2022)");

// Move the field to the structured document tag.
while (sdt.NextSibling != null)
    sdt.AppendChild(sdt.NextSibling);

doc.Save("output.docx");
{{< /highlight >}}

### Changed default behavior when opening document of unknown format

Related issue: WORDSNET-24408.

We changed the behavior for the case when the format of the input document cannot be identified. Previously, we always threw an exception. Now we do this only if the input document has the file name extension .docx, .odt, or .sxw. In case the format of the input document cannot be identified and has an extension other than the above-mentioned, the format will be set to .txt.

Use Case:
{{< highlight csharp >}}
public static void Main(string[] args)
{
    string content = new string('\u0000', 20);

    File.WriteAllText("a.doc", content);
    OpenDoc("a.doc");

    File.WriteAllText("b.docx", content);
    OpenDoc("b.docx");
}

private static void OpenDoc(string fileName)
{
    try
    {
        Document doc = new Document(fileName);
    }
    catch (UnsupportedFileFormatException e)
    {
        Console.WriteLine("{0} is opened with exception", fileName);
        return;
    }

    Console.WriteLine("{0} is opened successfully", fileName);
}

// The code produces the following output:
// a.doc is opened successfully
// b.docx is opened with exception
{{< /highlight >}}

### Implemented custom colored/grayscale printing mode

Related issues: WORDSNET-24285, WORDSNET-24261

A new printing property allows to control how non-colored pages are printed if the device supports color printing. This feature can be useful if you want to automatically print a non-colored pages using only grayscale printer mode.

The print mode is controlled by a new property in the AsposeWordsPrintDocument class:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets how non-colored pages are printed if the device supports color printing.
/// </summary>
/// <remarks>
/// Doesn't affect booklet printing.
/// </remarks>
public ColorPrintMode ColorMode { get; set; }
{{< /highlight >}}

The print mode is specified by one of the values of the new enumeration:
{{< highlight csharp >}}
/// <summary>
/// Specifies how non-colored pages are printed if the device supports color printing.
/// </summary>
public enum ColorPrintMode
{
    /// <summary>
    /// All pages are printed according to the printer's capabilities and settings.
    /// </summary>
    Normal,

    /// <summary>
    /// Non-colored pages if detected are printed in grayscale.
    /// </summary>
    /// <remarks>
    /// <see cref="PageSettings.Color"/> is automatically set false for detected non-colored pages.
    /// If the printer does not support color printing, this setting is ignored.
    /// </remarks>
    GrayscaleAuto
}
{{< /highlight >}}

The number of pages printed in color can be obtained using a new property in the AsposeWordsPrintDocument class:
{{< highlight csharp >}}
/// <summary>
/// Gets the number of pages printed in color (i.e. with <see cref="PageSettings.Color"/> set to true).
/// </summary>
public int ColorPagesPrinted { get; }
{{< /highlight >}}

Use Case:
{{< highlight csharp >}}
Document document = new Document(filename);

// Select the required printer.
PrinterSettings printerSettings = new PrinterSettings();
printerSettings.PrinterName = "Microsoft Print to PDF";

// Specify the pages to print.
printerSettings.FromPage = 1;
printerSettings.ToPage = doc.PageCount;

AsposeWordsPrintDocument printDoc = new AsposeWordsPrintDocument(doc);
printDoc.PrinterSettings = printerSettings;

// Specify the new color print mode.
printDoc.ColorMode = ColorPrintMode.GrayscaleAuto;

printDoc.Print();

// Return the numer of pages printed in color.
return printDoc.ColorPagesPrinted;
{{< /highlight >}}

### Implemented field updating progress tracking

Related issue: WORDSNET-23333

The following property is added to FieldOptions class:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets <see cref="IFieldUpdatingProgressCallback"/> implementation.
/// </summary>
public IFieldUpdatingProgressCallback FieldUpdatingProgressCallback { get; set; }
{{< /highlight >}}

New IFieldUpdatingProgressCallback interface is introduced:
{{< highlight csharp >}}
/// <summary>
/// Implement this interface if you want to track field updating progress.
/// </summary>
public interface IFieldUpdatingProgressCallback
{
    /// <summary>
    /// A user defined method that is called when updating progress is changed.
    /// </summary>
    void Notify(FieldUpdatingProgressArgs args);
}
{{< /highlight >}}

New FieldUpdatingProgressArgs class is introduced:
{{< highlight csharp >}}
/// <summary>
/// Provides data for the field updating progress event.
/// </summary>
public sealed class FieldUpdatingProgressArgs
{
    /// <summary>
    /// Gets the total fields count to be updated.
    /// </summary>
    /// <remarks>
    /// The value is not constant and may be increased during updating process.
    /// </remarks>
    public int TotalFieldsCount { get; }

    /// <summary>
    /// Gets the number of updated fields.
    /// </summary>
    public int UpdatedFieldsCount { get; }

    /// <summary>
    /// Gets a value indicating whether field updating is completed.
    /// </summary>
    public bool UpdateCompleted { get; }
}
{{< /highlight >}}

Use Case:
{{< highlight csharp >}}
Document document = new Document(filename);
document.FieldOptions.FieldUpdatingProgressCallback = new FieldUpdatingProgressCallback();;
document.UpdateFields();

public class FieldUpdatingProgressCallback : IFieldUpdatingProgressCallback
{
    void IFieldUpdatingProgressCallback.Notify(FieldUpdatingProgressArgs args)
    {
        Console.WriteLine($"{args.UpdateCompleted}/{args.TotalFieldsCount}");
    }
}
{{< /highlight >}}

### Renamed PdfSaveOptions.CacheHeaderFooterShapes property

PdfSaveOptions.CacheHeaderFooterShapes property renamed to PdfSaveOptions.CacheBackgroundGraphics and enabled by default:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value determining whether or not to cache graphics placed in document's background.
/// </summary>
/// <remarks>
/// <para> Default value is <c>true</c> and background graphics are written to the PDF document as an xObject.</para>
/// <para> When the value is <c>false</c> background graphics are not cached.</para>
/// <para> Some shapes are not supported for caching(shapes with fields, bookmarks, HRefs).</para>
/// <para> Document background graphic is various shapes, charts, images placed in the footer or header,
/// well as background and border of a page.</para>
/// </remarks>
public bool CacheBackgroundGraphics { get; set; }
{{< /highlight >}}

The new property allows you to cache the header/footer shapes and reduce the size of PDF output file.
Use Case:
{{< highlight csharp >}}
Document doc = new Document(fileName);
PdfSaveOptions saveOptions = new PdfSaveOptions();
saveOptions.CacheBackgroundGraphics = true;
doc.Save(outputFileName, saveOptions);
{{< /highlight >}}

### Supported tag headers to match opening and closing tags for LINQ Reporting Engine

Related issue: WORDSNET-23489

From now on, it is possible to use template tag headers to match opening and closing tags and make LINQ Reporting Engine indicate an error in case of a mismatch, for example, because of a wrong closing tags’ order. Template syntax for using tag headers is as follows:
{{< highlight csharp >}}
<<tag_name ... #header1>><<tag_name ... #header2>>...<</tag_name #header2>><</tag_name #header1>>
{{< /highlight >}}

### Added a switch to trim the last paragraph break when inserting a document using LINQ Reporting Engine

Related issue: WORDSNET-24350

Starting from Aspose.Words 22.11, you can trim the last paragraph break from a document being dynamically inserted by LINQ Reporting Engine. The template syntax for this is as follows:
{{< highlight csharp >}}
<<doc [document_expression] -inline>>
{{< /highlight >}}