---
title: Aspose.Words for Java 22.1 Release Notes
articleTitle: Aspose.Words for Java 22.1 Release Notes
linktitle: Aspose.Words for Java 22.1 Release Notes
description: "Aspose.Words for Java 22.1 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 120
url: /java/aspose-words-for-java-22-1-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 22.1](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/22.1).

{{% /alert %}}

## Major Features

There are 76 improvements and fixes in this regular monthly release. The most notable are:

- Implemented rendering into PDF with PDF/UA-1 compliance. This option assumes compliance with document special accessibility requirements.
- Improved rendering of operators in MathML formulas.
- Introduced a new option to control conflicting styles behavior upon import.
- Added an ability to get saving progress notifications through the SaveOptions.ProgressCallback.
- Provided dynamic text color setting using LINQ Reporting Engine.

## Full List of Issues Covering all Changes in this Release (Reported by Java Users)

|Key|Summary|Category|
| :- | :- | :- |
| WORDSJAVA-2586 | Regular check&update of OSGI   compatibility. | New Feature |
| WORDSNET-23142 | Support HTML color codes as color values for LINQ Reporting Engine tags | New Feature |
| WORDSNET-22953 | Comparing documents with changes around a table cause the table to be   marked as deleted and re-added | Bug |
| WORDSNET-22436 | Font-size incorrectly added to paragraph tag, it should be added to span   instead | Bug |
| WORDSNET-22562 | Document.Compare does not ignore comment | Bug |
| WORDSNET-23215 | InvalidCastException is thrown upon loading document | Bug |
| WORDSNET-22824 | Chart issues when converting DOCX to PDF | Bug |
| WORDSNET-22956 | Revision.Accept throws System.InvalidOperationException | Bug |
| WORDSNET-22983 | Blank page is produced in output PDF where hidden content was in the   original document | Bug |
| WORDSNET-23253 | Exported PDF contains image with lower resolution | Bug |

