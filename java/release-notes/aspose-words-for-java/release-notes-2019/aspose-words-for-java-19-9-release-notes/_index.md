---
title: Aspose.Words for Java 19.9 Release Notes
type: docs
weight: 40
url: /java/aspose-words-for-java-19-9-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 19.9](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/19.9).

{{% /alert %}} 

## Major Features

- Advanced typography based on HarfBuzz shaper.
- Provided API to write and modify VBA macros.
- Implemented ability to create repeating section structured document tags.
- Simplified work with XML and CSV data sources for LINQ Reporting Engine.
- Improved rendering of “Sitka Banner”, “Sitka Display”, “Sitka Heading”, “Sitka Small”, “Sitka Subheading”, “Sitka Text” and “Cambria Math” fonts.
- Implemented OpenType number spacing.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-2120|Advanced typography based on HarfBuzz shaper.|New Feature|
|WORDSJAVA-2178|XML Data Source on Java|New Feature|
|WORDSNET-19120|Add support for the Truncate Font Height compatibility option|New Feature|
|WORDSNET-18722|Simplify working with XML, JSON, and CSV data sources for LINQ Reporting Engine|New Feature|
|WORDSNET-12480|Provide the ability to manipulate VBA macro code (string changes)|New Feature|
|WORDSNET-12655|Provide code to programmatically create RepeatingSection SDT using Aspose.Words|New Feature|
|WORDSNET-18542|Improve macros extract from the document|New Feature|
|WORDSNET-1055|Implement the "match destination formatting" behaviour|New Feature|
|WORDSJAVA-2162|HTML to DOCX conversion issue with list numbering|Bug|
|WORDSJAVA-2166|java.lang.Exception: javax.imageio.IIOException is thrown while saving the document to HtmlFixed|Bug|
|WORDSJAVA-2183|DateTime time zone shift while working with XML Data Source on Java|Bug|
|WORDSNET-19039|System.InvalidOperationException is thrown while converting DOCX to PNG|Bug|
|WORDSNET-19011|RTF-DOCM-RTF roundtrip causes System.NullReferenceException|Bug|
|WORDSNET-18210|Incorrect number formatting in PDF|Bug|
|WORDSNET-18909|Empty field values on saving to PDF|Bug|
|WORDSNET-18605|Inline picture nested inside textframe in 2013 mode isn't clipped|Bug|
|WORDSNET-18607|System.NullReferenceException is thrown while saving DOCX to PDF|Bug|
|WORDSNET-18912|MailMerge.Execute merges the Date field incorrectly|Bug|
|WORDSNET-19015|Footnotes missing when saving DOC to DOC|Bug|
|WORDSNET-18918|System.ArgumentException is thrown while saving DOCX to PDF|Bug|
|WORDSNET-18917|System.ArgumentException is thrown during  converting DOCX to PDF/PNG|Bug|
|WORDSNET-18927|Implement clipping for nested inline/floating shapes/pictures/charts/diagrams/WordArts|Bug|
|WORDSNET-19016|DOCX is not imported into Aspose.Words' DOM|Bug|
|WORDSNET-18076|Nested tables inside row with exact height in inline table aren't clipped|Bug|
|WORDSNET-18793|Incorrectly formatted pie charts in PDF|Bug|
|WORDSNET-18931|Image is converted to red cross in output PDF|Bug|
|WORDSNET-19050|TxtSaveOptions.PreserveTableLayout does not preserve cell alignme|Bug|
|WORDSNET-18754|System.InvalidOperationException is thrown by Document.PageCount|Bug|
|WORDSNET-18939|System.ArgumentNullException is thrown while saving DOCX to PDF|Bug|
|WORDSNET-19024|Fail to load an OLE from RTF|Bug|
|WORDSNET-11180|Shape is not visible after conversion from DOCX to PDF/HTML|Bug|
|WORDSNET-15341|Misplaced characters when saving as image or HTML|Bug|
|WORDSNET-19029|Aspose.Words.FileCorruptedException occurs upon loading a DOC|Bug|
|WORDSNET-18615|System.NullReferenceException occurs upon saving DOCX to PDF|Bug|
|WORDSNET-18794|Incorrectly formatted pie charts in PDF|Bug|
|WORDSNET-18795|Problem with pie charts format in PDF|Bug|
|WORDSNET-19056|The document is broken when setting ShowDataLabelsRange to true|Bug|
|WORDSNET-18943|After merging documents and updating the fields the TOC formatting changes to Normal style|Bug|
|WORDSNET-11652|Frame text overlapped by another frame's inline shape shows in AW output|Bug|
|WORDSNET-18560|Chart's text is overlapped after conversion from DOCX to PDF|Bug|
|WORDSNET-19092|DOCX with graphic to PDF conversion issue|Bug|
|WORDSNET-18697|Improve API to write and modify VBA macros|Bug|
|WORDSNET-18997|Shapes saved to DOC no longer editable/moveable|Bug|
|WORDSNET-18891|Incorrect scaling of the horizontal date axis after conversion to PDF|Bug|
|WORDSNET-19006|System.IO.EndOfStreamException is thrown while re-saving DOCX|Bug|
|WORDSNET-18101|Horizontal axis does not render correctly in output PDF|Bug|
|WORDSNET-18099|DOCX to PDF conversion issue with chart's rendering|Bug|
|WORDSNET-18271|A character is not rendered in Word to PDF rendition correctly|Bug|
|WORDSNET-18365|Vietnamese text becomes number in PDF - PAGE field|Bug|
|WORDSNET-18981|Data label of the zero point of BarChart is not rendered after conversion to PDF|Bug|
|WORDSNET-19123|Aspose.Words.Shaping summaries are empty in CHM help file|Bug|
|WORDSNET-18798|UpdateFields behaves differently from MS Word update engine|Bug|
|WORDSNET-14756|Nested table not clipped by outer inline table|Bug|
|WORDSNET-18799|Exception when rendering Word document as HTML|Bug|
|WORDSNET-17963|Shapes are rendered improperly during DOCX to PDF conversion|Bug|
|WORDSNET-18183|Floating table content inside cell with vertical text orientation rotated with text|Bug|
|WORDSNET-18988|Advance field is lost after calling Document.UpdateFields method|Bug|
|WORDSNET-18824|The new line characters are missing when loading MHTML files|Bug|
|WORDSNET-18821|Empty Bookmark is removed before IF field is evaluated when RemoveEmptyParagraphs is used|Bug|
|WORDSNET-19014|Issue with inserting RTF document in text columns|Bug|
|WORDSNET-19044|Aspose.Words HTML generation failed due to line drawing|Bug|
|WORDSNET-19036|The document gets corrupted after saving the DOCX file|Bug|
|WORDSNET-17924|InvalidOperationException while resaving to PDF|Bug|
|WORDSNET-19003|The transparency and size of TextBox error after DOCX to ODT|Bug|
|WORDSNET-18953|Issues with particular font types after EMF to PDF conversion|Bug|
|WORDSNET-18955|Position of list number is changed after rendering Image to PDF|Bug|
|WORDSNET-18732|DOCX to HTMLFixed conversion fails in DOCKER container|Bug|
|WORDSNET-18919|System.ArgumentException is thrown while saving DOCX to PDF|Bug|
|WORDSNET-18963|Content missing in rendered PDF|Bug|
|WORDSNET-18934|Fix rendering of OfficeMath/EQ Fields/Ruby text|Bug|
|WORDSNET-18652|Incorrect rtl text wrapping on conversion to PDF|Bug|
|WORDSNET-18972|Check the first part of suspicious code found by PVS studio|Bug|
|WORDSNET-18660|Tables are overlapped after conversion from DOC to PDF|Bug|
|WORDSNET-18854|Header text is changed after performing mail merge and calling Unlink method|Bug|
|WORDSNET-18971|Check the second part of suspicious code found by PVS studio|Bug|
|WORDSNET-18867|Document.Compare generates revisions for same documents|Bug|
|WORDSNET-19063|Aspose.Words.FileCorruptedException occurs upon loading a DOCX|Bug|
|WORDSNET-19062|24bppRgb image is screwed up in .NET core|Bug|
|WORDSNET-18886|Value cannot be null exception occurs - DOCX to PDF|Bug|
|WORDSNET-19072|Texture background is black instead of white|Bug|
|WORDSNET-19075|Image is resized after conversion with ISO29500_2008_Transitional Compliance|Bug|
|WORDSNET-17260|Shape's text is lost after conversion from DOCX to PDF|Bug|
|WORDSNET-17449|Document.RemoveAllChildren does not remove all nodes|Bug|
|WORDSNET-15429|Nested tables rendering issue|Bug|
|WORDSNET-18397|A line shifts in PDF output|Bug|
|WORDSNET-17182|Content position is changed in output PDF|Bug|
|WORDSNET-18478|Merge.Execute throws System.NullReferenceException|Bug|
|WORDSNET-10826|Saving HTML to PDF takes long time|Bug|
|WORDSNET-14198|When Word document is converted to PDF, Japanese characters are moved to the next row|Bug|
|WORDSNET-7478|Loading Aspose assemblies is slow on terminal server|Bug|
|WORDSNET-7545|System.OutOfMemoryException exception while getting Document.PageCount|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 19.9. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies existing behavior is especially important and is documented here.

