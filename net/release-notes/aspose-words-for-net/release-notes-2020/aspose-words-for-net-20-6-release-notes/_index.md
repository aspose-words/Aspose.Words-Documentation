---
title: Aspose.Words for .NET 20.6 Release Notes
type: docs
weight: 20
url: /net/aspose-words-for-net-20-6-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 20.6](https://downloads.aspose.com/words/net/new-releases/aspose.words-for-.net-20.6/).

{{% /alert %}} 
## **Major Features**
- Font.EmphasisMark is exposed to the public.
- Added a new public property ImportFormatOptions.IgnoreHeaderFooter.
- MarkdownSaveOptions class is introduced.
- Provided options to control JSON simple values’ recognition for LINQ Reporting Engine.
## **Full List of Issues Covering all Changes in this Release**

|**Key**|**Summary**|**Category**|
| :- | :- | :- |
|WORDSNET-13983|Add feature to support 'Emphasis on Mark' font setting|New Feature|
|WORDSNET-19976|Font embedding works fine but the symbol is saved to PDF incorrectly|New Feature|
|WORDSNET-20513|Check how Aspose.Words for .NET works with .NET 5.0|New Feature|
|WORDSNET-20488|LINQ Reporting Engine - Provide a way to parse date-time values using an exact format for JsonDataSource|New Feature|
|WORDSNET-19979|LINQ Reporting Engine - Provide a mode where types of JSON simple values are determined from JSON notation itself|New Feature|
|WORDSNET-20297|Add ability to create MarkdownSaveOptions using SaveOptions|New Feature|
|WORDSNET-20491|System.IO.FileLoadException occurs upon loading a PDF|Enhancement|
|WORDSNET-20492|PDF to Word conversion, some times repeating lines on a new page|Enhancement|
|WORDSNET-20354|Chart X-Axis with superscript value|Bug|
|WORDSNET-20376|Font style (Name, Size, etc) of header/footer content gets lost after appending two documents|Bug|
|WORDSNET-20183|The image is reversed (180-degree flip) after DOC to HTML conversion|Bug|
|WORDSNET-19457|System.StackOverflowException is thrown while loading HTML|Bug|
|WORDSNET-20330|Document.updateFields() wrong field values in tables|Bug|
|WORDSNET-20331|The Content control text is replaced during open/save a document|Bug|
|WORDSNET-20339|Gradient fill effect not preserved during Word to PDF Conversion|Bug|
|WORDSNET-20341|WordArt has linebreak|Bug|
|WORDSNET-20342|Options to improve the quality of a rendered document does not work correctly on NetStandard|Bug|
|WORDSNET-20344|Office Math. The combination of a comma and two spaces should be replaced by a comma and nine spaces.|Bug|
|WORDSNET-17270|DOCX to PDF conversion issue with Shape rendering|Bug|
|WORDSNET-17872|DOCX to PDF conversion issue with Formula rendering|Bug|
|WORDSNET-10330|DOCX to PDF conversion issue with Persian text|Bug|
|WORDSNET-17491|Conversion of document with soft returns does not retain formatting in PDF|Bug|
|WORDSNET-17818|Some lines move to the next pages in PDF|Bug|
|WORDSNET-18710|Improve OOXML embedding comparison|Bug|
|WORDSNET-19010|DOCX to ODT conversion issue with characters rendering having "Wingdings 2" fonts|Bug|
|WORDSNET-19104|Problem with paragraph above footnote after conversion DOCX to PDF|Bug|
|WORDSNET-20446|SVG attribute names that start with invalid characters leads to an exception|Bug|
|WORDSNET-20170|On conversion from MHTML to PDF the exception "FileCorruptedException" has been thrown|Bug|
|WORDSNET-17988|Text in SmartArt mirrored and reversed when rendering|Bug|
|WORDSNET-20357|Re-naming FormField does not re-name its corresponding bookmark|Bug|
|WORDSNET-3980|"o:extrusion"->"rotationangle" attribute is imported incorrectly|Bug|
|WORDSNET-20506|Text font formatting is changed after setting FontInfos (Embedded Fonts)|Bug|
|WORDSNET-20227|Fidelity to MS Word page breaks - DOCX to PDF|Bug|
|WORDSNET-20368|Content missing after DOC to PDF conversion|Bug|
|WORDSNET-20372|EMF image in DOCX loses text after conversion of DOCX to PDF|Bug|
|WORDSNET-19128|Watermark image is missed from document after save|Bug|
|WORDSNET-20378|Extra paragraph is created when single line TXT document is imported into DOM|Bug|
|WORDSNET-20493|First Line on a PDF Page is repeating at the end of previous Page in DOC|Bug|
|WORDSNET-19132|Numbering issue for table when it's part of list|Bug|
|WORDSNET-20188|Font-weight of SVG ignored|Bug|
|WORDSNET-20392|Math Equation Replaced by an Empty Picture during Inserting HTML to Word|Bug|
|WORDSNET-20393|Incorrect export of nested tables into Markdown|Bug|
|WORDSNET-18629|SVG is rendered incorrectly in output DOCX/PDF|Bug|
|WORDSNET-20475|Aspose.Words.FileCorruptedException is thrown when DOCX is imported into DOM|Bug|
|WORDSNET-19167|SmartArt to PNG conversion issue with text color|Bug|
|WORDSNET-18966|Image Coloring is wrong in PDF|Bug|
|WORDSNET-20405|Document.Compare Produces Six Revisions for Identical Documents|Bug|
|WORDSNET-20394|Content lines with only whitespace characters are incorrectly escaped while exporting into Markdown|Bug|
|WORDSNET-18977|Critical memory consumption while converting DOCX to PDF|Bug|
|WORDSNET-20261|Size of FieldIncludePicture is changed after updating|Bug|
|WORDSNET-5287|DocumentBuilder behaves improperly when insert a multi-line formfield|Bug|
|WORDSNET-19540|Document inline images losing resolution quality on saving|Bug|
|WORDSNET-20407|Incorrect export of Headings inside table into Markdown|Bug|
|WORDSNET-20408|Wrong output of paragraphs started with ordered list markers inside table while exporting into Markdown|Bug|
|WORDSNET-20409|List labels are not preserved while exporting numbered paragraphs into Markdown|Bug|
|WORDSNET-20355|Extra empty page is created after DOCX to PDF conversion|Bug|
|WORDSNET-20002|SVG renders incorrectly in output DOCX and PDF|Bug|
|WORDSNET-20412|Error converting to PDF - Buffer cannot be null. Parameter name: buffer|Bug|
|WORDSNET-19155|NodeRendererBase.Save saves the OfficeMath incorrectly|Bug|
|WORDSNET-14904|Docx to Html conversion issue with shape's rendering|Bug|
|WORDSNET-20269|SmartArt Text Rotation (Direction) issue when converting from DOCX to PDF|Bug|
|WORDSNET-19526|DOCX to HTML conversion issue with text direction in table's cell|Bug|
|WORDSNET-19917|The "span" attribute of &lt;colgroup&gt; elements in HTML is not supported|Bug|
|WORDSNET-20270|ThrowArgumentOutOfRangeException occurs if "rowspan" attribute of a table cell is not correctly defined|Bug|
|WORDSNET-20420|InsertDocument changes the inserted document|Bug|
|WORDSNET-20422|InvalidOperationException in PdfWriter|Bug|
|WORDSNET-19703|Incorrect border width on conversion to PDF|Bug|
|WORDSNET-20425|Add the ability to control the alignment of table contents when exporting to the Markdown|Bug|
|WORDSNET-20273|Document.Compare generates incorrect output|Bug|
|WORDSNET-20120|Performance issue while saving first page of document to JPEG|Bug|
|WORDSNET-20431|Font formatting " All Caps" is lost for heading text in output PDF|Bug|
|WORDSNET-20272|System.IO.__Error.EndOfFile occurs if an image with base64 source is corrupted|Bug|
|WORDSNET-20283|ArgumentOutOfRangeException occurs if "value" parameter of &lt;li&gt; is less than 0 or greater than 32767|Bug|
|WORDSNET-20507|LINQ Reporting Engine - Nullable int is not recognized for JsonDataSource|Bug|
|WORDSNET-19870|System.ArgumentException Invalid object Parameter name: opaque - DOCX to HTML|Bug|
|WORDSNET-2295|Compatibility option "Use Word 97 line-breaking rules for Asian text" is not supported|Bug|
|WORDSNET-19923|Performance degrades while writing to more than 100MB file|Bug|
|WORDSNET-20358|JoinRunsWithSameFormatting does not join the Run nodes with same formatting|Bug|
|WORDSNET-20444|ArgumentOutOfRangeException occurs if "value" of &lt;li&gt; and "start" of &lt;ol&gt; are both out of range|Bug|
|WORDSNET-20132|Picture pushed to the next page when converting DOCX to PDF|Bug|
|WORDSNET-20282|ArgumentOutOfRangeException occurs if "margin-top" or "margin-bottom" is less than 0 or greater than 2112px|Bug|
|WORDSNET-6886|Theme colors in Font color palette are displayed black in MS WORD WEB APP|Bug|
|WORDSNET-20459|Graphics Object has Incorrect Rotation during DOCX to PDF Conversion|Bug|
|WORDSNET-20165|Bold and italic text is not properly converted to Markdown|Bug|
|WORDSNET-20470|Issue with DOC to PDF conversion|Bug|
|WORDSNET-20313|Incorrect gradient fill for rectangle shape with bevel|Bug|
|WORDSNET-19553|Blank page added after [page break] in PDF|Bug|
|WORDSNET-20182|Headers render incorrectly after DOT to PDF conversion|Bug|
|WORDSNET-5072|FormField is not listed in the ForFieldCollection|Bug|
|WORDSNET-16677|Incorrect track changes in output DOCX after setting field's result|Bug|
|WORDSNET-16283|Image is cropped when saved to PDF|Bug|
|WORDSNET-9418|Export to DOC fails for the document|Bug|
|WORDSNET-9450|RTF Hebrew contents are changed into incorrect characters when it is loaded into Aspose.Words DOM|Bug|
|WORDSNET-10546|Contents are changed from RTL to LTR after saving RTF to DOCX|Bug|
|WORDSNET-17076|Additional rows in table (using Repeating section) after comparing word documents|Bug|
|WORDSNET-17198|Unwanted Revisions appear in generated DOCX|Bug|
|WORDSNET-20349|WordArt - text incorrectly rotated in the output PDF|Bug|
|WORDSNET-20318|Shape.Width returns incorrect value|Bug|
|WORDSNET-6648|Table formatting (horizontal cell merging) lost upon conversion to DOC|Bug|
|WORDSNET-16221|The table is overlapped after conversion from DOCX to PDF|Bug|

## **Public API and Backward Incompatible Changes**
This section lists public API changes that were introduced in Aspose.Words 20.6. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.
### **Added a new public class MarkdownSaveOptions**
Related issue: WORDSNET-20297

A new public class **MarkdownSaveOptions** has been added into **Aspose.Words.Saving** namespace:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Class to specify additional options when saving a document into the <see cref="Words.SaveFormat.Markdown"/> format.
/// </summary>
public class MarkdownSaveOptions : TxtSaveOptionsBase
{{< /highlight >}}

For a moment it has only the following own public property:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Specifies the format in which the document will be saved if this save options object is used.
/// Can only be <see cref="Words.SaveFormat.Markdown"/>.
/// </summary>
public override SaveFormat SaveFormat
{{< /highlight >}}

Note, TxtSaveOptionsBase.PreserveTableLayout is moved to TxtSaveOptions.PreserveTableLayout:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Specifies whether the program should attempt to preserve layout of tables when saving in the plain text format.
/// The default value is <b>false</b>.
/// </summary>
public bool PreserveTableLayout
{{< /highlight >}}

Use Case. Explains how to create and use MarkdownSaveOptions object:

**.NET**

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();
builder.Writeln("Some text!");
MarkdownSaveOptions saveOptions = (MarkdownSaveOptions)SaveOptions.CreateSaveOptions(SaveFormat.Markdown);
builder.Document.Save("TestDocument.md", saveOptions);
{{< /highlight >}}


### **Added a new public property Font.EmphasisMark**
Related issue: WORDSNET-13983

Added a new public property Font.EmphasisMark:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets the emphasis mark applied to this formatting.
/// </summary>
public EmphasisMark EmphasisMark
{{< /highlight >}}


The emphasis mark is an additional character that is rendered above or below the main character glyph as specified in the enum below.

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Specifies possible types of emphasis mark.
/// </summary>
public enum EmphasisMark
{
    /// <summary>
    /// No emphasis mark.
    /// </summary>
    None = 0x00,
    /// <summary>
    /// Emphasis mark is a solid black circle displayed above text.
    /// </summary>
    OverSolidCircle = 0x01,
    /// <summary>
    /// Emphasis mark is a comma character displayed above text.
    /// </summary>
    OverComma = 0x02,
    /// <summary>
    /// Emphasis mark is an empty white circle displayed above text.
    /// </summary>
    OverWhiteCircle = 0x03,
    /// <summary>
    /// Emphasis mark is a solid black circle displayed below text.
    /// </summary>
    UnderSolidCircle = 0x04,
}
{{< /highlight >}}

Use Case. Explains how to set Font.EmphasisMark via DocumentBuilder:

**.NET**

{{< highlight csharp >}}
Document document = new Document();
DocumentBuilder builder = new DocumentBuilder(document);
builder.Font.EmphasisMark = EmphasisMark.UnderSolidCircle;
builder.Write("Emphasis text");
builder.Writeln();
builder.Font.ClearFormatting();
builder.Write("Simple text");
document.Save(savePath, saveOptions);
{{< /highlight >}}


### **Added a new public property ImportFormatOptions.IgnoreHeaderFooter**
Related issue: WORDSNET-19776

Added a new public property ImportFormatOptions.IgnoreHeaderFooter:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a boolean value that specifies that source formatting of headers/footers content ignored
/// if ImportFormatMode.KeepSourceFormatting mode is used.
/// The default value is true.
/// </summary>
{{< /highlight >}}

It's true by default to preserve Word's behavior.

Use Case:

**.NET**

{{< highlight csharp >}}
Document dstDocument = new Document(dstDocumentPath);
Document srcDocument = new Document(srcDocumentPath);
ImportFormatOptions importFormatOptions = new ImportFormatOptions();
importFormatOptions.IgnoreHeaderFooter = false;
dstDocument.AppendDocument(srcDocument, ImportFormatMode.KeepSourceFormatting, importFormatOptions);
{{< /highlight >}}
### **Added a new public property MarkdownSaveOptions.TableContentAlignment**
Related issue: WORDSNET-20425

A new public property **TableContentAlignment** has been added into **MarkdownSaveOptions** class:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value that specifies how to align contents in tables
/// when exporting into the <see cref="Words.SaveFormat.Markdown"/> format.
/// The default value is <see cref="Saving.TableContentAlignment.Auto"/>. 
/// </summary>
public TableContentAlignment TableContentAlignment { get; set; }
{{< /highlight >}}

Also, a new public enumeration has been added:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Allows to specify the alignment of the content of the table to be used when exporting into Markdown format.
/// </summary>
public enum TableContentAlignment
{
    /// <summary>
    /// The alignment will be taken from the first paragraph in corresponding table column.
    /// </summary>
    Auto,
    /// <summary>
    /// The content of tables will be aligned to the Left.
    /// </summary>
    Left,
    /// <summary>
    /// The content of tables will be aligned to the Center.
    /// </summary>
    Center,
    /// <summary>
    /// The content of tables will be aligned to the Right.
    /// </summary>
    Right
}
{{< /highlight >}}

Use Case. Explains how to align content inside the table when exporting into Markdown:

**.NET**

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();

// Create a new table with two cells.
builder.InsertCell();
builder.ParagraphFormat.Alignment = ParagraphAlignment.Right;
builder.Write("Cell1");
builder.InsertCell();
builder.ParagraphFormat.Alignment = ParagraphAlignment.Center;
builder.Write("Cell2");
MarkdownSaveOptions saveOptions = new MarkdownSaveOptions();

// Makes all paragraphs inside table to be aligned to Left. 
saveOptions.TableContentAlignment = TableContentAlignment.Left;
builder.Document.Save("left.md", saveOptions);

// Makes all paragraphs inside table to be aligned to Right. 
saveOptions.TableContentAlignment = TableContentAlignment.Right;
builder.Document.Save("right.md", saveOptions);

// Makes all paragraphs inside table to be aligned to Center. 
saveOptions.TableContentAlignment = TableContentAlignment.Center;
builder.Document.Save("center.md", saveOptions);

// Makes all paragraphs inside table to be aligned automatically.

// The alignment in this case will be taken from the first paragraph in corresponding table column.
saveOptions.TableContentAlignment = TableContentAlignment.Auto;
builder.Document.Save("auto.md", saveOptions);
{{< /highlight >}}
### **PDF version 1.5 is marked as obsolete**
PDF version 1.5 is outdated and marked as obsolete. Please, use the latest PDF version 1.7.

**.NET**

{{< highlight csharp >}}

// Specifies the PDF standards compliance level. 
public enum PdfCompliance
{
...
    [Obsolete("PDF version 1.5 is outdated and will be removed in future releases. Please, use the latest PDF version 1.7.")]
    Pdf15,
...
}
{{< /highlight >}}
### **Provided options to control JSON simple values’ recognition for LINQ Reporting Engine**
Issues: WORDSNET-19979, WORDSNET-20488

The ["Accessing JSON Data"](/words/net/linq-reporting-engine-api/#linqreportingengineapi-accessingjsondata) section of the engine's documentation was updated to describe the change.
