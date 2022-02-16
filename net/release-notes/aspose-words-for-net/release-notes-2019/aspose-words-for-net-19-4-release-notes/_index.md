---
title: Aspose.Words for .NET 19.4 Release Notes
articleTitle: Aspose.Words for .NET 19.4 Release Notes
linktitle: Aspose.Words for .NET 19.4 Release Notes
description: "Aspose.Words for .NET 19.4 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 90
url: /net/aspose-words-for-net-19-4-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 19.4](https://www.nuget.org/packages/Aspose.Words/19.4.0).

{{% /alert %}} 

## Major Features

- Added a new ImportFormatOptions class for more flexible control over importing tasks.
- Provide API to change how text is vertically aligned within the Text Box.
- Added a new ImportFormatOptions.KeepSourceNumbering option for use in import operations.
- Added a new ImportFormatOptions.IgnoreTextBoxes option for use in import operations.
- Added property PdfSaveOptions.AdditionalTextPositioning to control writing of additional text positioning operators in PDF.
- Implemented processing of fonts with "_GB2312" name suffixes (e.g. “KaiTi” font) when rendering metafiles.
- Improved calculation of extrema when rendering DrawingML charts.
- Improved vertical axis scaling of the chart with a manual layout of the plot area when rendering.
- Improved impact assessment of the chart title size on the vertical axis scaling when rendering.
- Improved vertical axis scaling when rendering DrawingML charts with the specified legend and the manual layout of the plot area.
- Fixed a bug that caused a violation of PDF A-1b compliance when writing large text position adjustment values.
- Fixed a bug with calculating extremums of the vertical axis when rendering DrawingML charts.
- Fixed a bug with exception when converting a radar chart with empty Y-values to PDF.
- Fixed a bug with rendering of transparent shapes with line caps specified.
- Fixed infinite loop when shape overlapping is computed.
- Improved shading rendering for condensed text.
- Improved overlapping logic for frames and tables.
- Improved Keep With Next rule handling for paragraph splits.
- Improved Keep Lines Together rule handling in presence of floaters.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-14095|Add a border to a DML shape|New Feature|
|WORDSNET-18027|DOCX to PDF - additional gaps between characters in the printed text|New Feature|
|WORDSNET-17996|Provide API to change how text is vertically aligned within the Text Box|New Feature|
|WORDSNET-17534|NodeImporter. ListFormat not imported|Bug|
|WORDSNET-18107|Document.Save method does not stop while saving DOCX to PDF|Bug|
|WORDSNET-18130|Vertical container bounds for shapes in compatibility mode|Bug|
|WORDSNET-9890|TextBox with vertical text in Header is not preserved in PDF|Bug|
|WORDSNET-15523|Image missing when converting .docx to .pdf|Bug|
|WORDSNET-17951|Font formatting of Empty Paragraph is not preserved after DOCX->HTML->DOCX conversion|Bug|
|WORDSNET-18189|DocumentBuilder.insertHtml inserts extra space just before line break|Bug|
|WORDSNET-18231|Aspose.Words.FileCorruptedException is thrown while loading DOC|Bug|
|WORDSNET-18296|System.NullReferenceException occurs upon converting DOC to PDF|Bug|
|WORDSNET-17894|Images with the absolute path but no scheme are not saved|Bug|
|WORDSNET-18363|The content of the comments can't be highlighted in some cases|Bug|
|WORDSNET-18263|System.IndexOutOfRangeException is thrown while saving DOCX to HTML/PDF|Bug|
|WORDSNET-17821|Incorrect scaling of the second vertical axis after conversion to PDF|Bug|
|WORDSNET-18065|UpdateFields throws 'Requested default value for an unknown attribute' exception|Bug|
|WORDSNET-18110|Characters are overlapped after conversion from RTF to PDF|Bug|
|WORDSNET-18143|DOCX to HTML to DOC - "behind text" shape is positioned behind text because blank lines are removed|Bug|
|WORDSNET-18230|DOCX to PDF conversion issue with Chinese text rendering|Bug|
|WORDSNET-18159|ShapeRenderer crashes when rendering Emoji on macOS|Bug|
|WORDSNET-17961|Replacement of text produces duplicated text lines|Bug|
|WORDSNET-14740|AW does not split a paragraph to satisfy "keep with next" rule|Bug|
|WORDSNET-18016|Aspose.Words.FileCorruptedException is thrown while loading HTML|Bug|
|WORDSNET-18220|Incorrect shape position on conversion to fixed page formats|Bug|
|WORDSNET-18281|Update Aspose.TestBenchmark to the latest BenchmarkDotNet library|Bug|
|WORDSNET-17255|Page field returns incorrect value (wrong document layout)|Bug|
|WORDSNET-18115|DOCX to PDF - content moved to next page|Bug|
|WORDSNET-18390|The first page is missing when saving ODT file|Bug|
|WORDSNET-18136|Style property for items starting with 10 is absent when we include the font|Bug|
|WORDSNET-14974|The slope of Drawing Line is incorrect after conversion|Bug|
|WORDSNET-10664|MSWord2013 can split a table row due to "Keep with next" option|Bug|
|WORDSNET-11824|Paragraph rules are not applied to paragraphs inside cells|Bug|
|WORDSNET-13063|The paragraph does' t apply "keep lines together" rule|Bug|
|WORDSNET-18266|System.OverflowException is thrown while loading MHTML|Bug|
|WORDSNET-17868|The range of Y-Axis of the chart is changed in output PDF|Bug|
|WORDSNET-17862|Text overlapping in rendered PDF|Bug|
|WORDSNET-17901|The vertical axis gets the incorrect interval scaling in PDF output|Bug|
|WORDSNET-18198|The textbox is improperly aligned after HTML round trip|Bug|
|WORDSNET-18005|Document.Save throws System.NullReferenceException at Ubuntu|Bug|
|WORDSNET-18205|The equation is converted to the image in DOCX output|Bug|
|WORDSNET-18086|Add support for .ICO files with PNG images inside|Bug|
|WORDSNET-18197|InsertImage throws System.NullReferenceException when SVG is inserted into Document|Bug|
|WORDSNET-18319|Aspose.Words.FileCorruptedException is thrown while loading DOCX|Bug|
|WORDSNET-17526|Process hangs during DOCX to PDF conversion|Bug|
|WORDSNET-17939|Strange code in DmlChartPlaneCartesian3D class|Bug|
|WORDSNET-17952|Document.UpdateFields throws System.NotSupportedException|Bug|
|WORDSNET-18215|"width" of HTML cells specified in percents is ignored if "min-width" is also present|Bug|
|WORDSNET-18274|UpdateFields() method does not finish|Bug|
|WORDSNET-14397|Inserting documents does not preserve numbering|Bug|
|WORDSNET-18265|NodeImporter.ImportNode throws exception after UpdatePageLayout|Bug|
|WORDSNET-17544|Table borders in fixed-page HTML disappear in Chrome at lower zoom levels|Bug|
|WORDSNET-18095|Table Cell Line Spacing lost when converting to PDF|Bug|
|WORDSNET-17866|Incorrect rendering of Axis labels after converting to PDF|Bug|
|WORDSNET-18320|Aspose.Words.FileCorruptedException is thrown while loading DOCX|Bug|
|WORDSNET-18279|Header and Footer are lost after re-saving DOC|Bug|
|WORDSNET-17083|InsertDocument inserts a white space at the start of the content|Bug|
|WORDSNET-17504|The section break is lost after DOCX>HTML>DOCX conversion|Bug|
|WORDSNET-18392|PDF A-1b compliance validation issues|Bug|
|WORDSNET-11660|Table objects in MS Word are not shown in PDF rendition|Bug|
|WORDSNET-18202|Problems with NodeImporter using ImportFormatMode KeepSourceFormatting|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 19.4. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added a new ImportFormatOptions class for more flexible control over importing tasks

Related issue: WORDSNET-14397 has now been resolved.

Added a new **ImportFormatOptions** class with only a single public property **SmartStyleBehavior**:

{{< highlight csharp >}}
/// <summary>
/// Allows to specify various import options to format output.
/// </summary>
public class ImportFormatOptions
{
  /// <summary>
  /// Smart style behavior.
  /// Default value is <c>false</c>.
  /// </summary>
  public bool SmartStyleBehavior
}
{{< /highlight >}}

This option starts working when styles clashes upon importing. 

` `When this option is **enabled**, a source style will be expanded into direct attributes inside a destination document, if KeepSourceFormatting importing mode is used. 

` `When this option is **disabled**, a source style will be expanded only if it is numbered. Existing destination attributes will not be overridden, including lists. 

` `For a moment this option can be used only with a new public method of a DocumentBuilder class:

{{< highlight csharp >}}
/// <summary>
/// Inserts a document at the cursor position.
/// </summary>
public Node InsertDocument(Document srcDoc, ImportFormatMode importFormatMode, ImportFormatOptions options)
{{< /highlight >}}

**UseCase:**

{{< highlight csharp >}}
Document srcDoc = new Document("source.docx");
Document dstDoc = new Document("destination.docx");
DocumentBuilder builder = new DocumentBuilder(dstDoc);
builder.MoveToDocumentEnd();
builder.InsertBreak(BreakType.PageBreak);
ImportFormatOptions options = new ImportFormatOptions();
options.SmartStyleBehavior = true;
builder.InsertDocument(srcDoc, ImportFormatMode.UseDestinationStyles, options);
{{< /highlight >}}

### Changes in font resolving while loading HTML (SVG) document

Related issue: WORDSNET-17383 has now been resolved:

Previously while loading HTML (SVG) document font families resolved by font names were found on the system. 

` `If font family wasn’t found on the system original font family kept in the model. 

` `This led to a situation when resolved font name depended on the local system. 

` `For example, if ‘UnknownFont1’ is absent on the system the following font family declaration resolved as ‘Arial’ (‘Arial’ is name for ‘san-serif’ generic font name.)

{{< highlight html >}}
<p style='font-family:UnknownFont1, sans-serif;'>This is a paragraph.</p>
{{< /highlight >}}

Now the customer can use font settings before loading the document (add substitution rule, specify fonts folder and etc). 

` `The following example shows how to add font substitution rule while loading the document.

{{< highlight csharp >}}
FontSettings fontSettings = new FontSettings();
TableSubstitutionRule substitutionRule = fontSettings.SubstitutionSettings.TableSubstitution;

// If "UnknownFont1" font family is not available then substitute it by "Comic Sans MS".
substitutionRule.AddSubstitutes("UnknownFont1", new string[] { "Comic Sans MS" });
LoadOptions lo = new LoadOptions();
lo.FontSettings = fontSettings;
Document doc = new Document(MyDir + "myfile.html", lo);
{{< /highlight >}}

The resulting model will contain 'UnknownFont1' as resolved font name for a paragraph from example. 

### API to change how text is vertically aligned within the Text Box

Related issue: WORDSNET-17996 has now been resolved.

Added new property for specifying vertical anchor of shape's textbox.

{{< highlight csharp >}}
/// <summary>
/// Specifies the vertical alignment of the text within a shape.
/// </summary>
/// <remarks>
/// <p>The default value is <see cref="TextBoxAnchor.Top"/>.</p>
/// </remarks>
public TextBoxAnchor VerticalAnchor
{
    get;
    set;
}
{{< /highlight >}}

The property allows to specify text anchor within the shape (Top, Middle, Bottom).

{{< highlight csharp >}}
Document doc = new Document(fileName);
Shape shape = doc.FirstSection.Body.Shapes[0];
shape.TextBox.VerticalAnchor = TextBoxAnchor.Middle;
{{< /highlight >}}

Saving warnings will be thrown for unsupported formats (WordML) and for incompatible Word versions above 2007 (DOC, DOT).

### Added public property PdfSaveOptions.AdditionalTextPositioning

Related issue: WORDSNET-18027 has now been resolved.

The following new property has been added into the PdfSaveOptions class:

{{< highlight csharp >}}
/// <summary>
/// A flag specifying whether to write additional text positioning operators or not.
/// </summary>
/// <remarks>
/// <para>
/// If <c>true</c>, additional text positioning operators are written to the output PDF. This may help to overcome
/// issues with inaccurate text positioning with some printers. The downside is the increased PDF document size.
/// </para> 
/// <para>The default value is <c>false</c>.</para>
/// </remarks>
public bool AdditionalTextPositioning
{
    get { return mAdditionalTextPositioning; }
    set { mAdditionalTextPositioning = value; }
}
{{< /highlight >}}

### Added a new ImportFormatOptions.KeepSourceNumbering option for use in import operations

Related issue: WORDSNET-17534 has now been resolved.

When import nodes between different documents there can be a situation when source document has lists with the same identifiers that were already used in a destination document. Word in such case always uses formatting from the destination lists.

To allow users to choose an appropriate behavior, the following option was introduced in ImportFormatOptions class:



{{< highlight csharp >}}
/// <summary>
/// Gets or sets a boolean value that specifies how the numbering will be imported when it clashes in source and destination documents.
/// The default value is <c>false</c>.
/// </summary>
public bool KeepSourceNumbering
{{< /highlight >}}



Also, a new public method that accepts the new KeepSourceNumbering option was introduced as the following:

{{< highlight csharp >}}
/// <summary>
/// Initializes a new instance of the <see cref="NodeImporter"/> class.
/// </summary>
/// <param name="srcDoc">The source document.</param>
/// <param name="dstDoc">The destination document that will be the owner of imported nodes.</param>
/// <param name="importFormatMode">Specifies how to merge style formatting that clashes.</param>
/// <param name="importFormatOptions">Specifies various options to format imported node.</param>
public NodeImporter(DocumentBase srcDoc, DocumentBase dstDoc, ImportFormatMode importFormatMode, ImportFormatOptions importFormatOptions)
{{< /highlight >}}

**UseCase:**

{{< highlight csharp >}}
Document srcDoc = TestUtil.Open(@"source.docx");
Document dstDoc = TestUtil.Open(@"destination.docx");
ImportFormatOptions importFormatOptions = new ImportFormatOptions();

// Keep source list formatting when importing numbered paragraphs.
importFormatOptions.KeepSourceNumbering = true;
NodeImporter importer = new NodeImporter(srcDoc, dstDoc, ImportFormatMode.KeepSourceFormatting, importFormatOptions);
ParagraphCollection srcParas = srcDoc.FirstSection.Body.Paragraphs;
foreach (Paragraph srcPara in srcParas)
{
    Node importedNode = importer.ImportNode(srcPara, false);
    dstDoc.FirstSection.Body.AppendChild(importedNode);
}
dstDoc.Save("output.docx");
{{< /highlight >}}


### Added a new ImportFormatOptions.IgnoreTextBoxes option for use in import operations

Related issue: WORDSNET-18202 has now been resolved.

When import a text box between different documents, the formatting of the destination document is applied to it. This corresponds to the behavior of Word. To allow users to choose an appropriate behavior, the following option was introduced in ImportFormatOptions class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a boolean value that indicates whether to ignore formatting in the text boxes of
/// the source destination during the import.
/// Default value is <c>true</c>.
/// </summary>
public bool IgnoreTextBoxes
{{< /highlight >}}



**UseCase:**

{{< highlight csharp >}}
Document srcDoc = TestUtil.Open(@"source.docx");
Document dstDoc = TestUtil.Open(@"destination.docx");
ImportFormatOptions importFormatOptions = new ImportFormatOptions();

// Keep the source text boxes formatting when importing.
importFormatOptions.IgnoreTextBoxes = false;
NodeImporter importer = new NodeImporter(srcDoc, dstDoc, ImportFormatMode.KeepSourceFormatting, importFormatOptions);
ParagraphCollection srcParas = srcDoc.FirstSection.Body.Paragraphs;
foreach (Paragraph srcPara in srcParas)
{
    Node importedNode = importer.ImportNode(srcPara, true);
    dstDoc.FirstSection.Body.AppendChild(importedNode);
}
dstDoc.Save("output.docx");
{{< /highlight >}}
