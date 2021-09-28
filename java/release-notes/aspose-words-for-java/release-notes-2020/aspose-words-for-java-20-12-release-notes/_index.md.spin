---
title: Aspose.Words for Java 20.12 Release Notes
type: docs
weight: 1
url: /java/aspose-words-for-java-20-12-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 20.12](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.12/).

{{% /alert %}} 

## Major Features

There are 116 improvements and fixes in this regular monthly release. The most notable are:

- Improved Arabic fonts rendering using Harfbuzz plugin.
- Added an ability to allow embedding of PostScript Fonts upon save documents.
- Implemented condition evaluation extension point.
- Provided an option to import styles from a dynamically inserted document for LINQ Reporting Engine.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-16895 | Add feature to insert style separator using   DOM | New Feature |
| WORDSNET-20552 | LINQ Reporting Engine - Provide a way to import styles from a dynamically   inserted document | New Feature |
| WORDSNET-18827 | Add option to perform memory optimization while loading document | New Feature |
| WORDSNET-21432 | Check Aspose.Words for .NET Standard works with .NET 5.0 | New Feature |
| WORDSNET-21102 | Add feature to export inserted SVG as SVG in media folder | New Feature |
| WORDSNET-21441 | Provide access to common StructuredDocumentRangeStart properties | New Feature |
| WORDSNET-11665 | Macros better support including read/add/delete/import/edit | New Feature |
| WORDSNET-18804 | ManualLayout settings in dataLabel extLst should be taken into account | Enhancement |
| WORDSNET-3863 | Consider exposing FontAttr.SpecialHidden property | Enhancement |
| WORDSNET-12430 | Word spell checker not activated in converted DOCX | Enhancement |
| WORDSNET-14063 | ODT to PDF conversion issue with table's rendering | Enhancement |
| WORDSJAVA-1937 | SVG round and square | Bug |
| WORDSJAVA-2105 | Implement overlapped dash segments in SVG round caps. | Bug |
| WORDSJAVA-2107 | Remove trailing dash segment in SVG dash cap. | Bug |
| WORDSJAVA-2234 | /advanced typography/ DOCM to PDF conversion issue with Dubai Font | Bug |
| WORDSJAVA-2438 | Some characters are not rendered or have incorrect widths (Harfbuzz) | Bug |
| WORDSJAVA-2459 | /harfbuzz + java specific/ Partial rendering of Arabic Words and font is   incorrect in PDF rendition | Bug |
| WORDSJAVA-2491 | Table Style margins not read from DOCX | Bug |
| WORDSJAVA-2494 | StreamFontSource cannot be extended. | Bug |
| WORDSJAVA-2495 | Javadoc is automatically loaded in some maven environment. | Bug |
| WORDSNET-21251 | Contents of document are lost after DOCX to PDF | Bug |
| WORDSNET-17941 | Text in table's cell is rendered on next line in output PDF | Bug |
| WORDSNET-21467 | "Unrecognized operand value in the formula." exception when   open document DOCX file | Bug |
| WORDSNET-20722 | Aspose.Words.FileCorruptedException occurs upon loading a DOCX | Bug |
| WORDSNET-21485 | List numbering updates when KeepSourceNumbering is true | Bug |
| WORDSNET-21331 | Incomplete rendering of barcode in TIFF | Bug |
| WORDSNET-21337 | Loading as RTF format: System.NotSupportedException: 'Memory stream is   not expandable.' | Bug |
| WORDSNET-21346 | Hidden text in Word is shown on Aspose rendered PDF | Bug |
| WORDSNET-21349 | The w14:docId has been removed after re-saving | Bug |
| WORDSNET-21017 | Comments structure is not correct after generating document by LINQ   Reporting | Bug |
| WORDSNET-21371 | Fixed layout HTML from Word does not print correctly | Bug |
| WORDSNET-20711 | Reporting engine does not populate all data when JSON data source is used | Bug |
| WORDSNET-21373 | Root resource is not found in a multipart structure exception when   opening MHT file | Bug |
| WORDSNET-21347 | Document Comparison-Redlining is not accurate | Bug |
| WORDSNET-20816 | Text language is changed from Hebrew to Arabic after DOCX>HTML>DOCX | Bug |
| WORDSNET-21378 | System.NullReferenceException is thrown while saving RTF to PDF | Bug |
| WORDSNET-21380 | UpdateFields causes Process to hang after optimizing for Word 2016 | Bug |
| WORDSNET-17565 | Saving a word document as PDF cuts off some footer text | Bug |
| WORDSNET-18375 | Property PageCount returns more pages than exist in document | Bug |
| WORDSNET-21385 | System.ArgumentOutOfRangeException is thrown while saving DOCX to TXT | Bug |
| WORDSNET-20997 | Document.Compare produces revisions for unchanged images | Bug |
| WORDSNET-21402 | Process hangs during DOCX to PDF conversion | Bug |
| WORDSNET-19255 | Debug.Assert failure in the layout code when a DOCX document is converted   to PDF | Bug |
| WORDSNET-20364 | Table aligment and font issue after DOCX - HTML - DOCX conversion | Bug |
| WORDSNET-19042 | Different Non Visual Properties for images (nvPicPr) in the same document | Bug |
| WORDSNET-20704 | Tab Stops of style are incorrect after copying style | Bug |
| WORDSNET-18646 | Small ellipses are deformed on rendering | Bug |
| WORDSNET-20404 | Chart Title should Render in Three Lines when Converting to Image | Bug |
| WORDSNET-16702 | Provide RenderToSize and RenderToScale methods through SkiaSharp.SKCanvas | Bug |
| WORDSNET-20007 | Parent node of Run node returns null after replacing text of Run node | Bug |
| WORDSNET-20267 | insertHTML - Big image containing math equations not visible in Word | Bug |
| WORDSNET-21218 | Left Indent lost after Appending Document | Bug |
| WORDSNET-21411 | Incorrect rendering of charts that contains series without Y-values (only   X-valyes) | Bug |
| WORDSNET-21413 | Character spacing problem for Wingdings, Symbol \| RTF to PDF Conversion | Bug |
| WORDSNET-19312 | System.InvalidOperationException - too many styles in the document | Bug |
| WORDSNET-19787 | Document.Save does not save MHTML to PDF | Bug |
| WORDSNET-21230 | Table border size is increased after joining documents | Bug |
| WORDSNET-20709 | Unable to Extract Content from Bookmarks | Bug |
| WORDSNET-21232 | Long hand format lost if value over a billion | Bug |
| WORDSNET-20752 | MHTML to PDF fails to complete | Bug |
| WORDSNET-21236 | Calling UpdateFields before Rendering causes many Error\! Reference source   not found | Bug |
| WORDSNET-20767 | Table row is pushed in MW and not pushed in AW | Bug |
| WORDSNET-20773 | Incorrect comparison of Words | Bug |
| WORDSNET-20776 | Document can't be loaded | Bug |
| WORDSNET-20160 | Document comparison result is different comparing to MS Word result | Bug |
| WORDSNET-20173 | MHTML to PDF conversion lasts for too long | Bug |
| WORDSNET-20553 | BookmarkEnd is created in another node DOCX is saved to HTML | Bug |
| WORDSNET-21428 | Extra /missing line / text cut off in PDF converted from the latest   Aspose.Words | Bug |
| WORDSNET-21242 | System.ArgumentException is thrown while saving DOCX to HTML | Bug |
| WORDSNET-21430 | JsonDataSource throws System.Data.DuplicateNameException | Bug |
| WORDSNET-21100 | DOCX to HTML conversion issue with text shifting in tables cell using C# | Bug |
| WORDSNET-21302 | System.Text.DecoderFallbackException and System.Xml.XmlException | Bug |
| WORDSNET-21248 | Duplicate message content in converted PDF for SMIME Outlook Message   conversion to PDF | Bug |
| WORDSNET-20874 | DOCX to PDF conversion issue with list item rendering | Bug |
| WORDSNET-21436 | w14:paraId and w14:textId removed after re-saving the document | Bug |
| WORDSNET-21254 | InvalidCastException while load document in .netcore | Bug |
| WORDSNET-21405 | Image is inserted incorrectly into textbox after mail merge | Bug |
| WORDSNET-21255 | System.ArgumentOutOfRangeException: 'Index was out of range.' is shown   during UpdatePageLayout() | Bug |
| WORDSNET-20897 | HtmlSaveOptions.ScaleImageToShapeSize has no effect | Bug |
| WORDSNET-20515 | Spell Check Disabled after Aspose.Words' Find and Replace Operation | Bug |
| WORDSNET-20910 | A long paragraph with shape near the bottom occupies many pages | Bug |
| WORDSNET-19275 | Numbering chapters disappear during appending documents | Bug |
| WORDSNET-21119 | Incorrect rendering of series data label of PieChart. | Bug |
| WORDSNET-20937 | System.InvalidCastException is thrown while saving DOCX to HTML | Bug |
| WORDSNET-21132 | The root element "Document" is missing in document structure of   PDF | Bug |
| WORDSNET-20947 | DOCX to PDF conversion issue with rectangle shape rendering | Bug |
| WORDSNET-20948 | DOCX to PDF conversion issue with shape | Bug |
| WORDSNET-20951 | Fill in Document.CompatibilityOptions according to LoadOptions.MswVersion   when loading HTML | Bug |
| WORDSNET-21139 | HtmlFixedSave mirror hebrew inside shapes | Bug |
| WORDSNET-21393 | Unexpected page break in table issue - RTF to PDF | Bug |
| WORDSNET-16606 | DOCX to PDF conversion error: java.lang.IllegalStateException: Infinite   loop detected | Bug |
| WORDSNET-20737 | DOCX to PDF conversion issue with comment rendering | Bug |
| WORDSNET-21146 | Table rows are rendered on the next page after DOCX to PDF conversion | Bug |
| WORDSNET-21463 | An exception was thrown while activating Kzb \-> bec \-> ?:_adB upon   PDF import on .NET 5.0 | Bug |
| WORDSNET-21276 | Misaligned text and extra wrap in inserted SVG | Bug |
| WORDSNET-21278 | Document.Compare generates the incorrect revisions | Bug |
| WORDSNET-21468 | FileLoadException while opening PDF document. | Bug |
| WORDSNET-20658 | Conversion time issue while converting PDF to DOCX | Bug |
| WORDSNET-21296 | Paragraphs are changed to number list after joining document | Bug |
| WORDSNET-21308 | Empty extracted page | Bug |
| WORDSNET-21303 | Text from chevron list&nbsp; (SmartArt   Shape) rendered upside down in Html Fixed | Bug |
| WORDSNET-20760 | Issue rendering quote characters   that appear inside of p, div or blockquote tags | Bug |
| WORDSNET-9499 | A DrawingML in Cell is pushed a few inches to the right in PDF | Bug |
| WORDSNET-9833 | Document.PageCount returns wrong value | Bug |
| WORDSNET-10251 | Text renders outside the right page edge in PDF | Bug |
| WORDSNET-10180 | DOCX to PDF conversion issue with content position | Bug |
| WORDSNET-16093 | Text overlapping in rendered PDF | Bug |
| WORDSNET-20822 | DOCX to PDF conversion issue with image quality | Bug |
| WORDSNET-21287 | Image is lost after conversion from HTML to DOCX | Bug |
| WORDSNET-11193 | Footnote and text position is changed after conversion from DOCX to   PDF/PNG | Bug |
| WORDSNET-10046 | A DrawingML overlaps the content of Table | Bug |
| WORDSNET-16693 | TestDefect3702 image has incorrect dimensions | Bug |
| WORDSNET-20971 | Page Count issue | Bug |
| WORDSNET-12923 | DOCX to PDF conversion issue with shape's position | Bug |
| WORDSNET-9834 | PAGE field value is calculated incorrectly | Bug |
| WORDSNET-16094 | Incorrect text rendering order in resultant PDF | Bug |

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 20.12. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies existing behavior is especially important and is documented here.

