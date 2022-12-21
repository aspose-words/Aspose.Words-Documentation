---
title: 18.9 Release Notes
second_title: Aspose.Words for Java
articleTitle: Aspose.Words for Java 18.9 Release Notes
linktitle: Aspose.Words for Java 18.9 Release Notes
description: "Aspose.Words for Java 18.9 Release Notes – the latest updates and fixes."
type: docs
weight: 40
url: /java/aspose-words-for-java-18-9-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 18.9](https://releases.aspose.com/words/java/18-9/).

{{% /alert %}}

## Major Features

There are 85 improvements and fixes in this regular monthly release. The most notable are:

- Animated GIF is fully supported now
- MANIFEST.MF updated to support new OSGI versions
- TIFF colors accuracy improved
- Java10&11 compatibility improved: reflection for safe using of optional external libraries is removed.
- Bookmarks are allowed on block, cell, row level 
- Added load option to treat Shapes with math XML as Shapes in the model 
- Provided option to choose between Old and New Mail Merge behaviors 
- Improved PDF encryption in case when owner password is not specified 
- Metafile rendering improved: fixed drawing records processing when path bracket is opened, fixed processing of EMR_SETBKMODE record when incorrect values specified
- Improved output image quality when rendering metafiles with raster operations set
- Fixed handling of glyphs without outlines when parsing glyph data while rendering
- Fixed a bug with a glow effect, if the specified glow size is less than 10
- Fixed several problems in DrawingML Charts rendering: incorrect default axis color, bug with the date format for axis values, bug with rendering of the trend line with unsorted x-values
- Improved rendering of the mathematical element "Apostrophe" of the MathML object 
- Improved justification of Asian texts
- Improved rendering of revisions in balloons
- Improved text placement around floating shapes
- Fixed issue with paragraph spacing in footnotes
- Fixed issue with line wrapping when it has single glyph wider than the line followed by page break
- Fixed issue with table row height calculation when cells in vertical merge have horizontal borders

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-1578|Right-aligned tab-stops conversion issue in resultant MHTML|Bug|
|WORDSJAVA-1837|Image sometimes do not render in exported HTML|Bug|
|WORDSJAVA-1840|Math symbols are being read incorrectly|Bug|
|WORDSJAVA-1847|Animated GIF rendered to PDF with a bottom gray band|Bug|
|WORDSJAVA-1848|ReportingEngine.buildReport throws "Multiple decimal separators in pattern "yyyy.MM.dd"|Bug|
|WORDSJAVA-1855|DOCX to PDF conversion issue with image's color|Bug|
|WORDSJAVA-1859|RtfLoadOptions.setRecognizeUtf8Text() does not work|Bug|
|WORDSJAVA-1864|Wrong export declaration in MANIFEST.MF|Bug|
|WORDSJAVA-1844|Update Manifest generation according to changed packages and new OSGI versions|Enhancement|
|WORDSJAVA-1860|Ampersand changes alphabetical sort order for INDEX field|Enhancement|
|WORDSJAVA-1697|Debugging assert throws on production code|Exception|
|WORDSJAVA-1886|Transparent background become visible|Regression|
|WORDSNET-11845|Docx to Png/Pdf conversion issue with table's autofit behavior|Bug|
|WORDSNET-12887|Tables misaligned in rendered PDF|Bug|
|WORDSNET-13392|Text at the end of page flows to the next page when saving Word as PDF|Bug|
|WORDSNET-16463|Shape's text and color is lost in output PDF/DOC|Bug|
|WORDSNET-16477|DOCX to PDF conversion issue with table rendering|Bug|
|WORDSNET-16478|Extra lines are rendered after conversion from DOCX to PDF|Bug|
|WORDSNET-16535|Size of picture changes after re-saving DOC|Bug|
|WORDSNET-16560|Format revisions and comments are not rendered correctly in PDF|Bug|
|WORDSNET-16574|Shape's position is changed in output PDF|Bug|
|WORDSNET-16751|Empty pages are rendered in output PDF|Bug|
|WORDSNET-16791|MACROBUTTON HTMLDirect is not rendered in output PDF|Bug|
|WORDSNET-16959|Paragraph floats towards left page margin in PDF|Bug|
|WORDSNET-16990|DOCX to PDF conversion issue with shape's position|Bug|
|WORDSNET-17004|Trendlines in graphs on word documents not displaying|Bug|
|WORDSNET-17022|Formula breaks when document is resaved|Bug|
|WORDSNET-17044|MailMergeCleanupOptions.RemoveUnusedFields removes REF field from the footer|Bug|
|WORDSNET-17121|Asian text is justified incorrectly|Bug|
|WORDSNET-17135|The EQ field does not render in output Jpeg when Document.GetPageInfo is called|Bug|
|WORDSNET-17140|Image's content is lost after using Document.AppendDocument|Bug|
|WORDSNET-17177|Hidden bookmarks are not correct after re-saving DOCX|Bug|
|WORDSNET-17183|The EQ field does not render in output Jpeg|Bug|
|WORDSNET-17186|Font name and size is changed after appending one document into another|Bug|
|WORDSNET-17206|Vertical spacing not preserved in PDF|Bug|
|WORDSNET-17225|Open Save a DOCX causes Tabs to become Underlined|Bug|
|WORDSNET-17226|Endnotes becoming corrupted when saving DOC to DOCX|Bug|
|WORDSNET-17227|Endnotes becoming corrupted when saving DOC to DOCX|Bug|
|WORDSNET-17228|Endnotes becoming corrupted when saving DOC to DOCX|Bug|
|WORDSNET-17229|Endnotes Footnotes becoming corrupted when saving DOC|Bug|
|WORDSNET-17249|TOC isn't rendered properly in PDF output|Bug|
|WORDSNET-17250|Fopc Strict can be written, but reading fails|Bug|
|WORDSNET-17258|Chart axis is wrong in Aspose.Words generated .pdf|Bug|
|WORDSNET-17265|An error raises while using ComHelper class.|Bug|
|WORDSNET-17280|Picture does not render correctly|Bug|
|WORDSNET-17282|Picture does not render correctly|Bug|
|WORDSNET-17293|Equation is not rendered correctly in PDF|Bug|
|WORDSNET-17295|DOCX to PDF conversion issue with cell borders|Bug|
|WORDSNET-17334|DOCX to PDF conversion issue with textbox shape glow|Bug|
|WORDSNET-17342|Incorrect color of the axis after converting to PDF|Bug|
|WORDSNET-17343|Color shade inside the shape is missing in output PDF|Bug|
|WORDSNET-17344|Irregular shapes, Missing colors, Incomplete shapes in output PDF|Bug|
|WORDSNET-17345|Fill color in shapes is missing in output PDF|Bug|
|WORDSNET-17347|Irregular shapes, Missing colors, Incomplete shapes in output PDF|Bug|
|WORDSNET-6980|Bookmark position is not preserved during open/save|Bug|
|WORDSNET-7809|Table in Shape overlaps the other Page content in fixed page formats|Bug|
|WORDSNET-13707|Table Bookmark gets deleted when importing Table|Enhancement|
|WORDSNET-15693|Incorrect wrapping around a table because of WrapGap issue.|Enhancement|
|WORDSNET-17175|Create tests for API 18.06|Enhancement|
|WORDSNET-17286|AW doesn't move text to the new line for tables with thick borders|Enhancement|
|WORDSNET-17316|Aspose.Words sets owner password when only user password is specified during conversion to PDF|Enhancement|
|WORDSNET-17318|Add unit tests code coverage analysis to development process|Enhancement|
|WORDSNET-721|Improve table bookmarks|Enhancement|
|WORDSNET-8755|Improve through wrapping of text boxes|Enhancement|
|WORDSNET-14353|Range.Bookmarks throws System.ArgumentException|Exception|
|WORDSNET-16621|LINQ Reporting Engine - OutOfMemory Exception While Saving Document|Exception|
|WORDSNET-16745|Save method throws NullReferenceException after doing MailMerge|Exception|
|WORDSNET-16749|Unable to load DLL ‘libSkiaSharp’ exception is thrown while converting DOCX to PDF|Exception|
|WORDSNET-17079|SetLicense throws: An error occurred while parsing EntityName|Exception|
|WORDSNET-17141|An exception raises when using long path names|Exception|
|WORDSNET-17237|System.IndexOutOfRangeException is thrown when SvgSaveOptions.TextOutputMode is UsePlacedGlyphs|Exception|
|WORDSNET-17263|Aspose.Words.FileCorruptedException is thrown while importing RTF|Exception|
|WORDSNET-17301|InvalidOperationException: Unsupported encryption parameters occurs when loading a DOC|Exception|
|WORDSNET-17302|InvalidOperationException: Unsupported encryption parameters occurs when loading a DOC|Exception|
|WORDSNET-17303|InvalidOperationException: Unsupported encryption parameters occurs when loading a DOC|Exception|
|WORDSNET-17335|"Not expected other boolex values here" error occurs upon invoking ListFormat.ListLevel.Font.Italic|Exception|
|WORDSNET-16429|Aspose.Words conversion throw error in Docker|Feature|
|WORDSNET-16540|Add load option to treat Shapes with math XML as Shapes in the model|Feature|
|WORDSNET-16962|Support insertion of Bookmarks at Block, Row and Cell levels|Feature|
|WORDSNET-17190|Investigate Aspose.Words for .NET containerization|Feature|
|WORDSNET-17313|Provide option to choose between Old and New Mail Merge behaviors|Feature|
|WORDSNET-17127|Significant decrease of performance getting bookmark|Performance|
|WORDSNET-16637|Bookmarks are not part of the BookmarkCollection|Regression|
|WORDSNET-17300|Bookmark.Remove very slow in the Aspose.Version 18.8|Regression|
|WORDSNET-17305|Bookmark Performance issue in Aspose.Words 18.6 version|Regression|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 18.9. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose. Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### Bookmarks are Allowed on Block, Cell, Row Levels

WORDSNET-721 has now been resolved.

The bookmark nodes are allowed to be placed on the block, cell and row levels now. In the previous versions bookmarks were moved into the next nearest paragraph on document loading. So, now on reading/saving DOCX, DOC, WML documents, bookmarks preserve their positions in document node structure.
The following public properties have been added into the LoadOptions class to control the mentioned behavior.

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a flag indicating whether cross structure annotation nodes can be added at block/cell/row level (<see cref="Node.NodeLevel"/>).
/// </summary>
/// <remarks>
/// Currently only bookmarks are affected by this option.
/// </remarks>
public boolean AnnotationsAtBlockLevel { get; set; }
/// <summary>
/// Gets or sets a default value for the <see cref="AnnotationsAtBlockLevel"/> property.
/// </summary>
/// <remarks>
/// Allows defining necessary behaviour when an instance of <see cref="LoadOptions"/> is not specified on opening a document.
/// </remarks>
public static boolean AnnotationsAtBlockLevelAsDefault { get; set; }
{{< /highlight >}}

Now code that uses Aspose.Words should consider that not only composite nodes may appear on the block/cell/row level, for example, as children of the Body, Table, Row, Cell nodes.
Setting the AnnotationsAtBlockLevelAsDefault property to **false** allows temporarily prevent possible issues with the existing code. But please note that the property may become obsolete in the further versions of the software.

#### UC to open a document in the inline-bookmarks mode

{{< highlight csharp >}}
LoadOptions options = new LoadOptions();
options.setAnnotationsAtBlockLevel(false);
Document doc = new Document("Document1.docx", options);
{{< /highlight >}}

##### UC to set the “old” mode as default

{{< highlight csharp >}}
LoadOptions.setAnnotationsAtBlockLevelAsDefault(false);
{{< /highlight >}}

### Added LoadOption to Treat Shapes with Math XML as Shapes in Model

WORDSNET-16540 has now been resolved.

The "ConvertShapeToOfficeMath" property has been added to "LoadOptions" class.

{{< highlight csharp >}}
/// <summary>
/// Gets or sets whether to convert shapes with EquationXML to Office Math objects.
/// </summary>
public boolean ConvertShapeToOfficeMath
{
    get { return mConvertShapeToOfficeMath; }
    set { mConvertShapeToOfficeMath = value; }
}
{{< /highlight >}}

Default value corresponds to MS Word behaviour i.e. shapes with equation XML are not converted to Office math objects.

Use case:

{{< highlight csharp >}}
LoadOptions lo = new LoadOptions();
lo.setConvertShapeToOfficeMath(true);

// Specify load option to use previous default behaviour i.e. convert math shapes to office math ojects on loading stage.
Document doc = new Document("SrcFile.docx", lo);
{{< /highlight >}}

### Option to Choose Between Old and New Mail Merge Behaviors Added

WORDSNET-17313 has now been resolved.

We had a customer (issue: WORDSNET-17259) who was not happy with the current Aspose.Words behavior related to the IF fields evaluation during mail merge. They were relying on the fact that the merge fields and regions located in the "false" argument of the IF field ("false" meaning the argument that does not match the condition) were merged in the past along with the "true" argument. This behavior was changed over time to mimic MS Word and at the moment it matches MS Word (the "false" argument is not merged); however the customer considered it a regression and wanted the old behavior back. To satisfy them, we decided to introduce an option controlling the behavior.

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value indicating whether merge fields and merge regions are merged regardless of the parent IF field's condition.
/// </summary>
/// <remarks>
/// The default value is <b>false</b>.
/// </remarks>
public boolean UnconditionalMergeFieldsAndRegions
{{< /highlight >}}

Use case:

{{< highlight csharp >}}
document.getMailMerge().setUnconditionalMergeFieldsAndRegions(true);
document.getMailMerge().execute(dataSource);
{{< /highlight >}}

### Improved PDF encryption in Case when Owner Password is not Specified

WORDSNET-17316 has now been resolved.

Previously Aspose.Words created random owner password in the produced PDF document when PdfEncryptionDetails.OwnerPassword was not set by the user. This behavior was described in XML comments:

If you do not specify an owner password, then the system will generate a random password when generating the PDF document.


Now Aspose.Words properly sets the empty owner password when saving to PDF.