## Full List of Issues Covering all Changes in this Release (Reported by .NET Users)

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-22882 | Provide dynamic text color setting using LINQ Reporting Engine | New Feature |
| WORDSNET-11575 | Add option to stop Document.Save method after specific time | New Feature |
| WORDSNET-23246 | Provide list style in Aps | New Feature |
| WORDSNET-1506 | Add feature to set image as background of TextBox | New Feature |
| WORDSNET-12792 | Add feature to set Fill.ImageBytes | New Feature |
| WORDSNET-6614 | Support of PdfCompliance PDF/UA | New Feature |
| WORDSNET-19268 | Incorrect behavior of KeepSourceFormatting ImportFormatMode | New Feature |
| WORDSNET-18739 | Gather data about gradient fills | New Feature |
| WORDSNET-16357 | Implement ability to replace shape background image | New Feature |
| WORDSNET-22884 | Cross-reference not working in Docker after CustomXmlParts property is   set | Enhancement |
| WORDSNET-22692 | Compare document with content control | Enhancement |
| WORDSNET-22664 | Shape.OleFormat returns null when Excel chart is copied to Word using   Option "Link & Keep Source Formatting" | Enhancement |
| WORDSNET-23223 | Pass a hyperlink ScreenTip from model to Aps | Enhancement |
| WORDSNET-20756 | DOCX to PDF conversion issue with accessibility | Enhancement |
| WORDSNET-23237 | RTF to DOCX - PUA characters treated as symbols instead of text | Bug |
| WORDSNET-22682 | After rendering a DML shape gets larger by 1 pixel than its original   image | Bug |
| WORDSNET-22853 | Image of a DML shape is shifted to the right after rendering | Bug |
| WORDSNET-22854 | Image of a DML shape is shifted to the top left after rendering | Bug |
| WORDSNET-23232 | NullReferenceException on cloning | Bug |
| WORDSNET-23269 | Remove obsolete property LayoutOptions.ShowComments | Bug |
| WORDSNET-22899 | Document compare is not working properly | Bug |
| WORDSNET-23224 | Process hangs when calling UpdateFields method | Bug |
| WORDSNET-23231 | Shape.Id is duplicated for watermarks inserted by Aspose.Words | Bug |
| WORDSNET-23234 | NullReferenceException while re-saving document | Bug |
| WORDSNET-17523 | How to determine maximum value for table border | Bug |
| WORDSNET-22883 | Cross-reference not working after removing XML mapping | Bug |
| WORDSNET-23252 | Font is changed after open/save DOCX | Bug |
| WORDSNET-23211 | Setting mapping creates corrupted table | Bug |
| WORDSNET-23213 | The end-of-cell marker has been removed from the new row | Bug |
| WORDSNET-23180 | Section breaks are changed after inserting document | Bug |
| WORDSNET-22845 | PDF Accessibility Checker (PAC 3) reports failures upon testing for   PDF/UA compatibility | Bug |
| WORDSNET-20766 | Structure element issues after DOCX to PDF conversion | Bug |
| WORDSNET-22919 | Word table formatting issue using Customer XML data | Bug |
| WORDSNET-23220 | The paragraph is missing when using WordOpenXML | Bug |
| WORDSNET-22660 | Compile Time error when using Aspose Words for .Net in C++/CLI project | Bug |
| WORDSNET-23226 | Incorrect size and position of the minus sign | Bug |
| WORDSNET-23229 | Fix minor rendering issue | Bug |
| WORDSNET-22526 | Unwanted styles appear during DOTX to DOCX conversion | Bug |
| WORDSNET-22939 | NullReferenceException while converting DOCX to PDF | Bug |
| WORDSNET-23212 | IndexOutOfRangeException at ColorSpaceDeviceRGB.ToRgb | Bug |
| WORDSNET-23194 | Saving RTF file hangs indefinitely | Bug |
| WORDSNET-21205 | DOCX to PDF conversion issue with chart rendering | Bug |
| WORDSNET-22954 | Formatting of footnote is changed after re-saving document | Bug |
| WORDSNET-23175 | IndexOutOfRangeException in PdfSyntaxParser.ParseArray | Bug |
| WORDSNET-23187 | FileCorruptedException is thrown while loading document | Bug |
| WORDSNET-23203 | NullReferenceException at PdfOperatorTj.Apply | Bug |
| WORDSNET-23177 | NullReferenceException if page resources are missing | Bug |
| WORDSNET-22804 | Document.Compare throws System.InvalidCastException | Bug |
| WORDSNET-23023 | FormatException at PdfTokenParser.EnterHexStringState | Bug |
| WORDSNET-21416 | Strikethrough formatting in list indent is disappeared after DOCX to PDF   conversion | Bug |
| WORDSNET-23171 | System.StackOverflowException is thrown while loading RTF | Bug |
| WORDSNET-22710 | Bad performance of "UpdatePageLayout" | Bug |
| WORDSNET-23193 | InvalidCastException: Cannot cast PdfDictionary to PdfArray | Bug |
| WORDSNET-23189 | FormatException at TimeSpanFormat.FormatCustomized | Bug |
| WORDSNET-22981 | Image becomes hidden after open/save document | Bug |
| WORDSNET-23151 | Wrong date format in chart after converting DOCX to PDF | Bug |
| WORDSNET-22618 | Percentage Values of a Vertical Axis of Chart are not Preserved | Bug |
| WORDSNET-22925 | Math Equation (Shape) does not render correctly in output PDF | Bug |
| WORDSNET-23041 | Wrong letters order for RTL text (Persian OCR) | Bug |
| WORDSNET-23027 | NullReferenceException at SASLPrepAlgorithm.MapCharacters | Bug |
| WORDSNET-23192 | KeyNotFoundException in RomanNumber.TryParse | Bug |
| WORDSNET-23173 | The shape is changed while exporting from DOCX to PDF, DOC or RTF | Bug |
| WORDSNET-22127 | Heading style attributes are not applied | Bug |
| WORDSNET-19692 | Formula converted incorrectly (DOCX to PDF) | Bug |
| WORDSNET-23184 | Opening HTM file hangs indefinitely | Bug |
| WORDSNET-23161 | DllNotFoundException occurs when use HarfBuzzTextShaperFactory in .NET   6.0 | Bug |

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 22.1. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added GraphicsQualityOptions.UseTileFlipMode property

A white line may appear in the corner of the particular image when rendering an image with a high resolution (scaling)- and this is a GDI+ issue.
New UseTileFlipMode option has been added to fix this GDI+ issue:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets WrapMode to TileFlipXY. Default WrapMode results in inaccurate rendered scaled image.
/// </summary>
public bool UseTileFlipMode { get; set; }
{{< /highlight >}}

