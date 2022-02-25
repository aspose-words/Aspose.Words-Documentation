---
title: Aspose.Words for .NET 17.9 Release Notes
articleTitle: Aspose.Words for .NET 17.9 Release Notes
linktitle: Aspose.Words for .NET 17.9 Release Notes
description: "Aspose.Words for .NET 17.9 Release Notes – the latest updates and fixes."
type: docs
weight: 40
url: /net/aspose-words-for-net-17-9-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 17.9](https://www.nuget.org/packages/Aspose.Words/17.9.0)

{{% /alert %}}

## Major Features

There are 76 improvements and fixes in this regular monthly release. The most notable are:

- Caching of shading patterns for PDF output implemented. The output size of PDF documents with the repeating images (e.g. in header/footer) is now significantly reduced.
- Precaching of printer settings implemented. Calling of AsposeWordsPrintDocument.CachePrinterSettings() reduces the time for the first call of Print() method making the sequential calls of Print() method uniform.Metafiles with EMR_ALPHABLEND record with 32bpp ARGB raw bitmap data rendering implemented.
- Improved character spacing control handling for Asian text.
- Improved table grid calculation when a paragraph in a cell has large indents.
- Improved text wrapping in narrow line band when there is a leading tab stop.
- Added feature to set Placeholder Text of Structured Document Tag.
- Added feature to support w:dirty attribute on a field.
- Updating value of SaveDate field just by doing open/save.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-11001|Black backgrounds appear behind OLE objects in PDF|Bug|
|WORDSNET-11209|A blank page added in generated PDF|Bug|
|WORDSNET-13308|/character spacing control/ Incorrect foreign language character spacing in rendered documents|Bug|
|WORDSNET-13557|VML shape in incorrectly read from HTML|Bug|
|WORDSNET-13741|/character spacing control/ Chinese text renders on next line in HtmlFixed|Bug|
|WORDSNET-13743|/character spacing control/ Chinese text moves to next page after conversion from Doc to HtmlFixed|Bug|
|WORDSNET-13750|Cell's contents are lost after re-saving RTF|Bug|
|WORDSNET-13963|/character spacing control/ Docx to Pdf conversion issue with Chinese text|Bug|
|WORDSNET-14174|Color of mail merge fields is changed after conversion from Docx to Doc/Pdf|Bug|
|WORDSNET-14508|TOC fields are corrupted during open/save RTF|Bug|
|WORDSNET-14573|/character spacing control/ A paragraph wraps to next line in fixed page formats|Bug|
|WORDSNET-14677|Chart is changed to image after re-saving Docx|Bug|
|WORDSNET-14779|Html to Docx conversion issue with table's border style|Bug|
|WORDSNET-14898|Table Top Border missing in PDF|Bug|
|WORDSNET-15054|Mail Merge - Numbered Bullet Points Incrementing|Bug|
|WORDSNET-15170|/compressed punctuation + fullwidth characters/ Character spacing changes after DOCX to JPG conversion|Bug|
|WORDSNET-15185|Long numbers are truncated in DOCX to HTML conversion|Bug|
|WORDSNET-15261|CSS reader incorrectly processes @import rules that don't end with a semicolon|Bug|
|WORDSNET-15418|Move-from/move-to revisions of run properties of a paragraph are not read/written|Bug|
|WORDSNET-15425|Docx to Odt conversion issue with GroupShape size|Bug|
|WORDSNET-15453|Some HTML data is missing in resultant DOCX|Bug|
|WORDSNET-15545|Incorrect text formatting in RTF to HTML conversion|Bug|
|WORDSNET-15554|/compressed punctuation + fullwidth characters/ DOCX to PDF conversion issue with Japanese punctuation mark|Bug|
|WORDSNET-15583|Formatting issue in DOCX with revisions to PDFA conversion|Bug|
|WORDSNET-15597|Justified XHTML text conversion issue|Bug|
|WORDSNET-15608|Incorrect applying fill(Picture or texture) for bevel type of angle.|Bug|
|WORDSNET-15613|/text wrap/ Images not aligned in PDF rendition|Bug|
|WORDSNET-15621|Text Replacement issue with RTL text|Bug|
|WORDSNET-15639|Incorrect applying texture (hardware rendering).|Bug|
|WORDSNET-15650|When DOC is saved as PDF, in Arabic language 500 becomes 050|Bug|
|WORDSNET-15651|StructuredDocumentTag.FullDate is not updating|Bug|
|WORDSNET-15663|Assertions in CellMetrics|Bug|
|WORDSNET-15674|The number of pages increases when saved into odt ott formats|Bug|
|WORDSNET-15687|List number format is not rendered correctly in output PDF|Bug|
|WORDSNET-15689|Aspose.Words throws exception at Windows XP where mscorlib.dll v2.0.50727.42 is installed|Bug|
|WORDSNET-15701|Heading bookmarks are not created after conversion from DOCX to PDF.|Bug|
|WORDSNET-15705|Tables count issue in RTF|Bug|
|WORDSNET-15707|/character spacing control/ DOCX to PDF conversion issue with position of Chinese text|Bug|
|WORDSNET-15710|Formatting issue in DOCX to SVG conversion|Bug|
|WORDSNET-15718|Table of contents are broken|Bug|
|WORDSNET-15729|RTF to DOC conversion loses cell background colors|Bug|
|WORDSNET-15732|DOCX is corrupted when it is re-saved|Bug|
|WORDSNET-15743|Hebrew text is reversed in output PDF|Bug|
|WORDSNET-15753|Converting a landscape RTF document to PDF produces the corrupted output.|Bug|
|WORDSNET-15763|Hidden border of table is visible after saving RTF to DOC and PDF|Bug|
|WORDSNET-15778|Document.UpdateFields throws System.NullReferenceException|Bug|
|WORDSNET-15780|Inconsistent results from JoinRunsWithSameFormatting|Bug|
|WORDSNET-15781|Inconsistent results from JoinRunsWithSameFormatting|Bug|
|WORDSNET-2711|Text becomes bold after open/save the document.|Bug|
|WORDSNET-3136|Table is moved to the next page during rendering.|Bug|
|WORDSNET-4006|Part of invisible content becomes visible upon rendering|Bug|
|WORDSNET-7194|SmartArt (DrawingML) graphic is not preserved during DOCX to DOC conversion|Bug|
|WORDSNET-8786|Table render incorrectly after conversion from Docx to Pdf|Bug|
|WORDSNET-8878|An EMF image is rendered completely black in PDF|Bug|
|WORDSNET-9136|Docx to Pdf conversion issue with EMF metafile|Bug|
|WORDSNET-9142|/table grid/ Table column widths are calculated incorrectly during rendering|Bug|
|WORDSNET-9516|/character spacing control/ The line is incorrectly wrapped when punctuation compressing is enabled|Bug|
|WORDSNET-15220|Show Placeholder text after removal of SDT runs|Enhancement|
|WORDSNET-15372|Preserve NUMPAGES fields during HTML round-trip|Enhancement|
|WORDSNET-15627|Table layout issue in DOCX to PDF|Enhancement|
|WORDSNET-13896|Exception is thrown when loading HTML|Exception|
|WORDSNET-15346|/structure builder/ System.NullReferenceException is thrown while saving Docx to PDF|Exception|
|WORDSNET-15713|DOC is not loading into API throws FileCorruptedException|Exception|
|WORDSNET-15715|Aspose.Words throws FileCorruptedException upon loading DOC file|Exception|
|WORDSNET-15716|Aspose.Words throws FileCorruptedException upon loading a DOC file|Exception|
|WORDSNET-15799|UpdateFields() throws IndexOutOfRange Exception with null chart value|Exception|
|WORDSNET-15803|System.IndexOutOfRangeException is thrown while converting DOCX to PDF|Exception|
|WORDSNET-14533|Add feature to set Placeholder Text of Structured Document Tag|Feature|
|WORDSNET-15686|Add feature to support w:dirty attribute on field|Feature|
|WORDSNET-6956|Charts are lost after open/save ODT document (triaged)|Feature|
|WORDSNET-7912|Consider updating value of SaveDate field just by doing open/save|Feature|
|WORDSNET-15162|Print() first call taking more time than subsequent calls|Performance|
|WORDSNET-15605|Document.UpdateFields method causes System.OutOfMemoryException|Performance|
|WORDSNET-15224|Aspose.Words.FileCorruptedException is thrown while loading HTML|Regression|
|WORDSNET-15783|Document.UpdateFields does not update the formula field|Regression|
|WORDSNET-15815|Document.Compare throws System.NullReferenceException|Regression|

Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 17.9. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### Added LoadOptions.UpdateDirtyFields, Field.IsDirty and FieldChar.IsDirty Properties

WORDSNET-15686 has been resolved. While working on WORDSNET-15686, we have added three public properties related to the dirty (stale) state of the fields and controlling whether such fields should be updated: 

LoadOptions:

{{< highlight csharp >}}
/// <summary>
/// Specifies whether to update the fields with the <c>dirty</c> attribute.
/// </summary>
public bool UpdateDirtyFields
{{< /highlight >}}

Field:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets whether the current result of the field is no longer correct (stale) due to other modifications made to the document.
/// </summary>
public bool IsDirty
{{< /highlight >}}

FieldChar:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets whether the current result of the field is no longer correct (stale) due to other modifications
/// made to the document.
/// </summary>
public bool IsDirty
{{< /highlight >}}

When LoadOptions.UpdateDirtyFields == true, all fields having Field.IsDirty == true or FieldChar.IsDirty == true are updated on document load.


### Added OdtSaveOptions.MeasureUnit Property

WORDSNET-15425 has been resolved. Public property added to OdtSaveOptions class:

{{< highlight csharp >}}
/// <summary>
/// Allows to specify units of measure to apply to document content.
/// The default value is <see cref="OdtSaveMeasureUnit.Centimeters"/>
/// </summary>
/// <remarks>
/// Open Office uses centimeters when specifying lengths, widths and other measurable formatting and&nbsp;
/// content properties in documents whereas MS Office uses inches.
///</remarks>
public OdtSaveMeasureUnit MeasureUnit
{{< /highlight >}}

**Use case:**

{{< highlight csharp >}}
Document doc = TestUtil.Open("XXX.docx");
OdtSaveOptions saveOptions = new OdtSaveOptions();
saveOptions.MeasureUnit = OdtSaveMeasureUnit.Inches;
doc.Save("ХХХ.odt", saveOptions);
{{< /highlight >}}

### Added Public Method AsposeWordsPrintDocument.CachePrinterSettings

Related issue WORDSNET-15162.
Public method added to AsposeWordsPrintDocument class:

{{< highlight csharp >}}
/// <summary>
/// Reads and caches some fields of <see cref="PrinterSettings"/>
/// to reduce printing time.
/// </summary>
/// <remarks>
/// This method is called before the printing starts if it wasn't executed previously.
/// </remarks>
public void CachePrinterSettings()
{{< /highlight >}}

Use case:

{{< highlight csharp >}}
Document doc = new Document ("Simple.docx");

// Build layout.
doc.UpdatePageLayout();

// Create settings, setup printing.
PrinterSettings settings = new PrinterSettings();
settings.PrinterName = "Microsoft XPS Document Writer";
...

// Create AsposeWordsPrintDocument  and cache settings.
AsposeWordsPrintDocument printDocument = new AsposeWordsPrintDocument(doc);
printDocument.PrinterSettings = settings;
printDocument.CachePrinterSettings();

// Do something.
...
printDocument.Print();
{{< /highlight >}}

Please note that total time of printing with and without call to CachePrinterSettings() is almost the same.
The goal of this method is to reduce time of first call of Print() method.

### Added Public Method StructuredDocumentTag.Clear

Ability to clear contents of a content control with displaying a placeholder is implemented.

{{< highlight csharp >}}
/// <summary>
/// Clears contents of this structured document tag and displays a placeholder if it is defined.
/// </summary>
public void Clear()
{{< /highlight >}}

It is not possible to clear contents of a content control if it has revisions. Also, the method does nothing for row-level content controls that have more than one cell (limitation of MS Word).
If a content control has no placeholder, five spaces are inserted like in MS Word (except repeating sections, repeating section items, groups, checkboxes, citations).
If a content control is mapped to custom XML, the referenced XML node is cleared.

Example of use:

{{< highlight csharp >}}
Document doc = new Document(myDir + "document1.docx");
StructuredDocumentTag sdt = (StructuredDocumentTag)doc.GetChild(NodeType.StructuredDocumentTag, 0, true);
sdt.Clear();
doc.Save(myDir + "document1.docx");
{{< /highlight >}}

### Added Public Property List.IsRestartAtEachSection.

Related issue: WORDSNET-15054

Public property added to the List class to support backward compatibility upon Mail Merge, please see [WORDSNET-15054](https://issue.auckland.dynabic.com/issues/WORDSNET-15054).

{{< highlight csharp >}}
/// <summary>
/// Specifies whether list should be restarted at each section.
/// Default value is <b>false</b>.
/// </summary>
/// <remarks>
/// <p>This option is supported only in RTF, DOC and DOCX document formats.</p>
/// <p>This option will be written to DOCX only if <see cref="OoxmlCompliance"/> is higher then <see cref="OoxmlComplianceCore.Ecma376"/>.</p>
/// </remarks>
public bool IsRestartAtEachSection
{{< /highlight >}}

**Use case:**

{{< highlight csharp >}}
Document doc = new Document();
doc.Lists.Add(ListTemplate.NumberDefault);
List list = doc.Lists[0];

// Set true to specify that the list has to be restarted at each section.
list.IsRestartAtEachSection = true;
DocumentBuilder builder = new DocumentBuilder(doc);
builder.ListFormat.List = list;
for (int i = 1; i < 45; i++)
{
	builder.Writeln(String.Format("List Item {0}", i));

	// Insert section break.
	if (i == 15)
		builder.InsertBreak(BreakType.SectionBreakNewPage);
}

// IsRestartAtEachSection will be written only if compliance is higher then OoxmlComplianceCore.Ecma376
OoxmlSaveOptions options = new OoxmlSaveOptions();
options.Compliance = OoxmlCompliance.Iso29500_2008_Transitional;
doc.Save("out.docx", options);
{{< /highlight >}}

Here is the code snippet for backward compatibility upon Mail Merge:

{{< highlight csharp >}}
Dictionary<List, bool> lists = new Dictionary<List, bool>();
foreach (List list in document.Lists)
	lists[list] = list.IsRestartAtEachSection;
document.MailMerge.Execute(...);
foreach (KeyValuePair<List, bool> pair in lists)
	pair.Key.IsRestartAtEachSection = pair.Value
{{< /highlight >}}

### Added SaveOptions.UpdateLastSavedTimeProperty Property

Reference: WORDSNET-7912

While working on WORDSNET-7912, we have added the SaveOptions.UpdateLastSavedTimeProperty property that controls whether to update the corresponding built-in document property on document save.

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value determining whether the <see cref="BuiltInDocumentProperties.LastSavedTime" /> property is updated before saving.
/// </summary>
public bool UpdateLastSavedTimeProperty
{{< /highlight >}}

{{< highlight csharp >}}
[Test]
public void TestJira7912([Values(true, false)]bool updateLastSavedTimeProperty)
{
    Document document = new Document();
    using (Stream stream = new MemoryStream())
        document.Save(stream, new OoxmlSaveOptions { UpdateLastSavedTimeProperty = updateLastSavedTimeProperty });
    DateTime expected = updateLastSavedTimeProperty
        ? DateTimeUtil.UnitTestingDateTime
        : DateTime.MinValue;
    Assert.AreEqual(expected, document.BuiltInDocumentProperties.LastSavedTime);
}
{{< /highlight >}}