### Added a new public properties Document.SpellingChecked and Document.GrammarChecked

Related issue: WORDSNET-21120

Added a new public property SaveOptions.AllowEmbeddingPostScriptFonts:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a boolean value indicating whether to allow embedding fonts with PostScript outlines
/// when embedding TrueType fonts in a document upon it is saved.
/// The default value is false<.
/// </summary>
/// <remarks>
/// <para>Note, Word does not embed PostScript fonts, but can open documents with embedded fonts of this type.</para>
/// <para>This option only works when <see cref="FontInfoCollection.EmbedTrueTypeFonts"/> of the
/// <see cref="DocumentBase.FontInfos"/> property is set to true.</para>
/// </remarks>
public bool AllowEmbeddingPostScriptFonts { get; set; }
{{< /highlight >}}

Use Case:

{{< highlight csharp >}}
const string testDir = "\\TestDir\\";
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
 
// Create some content that will use PostScript font.
builder.Font.Name = "PostScriptFont";
builder.Writeln("Some text with PostScript font.");
 
// Load the font with PostScript to use in the document.
FontSourceBase otf = new MemoryFontSource(File.ReadAllBytes(testDir + "PostScriptFont.otf"));
FontSourceBase[] sources = new FontSourceBase[] {otf};
doc.FontSettings = new FontSettings();
doc.FontSettings.SetFontsSources(sources);
 
