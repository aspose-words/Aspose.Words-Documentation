---
title: Aspose.Words for .NET 18.10 Release Notes
type: docs
weight: 30
url: /net/aspose-words-for-net-18-10-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 18.10](https://www.nuget.org/packages/Aspose.Words/18.10.0)

{{% /alert %}} 

## Major Features

There are 64 improvements and fixes in this regular monthly release. The most notable are:

- Implemented new API to set up font fallback mechanism through XML configuration.
- Provide option to Use a style to format text typed into the SDT control.
- Add feature to insert Horizontal Rule into document.
- PNG images with a corrupted file structure are not skipped now from the rendering if it is possible to read information about their size.
- Improved rendering of abscissa labels of a DrawingML Chart if the axis contains a large number of dummy values.
- Improved scaling of the vertical axis of DrawingML Charts if a small range is used.
- Fixed an error causing an exception while rendering pattern-filled DrawingML shapes when pattern is not specified.
- Fixed a rendering glitch caused by negative arcsize of rounded rectangle VML shapes.
- Fixed a bug with rendering of the gridlines in a DrawingML Chart if the interval between tick marks is specified.
- Fixed a bug with rendering of the second axis title in a DrawingML Chart if manual layout is set.
- Fixed issue with paragraph above spacing for page break lines in compatibility mode.
- Fixed rendering of hidden paragraph in TOC fields.
- Fixed line wrapping in compatibility mode when line break follows inline shape wider that column.
- Improved rendering of underlines, it is now based on fields of the POST table in OTF fonts.
- Improved alignment of page relative shapes for documents created in Word 2013 and later.
- LINQ Reporting Engine supports removal of paragraphs becoming empty after template syntax tags are removed or replaced with empty values.

## ` `Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-17033|PDF output is corrupted after some page|Bug|
|WORDSNET-17257|Missing Text when converting RTF|Bug|
|WORDSNET-16997|Space characters in an OfficeMath equation disappear after conversion to MathML|Bug|
|WORDSNET-17411|Document is not rendered properly|Bug|
|WORDSNET-17128|Word to PDF - Bookmark creation issue with style separator|Bug|
|WORDSNET-17057|DOCX to PDF conversion issue with English and Chinese text|Bug|
|WORDSNET-16837|Document.PageCount returns wrong value|Bug|
|WORDSNET-17397|Add feature to insert Horizontal Rule into document|Bug|
|WORDSNET-17201|Aspose.Words produces invalid EPUB documents if HtmlSaveOptions.Encoding is not UTF-8 or UTF-16|Bug|
|WORDSNET-14593|A picture at bottom right corner of first page moves inches towards left in PDF|Bug|
|WORDSNET-17403|Incorrect rendering of X-axis labels after converting to PDF|Bug|
|WORDSNET-17130|Converting Word to Pdf the text layout in Pdf is not correct|Bug|
|WORDSNET-17333|Extracted Ole Object has wrong Signature and Binary values differ every time Aspose.Words code executes|Bug|
|WORDSNET-17388|TextBox Picture are not preserved in rendered PDF|Bug|
|WORDSNET-17413|Document.UpdateFields does not update the TOC field under Swedish culture|Bug|
|WORDSNET-5801|Large tables flow off the side of the page when rendering|Bug|
|WORDSNET-8175|Incorrect Table/Cell widths are exported to PDF|Bug|
|WORDSNET-7697|Header/Footer cut off at the right side of page after conversion from Doc to Fixed file format|Bug|
|WORDSNET-10207|Tables appear behind the Shapes in rendered PDF|Bug|
|WORDSNET-10420|Docx to Pdf conversion issue with text indentation|Bug|
|WORDSNET-17195|Table cell borders in an HtmlFixed document become invisible in Chrome|Bug|
|WORDSNET-17374|List Export to HTML Default Behavior Varies|Bug|
|WORDSNET-11126|Docx to Pdf/Doc conversion issue with table's position|Bug|
|WORDSNET-17330|Unable to completely remove cell spacing in RTF tables|Bug|
|WORDSNET-17395|Table direction changed from 'Right-to-left' to 'Left-to-right'|Bug|
|WORDSNET-14256|OutlineOptions.HeadingsOutlineLevels does not export heading levels when Html is exported to Pdf|Bug|
|WORDSNET-16978|Fallback content of an &lt;object&gt; element is imported from HTML even if element's data are available|Bug|
|WORDSNET-17319|HTML-to-Words converter generates corrupted DOCX|Bug|
|WORDSNET-17402|Watermark is not rendered in output PDF|Bug|
|WORDSNET-17314|A DOCX document produced by Aspose.Words cannot be opened in MS Word|Bug|
|WORDSNET-17370|Text in a table gets overlapped during PDF conversion|Bug|
|WORDSNET-17463|Hyperlink is lost after conversion from DOC to DOCX|Bug|
|WORDSNET-17131|Font is changing when convert DOC to PDF|Bug|
|WORDSNET-17331|Underlined text is Illegible after Word to PDF|Bug|
|WORDSNET-12372|Text underline problem in PDF|Bug|
|WORDSNET-16783|Style.BaseStyleName not working properly|Bug|
|WORDSNET-17069|System.NullReferenceException is thrown while inserting document loaded by "doc" tag in Foreach block|Bug|
|WORDSNET-17261|ReportingEngine: Blank line appearing after -html input|Bug|
|WORDSNET-17525|InsertDocument inserts a white space at the start of content when inserting at the very beginning of a paragraph|Bug|
|WORDSNET-17479|Links to internal members in public API Documentation|Enhancement|
|WORDSNET-17394|Strange white thick line added to the table|Enhancement|
|WORDSNET-17399|Some metadata properties are missing after document saving|Enhancement|
|WORDSNET-17482|Try to render PNG images with corrupted structure // DOCX to PDF - image is lost|Enhancement|
|WORDSNET-17430|System.InvalidOperationException occurs during rendering DOC to PDF|Exception|
|WORDSNET-17185|System.ArgumentOutOfRangeException is thrown while saving DOCX to HTML|Exception|
|WORDSNET-17143|Transparent graphics not getting converted correctly|Exception|
|WORDSNET-17137|Exception occurs when saving HTML to HTML|Exception|
|WORDSNET-17189|Document.Save throws System.ArgumentNullException|Exception|
|WORDSNET-17437|System.InvalidCastException occurs upon loading a DOC|Exception|
|WORDSNET-8223|UpdateFields throws OutOfMemoryException|Exception|
|WORDSNET-17236|Aspose.Words.FileCorruptedException occurs when loading a DOCM|Exception|
|WORDSNET-17328|DocumentBuilder.InsertField throws System.InvalidOperationException|Exception|
|WORDSNET-17114|Aspose.Words.FileCorruptedException is thrown while loading DOT|Exception|
|WORDSNET-15965|Korean characters rendering issue when saving word doc as PDF|Feature|
|WORDSNET-16938|The language detection of every Run object|Feature|
|WORDSNET-16068|Rupee symbol does not render in PDF when old version of Arial font is used|Feature|
|WORDSNET-14601|Provide option to Use a style to format text typed into the SDT control|Feature|
|WORDSNET-17093|Add ability to remove paragraphs becoming empty after template extressions are evaluated to empty values|Feature|
|WORDSNET-16491|Add feature to remove list item when data source is empty or null|Feature|
|WORDSNET-16953|Remove empty paragraph when IF condition returns false in LINQ Reporting|Feature|
|WORDSNET-17235|Add feature to remove last list number when HTML is inserted by LINQ Reporting|Feature|
|WORDSNET-2783|WordArt rendering support (advanced features)|Feature|
|WORDSNET-10108|Saving to PDF is very slow|Performance|
|WORDSNET-17219|Document is corrupted after conversion from HTML to DOCX|Regression|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 18.10. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### LINQ Reporting Engine Supports Removal of Paragraphs becoming Empty after Template Syntax Tags are Removed or Replaced with Empty Values

Issues WORDSNET-17093, WORDSNET-17235, WORDSNET-17261, WORDSNET-16491 and WORDSNET-16953 have now been fixed.

The following new member added to the ReportBuildOptions enum:

{{< highlight csharp >}}
/// <summary>
/// Specifies that the engine should remove paragraphs becoming empty after template syntax tags are
/// removed or replaced with empty values.
/// </summary>
RemoveEmptyParagraphs
{{< /highlight >}}

When the option is applied to ReportingEngine.Options, the engine additionally removes paragraphs becoming empty after template syntax tags are removed or replaced with empty values as shown in the following examples.

**Example 1**

Template document

{{< highlight csharp >}}
Prefix
<<[""]>>
Suffix
{{< /highlight >}}

Result document without ReportBuildOptions.RemoveEmptyParagraphs applied

{{< highlight csharp >}}
Prefix
Suffix
{{< /highlight >}}

Result document with ReportBuildOptions.RemoveEmptyParagraphs applied

{{< highlight csharp >}}
Prefix
Suffix
{{< /highlight >}}

**Example 2**

Template document

{{< highlight csharp >}}
Prefix
<<if [false]>>
Text to be removed
<</if>>
Suffix
{{< /highlight >}}

Result document without ReportBuildOptions.RemoveEmptyParagraphs applied

{{< highlight csharp >}}
Prefix
Suffix
{{< /highlight >}}

Result document with ReportBuildOptions.RemoveEmptyParagraphs applied

{{< highlight csharp >}}
Prefix
Suffix
{{< /highlight >}}

**Example 3**

{{% alert color="primary" %}} 

In this example, persons is assumed to be a data table having a field Name.

{{% /alert %}} 

Template document

{{< highlight csharp >}}
Prefix
<<foreach [in persons]>>
<<[Name]>>
<</foreach>>
Suffix
{{< /highlight >}}

Result document without ReportBuildOptions.RemoveEmptyParagraphs applied

{{< highlight csharp >}}
Prefix
John Doe
Jane Doe
John Smith
Suffix
{{< /highlight >}}

Result document with ReportBuildOptions.RemoveEmptyParagraphs applied

{{< highlight csharp >}}
Prefix
John Doe
Jane Doe
John Smith
Suffix
{{< /highlight >}}

### NodeRendererBase.BoundsInPoints Property Made Public

NodeRendererBase.BoundsInPoints property made public:

{{< highlight csharp >}}
/// <summary>
/// Gets the actual bounds of the shape in points.
/// </summary>
/// <remarks>
/// This property returns the actual (as rendered on the page) bounding box of the shape.
/// The bounds takes into account shape rotation (if any).
/// </remarks>
public RectangleF BoundsInPoints
{{< /highlight >}}

This property is added for convenience in addition to *SizeInPoints* property and *GetBoundsInPixels()* method.

### Added API for Font Fallback Settings

We have added new API to set up font fallback mechanism. The font fallback mechanism is described in [documentation](/words/net/manipulating-and-substitution-truetype-fonts/#font-fallback-settings-from-xml).

{{< highlight csharp >}}
public class FontSettings
{
    /// <summary>
    /// Settings related to font fallback mechanism.
    /// </summary>
    public FontFallbackSettings FallbackSettings
    {
        get { return mFallbackSettings; }
    }
}
/// <summary>
/// Specifies font fallback mechanism settings.
/// </summary>
/// <remarks>
/// By default fallback settings are initialized with predefined settings which mimics the Microsoft Word fallback.
/// </remarks>
public class FontFallbackSettings
{
	/// <summary>
	/// Loads font fallback settings from XML file.
	/// </summary>
	/// <param name="fileName">Input file name.</param>
	public void Load(string fileName);
	/// <summary>
	/// Loads fallback settings from XML stream.
	/// </summary>
	/// <param name="stream">Input stream.</param>
	public void Load(Stream stream);
	/// <summary>
	/// Loads predefined fallback settings which mimics the Microsoft Word fallback and uses Microsoft office fonts.
	/// </summary>
	public void LoadMsOfficeFallbackSettings();
	/// <summary>
	/// Saves the current fallback settings to stream.
	/// </summary>
	/// <param name="outputStream">Output stream.</param>
	public void Save(Stream outputStream);
	/// <summary>
	/// Saves the current fallback settings to file.
	/// </summary>
	/// <param name="fileName">Output file name.</param>
	public void Save(string fileName);
	/// <summary>
	/// Automatically builds the fallback settings by scanning available fonts.
	/// </summary>
	/// <remarks>
	/// This method may produce non-optimal fallback settings. Fonts are checked by <a href="https://docs.microsoft.com/en-us/typography/opentype/spec/os2#ur">
	/// Unicode Character Range</a> fields and not by the actual glyphs presence. Also Unicode ranges are checked individually
	/// and several ranges related to single language/script may use different fallback fonts.
	/// </remarks>
	public void BuildAutomatic();
}
{{< /highlight >}}



-----


Here is sample XML file which describes the format.

{{< highlight xml >}}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
		<!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
		<!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
		<!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
		<Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
		<!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
		<Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial">
		<!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
		<Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
		<!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
		<Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}

### Option to Use a Style to Format Text Typed into the SDT Control Provided

WORDSNET-14601 has now been resolved.

A new property has been added to the **StructuredDocumentTag** class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets the style applied to this SDT.
/// </summary>
public Style Style
{{< /highlight >}}

It can also be accessed via the string property "StyleName" like that what Font, ParagraphFormat and Table have.

{{< highlight csharp >}}
/// <summary>
/// Gets or sets the name of the table style applied to this SDT.
/// </summary>
public string StyleName
{{< /highlight >}}

#### Note.

Only Linked and Character styles can be applied to an SDT.
An InvalidOperationException ("Cannot apply this style to the SDT") is thrown when a style that exists but is not Linked or Character style is being applied.

##### UC1. Setting a style to an SDT.

{{< highlight csharp >}}
StructuredDocumentTag sdt = ...
Style style = doc.Styles[styleName];
sdt.Style = style;
{{< /highlight >}}

##### UC 1.1. Setting a style to an SDT via StyleName.

{{< highlight csharp >}}
StructuredDocumentTag sdt = ...
sdt.StyleName = "Quote";
{{< /highlight >}}

##### UC 1.2 Removing defined style.

To remove the applied style the default Style should be applied.

{{< highlight csharp >}}
StructuredDocumentTag sdt = ...
sdt.StyleName = "Default Paragraph Font";
{{< /highlight >}}

##### UC 2. Getting applied to sdt control style.

Note. When a linked style is applied to an sdt a paragraph style is returned.

{{< highlight csharp >}}
StructuredDocumentTag sdt = ...
Style style = sdt.Style; //paragraph style name will be returned if it's linked with a character style
{{< /highlight >}}

##### UC 2.1 Getting applied to sdt control style via accessing StyleName.

{{< highlight csharp >}}
StructuredDocumentTag sdt = ...
string styleName = sdt.StyleName; //paragraph style name will be returned if it's linked with a character style
{{< /highlight >}}

##### UC 2.2 Accessing style that is not defined.

{{< highlight csharp >}}
StructuredDocumentTag sdt = ...
//... style was not defined before
Style style = sdt.Style;
//style should be "Default Paragraph Font"
{{< /highlight >}}

### Feature to Copy All Styles from Template

WORDSNET-16783 has now been resolved.

Following methods were added:

{{< highlight csharp >}}
public void Document.CopyStylesFromTemplate(string template)
public void Document.CopyStylesFromTemplate(Document template)
{{< /highlight >}}

Methods copies all styles from template trying to preserve style hierarchy for base and linked styles.

#### UC

{{< highlight csharp >}}
string templateFileName = "template file name";
Document target = new Document("target document file name");
target.CopyStylesFromTemplate(templateFileName);
{{< /highlight >}}

### DocumentBuilder.InsertField Throws System.InvalidOperationException

WORDSNET-17328 has now been resolved.

A customer requested the ability to insert untyped/empty fields ({}) just like MS Word allows doing so. By the moment AW threw System.InvalidOperationException when attempting to insert **FieldType.FieldNone** (which was the way the customer tried to insert an untyped field):

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.InsertField(FieldType.FieldNone, false);
{{< /highlight >}}

Since mimicking MS Word is one of our primary goals, we have supported inserting untyped fields. This is resulted in making the **FieldUnknown** class public because **DocumentBuilder** returns its instance. It existed prior to that, but used to be internal.

{{< highlight csharp >}}
/// <summary>
/// Implements an unknown or unrecognized field.
/// </summary>
public class FieldUnknown : Field
{{< /highlight >}}

Use case:

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();
FieldUnknown field = (FieldUnknown)builder.InsertField(FieldType.FieldNone, false);
{{< /highlight >}}

### Added Public Property AllowCellSpacing

WORDSNET-17330 has now been resolved.

New public property ***AllowCellSpacing*** was added into the Table class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets the "Allow spacing between cells" option.
/// </summary>
public bool AllowCellSpacing
{{< /highlight >}}

This property allows to control spacing between cells.
Setting this property to ***false*** will completelly remove spacing between cells

UC:

{{< highlight csharp >}}

// Remove spacing between cells
table.AllowCellSpacing = false;
{{< /highlight >}}

### Added Feature to Insert Horizontal Rule into Document

WORDSNET-17397 has now been resolved.

The builder.InsertHorizontalRule() method was added to the DocumentBuilder class:

{{< highlight csharp >}}
/// <summary>
/// Inserts a horizontal rule shape into the document.
/// </summary>
public void InsertHorizontalRule()
{{< /highlight >}}

This adds a horizontal rule to a document without using builder.InsertHtml("&lt;hr&gt;") method.

Use case:

{{< highlight csharp >}}
builder.InsertHorizontalRule();
{{< /highlight >}}
