---
title: Aspose.Words for .NET 19.3 Release Notes
type: docs
weight: 100
url: /net/aspose-words-for-net-19-3-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 19.3](https://www.nuget.org/packages/Aspose.Words/19.3.0).

{{% /alert %}} 

## Major Features

- Added feature to preserve the representation of legacy control characters while converting to OOXML formats.
- Added new public properties to the ChartAxis class.
- Added predefined font fallback settings for Google Noto fonts.
- Hyphenation logic improved.
- Fixed trailing spaces underlines in RTL paragraphs.
- Fixed issue with automatic frame width updates when the field is changed.
- Implemented invalid parameters filtering for shadow effect rendering.
- Improved rendering of the dashed compound lines for polygon shapes (except Bezier curves).
- Fixed rendering of EMF metafiles with unknow EmfPlusUnitType record.
- Fixed a bug preventing the VML line shapes to be rendered from bottom to top.
- Fixed a bug causing an exception while rendering the DML shape reflection effect.
- Fixed a bug that caused the image to be incorrectly positioned due to a bounding box calculation error while rendering.
- Fixed a bug with rendering DML Charts markers and data labels if the number of X-values is not equal to the number of Y-values.
- Fixed a bug with rendering of DML charts series with empty XValues.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-18146|Formatting the bar chart labels on the Y axis|Feature|
|WORDSNET-18081|Add feature to preserve special content of DOC when it is converted to DOCX|Feature|
|WORDSNET-18085|Comment and Editable ranges are allowed at Block node level now|Feature|
|WORDSNET-17778|Keep indentation of Lists when saving as Text|Feature|
|WORDSNET-17329|Preparing a suitable fallback list of free fonts|Feature|
|WORDSNET-17452|Preserve fields during Word to Html to Word round trip|Enhancement|
|WORDSNET-18212|Unknown WIX-Installer MSI Publisher name|Enhancement|
|WORDSNET-17935|Remove unused classes in Word formats|Enhancement|
|WORDSNET-18078|OutOfMemoryError at Document.updatePageLayout() converting Word doc that has strange formatting|Performance|
|WORDSNET-18167|MailMerge.ExecuteWithRegions throws System.NullReferenceException|Exception|
|WORDSNET-18156|System.InvalidCastException is thrown while loading DOC|Exception|
|WORDSNET-18129|MoveToParagraph throws System.ArgumentOutOfRangeException|Exception|
|WORDSNET-18124|FileCorruptedException is thrown while loading the RTF|Exception|
|WORDSNET-18003|Field.Update throws System.ArgumentNullException|Exception|
|WORDSNET-18004|Field.Update throws System.ArgumentNullException|Exception|
|WORDSNET-17580|System.InvalidOperationException is thrown while saving DOCX to HTML|Exception|
|WORDSNET-18128|System.StackOverflowException when using the file from WORDSNET-18078|Exception|
|WORDSNET-18098|System.ArgumentOutOfRangeException is thrown while saving DOCX to PDF|Regression|
|WORDSNET-17658|List label is changed after conversion from DOCX to PDF|Bug|
|WORDSNET-10006|Tables from Headers move inside the Body during rendering to fixed page formats|Bug|
|WORDSNET-18135|The picture is not rendered due to unknown EmfPlusUnitType|Bug|
|WORDSNET-18106|Borders are added after conversion from DOC to DOCX|Bug|
|WORDSNET-18074|DOCX to PDF conversion issue with FormField result|Bug|
|WORDSNET-18048|Text before MERGEFIELD is removed after performing MailMerge|Bug|
|WORDSNET-18011|DOCX to PDF conversion issue with preserved FormField|Bug|
|WORDSNET-18009|An extra list item is created after conversion from HTML to RTF|Bug|
|WORDSNET-17995|Image position is changed after conversion from DOCX to HTML|Bug|
|WORDSNET-17972|List numbers are lost in output HTML after comparing documents|Bug|
|WORDSNET-17962|DOCX to PDF conversion issue with the content position|Bug|
|WORDSNET-17940|Document.UpdateFields method changes the font formatting of NoteRef field|Bug|
|WORDSNET-17929|DOCX to PDF conversion issue with list number fields|Bug|
|WORDSNET-17905|PDF generation not rendering CustomXMLPart bound Plain Text STD's content|Bug|
|WORDSNET-17907|The table is rendered improperly during HTML to TIFF conversion|Bug|
|WORDSNET-17895|SVG with Font "Wingdings 3" problem inserting in Document|Bug|
|WORDSNET-17858|InsertHtml sets incorrect paragraph indent inside the table's cell|Bug|
|WORDSNET-17853|DOCX to TXT conversion issue with number positions|Bug|
|WORDSNET-17834|The document has excessive empty paragraph when exporting to HTML|Bug|
|WORDSNET-17610|Incorrect rendering of the shape borders with "tri" compound line type and "dash" preset|Bug|
|WORDSNET-17540|The position of shape is changed after conversion from DOCX to PDF|Bug|
|WORDSNET-15602|StructuredDocumentTag.ContentsFont does not work for SdtType.Checkbox|Bug|
|WORDSNET-14953|Footnote.ReferenceMark returns an incorrect value for the custom reference mark|Bug|
|WORDSNET-16162|The content of StructuredDocumentTag are exported incorrectly|Bug|
|WORDSNET-18071|Assertion loading document|Bug|
|WORDSNET-18152|Incorrect VML line drawing|Bug|
|WORDSNET-18162|Layout text is different from Paragraph text|Bug|
|WORDSNET-18160|Layout text does not match Paragraph text|Bug|
|WORDSNET-18029|Paragraph's underline formatting is lost in output PDF|Bug|
|WORDSNET-16462|List numbering is not correct after using Document.Compare|Bug|
|WORDSNET-18147|The corrupted document is generated after inserting a table into content control|Bug|
|WORDSNET-18138|Footer page numbers only render the first digit when converting to PDF|Bug|
|WORDSNET-18104|MHT file is improperly loaded|Bug|
|WORDSNET-17879|The chart markers are missing in PDF rendition|Bug|
|WORDSNET-17893|DOCX to PDF - hyphenation not same|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 19.3. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added feature to preserve the representation of legacy control characters while converting to OOXML formats

Related issue: WORDSNET-18081 has now been resolved.

New public property was added to the OoxmlSaveOptions class:



{{< highlight csharp >}}
/// <summary>
/// Keeps original representation of legacy control characters.
/// </summary>
public bool KeepLegacyControlChars
{
    get { return mKeepLegacyControlChars; }
    set { mKeepLegacyControlChars = value; }
}
{{< /highlight >}}



Some formats support legacy control characters. Word does not save these symbols to DOCX format (more accurately in OOXML formats). However, there is a customer request to preserve such control characters. Therefore the setting above was introduced. So far only one legacy character (ShortDateTime) is supported which declared in the "DOC" format.

**Use Case:**



{{< highlight csharp >}}
Document doc = new Document("document.doc");
OoxmlSaveOptions so = new OoxmlSaveOptions(SaveFormat.FlatOpc);
so.KeepLegacyControlChars = true;
doc.Save("document.docx", so);
{{< /highlight >}}

### Added predefined font fallback settings for Google Noto fonts

Related issue: WORDSNET-17329 has now been resolved:

Added predefined font fallback settings for Google Noto fonts. These are free fonts licensed under [SIL OFL](http://scripts.sil.org/OFL). They can be downloaded [from here](https://www.google.com/get/noto/).



{{< highlight csharp >}}
public class FontFallbackSetting
{
    /// <summary>
    /// Loads predefined fallback settings which uses Google Noto fonts.
    /// </summary>
    public void LoadNotoFallbackSettings();
}
{{< /highlight >}}



**Note:** Only Sans style Noto fonts with regular weight are used in the predefined settings.

**Note:** Some of the Noto fonts uses advanced typography features. Advanced typography is currently not supported by AW and these fonts may be rendered inaccurately.

### Changed default value for TxtSaveOptions.AddBidiMarks property from 'true' to 'false'

Related issue: WORDSNET-17853 has now been resolved.

The default value for public property TxtSaveOptions.AddBidiMarks was changed from *true* to *false*:



{{< highlight csharp >}}
/// <summary>
/// <para>Specifies whether to add bi-directional marks before each BiDi run when exporting in plain text format.</para>
/// <para>The default value is <b>false</b>.</para>
/// </summary>
public bool AddBidiMarks
{{< /highlight >}}




This is now the same as the corresponding option in Word.

### TxtSaveOptions.ListIndentation option is introduced that allows specifying how list levels are indented when exporting to a plain text format

Related issue: WORDSNET-17778 has now been resolved.

The following public class is introduced that allows to specify how list levels are indented when exporting to a plain text format:



{{< highlight csharp >}}
/// <summary>
/// Specifies how list levels are indented when document is exporting to SaveFormat.Text format.
/// </summary>
public class TxtListIndentation
{{< /highlight >}}




It has two public properties for specifying how {many|multiple|several|a few|numerous} and which character to use for indentation of list levels:



{{< highlight csharp >}}
/// <summary>
/// Gets or sets how {many|multiple|several|a few|numerous} <see cref="Character"/> to use as indentation per one list level.
/// The default value is 0, that means no indentation.
/// </summary>
public int Count
/// <summary>
/// Gets or sets which character to use for indenting list levels.
/// The default value is '\0', that means there is no indentation.
/// </summary>
public char Character
{{< /highlight >}}





At last, a new option is added to the TxtSaveOptions class:



{{< highlight csharp >}}
/// <summary>
/// Gets a ListIndentation object that specifies how {many|multiple|several|a few|numerous} and which character to use for indentation of list levels.
/// By default it is zero count of character '\0', that means no indentation.
/// </summary>
public TxtListIndentation ListIndentation
{{< /highlight >}}


#### UseCase1: Use one tab character per level for list indentation:


{{< highlight csharp >}}
Document doc = new Document("input_document");
TxtSaveOptions options = new TxtSaveOptions();
options.ListIndentation.Count = 1;
options.ListIndentation.Character = '\t';
doc.Save("output.txt", options);
{{< /highlight >}}


##### UseCase2: Use three spaces indentation level for list indentation:


{{< highlight csharp >}}
Document doc = new Document("input_document");
TxtSaveOptions options = new TxtSaveOptions();
options.ListIndentation.Count = 3;
options.ListIndentation.Character = ' ';
doc.Save("output.txt", options);
{{< /highlight >}}


##### UseCase3: Do not use any list level indentation (default behavior):


{{< highlight csharp >}}
Document doc1 = new Document("input_document");
doc1.Save("output1.txt");
Document doc2 = new Document("input_document");
TxtSaveOptions options = new TxtSaveOptions();
doc2.Save("output2.txt", options);
{{< /highlight >}}

### WORDSNET-18146 - Added public property ChartAxis.TickLabelAlignment

The following new property has been added into the ChartAxis class:



{{< highlight csharp >}}
/// <summary>
/// Gets or sets text alignment of axis tick labels.
/// </summary>
/// <remarks>
/// <para>This property has effect only for multi-line labels.</para>
/// <para>Default value is <see cref="ParagraphAlignment.Center"/>.</para>.
/// </remarks>
public ParagraphAlignment TickLabelAlignment
{
    get;
    set;
}
{{< /highlight >}}



When axis tick labels are multi-line, MS Word aligns them to the center by default. The property allows for changing this behaviour.

#### UseCase:


{{< highlight csharp >}}
Document doc = new Document(fileName);
Shape shape = (Shape)doc.GetChild(NodeType.Shape, 0, true);
ChartAxis axis = shape.Chart.AxisX;
axis.TickLabelAlignment = ParagraphAlignment.Right;
{{< /highlight >}}