// Embed TrueType fonts.
doc.FontInfos.EmbedTrueTypeFonts = true;
// Allow embedding PostScript fonts while embedding TrueType fonts.
SaveOptions saveOptions = SaveOptions.CreateSaveOptions(SaveFormat.Docx);
saveOptions.AllowEmbeddingPostScriptFonts = true;
 
// Save document with embedded PostScript font.
doc.Save(testDir + "out.docx", saveOptions);
{{< /highlight >}}

### Changed DocumentBuilder.InsertImage behavior when insert SVG images

We changed DocumentBuilder.InsertImage behavior when insert SVG. Earlier Aspose.Words inserted SVG as EMF metafile to keep the inserted image in vector representation.
Now AW inserts SVG as PNG with svgBlip extension that contain the original SVG image, just like MS Word does.

Use Case 1:
{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.InsertImage("test.svg");
doc.Save("out.docx");
{{< /highlight >}}

SVG image is inserted into the document as PNG with svgBlip extension that contains the original vector SVG image representation.

Use Case 2 - Document is saved in old MS Word format:
{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.InsertImage("test.svg");
doc.Save("out.doc");
{{< /highlight >}}

SVG image is saved to output document as PNG, just like MS Word does.

Use Case 3 - Document is optimized for old versions of MS Word using OptimizeFor method:
{{< highlight csharp >}}
Document doc = new Document();
doc.CompatibilityOptions.OptimizeFor(Settings.MsWordVersion.Word2003);
DocumentBuilder builder = new DocumentBuilder(doc);
builder.InsertImage("test.svg");
doc.Save("out.doc");
{{< /highlight >}}

SVG is inserted into the document as EMF metafile to keep the image in vector representation (old Aspose.Word behavior).

### Changed version of MS Word during import Html

Related issue: WORDSNET-20364

Previously, the LoadOptions.MswVersion property had no effect when loading documents from HTML and HTML-based formats (for example, MHTML). 
All documents were loaded as if no MswVersion were specified. This has been changed and now the HTML reader may load documents differently depending on the value of MswVersion. 
Since the default value of MswVersion is MsWordVersion.Word2019, by default HTML documents are loaded as if they are opened by MS Word 2019.

Customer may change this behavior by specifying the required version of MS Word in LoadOptions. For example:

{{< highlight csharp >}}
LoadOptions loadOptions = new LoadOptions();
loadOptions.MswVersion = Settings.MsWordVersion.Word2010;
Document doc = new Document("in.html", loadOptions);
{{< /highlight >}}

### Implemented condition evaluation extension point

Related issue: WORDSNET-20913

We have implemented extension point for condition evaluation. This allows users to implement custom evaluation for the IF and COMPARE fields.

{{< highlight csharp >}}
/// <summary>
/// The comparison expression.
/// </summary>
public sealed class ComparisonExpression
{
    /// <summary>
    /// Gets left expression.
    /// </summary>
    public string LeftExpression { get; }
 
    /// <summary>
    /// Gets comparison operator.
    /// </summary>
    public string ComparisonOperator { get; }
 
    /// <summary>
    /// Gets right expression.
    /// </summary>
    public string RightExpression { get; }
}

public sealed class ComparisonEvaluationResult
{
    /// <summary>
    /// Creates comparison evaluation result.
    /// </summary>
    public ComparisonEvaluationResult(bool result)
    {
        // ...
    }
 
    /// <summary>
    /// Creates failed comparison evaluation result with corresponding error message.
    /// </summary>
    public ComparisonEvaluationResult(string errorMessage)
    {
        // ...
    }
 
    /// <summary>
    /// Gets comparison evaluation result. 
    /// </summary>
    public bool Result { get; }
 
    /// <summary>
    /// Gets failed comparison evaluation result error message.
    /// </summary>
    public string ErrorMessage { get; }
}

/// <summary>
/// When implemented allows to override default comparison expressions evaluation for the <see cref="FieldIf"/> and <see cref="FieldCompare"/> fields.
/// </summary>
/// <seealso cref="FieldOptions.ComparisonExpressionEvaluator"/>
public interface IComparisonExpressionEvaluator
{
    /// <summary>
    /// Evaluates comparison expression.
    /// </summary>
    /// <remarks>
    /// The implementation should return <b>null</b> to indicate that the default evaluation should be performed.
    /// </remarks>
    ComparisonEvaluationResult Evaluate(Field field, ComparisonExpression expresion);
}

public sealed class FieldOptions
{
    /// <summary>
    /// Gets or sets the field comparison expressions evaluator.
    /// </summary>
    /// <seealso cref="IComparisonExpressionEvaluator"/>
    public IComparisonExpressionEvaluator ComparisonExpressionEvaluator { get; set; }
}
{{< /highlight >}}

Use Case:
{{< highlight csharp >}}
public class ComparisonExpressionEvaluator : IComparisonExpressionEvaluator
{
    public ComparisonExpressionEvaluator(ComparisonEvaluationResult result)
    {
        mResult = result;
    }
 
    public ComparisonEvaluationResult Evaluate(Field field, ComparisonExpression expresion)
    {
        return mResult;
    }
 
    private readonly ComparisonEvaluationResult mResult;
}


ComparisonEvaluationResult result = new ComparisonEvaluationResult(true);
ComparisonExpressionEvaluator evaluator = new ComparisonExpressionEvaluator(result);
 
document.FieldOptions.ComparisonExpressionEvaluator = evaluator;
{{< /highlight >}}

### Provided an option to import styles from a dynamically inserted document for LINQ Reporting Engine

Related issue: WORDSNET-20552

The ["Inserting Documents Dynamically"](/words/net/template-syntax/#inserting-documents-dynamically) section of the engine's documentation was updated to describe the change.