### Simplified working with XML, JSON, and CSV data sources for LINQ Reporting Engine

Issue: WORDSNET-18722

The following sections of the engine's documentation were updated/added to describe the changes:

["Building Reports"](/words/java/linq-reporting-engine-api/#linqreportingengineapi-buildingreports)
["Accessing XML Data"](/words/java/linq-reporting-engine-api/#linqreportingengineapi-accessingxmldata)
["Accessing JSON Data"](/words/java/linq-reporting-engine-api/#linqreportingengineapi-accessingjsondata)
["Accessing CSV Data"](/words/java/linq-reporting-engine-api/#linqreportingengineapi-accessingcsvdata)

### WORDSNET-12655 - Implemented ability to create repeating section structured document tags

Now it is possible to create structured document tag nodes of the repeating section and repeating section item types.
The new item has also been added into the SdtType enumeration type:

{{< highlight csharp >}}
public enum SdtType
{
…
    /// <summary>
    /// The SDT represents repeating section item.
    /// </summary>
    /// <remarks>
    /// This is MS-specific feature available since Office 2013 and not supported by the ISO/IEC 29500 OOXML standard.
    /// </remarks>
    RepeatingSectionItem,
…
}
{{< /highlight >}}



**Use case to create a table repeating section mapped to a custom XML part:**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
CustomXmlPart xmlPart = doc.CustomXmlParts.Add("Books",
    "<books><book><title>Everyday Italian</title><author>Giada De Laurentiis</author></book>" +
    "<book><title>Harry Potter</title><author>J K. Rowling</author></book>" +
    "<book><title>Learning XML</title><author>Erik T. Ray</author></book></books>");
Table table = builder.StartTable();
builder.InsertCell();
builder.Write("Title");
builder.InsertCell();
builder.Write("Author");
builder.EndRow();
builder.EndTable();
StructuredDocumentTag repeatingSectionSdt =
    new StructuredDocumentTag(doc, SdtType.RepeatingSection, MarkupLevel.Row);
repeatingSectionSdt.XmlMapping.SetMapping(xmlPart, "/books[1]/book", "");
table.AppendChild(repeatingSectionSdt);
StructuredDocumentTag repeatingSectionItemSdt =
    new StructuredDocumentTag(doc, SdtType.RepeatingSectionItem, MarkupLevel.Row);
repeatingSectionSdt.AppendChild(repeatingSectionItemSdt);
Row row = new Row(doc);
repeatingSectionItemSdt.AppendChild(row);
StructuredDocumentTag titleSdt =
    new StructuredDocumentTag(doc, SdtType.PlainText, MarkupLevel.Cell);
titleSdt.XmlMapping.SetMapping(xmlPart, "/books[1]/book[1]/title[1]", "");
row.AppendChild(titleSdt);
StructuredDocumentTag authorSdt =
    new StructuredDocumentTag(doc, SdtType.PlainText, MarkupLevel.Cell);
authorSdt.XmlMapping.SetMapping(xmlPart, "/books[1]/book[1]/author[1]", "");
row.AppendChild(authorSdt);
doc.Save(dir + "Document.docx");
{{< /highlight >}}

### WORDSNET-17449 - Implemented SavePictureBullet option for Word 97, which cannot work correctly with PictureBullet data

A new public option has been added to the DocSaveOptions class:

{{< highlight csharp >}}
/// <summary>
/// When <c>false</c>, PictureBullet data is not saved to output document.
/// Default value is <b>true</b>.
/// </summary>
/// <remarks>
/// <para>This option is provided for Word 97, which cannot work correctly with PictureBullet data.
/// To remove PictureBullet data, set the option to "false".</para>
/// </remarks>
public bool SavePictureBullet
{{< /highlight >}}



**Use Case. Explains how to remove PictureBullet data from the saving DOC-file:**

{{< highlight csharp >}}
Document doc = new Document("in.doc");
DocSaveOptions so = (DocSaveOptions)SaveOptions.CreateSaveOptions(SaveFormat.Doc);
so.SavePictureBullet = false;
doc.Save("out.doc", so);
{{< /highlight >}}

### WORDSNET-18210 - Incorrect number formatting in PDF

New elements added to public enumeration ***Aspose.Words.Shaping.FontFeature.***

Currently, these font features are processed and correctly provided to the external shapers.

{{< highlight csharp >}}
/// <summary>
/// Replaces figure glyphs set on uniform (tabular) widths with corresponding glyphs set on glyph-specific (proportional) widths.
/// https://docs.microsoft.com/en-us/typography/opentype/spec/features_pt#tag-pnum
/// Equivalent OpenType tag: 'pnum'
/// </summary>
ProportionalFigures,
/// <summary>
/// Replaces figure glyphs set on proportional widths with corresponding glyphs set on uniform (tabular) widths.
/// Tabular widths will generally be the default, but this cannot be safely assumed.
/// Of course this feature would not be present in monospaced designs.
/// https://docs.microsoft.com/en-us/typography/opentype/spec/features_pt#tag-tnum
/// Equivalent OpenType tag: 'tnum'
/// </summary>
TabularFigures,
/// <summary>
/// This feature changes selected non-lining figures to lining figures.
/// https://docs.microsoft.com/en-us/typography/opentype/spec/features_ko#lnum
/// Equivalent OpenType tag: 'lnum'
/// </summary>
LiningFigures,
/// <summary>
/// This feature changes selected figures from the default or lining style to oldstyle form.
/// https://docs.microsoft.com/en-us/typography/opentype/spec/features_ko#onum
/// Equivalent OpenType tag: 'onum'
/// </summary>
OldstyleFigures
{{< /highlight >}}

### WORDSNET-18369 - Remove License.IsLicensed property

The License.IsLicensed obsolete property has been removed in order to increase anti-hacking resistance.
Moreover, this property was useless because of the License.SetLicense(...) throws an exception in case of a wrong license key.

### WORDSNET-18697 - Provide API to write and modify VBA macros

A new public setter has been added to the VbaModule.SourceCode property:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets VBA project module source code.
/// </summary>
public string SourceCode
{{< /highlight >}}



**Use Case. Explains how to modify macro source code:**

{{< highlight csharp >}}
Document doc = new Document(@"test.docm");
VbaProject project = doc.VbaProject;
const string newSourceCode = "Test change source code";

// Choose a module, and set a new source code.
project.Modules[0].SourceCode = newSourceCode;
{{< /highlight >}}

### WORDSNET-19103 - Add feature to link CustomDocumentProperty to Bookmark

A new public method has been added: ***CustomDocumentProperties.AddLinkToContent(string, string)***

{{< highlight csharp >}}
/// <summary>
/// Creates a new linked to content custom document property.
/// </summary>
/// <param name="name">The name of the property.</param>
/// <param name="linkSource">The source of the property.</param>
/// <returns>The newly created property object or null when the linkSource is invalid.</returns>
public DocumentProperty AddLinkToContent(string name, string linkSource)
{{< /highlight >}}



A new public properties has been added: ***DocumentProperty.LinkSource, DocumentProperty.IsLinkToContent***

{{< highlight csharp >}}
/// <summary>
/// Gets the source of a linked custom document property.
/// </summary>
public string LinkSource
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// Shows whether this property is linked to content or not.
/// </summary>
public bool IsLinkToContent
{{< /highlight >}}


#### Use Case. Configuring “Link to content” Custom Property:

{{< highlight csharp >}}
Document doc = new Document(@"test.docx");

// Retrieve a list of all custom document properties from the file.
CustomDocumentProperties customProperties = doc.CustomDocumentProperties;

// Add linked to content property.
DocumentProperty customProperty = customProperties.AddLinkToContent("PropertyName", "BookmarkName");

// Also, accessing the custom document property can be performed by using the property name.
customProperty = customProperties["PropertyName"];

// Check whether the property is linked to content.
bool isLinkedToContent = customProperty.IsLinkToContent;

// Get the source of the property.
string source = customProperty.LinkSource;

// Get the value of the property.
string value = customProperty.Value;
{{< /highlight >}}