Use Case:
{{< highlight csharp >}}
Document doc = new Document("input.docx");
Shape shape = (Shape)doc.GetChild(NodeType.Shape, 0, true);
ShapeRenderer renderer = shape.GetShapeRenderer();
ImageSaveOptions so = new ImageSaveOptions(SaveFormat.Png);
so.Resolution = 500;
so.GraphicsQualityOptions = new GraphicsQualityOptions();
so.GraphicsQualityOptions.UseTileFlipMode = true;
renderer.Save("out.png", so);
{{< /highlight >}}

### Added new Chart.SourceFullName property

Related issue: WORDSNET-22664

The following public property has been added to the Chart class. If a chart is linked to an external xls/xlsx document, the property returns its file name.
{{< highlight csharp >}}
/// <summary>
/// Gets the path and name of an xls/xlsx file this chart is linked to.
/// </summary>
public string SourceFullName { get; }
{{< /highlight >}}

Use Case:
{{< highlight csharp >}}
Document doc = new Document(fileName);
Shape shape = (Shape)doc.GetChild(NodeType.Shape, 0, true);
Console.WriteLine(shape.Chart.SourceFullName);
{{< /highlight >}}

### Added new ImportFormatOptions.ForceCopyStyles property

Related issue: WORDSNET-19268.

The following public property is added to ImportFormatOptions class:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets a boolean value indicating either to copy conflicting styles
/// in <see cref="ImportFormatMode.KeepSourceFormatting"/> mode.
/// The default value is <c>false</c>.
/// </summary>
/// <remarks>
/// <para>By default, if a matching style already exists in a destination document, the source style formatting
/// is expanded into direct node attributes and the style of this node is reset to a default.</para>
/// <para> When this option is set to <c>true</c>, the source style will be forcibly copied
/// into destination document with unique name and applied to the imported node.</para>
/// <para> Note, in this case it is not guaranteed that formatting of the imported node in destination document
/// will be preserved. </para>
/// </remarks>
public bool ForceCopyStyles { get; set; }
{{< /highlight >}}

Use Case: Explains how to force import styles in KeepSourceFormatting mode.
{{< highlight csharp >}}
// There are MyStyle1 and MyStyle2 in both source and destination document.
// Also there is style MyStyle3 that exists only in source document.
Document srcDoc = new Document("Src.docx");
Document dstDoc = new Document("Dst.docx");
 
ImportFormatOptions options = new ImportFormatOptions { ForceCopyStyles = true };
NodeImporter nodeImporter = new NodeImporter(srcDoc, dstDoc, ImportFormatMode.KeepSourceFormatting, options);
 
Console.WriteLine("Imported styles:");
ParagraphCollection paras = srcDoc.FirstSection.Body.Paragraphs;
for (int i = 0; i < paras.Count; i++)
{
    Paragraph importedPara = (Paragraph)nodeImporter.ImportNode(paras[i], true);
    Console.WriteLine(importedPara.ParagraphStyle.Name);
}
 
// The code produces the following output:
// Imported styles:
// MyStyle1_0
// MyStyle2_0
// MyStyle3
{{< /highlight >}}

### Added SaveOptions.ProgressCallback property

Related issue: WORDSNET-11575

The following public property is added to SaveOptions class:
{{< highlight csharp >}}
/// <summary>
/// Called during saving a document and accepts data about saving progress.
/// </summary>
/// <remarks>
/// <para><see cref="SaveFormat.Docx"/>, <see cref="SaveFormat.FlatOpc"/>, <see cref="SaveFormat.Docm"/>, <see cref="SaveFormat.Dotm"/>, <see cref="SaveFormat.Dotx"/> formats supported.</para>
/// </remarks>
public IDocumentSavingCallback ProgressCallback
{{< /highlight >}}

Supported formats are: 
   - Docx
   - FlatOpc
   - Docm
   - Dotm
   - Dotx

Consumer should to implement the following interface and set instance of it to the ProgressCallback for ability to get saving progress notifications.
{{< highlight csharp >}}
/// <summary>
/// Implement this interface if you want to have your own custom method called during saving a document.
/// </summary>
public interface IDocumentSavingCallback
{
     /// <summary>
     /// This is called to notify of document saving progress.
     /// </summary>
     /// <param name="args">An argument of the event.</param>
     /// <remarks>
     /// The primary uses for this interface is to allow application code to obtain progress status and abort saving process.<para/>
     /// An exception should be threw from the progress callback for abortion and it should be caught in the consumer code.<para/>
     /// </remarks>
     void Notify(DocumentSavingArgs args);
}
{{< /highlight >}}

