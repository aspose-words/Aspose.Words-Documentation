---
title: Aspose.Words for .NET 18.12 Release Notes
type: docs
weight: 10
url: /net/aspose-words-for-net-18-12-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 18.12](https://www.nuget.org/packages/Aspose.Words/18.12.0)

{{% /alert %}} 

## Major Features

There are 96 improvements and fixes in this regular monthly release. The most notable are:

- Implemented WMF fonts scaling, according to metafile size on the page, and public option to control it (MetafileRenderingOptions.ScaleWmfFontsToMetafileSize).
- Improved the default font fallback mechanism to better fit the MW behavior.
- Optimized metafile from SVG rendering to skip redundant line segments.
- Fixed a bug that caused an exception when rendering metafiles filled with gradient.
- Fixed a bug with the order of legend items of the stacked DrawingML chart when rendering.
- Fixed a bug with text clipping when rendering the DrawingML charts.
- Fixed a bug with rendering of minor tick marks and clipping the rightmost bar of DrawingML charts.
- Fixed a bug with rendering data labels for points, located on the border of the DrawingML chart plot area.
- Implemented support for RTL comments rendering, e.g. Arabic.
- Improved hyphenation logic for a few cases.
- Improved page numbering for sections starting in new columns.
- Improved table row alignment.
- Improved tab stop calculations with paragraph indents.
- Improved table breaking logic for numerous complex cases.
- Improved handling of character compression within mixed ltr/rtl text.
- Fixed exception in rare case when field update causes line to contain only zero length spans.
- Fixed exception in rare case when floating object is pushed beyond empty column.
- Fixed layout when tables merge over the hidden paragraph.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-17415|Font of text is changed after conversion from DOCX to HTML|Bug|
|WORDSNET-17202|Table's cell is lost after conversion from DOCX to HTML|Bug|
|WORDSNET-17601|DOCX to PDF conversion issue with chart rendering|Bug|
|WORDSNET-17627|Header not rendered|Bug|
|WORDSNET-14102|Hyphenation in Aspose.Words pdf output is different from MS Word|Bug|
|WORDSNET-14751|Position of hyphen is different when converting Docx to Pdf|Bug|
|WORDSNET-17588|Content is moved beyond the page|Bug|
|WORDSNET-2163|INCLUDEPICTURE is lost during DOC to DOCX, WML and RTF conversion|Bug|
|WORDSNET-14852|Invalid license signature error on calling License.SetLicense method|Bug|
|WORDSNET-11900|Docx to Pdf conversion issue rotated text of Shape|Bug|
|WORDSNET-10735|Table widths are not correct in PDF|Bug|
|WORDSNET-5013|Part of content is moved to previous page upon rendering.|Bug|
|WORDSNET-5473|Size of image inserted using INCLUDEPICTURE field is changed after converting to DOC|Bug|
|WORDSNET-5689|Image CSS style is ignored and the image is rendered full size in the word|Bug|
|WORDSNET-3979|Content controls linked to custom xml properties filled from SharePoint metadata are empty on conversion to pdf and doc (sdt)|Bug|
|WORDSNET-17590|Different Foreign Language texts rendering as square boxes in PDF|Bug|
|WORDSNET-15141|When converting DOC to PDF, bookmarks for TOT (Table Of Tables) & TOF (Table Of Figures) are not created|Bug|
|WORDSNET-8982|Incorrect shape width when word wrap is OFF in text box properties|Bug|
|WORDSNET-16767|Aspose.Words v18.3.0: NullReferenceExeption when saving table|Bug|
|WORDSNET-17641|Invalid order of chart legend items after conversion to PDF|Bug|
|WORDSNET-15924|The picture rendered incorrectly in PDF output|Bug|
|WORDSNET-17646|Specifying MsWordVersion.Word2016 of OptimizeFor does not respect ResourceLoadingAction.Skip during saving to DOCX|Bug|
|WORDSNET-17493|NullReferenceException while saving to mhtml|Bug|
|WORDSNET-17617|Arabic text is rendered as reversed in output PDF|Bug|
|WORDSNET-11408|Docx to Pdf conversion issue with table's width|Bug|
|WORDSNET-17573|DOCX to PDF - content moved|Bug|
|WORDSNET-17761|DOCX to PDF - content on page 2 is hidden|Bug|
|WORDSNET-17426|MHTML to PDF - indented email text becomes single column|Bug|
|WORDSNET-17642|Text of the chart user shape is clipped after converting to PDF|Bug|
|WORDSNET-17643|The last data label is not rendered after converting to PDF|Bug|
|WORDSNET-17652|DOCX to PDF/Jpeg conversion issue with Hindi font|Bug|
|WORDSNET-17051|Content overlaps in generated PDF|Bug|
|WORDSNET-16987|Document.getText() and Document.toString(SaveFormat.TEXT) do not return Text of EQ field|Bug|
|WORDSNET-17271|Chart.Title.Text returns incorrect value|Bug|
|WORDSNET-9534|Header hight with dynamically growing content is incorrerct in Pdf|Bug|
|WORDSNET-8993|Problem with image alignment while converting to mhtml or html file|Bug|
|WORDSNET-17625|Export width in percent for horizontal rules with images|Bug|
|WORDSNET-17624|Issue with horizontal rule indentation when converting DOCX to HTML|Bug|
|WORDSNET-4663|Font size in a table cell is changed during rendering|Bug|
|WORDSNET-15250|SDT position is wrong after AcceptAllRevisions|Bug|
|WORDSNET-1721|Put evaluation marks above all other contents|Bug|
|WORDSNET-15409|Arrow Shape do not render correctly after DML-to-VML conversion|Bug|
|WORDSNET-17663|UpdateFields method recreates bookmarks used in the ToC|Bug|
|WORDSNET-17654|Document.UpdateFields does not update the TOC field|Bug|
|WORDSNET-17759|PDF is converted from DOCX as raw XML fragment|Bug|
|WORDSNET-17547|DOCX to PDF conversion issue with Hyphenation|Bug|
|WORDSNET-13540|Import INCLUDEPICTURE field correctly when document is imported from stream|Bug|
|WORDSNET-15336|Incorrect floating table break in 2013 mode|Bug|
|WORDSNET-15395|Table rendering issue in resultant PDF document|Bug|
|WORDSNET-17600|DOCX to PDF - table split over two pages instead of one|Bug|
|WORDSNET-17628|Arc does not render correctly in output PDF|Bug|
|WORDSNET-8187|Performance issue while converting MHTL file into Pdf|Bug|
|WORDSNET-17764|AcceptAllRevisions removes content|Bug|
|WORDSNET-15445|SDTs of move-from range are not removed after accepting revisions|Bug|
|WORDSNET-12683|Shape's text is truncated after saving Docx to Pdf|Bug|
|WORDSNET-17674|DOCX to PDF, chart bars are overlapped|Bug|
|WORDSNET-17474|Negative font spacing is not preserved after HTML round-trip|Enhancement|
|WORDSNET-17589|Table rows not aligned|Enhancement|
|WORDSNET-15047|Converting DOC to PDF moves some Table Rows to right|Enhancement|
|WORDSNET-16534|Word to PDF Table Alignment Issue|Enhancement|
|WORDSNET-17294|Remove public API method 'SetAsDefault' from LoadOptions.LanguagePreferences|Enhancement|
|WORDSNET-17760|DOCX to PDF - invalid page count in the header|Enhancement|
|WORDSNET-17216|Page numbers in footer not correct in rendered PDF|Enhancement|
|WORDSNET-16448|Font size depend on metafile bbox aspect ratio|Enhancement|
|WORDSNET-17619|DOCX to PDF - tables split across two pages|Enhancement|
|WORDSNET-17577|DefaultFontName setting is not working for saving into HTML|Enhancement|
|WORDSNET-8985|Floating table overlaps text when anchor is pushed to the next column|Enhancement|
|WORDSNET-4989|Position of floating table is incorrect.|Enhancement|
|WORDSNET-17088|Legends stretched on diagram when converted to PDF.|Enhancement|
|WORDSNET-17621|Null reference exception when converting Word docx to Pdf|Exception|
|WORDSNET-17595|Extracting bookmark content throws exception|Exception|
|WORDSNET-17762|NRE exception raises while rendering to PDF output|Exception|
|WORDSNET-17094|System.InvalidCastException is thrown while loading RTF|Exception|
|WORDSNET-17783|Document.Compare throws System.InvalidCastException because of SpecialChar|Exception|
|WORDSNET-17791|An exception raises while saving the document to the Strict Open XML format - 'Unknown attribute'|Exception|
|WORDSNET-17766|Aspose.Words.FileCorruptedException occurs upon loading a RTF|Exception|
|WORDSNET-17671|Exception when converting a docx with a Visio object to pdf|Exception|
|WORDSNET-17789|An exception raises while saving the document to the Strict Open XML format|Exception|
|WORDSNET-17637|Document.UpdatePageLayout method throws System.NullReferenceException|Exception|
|WORDSNET-1450|There is no rotation when open the document in the below version of 2003|Feature|
|WORDSNET-5396|Create a demo which enables the user to upload a document and convert it to any supported format|Feature|
|WORDSNET-9197|Release Aspose.Words for C++|Feature|
|WORDSNET-1188|Difficulties when accessing field names returned by MailMerge.GetFieldNames|Feature|
|WORDSNET-1289|Support page number field formatting in Model|Feature|
|WORDSNET-17733|Removing colon between empty MERGEFIELDs|Feature|
|WORDSNET-16843|Render Comments in Arabic Language mode|Feature|
|WORDSNET-8518|Allow insertion of Custom Fields using DocumentBuilder.InsertField method|Feature|
|WORDSNET-13343|Analyze what it takes to make Aspose.Words for Windows Universal 10 App (UWP)|Feature|
|WORDSNET-8702|Add members to LoadFormat and SaveFormat enumerations for Strict Open XML Document (.docx) format|Feature|
|WORDSNET-11588|Support Windows Store App (Windows Runtime/WinRT)|Feature|
|WORDSNET-13332|Provide an API to read and update SDT to CustomXML properties|Feature|
|WORDSNET-15158|Tables rendered one over the another after conversion doc to pdf|Feature|
|WORDSNET-118|Make it possible to insert section or document at merge field or bookmark|Feature|
|WORDSNET-17304|Investigation - slow save to PDF after mail merge|Performance|
|WORDSNET-17650|Some symbols turn into rectangles in PDF|Regression|
|WORDSNET-10756|Image and table misalignment during rendering/printing|Regression|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 18.12. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### hideMark Handling Changed to Match MS Word 2016 Behavior When Converting to Fixed-Page Formats

WORDSNET-17619 has been resolved.

A customer complained about differences between Aspose.Words pdf output and MS Word layout.

Upon analysis it turned out that Aspose.Words output matches MS Word behavior for older versions (up to MS Word 2013).

The customer expected the behavior to match MS Word 2016.

The difference is in handling how hideMark element in a table cell influences the cell height. In fact, the behavior that the customer complains about was introduced intentionally per numerous other JIRA issues submitted for other customers earlier.


Because of different hideMark handling, the cell height is different for a number of cases when invisible contents are present in the cell.

As the current policy is to emulate MS Word 2016 behavior, the changes will essentially roll back some special handling of the above cases when calculating table cell height in presence of hideMark.

The changes may be perceived as a breakage by customers still using MS Word versions before MS Word 2016.

### MS Word 2016 Behavior Imitated for Some Special Cases with Continuous and "new column" Section Breaks

.WORDSNET-17760 has been resolved.

Aspose.Words behavior was changed to match MS Word 2016 for some situations with continuous and "new column" section breaks. The changes affect conversion to fixed-page formats. The behavior changed for computing page numbers and for providing of an empty facing page when adjacent pages have the same oddity.

It turned out that some of the implemented logic is different between MS Word 2016 and MS Word 2013. Because of that, the changes may look like a breakage if a user expects Aspose.Words behavior to match MS Word 2013 or an earlier version.


### Added WMF Fonts Scaling According to Metafile Size on the Page and Public Option to Control it

New public property was added to MetafileRenderingOptions class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value determining whether or not to scale fonts in WMF metafile according to metafile size on the page.
/// </summary>
/// <remarks>
/// When WMF metafiles are displayed in MS Word, fonts may be scaled according to actual metafile size on the page.
///
/// When this value is set to <c>true</c>, Aspose.Words emulates font scaling according to metafile size on the page.
///
/// When this value is set to <c>false</c>, Aspose.Words displays the fonts as metafile is rendered to its default size.
///
/// This option is used only when metafile is rendered as vector graphics.
///
/// The default value is <c>true</c>.
/// </remarks>
public bool ScaleWmfFontsToMetafileSize
{
    get;
    set;
}
{{< /highlight >}}

### Removed Obsolete Public API Method 'SetAsDefault' from LoadOptions.LanguagePreferences

WORDSNET-17294 has been resolved.

Removed obsolete public API method 'SetAsDefault' from LoadOptions.LanguagePreferences:

{{< highlight csharp >}}

// Sets default editing language.
[Obsolete("Please use LanguagePreferences.DefaultEditingLanguage property instead.")]
public void SetAsDefault(EditingLanguage language)
{{< /highlight >}}

Please use *LanguagePreferences.DefaultEditingLanguage* property instead: [https://docs.aspose.com/display/wordsnet/Aspose.Words+for+.NET+18.6+Release+Notes](/words/net/aspose-words-for-net-18-6-release-notes/)

### Added a Public Property HtmlSaveOptions.ResolveFontNames

WORDSNET-17577 has been resolved.

A new option HtmlSaveOptions.ResolveFontNames has been added that affects writing of font names to HTML-based formats. By default this option is set to false and, as before, Aspose.Words writes font names as specified in the source document, ignoring Document.FontSettings. If this option is set to true, Aspose.Words resolves all font names before writing them to HTML. That is, it checks availability of each font using Document.FontSettings and substitutes unavailable fonts if needed.

### Obsolete Property AllowTrailingWhitespaceForListItems was Removed from LoadOptions Class

Obsolete property AllowTrailingWhitespaceForListItems was removed from LoadOptions class.

Please, use TxtLoadOptions.DetectNumberingWithWhitespaces instead.
