---
title: Aspose.Words for Java 17.10 Release Notes
type: docs
weight: 30
url: /java/aspose-words-for-java-17-10-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 17.10](http://maven.aspose.com/repository/simple/ext-release-local/com/aspose/aspose-words/17.10/)

{{% /alert %}} 

## Major Features

There are 83 improvements and fixes in this regular monthly release. The most notable are:

- "Don't add extra space for raised/lowered characters" compatibility option is supported.
- Multiple improvements in RTL and Asian text handling.
- LINQ Reporting Engine supports dynamic chart series removal.
- An option to prevent the fonts embedding into HTML Fixed output implemented. Introduced HtmlFixedSaveOptions.UseTargetMachineFonts property.
- Rendering of HTML fixed documents with “PRC” encoding fonts has been improved.
- An algorithm, which mimics the behavior of MS Word when rendering of rotated VML shapes with text boxes.
- Rendering of “Surface” and “Stock” DrawingML Charts has been improved.
- Added CompareOptions.Target property and enumeration ComparisonTargetType.
- Added public methods to add and remove replies to comment.
- Ability to get and set the number of footnote layout columns.
- Provide API similar to SignatureSet.AddSignatureLine Method (Office).
- Expose Table.HorizontalAlignment property public.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-1664|Line spacing between Latin and Asian text is shifted by some Asian characters.|Bug|
|WORDSJAVA-1644|Inconsistent DateTime.toString() formatting (timezone shift?).|Enhancement|
|WORDSJAVA-1654|Simulate Italic for Poorly Rendered Fonts|Enhancement|
|WORDSJAVA-1665|Can't load font with PRC encoded Chinese name.|Enhancement|
|WORDSJAVA-1650|Concatenating RTF documents throws IndexOutOfBoundsException|Exception|
|WORDSNET-11299|Table column widths are not rendered correctly in PDF|Bug|
|WORDSNET-11681|/non-breaking space/ DrawingMLs are not rendering on the same line in PDF|Bug|
|WORDSNET-12258|Docx to Pdf conversion issue with table rendering|Bug|
|WORDSNET-12536|Docx to PDF/Tiff conversion issue with text position relative to line shape|Bug|
|WORDSNET-12916|The font is not recognized in output HtmlFixed/Pdf|Bug|
|WORDSNET-13270|Font Substitution issue while rendering Doc to HtmlFixed|Bug|
|WORDSNET-13944|Shape's text does not render correctly in output Pdf|Bug|
|WORDSNET-14212|Line breaks appear in gray after ODT-HTML-ODT roundtrip|Bug|
|WORDSNET-14692|Document.AcceptAllRevisions does not accept all revisions|Bug|
|WORDSNET-15217|DOC to PDF conversion losing header|Bug|
|WORDSNET-15218|DOC to PDF conversion loses text formatting|Bug|
|WORDSNET-15306|Japanese text and font is changed after re-saving RTF|Bug|
|WORDSNET-15417|Shape's text is rendered in two lines after Docx to Pdf conversion|Bug|
|WORDSNET-15431|Opening embedded Visio Drawing issue|Bug|
|WORDSNET-15636|Revisions are colored incorrectly when rendering to HTML and MHTML output.|Bug|
|WORDSNET-15664|Document.Compare generates incorrect revisions for table of contents|Bug|
|WORDSNET-15681|Document compare issue with bullet list when CompareOptions.IgnoreFormatting is used|Bug|
|WORDSNET-15727|ListFormat.ListLevel.Font does not report bold attribute properly|Bug|
|WORDSNET-15772|Open Save a RTF changes Headline when viewing via WordPad view|Bug|
|WORDSNET-15789|Charts are not rendered correctly in output PDF|Bug|
|WORDSNET-15790|RTF to PDF conversion results in blank document|Bug|
|WORDSNET-15793|Hebrew text does not render correctly in output PDF|Bug|
|WORDSNET-15807|Page numbers are missing in resultant PDF footer|Bug|
|WORDSNET-15810|Aspose.Words 17.08 Exception when saving .ott documents to .doc and .dot formats|Bug|
|WORDSNET-15813|Indent issue in DOC output|Bug|
|WORDSNET-15819|Surface chart is rendered wider than in MS Word.|Bug|
|WORDSNET-15820|Stock chart is rendered improperly.|Bug|
|WORDSNET-15825|Server hangs while saving and sending PDF document to browser|Bug|
|WORDSNET-15850|ShowRevisionMarks does not work when its value is false|Bug|
|WORDSNET-15851|Text is missing in DOCX to PDF rendering|Bug|
|WORDSNET-15854|Document.HasRevisions returns incorrect value after using Document.Comare|Bug|
|WORDSNET-15860|Incorrect page count of a ODT Document|Bug|
|WORDSNET-15865|DOCX to image conversion issue with Japanese text position|Bug|
|WORDSNET-15871|Document.AcceptAllRevisions throws System.InvalidOperationException|Bug|
|WORDSNET-15878|RTL letters order changed in rendered PDF|Bug|
|WORDSNET-15906|The diagram/circle is missing.|Bug|
|WORDSNET-15907|Y-axis and grid lines of charts do not render correctly in output PDF|Bug|
|WORDSNET-15911|MS Word reports that the output document is corrupted after open/save with AW.|Bug|
|WORDSNET-1077|Empty paragraphs become paragraphs with non-breaking space character during DOC-HTML-DOC roundtrip.|Enhancement|
|WORDSNET-13098|Applying simple textures (such as Color, Gradient, Picture, etc.) for 3D shapes (hardware rendering)|Enhancement|
|WORDSNET-14505|Support comments tree in HTML export|Enhancement|
|WORDSNET-15797|Import textboxes saved by MS Word to HTML|Enhancement|
|WORDSNET-14671|Shape.StrokeColor throws System.NullReferenceException|Exception|
|WORDSNET-15688|DOCX to HTML conversion throws NullReferenceException|Exception|
|WORDSNET-15751|DocumentBuilder.InsertImage throws System.IndexOutOfRangeException while inserting SVG into document|Exception|
|WORDSNET-15758|System.InvalidCastException is thrown while loading DOC file|Exception|
|WORDSNET-15779|Aspose.Words.FileCorruptedException occurs when loading a HTML|Exception|
|WORDSNET-15795|System.NotSupportedException is thrown while saving DOC to PDF|Exception|
|WORDSNET-15809|NullReferenceException inside OdtChartToDmlConverter.|Exception|
|WORDSNET-15823|Deletion issue of bookmarks with duplicate name|Exception|
|WORDSNET-15831|Document.UpdateFields throws System.ArgumentException|Exception|
|WORDSNET-15844|Appending a large RTF file throws ArgumentException|Exception|
|WORDSNET-15847|Converting Charts in DOCX to PDF or DOC causes System.DivideByZeroException|Exception|
|WORDSNET-15855|System.IndexOutOfRangeException is thrown while saving DOCX to DOC/PDF|Exception|
|WORDSNET-12458|Support new features of MS Word 2016|Feature|
|WORDSNET-14958|Add feature to set/get footnote layout column|Feature|
|WORDSNET-14984|Provide API similar to SignatureSet.AddSignatureLine Method (Office)|Feature|
|WORDSNET-15342|Support to modify number formatting of charts|Feature|
|WORDSNET-15442|Dynamically add or remove series on chart in LINQ reporting - a new template tag.|Feature|
|WORDSNET-15739|Applying a radial gradient fill (hardware rendering).|Feature|
|WORDSNET-15740|Applying a rectangular gradient fill (hardware rendering).|Feature|
|WORDSNET-15741|Applying a path gradient fill (hardware rendering).|Feature|
|WORDSNET-15747|/Don't add extra space for raised/lowered characters/ Table data moves to next page in DOC to PDF rendering|Feature|
|WORDSNET-15817|Expose Table.HorizontalAlignment property public.|Feature|
|WORDSNET-15880|Prevent embedding fonts while saving into HTML|Feature|
|WORDSNET-15885|Implement support of transform for radial gradient fill (hardware rendering).|Feature|
|WORDSNET-4150|Allow embedding fonts into RTF documents.|Feature|
|WORDSNET-4151|Allow embedding fonts into DOC documents.|Feature|
|WORDSNET-4977|/com/ Create a sample project which provides a wrapper for common methods that cannot be easily called from COM or scripting languages|Feature|
|WORDSNET-9959|Provide way to add a Reply Comment in document|Feature|
|WORDSNET-15774|The output PDF file is getting too big|Performance|
|WORDSNET-15822|Saving documents difference as HTML throws InvalidOperationException in 17.8|Regression|
|WORDSNET-15869|RTL text with spaces reversed after replacement|Regression|
|WORDSNET-15872|Incorrect position of a text box anchored in an RTL paragraph|Regression|
|WORDSNET-15883|Aspose.Words throws FileCorruptedException upon loading DOCM file|Regression|


## Public API and Backward Incompatble Changes

This section lists public API changes that were introduced in Aspose.Words 17.10. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### Added CompareOptions.Target Property and Enumeration ComparisonTargetType

Related issue WORDSNET-15681.

Public property added to the CompareOptions class to provide ability to determine base document upon documents comparison. 

For example, this option together with IgnoreFormatting setting determines which document has to be used as formatting source for ranges of equal text.

{{< highlight csharp >}}
/// <summary>
/// Specifies which document shall be used as a target during comparison.
/// The value of the property is ComparisonTargetType integer constant.
/// </summary>
public int getTarget()
void setTarget(int value)
{{< /highlight >}}

ssible values described by the following enumeration

{{< highlight csharp >}}
/// <summary>
/// Allows to specify base document which will be used during comparison.  Default value is <see cref="Current" />.
///Default value is CURRENT.
/// </summary>
/// <remarks>
/// Relates to Microsoft Word "Show changes in" option in "Compare Documents" dialog box.
/// </remarks>
public class ComparisonTargetType
{
  /// <summary>
  /// This document is used as a base during comparison.
  /// </summary>
public static final int CURRENT = 0
  /// <summary>
  /// Other document is used as a base during comparison.
  /// </summary>
public static final int NEW = 1
}
{{< /highlight >}}

{{< highlight csharp >}}

// Use case.
Document docA = new Document(pathA);
Document docB = new Document(pathB);
CompareOptions options = new CompareOptions();
options.setIgnoreFormatting(true);
options.setTarget(ComparisonTargetType.NEW);
docA.compare(docB, "am", new Date(), options);
{{< /highlight >}}

### LINQ Reporting Engine Supports Dynamic Chart Series Removal

Related Issue: WORDSNET-15442

The "[Using Charts to Represent Sequential Data](/words/java/using-charts-to-represent-sequential-data/)" section of the engine's documentation was updated to describe the change.

### Added Public Methods to Add and Remove Replies to Comment

Related issue WORDSNET-9959

Implemented public API to add/remove comment replies.
The following methods have been added to the **Comment** class:

{{< highlight csharp >}}
/// <summary>
/// Adds a reply to this comment.
/// </summary>
/// <param name="author">The author name for the reply.</param>
/// <param name="initial">The author initials for the reply.</param>
/// <param name="dateTime">The date and time for the reply.</param>
/// <param name="text">The reply text.</param>
/// <returns>The created <see cref="Comment"/> node for the reply.</returns>
/// <remarks>
/// Due to the existing MS Office limitations only 1 level of replies is allowed in the document.
/// An exception of type <see cref="InvalidOperationException"/> will be raised if this method is
/// called on the existing Reply comment.
/// </remarks>
public Comment addReply(string author, string initial, java.util.Date dateTime, string text);
/// <summary>
/// Removes the specified reply to this comment.
/// </summary>
/// <param name="reply">The comment node of the deleting reply.</param>
/// <remarks>All constituent nodes of the reply will be deleted from the document.</remarks>
public void removeReply(Comment reply);
/// <summary>
/// Removes all replies to this comment.
/// </summary>
/// <remarks>All constituent nodes of the replies will be deleted from the document.</remarks>
public void removeAllReplies();
{{< /highlight >}}

**UC** to add/remove replies:

{{< highlight csharp >}}
Document doc = new Document(fileName);
Comment comment = (Comment)doc.getChild(NodeType.COMMENT, 0, true);
comment.removeReply(comment.getReplies().get(1));
comment.addReply("John Doe", "JD", new Date(2017, 9, 25, 12, 15, 0), "New reply");
doc.save(outFileName);
{{< /highlight >}}

### Ability to Get and Set Number of Footnote Layout Columns is Implemented

Related issue: WORDSNET-14958

The following property has been added into the **FootnoteOptions** class:

{{< highlight csharp >}}
/// <summary>
/// Specifies the number of columns with which the footnotes area is formatted.
/// </summary>
/// <remarks>
/// If this property has the value of 0, the footnotes area is formatted with a number of columns based on
/// the number of columns on the displayed page. The default value is 0.
/// </remarks>
public int getColumns()
public void setColumns(int value)
{{< /highlight >}}

**UC**

{{< highlight csharp >}}
Document doc = new Document(fileName);
doc.getFootnoteOptions().setColumns(2);
doc.Save(outFileName);
{{< /highlight >}}

The Document.EndnoteOptions and PageSetup.EndnoteOptions properties have been changed to be of the EndnoteOptions type. This new EndnoteOptions class has the same properties as FootnoteOptions except the Columns property:

{{< highlight csharp >}}
/// <summary>
/// Represents the endnote numbering options for a document or section.
/// </summary>
public class EndnoteOptions
{
    /// <summary>
    /// Specifies the endnotes position. The value of the property is EndnotePosition integer constant.
    /// </summary>
    public int getPosition()
    public void setPosition(int value)
    /// <summary>
    /// Specifies the number format for automatically numbered endnotes. The value of the property is NumberStyle integer constant.
    /// </summary>
    public int getNumberStyle()
    public void setNumberStyle(int value)
    /// <summary>
    /// Specifies the starting number or character for the first automatically numbered endnotes.
    /// </summary>
    public int getStartNumber()
    public void setStartNumber(int value)
    /// <summary>
    /// Determines when automatic numbering restarts. The value of the property is FootnoteNumberingRule integer constant.
    /// </summary>
    public int getRestartRule()
    public void setRestartRule(int value)
}
{{< /highlight >}}

The similar Position property of the FootnotePosition type is added into the FootnoteOptions class. The property should be used instead of the obsolete Location property.

The new public enum types FootnotePosition and EndnotePosition have the following items:

{{< highlight csharp >}}
/// <summary>
/// Defines the footnote position.
/// </summary>
public class FootnotePosition
{
    /// <summary>
    /// Footnotes are output at the bottom of each page.
    /// </summary>
    BOTTOM_OF_PAGE = 1,
    /// <summary>
    /// Footnotes are output beneath text on each page.
    /// </summary>
    BENEATH_TEXT = 2
}
/// <summary>
/// Defines the endnote position.
/// </summary>
public class EndnotePosition
{
    /// <summary>
    /// Endnotes are output at the end of the section.
    /// </summary>
    END_OF_SECTION = 0,
    /// <summary>
    /// Endnotes are output at the end of the document.
    /// </summary>
    END_OF_DOCUMENT = 3
}
{{< /highlight >}}

### Provided API Similar to SignatureSet.AddSignatureLine Method (Office)

Related issue: WORDSNET-14984

Added public property ProviderId to the **SignOptions** class.

{{< highlight csharp >}}

// Specifies the class ID of the signature provider.
public java.util.UUID getProviderId()
public void setProviderId(java.util.UUID value)
{{< /highlight >}}

And also added public property ProviderId to the **SignatureLine** class.

{{< highlight csharp >}}

// Gets or sets signature provider identifier for this signature line.
public java.util.UUID getProviderId()
public void setProviderId(java.util.UUID value)
{{< /highlight >}}

**UC1 - existing signature line:**

{{< highlight csharp >}}
Document doc = new Document("pathToDocument.docx");
SignatureLine signatureLine = ((Shape)doc.getFirstSection().getBody().getChild(NodeType.SHAPE, 0, true)).getSignatureLine();
SignOptions signOptions = new SignOptions();
signOptions.setProviderId(signatureLine.getProviderId());
signOptions.setSignatureLineId(signatureLine.getId());
CertificateHolder certHolder = CertificateHolder.create("pathToCert.pfx", "certPassword");
DigitalSignatureUtil.sign("pathToSrcFile.docx", "pathToDstFile.docx", certHolder, signOptions);
{{< /highlight >}}

**C2 - creating new signature line:**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
SignatureLine signatureLine = builder.insertSignatureLine(new SignatureLineOptions()).getSignatureLine();
signatureLine.setProviderId(UUID.randomUUID()); 
doc.save("pathToSrcFile.docx");
SignOptions signOptions = new SignOptions();
signOptions.setSignatureLineId(signatureLine.getId());
signOptions.setProviderId(signatureLine.getProviderId());
CertificateHolder certHolder = CertificateHolder.create("pathToCert.pfx", "certPassword");
DigitalSignatureUtil.sign("pathToSrcFile.docx", "pathToDstFile.docx", certHolder, signOptions);
{{< /highlight >}}

**C3 - signing using special provider Id:**

{{< highlight csharp >}}
SignOptions signOptions = new SignOptions();
signOptions.setProviderId(UUID.randomUUID());
CertificateHolder certHolder = CertificateHolder.create("pathToCert.pfx", "certPassword");
DigitalSignatureUtil.sign("pathToSrcFile.docx", "pathToDstFile.docx", certHolder, signOptions);		
{{< /highlight >}}

### Exposed Table.HorizontalAlignment Property

Related issue: WORDSNET-15817

Added new public read-only properties to the **Table** class.

{{< highlight csharp >}}

// Gets table relative horizontal alignment. The value of the property is HorizontalAlignment integer constant.
public int getRelativeHorizontalAlignment()

// Gets table relative vertical alignment. The value of the property is VerticalAlignment integer constant.
public int getRelativeVerticalAlignment()
{{< /highlight >}}

**UC:**

{{< highlight csharp >}}

// It is necessary to use the appropriate properties,

// depending on the floating table or not.

// It is necessary to use the appropriate properties,

// depending on the floating table or not.
if (table.getTextWrapping() == TextWrapping.AROUND)
{
 System.out.println(table.getRelativeHorizontalAlignment());
 System.out.println(table.getRelativeVerticalAlignment());
}
else
{
System.out.println(table.getAlignment());
}
{{< /highlight >}}

### Prevent Embedding Fonts while Saving into HTML Fixed Format.

Related issue: WORDSNET-15880

We have introduced HtmlFixedSaveOptions.UseTargetMachineFonts property.

{{< highlight csharp >}}
/// <summary>
/// Flag indicates whether fonts from target machine must be used to display the document.
/// If this flag is set to true, <see cref="FontFormat"/> and <see cref="ExportEmbeddedFonts"/> properties do not have effect,
/// also <see cref="ResourceSavingCallback"/> is not fired for fonts.
/// Default is false.
/// </summary>
public boolean getUseTargetMachineFonts()
public void setUseTargetMachineFonts(boolean value)
{{< /highlight >}}