Structure of the accepted arguments is:
{{< highlight csharp >}}
/// <summary>
/// An argument passed into <see cref="IDocumentSavingCallback.Notify(DocumentSavingArgs)"/>.
/// </summary>
public sealed class DocumentSavingArgs
{
     /// <summary>
     /// Overall estimated percentage progress.
     /// </summary>
     public double EstimatedProgress { get; }
}
{{< /highlight >}}

Use case:
{{< highlight csharp >}}
/// <summary>
/// Saving progress callback. Cancel a document saving after the "MaxDuration" seconds.
/// </summary>
public class SavingProgressCallback : IDocumentSavingCallback
{
     /// <summary>
     /// Ctr.
     /// </summary>
     public SavingProgressCallback()
     {
         mSavingStartedAt = DateTime.Now;
     }
 
     /// <summary>
     /// Callback method which called during document saving.
     /// </summary>
     /// <param name="args">Saving arguments.</param>
     public void Notify(DocumentSavingArgs args)
     {
         DateTime canceledAt = DateTime.Now;
         double ellapsedSeconds = (canceledAt - mSavingStartedAt).TotalSeconds;
         if (ellapsedSeconds > MaxDuration)
             throw new OperationCanceledException($"EstimatedProgress = {args.EstimatedProgress}; CanceledAt = {canceledAt}");
     }
 
     /// <summary>
     /// Date and time when document saving is started.
     /// </summary>
     private readonly DateTime mSavingStartedAt;
 
     /// <summary>
     /// Maximum allowed duration in sec.
     /// </summary>
     private const double MaxDuration = 100d;
}
{{< /highlight >}}

Loading document code:
{{< highlight csharp >}}
SavingProgressCallback cb = new SavingProgressCallback();
SaveOptions so = new OoxmlSaveOptions(SaveFormat.Docx);
so.ProgressCallback = cb;
 
try
{
   Document doc = new Document("bigDoc.rtf");
 
   // Do work.
   doc.Save("bigDoc.docx", so);
}
catch (OperationCanceledException ex)
{
   Console.WriteLine(ex.Message);
   // Handle saving duration issue.
}
{{< /highlight >}}

### Added saving to PDFUA-1

Related issue: WORDSNET-6614

New value added to PdfCompliance enum
{{< highlight csharp >}}
public enum PdfCompliance
{
    /// <summary>
    /// The output file will comply with the PDF/UA-1 (ISO 14289-1) standard.
    /// The primary purpose of PDF/UA is to define how to represent electronic documents in the PDF format in a
    /// manner that allows the file to be accessible.
    /// </summary>
    PdfUa1
}
{{< /highlight >}}

Several PdfSaveOptions are prohibited when saving to PDF/UA and they are automatically fixed. Also options which are prohibited for PDF/A formats are now automatically fixed instead of throwing exception. 
Also warning is issued when option is automatically fixed.
{{< highlight csharp >}}
public class PdfSaveOptions
{
    /// <summary>
    /// Specifies whether to preserve Microsoft Word form fields as form fields in PDF or convert them to text.
    /// Default is <c>false</c>.
    /// </summary>
    /// <remarks>
    ...
    /// <para>Editable forms are prohibited by PDF/A compliance. <c>false</c> value will be used automatically
    /// when saving to PDF/A.</para>
    /// <para>Form fields are not supported when saving to PDF/UA. <c>false</c> value will be used automatically.</para>
    /// </remarks>
    public bool PreserveFormFields;
 
    /// <summary>
    /// Gets or sets the details for encrypting the output PDF document.
    /// </summary>
    /// <remarks>
    ...
    /// <para>Encryption is prohibited by PDF/A compliance. This option will be ignored when saving to PDF/A.</para>
    /// <para><see cref="PdfPermissions.ContentCopyForAccessibility"/> permission is required by PDF/UA compliance
    /// if the output document is encrypted. This permission will automatically used when saving to PDF/UA.</para>
    /// </remarks>
    public PdfEncryptionDetails EncryptionDetails;
 
    /// <summary>
    /// Specifies the font embedding mode.
    /// </summary>
    /// <remarks>
    ...
    /// <para>PDF/A and PDF/UA compliance requires all fonts to be embedded.
    /// <see cref="PdfFontEmbeddingMode.EmbedAll"/> value will be used automatically when saving to
    /// PDF/A and PDF/UA.</para>
    /// </remarks>
    public PdfFontEmbeddingMode FontEmbeddingMode
 
    /// <summary>
    /// Gets or sets a value determining whether or not to substitute TrueType fonts Arial, Times New Roman,
    /// Courier New and Symbol with core PDF Type 1 fonts.
    /// </summary>
    /// <remarks>
    ...
    /// <para>PDF/A and PDF/UA compliance requires all fonts to be embedded. <c>false</c> value will be used
    /// automatically when saving to PDF/A and PDF/UA.</para>
    /// </remarks>
    public bool UseCoreFonts
 
    /// <summary>
    /// Gets or sets a value determining the way <see cref="Document.CustomDocumentProperties"/> are exported to PDF file.
    /// </summary>
    /// <remarks>
    ...
    /// <para><see cref="PdfCustomPropertiesExport.Metadata"/> value is not supported when saving to PDF/A.
    /// <see cref="PdfCustomPropertiesExport.Standard"/> will be used instead.
    /// </para>
    /// </remarks>
    public PdfCustomPropertiesExport CustomPropertiesExport
 
    /// <summary>
    /// Gets or sets a value determining whether hyperlinks in the output Pdf document
    /// are forced to be opened in a new window (or tab) of a browser.
    /// </summary>
    /// <remarks>
    ...
    /// <para>JavaScript actions are prohibited by PDF/A compliance. <c>false</c> will be used automatically when
    /// saving to PDF/A.</para>
    /// </remarks>
    public bool OpenHyperlinksInNewWindow
 
    /// <summary>
    /// Gets or sets a value determining whether or not to export document structure.
    /// </summary>
    /// <remarks>
    /// <para>
    /// This value is ignored when saving to PDF/A-1a, PDF/A-2a and PDF/UA-1 because document structure is required for this compliance.
    /// </para>
    ...
    /// </remarks>
    public bool ExportDocumentStructure
 
    /// <summary>
    /// Specifies how the color space will be selected for the images in PDF document.
    /// </summary>
    /// <remarks>
    ...
    /// <para><see cref="PdfImageColorSpaceExportMode.SimpleCmyk"/> value is not supported when saving to PDF/A.
    /// <see cref="PdfImageColorSpaceExportMode.Auto"/> value will be used instead.</para>
    /// </remarks>
    public PdfImageColorSpaceExportMode ImageColorSpaceExportMode
 
    /// <summary>
    /// A flag specifying whether the window’s title bar should display the document title taken from
    /// the Title entry of the document information dictionary.
    /// </summary>
    /// <remarks>
    ...
    /// <para>This flag is required by PDF/UA compliance. <c>true</c> value will be used automatically when saving
    /// to PDF/UA.</para>
    ...
    /// </remarks>
    public bool DisplayDocTitle
 
    /// <summary>
    /// A flag indicating whether image interpolation shall be performed by a conforming reader.
    /// When <c>false</c> is specified, the flag is not written to the output document and
    /// the default behaviour of reader is used instead.
    /// </summary>
    /// <remarks>
    ...
    /// <para>Interpolation flag is prohibited by PDF/A compliance. <c>false</c> value will be used automatically
    /// when saving to PDF/A.</para>
    /// </remarks>
    public bool InterpolateImages
}
{{< /highlight >}}

### Provided dynamic text color setting using LINQ Reporting Engine

Related issue: WORDSNET-22882

The ["Setting Text Color Dynamically"](/words/net/linq-reporting-engine/) section of the engine's documentation was updated to describe the change.

### Supported HTML color codes as color values for LINQ Reporting Engine tags

Related issue: WORDSNET-23142

The following sections of the engine's documentation were updated to describe the changes:

["Setting Chart Series Colors Dynamically"](/words/net/linq-reporting-engine/)
["Setting Chart Series Point Colors Dynamically"](/words/net/linq-reporting-engine/)
["Setting Background Color Dynamically"](/words/net/linq-reporting-engine/)

### Removed obsolete property LayoutOptions.ShowComments

Removes obsolete property LayoutOptions.ShowComments.
{{< highlight csharp >}}
public bool ShowComments { get; set; }
{{< /highlight >}}

Use LayoutOptions.CommentDisplayMode property instead:
{{< highlight csharp >}}
Document doc = new Document("in.docx");
doc.LayoutOptions.CommentDisplayMode = CommentDisplayMode.ShowInBalloons;
doc.Save("out.pdf");
{{< /highlight >}}