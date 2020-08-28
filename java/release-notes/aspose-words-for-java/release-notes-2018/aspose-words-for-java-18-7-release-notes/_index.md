---
title: Aspose.Words for Java 18.7 Release Notes
type: docs
weight: 60
url: /java/aspose-words-for-java-18-7-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 18.7](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/18.7).

{{% /alert %}} 
## **Major Features**
There are 90 improvements and fixes in this regular monthly release. The most notable are:

- New typed (generic) collections and enumerators were introduced in Aspose.Words public API
- Added public property HeaderFooterBookmarksExportMode in PdfSaveOptions 
- Added FontSourceBase.GetAvailableFonts method 
- Added public API for revision groups 
- Introduced new comparison settings 
- A new limo stretch algorithm for VML shapes rendering was developed, which most accurately repeats the output of MS Word (limo-stretched shapes)
- Public property OutlineOptions.CreateOutlinesForHeadingsInTables added allowing to specify whether or not to create outlines for headings inside tables
- Public method FontSourceBase.GetAvailableFonts added. It returns the list of fonts available via specific font source
- Improved rendering of DrawingML shapes with specified parent object extents
- EffectExtent attributes are now taken into account when calculating the bounding box for DrawingML shapes
- Improved EMR_ALPHABLEND record handling while rendering metafiles
- Now hidden shapes inside the group are not visible during rendering
- Fixed the leading spaces handling while processing EMF+ DrawString records
- Fixed a bug when grayscale effect was incorrectly applied to metafile
- Fixed a bug with the graphic frame rendering (invalid frame layout on the page)
- Fixed rendering of shadow effect for transparent shapes
- Fixed a bug with rendering of the MathML object if balanceSingleByteDoubleByteWidth property and UseFELayout property are specified
- Improved rendering of \0 characters
- Improved column balancing when column has footnotes
- Improved handling of table grid when layout is changed programmatically
- Improved table breaking in 2013 mode when it overlaps footer
- Improved handling of "don't add space between paragraphs of the same style" option when only one of the paragraphs have this option set
- Fixed issue when hanging punctuation precedes inline shape
- Fixed issue when Kinsoku rule is analyzed for shapes
## **Full List of Issues Covering all Changes in this Release**

|**Key**|**Summary**|**Category**|
| :- | :- | :- |
|WORDSJAVA-1533|Document.Compare does not work correctly for list items|Bug|
|WORDSJAVA-1581|Opening embedded Visio Drawing issue|Bug|
|WORDSJAVA-1589|Incorrect page number in footer|Bug|
|WORDSJAVA-1590|Incorrect page number reflecting in footer|Bug|
|WORDSJAVA-1712|MS Word hangs and is unable to display Chart|Bug|
|WORDSJAVA-1773|Metafile Optimizer doesn't work for PathGradientBrushTransform.|Bug|
|WORDSJAVA-1831|Fonts are improperly substituted on Linux environment|Bug|
|WORDSJAVA-1841|Package com.aspose.words.ref is not exported in the Manifest.MF|Bug|
|WORDSJAVA-1797|ReportingEngine.buildReport throws java.lang.ExceptionInInitializerError|Exception|
|WORDSJAVA-1816|SetLicense throws org.xml.sax.SAXParseException|Exception|
|WORDSJAVA-1824|License.setLicense throws org.xml.sax.SAXParseException|Exception|
|WORDSJAVA-1802|TestReportingIntegration.testLink() failed after the last release.|Regression|
|WORDSJAVA-1829|Yen Currency formatting on MERGEFIELD does not work|Regression|
|WORDSNET-16939|AW doesn't break floater table aligned bottom to margin|Bug|
|WORDSNET-16940|AW incorrect split floating tables with position near page bottom|Bug|
|WORDSNET-14972|Table moves at the end of first page in PDF|Bug|
|WORDSNET-13316|Paragraph is moved to previous page after conversion from Docx to Pdf|Bug|
|WORDSNET-11986|Width of table in footer goes beyond the right page edge in PDF|Bug|
|WORDSNET-16998|A Drawing (GroupShape) darkens in generated PDF|Bug|
|WORDSNET-16758|A white div overlaps the content in generated HtmlFixed|Bug|
|WORDSNET-17050|AltChunk data is removed after re-saving DOCX|Bug|
|WORDSNET-17029|Arrow detaches when converting DOCX to DOCX|Bug|
|WORDSNET-16951|Content Controls not Preserved during Converting XML to PDF|Bug|
|WORDSNET-16632|Content overlaps in generated PDF|Bug|
|WORDSNET-14359|Doc to FlatOpc conversion issue with theme|Bug|
|WORDSNET-16922|Document is corrupted after saving DOCX to DOC|Bug|
|WORDSNET-15286|Document.Compare does not work correctly for list items|Bug|
|WORDSNET-16917|Document.Compare generates the corrupted document|Bug|
|WORDSNET-17024|DOCX to DOC - error when opening|Bug|
|WORDSNET-16976|DOCX to PDF - hidden element is rendered|Bug|
|WORDSNET-16472|DOCX to PDF Issue with Image size and alignments|Bug|
|WORDSNET-12540|Docx to PDF/Tiff conversion issue with Shape(textbox) position|Bug|
|WORDSNET-16848|DOCX to RTF conversion issue with list label|Bug|
|WORDSNET-16747|EMF rendering // Incorrect rendering of a Visio.Drawing.15 object in PDF|Bug|
|WORDSNET-16736|EMF rendering // MS Visio Drawing Object renders incorrectly in PDF|Bug|
|WORDSNET-17028|EsShapeReader fails at Debug.Fail|Bug|
|WORDSNET-16943|Font is changed from "Calibri" to "Times New Roman" in output PDF|Bug|
|WORDSNET-16910|Font size of cell's text is changed in output PDF|Bug|
|WORDSNET-16805|Formula cant be rendered correctly after converted to pdf|Bug|
|WORDSNET-15165|Image's position is changed after conversion from RTF to PDF|Bug|
|WORDSNET-16591|InsertDocument does not insert Headers Footers from multiple Sections|Bug|
|WORDSNET-16730|Inserting Radio Buttons as HTML into the Document adds two extra spaces at the beginning|Bug|
|WORDSNET-16983|Labels in picture misplaced in PDF|Bug|
|WORDSNET-16639|Limo stretch // Shapes in GroupShape skewed when rendering|Bug|
|WORDSNET-16899|Line break in Cell occurs at wrong character|Bug|
|WORDSNET-14641|MathML is exported incorrectly in output Docx|Bug|
|WORDSNET-14343|mathml notation problem during converting html to word - mtext|Bug|
|WORDSNET-16851|MathML object having no revisions is enclosed in <ins> and <del> elements during export to HTML|Bug|
|WORDSNET-16920|Microsoft Edge browser does not open EPUB correctly|Bug|
|WORDSNET-16981|Picture truncates from right in PDF|Bug|
|WORDSNET-16617|Remove the scaling in SVG export|Bug|
|WORDSNET-15424|Right-aligned tab-stops conversion issue in resultant MHTML|Bug|
|WORDSNET-16219|RunPr.LocaleIdFarEast is not populated|Bug|
|WORDSNET-3977|Shape is rendered improperly and looks very bad|Bug|
|WORDSNET-16802|Shape's color is lost after rendering DOCX to PDF|Bug|
|WORDSNET-16898|Shape's text is rendered on next line in output DOC/PDF|Bug|
|WORDSNET-17021|Shapes with unequal extent and xfrm.ext are rendered incorrect after converting to PDF|Bug|
|WORDSNET-16828|SVG size inconsistent between Word document on Windows and MAC|Bug|
|WORDSNET-15088|Table's contents are changed after re-saving Odt|Bug|
|WORDSNET-16872|The compared output contains table with the misaligned table header.|Bug|
|WORDSNET-17035|The font size is changed in PDF output document|Bug|
|WORDSNET-17016|The last line on the first page has been moved to the second one.|Bug|
|WORDSNET-17034|The source WordML is improperly uploaded|Bug|
|WORDSNET-17000|Unexpected colors appear in generated PDF|Bug|
|WORDSNET-5836|While doc to Pdf, Text rendered with incorrect format|Bug|
|WORDSNET-16616|Add support for the MathML "mathcolor" attribute|Enhancement|
|WORDSNET-10424|Docx to WordML conversion issue with Hyperlinks|Enhancement|
|WORDSNET-16936|Improve Aspose.Words trial mode message|Enhancement|
|WORDSNET-16614|Improve support for MathML elements <menclose>, <mtext>, and for the "mathcolor" attribute|Enhancement|
|WORDSNET-9014|Incorrect shape height causes unnecessary text wrapping in AW output|Enhancement|
|WORDSNET-17059|Aspose.Words.UnsupportedFileFormatException is thrown while loading DOCX|Exception|
|WORDSNET-16829|Document.PageCount throws System.NullReferenceException|Exception|
|WORDSNET-16970|Exception occurs when calling Document.PageCount and UpdatePageLayout|Exception|
|WORDSNET-16847|SetLicense throws System.InvalidOperationException|Exception|
|WORDSNET-16996|System.NullReferenceException is thrown while converting Docx to HTML|Exception|
|WORDSNET-16819|System.NullReferenceException is thrown while saving DOC to HtmlFixed|Exception|
|WORDSNET-16804|System.NullReferenceException occurs upon calling UpdatePageLayout method|Exception|
|WORDSNET-16954|Unhandled Exception: System.ArgumentNullException|Exception|
|WORDSNET-16731|Add ability to get all fonts names from FontSource|Feature|
|WORDSNET-15784|Add feature to get the start position of text for list items|Feature|
|WORDSNET-16806|Add more Comparison Settings to CompareOptions|Feature|
|WORDSNET-9079|Add support in PdfSaveOptions to export bookmarks of header/footer|Feature|
|WORDSNET-16914|API for removing personal information setting from the document|Feature|
|WORDSNET-16955|Create outlines for heading style paragraphs inside table|Feature|
|WORDSNET-16965|Export hyperlinks using <w:hyperlink> instead of using complex fields|Feature|
|WORDSNET-17070|Public interface for revision groups|Feature|
|WORDSNET-14858|Spaces in a text file are truncated in output document|Feature|
|WORDSNET-17005|BMP and PNG images are not scaled down in size when HTML is converted to PDF/DOCX`|Regression|
|WORDSNET-17030|Document.Clone method keeps the reference on original document|Regression|
|WORDSNET-16975|Yen Currency formatting on MERGEFIELD does not work|Regression|
## **Public API and Backward Incompatible Changes**
This section lists public API changes that were introduced in Aspose.Words 18.7. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose. Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.
### **Added API for Revision Groups**
A revision in Aspose.Words is a change in one document node. A set of sequential revisions of the same type in adjacent document nodes forms a revision group. Similar revision groups are displayed in the Reviewing Pane of MS Word.

The new public RevisionGroupCollection and RevisionGroup classes have been added. Also the RevisionCollection.Groups property has been implemented.

{{< highlight csharp >}}
/// <summary>
/// A collection of <see cref="RevisionGroup"/> objects that represent revision groups in the document.
/// </summary>
public sealed class RevisionGroupCollection : IEnumerable<RevisionGroup>
{
    /// <summary>
    /// Returns a revision group at the specified index.
    /// </summary>
    public RevisionGroup this[int index] { get; }
    /// <summary>
    /// Returns the number of revision groups in the collection.
    /// </summary>
    public int Count { get; }
}
/// <summary>
/// Represents a group of sequential <see cref="Revision" /> objects.
/// </summary>
public class RevisionGroup
{
    /// <summary>
    /// Gets the type of revisions included in this group.
    /// </summary>
    public RevisionType RevisionType { get; }
    /// <summary>
    /// Gets the author of this revision group.
    /// </summary>
    public string Author { get; }
    /// <summary>
    /// Returns inserted/deleted/moved text or description of format change.
    /// </summary>
    public string Text { get; }
}
public class RevisionCollection : IEnumerable<Revision>
{
    /// <summary>
    /// Collection of revision groups.
    /// </summary>
    public RevisionGroupCollection Groups { get; }
}
{{< /highlight >}}

**UC**

{{< highlight csharp >}}
Document doc = new Document(myDir + "Document1.docx");
foreach (RevisionGroup group in doc.Revisions.Groups)
{
    Console.WriteLine("{0}, {1}:", group.Author, group.RevisionType);
    Console.WriteLine(group.Text);
}
{{< /highlight >}}
### **Generics**
Untyped containers like **ArrayList** have been replaced with typed containers like **List<T>**.
As a result some public API becomes changed.
### **1. MailMerge**
Before:

{{< highlight csharp >}}
/// <summary>
/// Returns a collection of mail merge regions with the specified name.
/// </summary>
/// <param name="regionName">Region name (case-insensitive).</param>
/// <returns>The list of regions.</returns>
public ArrayList GetRegionsByName(string regionName)
{
...
}
{{< /highlight >}}

After:

{{< highlight csharp >}}
public IList<MailMergeRegionInfo> GetRegionsByName(string regionName)
{
...
}
{{< /highlight >}}
### **2. MailMergeRegionInfo**
Before:

{{< highlight csharp >}}
/// <summary>
/// Returns a list of child regions.
/// </summary>
public ArrayList Regions
{
    get { return mChildRegions; }
}
{{< /highlight >}}

After:

{{< highlight csharp >}}
public IList<MailMergeRegionInfo> Regions
{
    get {...}
}
{{< /highlight >}}
### **3. MailMergeRegionInfo**
Before:

{{< highlight csharp >}}
/// <summary>
/// Returns a list of child merge fields.
/// </summary>
public ArrayList Fields
{
    get { return mChildFields; }
}
{{< /highlight >}}

After:

{{< highlight csharp >}}
public IList<FieldMergeField> Fields
{
    get { return mChildFields; }
}
{{< /highlight >}}
### **4. DocumentInfo**
Before:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets custom properties of the document.
/// </summary>
public SortedStringList CustomProperties
{
    get { return mCustomProperties; }
    set { mCustomProperties = value; }
}
{{< /highlight >}}

After:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets custom properties of the document.
/// </summary>
public SortedStringListGeneric<object> CustomProperties
{
    get { return mCustomProperties; }
    set { mCustomProperties = value; }
}
{{< /highlight >}}
### **5. BorderCollection**
Before:

{{< highlight csharp >}}
public sealed class BorderCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public sealed class BorderCollection : IEnumerable<Border>
{{< /highlight >}}
### **6. DigitalSignatureCollection**
Before:

{{< highlight csharp >}}
public class DigitalSignatureCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class DigitalSignatureCollection : IEnumerable<DigitalSignature>
{{< /highlight >}}
### **7. VariableCollection**
Before:

{{< highlight csharp >}}
public class VariableCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class VariableCollection : IEnumerable<KeyValuePair<string, string>>
{{< /highlight >}}
### **8. WarningInfoCollection**
Before:

{{< highlight csharp >}}
public class WarningInfoCollection : IWarningCallback, IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class WarningInfoCollection : IWarningCallback, IEnumerable<WarningInfo>
{{< /highlight >}}
### **9. ChartDataLabelCollection**
Before:

{{< highlight csharp >}}
public class ChartDataLabelCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class ChartDataLabelCollection : IEnumerable<ChartDataLabel>
{{< /highlight >}}
### **10. ChartDataPointCollection**
Before:

{{< highlight csharp >}}
public class ChartDataPointCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class ChartDataPointCollection : IEnumerable<ChartDataPoint>
{{< /highlight >}}
### **11. ChartSeriesCollection**
Before:

{{< highlight csharp >}}
public class ChartSeriesCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class ChartSeriesCollection : IEnumerable<ChartSeries>
{{< /highlight >}}
### **12. Type of DmlChartDataLabelAttrs.Extensions property changed.**
Before:

{{< highlight csharp >}}
StringToObjDictionary
{{< /highlight >}}

After:

{{< highlight csharp >}}
StringToObjDictionary<DmlExtension>
{{< /highlight >}}
### **13. ListCollection**
Before:

{{< highlight csharp >}}
public class ListCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class ListCollection : IEnumerable<List>
{{< /highlight >}}
### **14. ListLevelCollection**
Before:

{{< highlight csharp >}}
public class ListLevelCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class ListLevelCollection : IEnumerable<ListLevel>
{{< /highlight >}}
### **15. CustomPartCollection**
Before:

{{< highlight csharp >}}
public class CustomPartCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class CustomPartCollection : IEnumerable<CustomPart>
{{< /highlight >}}
### **16. CustomXmlPartCollection**
Before:

{{< highlight csharp >}}
public class CustomXmlPartCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class CustomXmlPartCollection : IEnumerable<CustomXmlPart>
{{< /highlight >}}
### **17. CustomXmlPropertyCollection**
Before:

{{< highlight csharp >}}
public class CustomXmlPropertyCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class CustomXmlPropertyCollection : IEnumerable<CustomXmlProperty>
{{< /highlight >}}
### **18. CustomXmlSchemaCollection**
Before:

{{< highlight csharp >}}
public class CustomXmlSchemaCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class CustomXmlSchemaCollection : IEnumerable<string>
{{< /highlight >}}
### **19. SdtListItemCollection**
Before:

{{< highlight csharp >}}
public class SdtListItemCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class SdtListItemCollection : IEnumerable<SdtListItem>
{{< /highlight >}}
### **20. CompositeNode**
Before:

{{< highlight csharp >}}
public abstract class CompositeNode : Node, IEnumerable, INodeCollection
#if !JAVA
  // XPath navigation is supported on Java, but implementing this interface is not needed.
        , IXPathNavigable
#endif
{{< /highlight >}}

After:

{{< highlight csharp >}}
public abstract class CompositeNode : Node, IEnumerable<Node>, INodeCollection
#if !JAVA
  // XPath navigation is supported on Java, but implementing this interface is not needed.
        , IXPathNavigable
#endif
{{< /highlight >}}
### **21. NodeCollection**
Before:

{{< highlight csharp >}}
public class NodeCollection : INodeCollection, IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class NodeCollection : INodeCollection, IEnumerable<Node>
{{< /highlight >}}
### **22. NodeList**
Before:

{{< highlight csharp >}}
public class NodeList : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class NodeList : IEnumerable<Node>
{{< /highlight >}}
### **23. DocumentPropertyCollection**
Before:

{{< highlight csharp >}}
public abstract class DocumentPropertyCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public abstract class DocumentPropertyCollection : IEnumerable<DocumentProperty>
{{< /highlight >}}
### **24. RevisionCollection**
Before:

{{< highlight csharp >}}
public class RevisionCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class RevisionCollection : IEnumerable<Revision>
{{< /highlight >}}
### **25. BookmarksOutlineLevelCollection**
Before:

{{< highlight csharp >}}
public class BookmarksOutlineLevelCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class BookmarksOutlineLevelCollection : IEnumerable<KeyValuePair<string, int>>
{{< /highlight >}}
### **26. OdsoFieldMapDataCollection**
Before:

{{< highlight csharp >}}
public class OdsoFieldMapDataCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class OdsoFieldMapDataCollection : IEnumerable<OdsoFieldMapData>
{{< /highlight >}}
### **27. OdsoRecipientDataCollection**
Before:

{{< highlight csharp >}}
public class OdsoRecipientDataCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class OdsoRecipientDataCollection : IEnumerable<OdsoRecipientData>
{{< /highlight >}}
### **28. StyleCollection**
Before:

{{< highlight csharp >}}
public class StyleCollection : IEnumerable
{{< /highlight >}}

After:

{{< highlight csharp >}}
public class StyleCollection : IEnumerable<Style>
{{< /highlight >}}
### **Added Public Property HeaderFooterBookmarksExportMode in PdfSaveOptions**
WORDSNET-9079 has now been resolved.

{{< highlight csharp >}}
/// <summary>
/// Determines how bookmarks in headers/footers are exported.
/// </summary>
/// <remarks>
/// The default value is <see cref="Aspose.Words.Saving.HeaderFooterBookmarksExportMode.All"/>.
/// </remarks>
public HeaderFooterBookmarksExportMode HeaderFooterBookmarksExportMode { get; set; }
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// Specifies how bookmarks in headers/footers are exported.
/// </summary>
public enum HeaderFooterBookmarksExportMode
{
    /// <summary>
    /// Bookmarks in headers/footers are not exported.
    /// </summary>
    None,
    /// <summary>
    /// Only bookmark in first header/footer of the section is exported.
    /// </summary>
    First,
    /// <summary>
    /// Bookmarks in all headers/footers are exported.
    /// </summary>
    All
}
{{< /highlight >}}
### **Added FontSourceBase.GetAvailableFonts Method**
WORDSNET-16731 has now been resolved. This method returns the list of fonts available via specific font source.

{{< highlight csharp >}}
/// <summary>
/// Returns list of fonts available via this source.
/// </summary>
public IList<PhysicalFontInfo> GetAvailableFonts();
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// Specifies information about physical font available to Aspose.Words font engine.
/// </summary>
public class PhysicalFontInfo
{
    /// <summary>
    /// Family name of the font.
    /// </summary>
    public string FontFamilyName { get; }
    /// <summary>
    /// Full name of the font.
    /// </summary>
    public string FullFontName { get; }
    /// <summary>
    /// Version string of the font.
    /// </summary>
    public string Version { get; }
    /// <summary>
    /// Path to the font file if any.
    /// </summary>
    public string FilePath { get; }
}
{{< /highlight >}}
### **Introduced new Comparison Settings**
WORDSNET-16806 has now been resolved. The following settings were added to the CompareOptions class:

{{< highlight csharp >}}
/// <summary>
/// True indicates that documents comparison is case insensitive.
/// By default comparison is case sensitive.
/// </summary>
public bool IgnoreCaseChanges
/// <summary>
/// Specifies whether to compare the differences in data contained in tables.
/// By default tables are not ignored.
/// </summary>
public bool IgnoreTables
/// <summary>
/// Specifies whether to compare differences in fields.
/// By default fields are not ignored.
/// </summary>
public bool IgnoreFields
/// <summary>
/// Specifies whether to compare differences in footnotes and endnotes.
/// By default footnotes are not ignored.
/// </summary>
public bool IgnoreFootnotes
/// <summary>
/// Specifies whether to compare differences in comments.
/// By default comments are not ignored.
/// </summary>
public bool IgnoreComments
/// <summary>
/// Specifies whether to compare differences in the data contained within text boxes.
/// By default textboxes are not ignored.
/// </summary>
public bool IgnoreTextboxes
{{< /highlight >}}

These options were created according to appropriate analogs in the "Compare Documents" dialog in the MS Word:

1. «Case changes»;
1. «Tables»;
1. «Fields»;
1. «Footnotes and endnotes»;
1. «Comments»;
1. «Textboxes».

Usage:

{{< highlight csharp >}}
Document docA = new Docment(myDir + "TestA.docx");
Document docB = new Document(myDir + "Test.docx");
CompareOptions options = new CompareOptions();
options.IgnoreTables = true;
docA.Compare(docB, "am", DateTime.Now, options);
{{< /highlight >}}
### **Added Public Property TxtLoadOptions.DetectNumberingWithWhitespaces**
WORDSNET-14858 has been resolved.

A public property ***TxtLoadOptions.DetectNumberingWithWhitespaces*** was introduced instead of previously used LoadOptions.AllowTrailingWhitespaceForListItems.
***LoadOptions.AllowTrailingWhitespaceForListItems*** is obsolete property now.

{{< highlight csharp >}}
/// <summary>
/// Allows to specify how numbered list items are recognized when document is imported from plain text format.
/// The default value is true.</summary>
/// <remarks>
/// <para> If this option is set to false, lists recognition algorithm detects list paragraphs, when list numbers ends with
/// either dot, right bracket or bullet symbols (such as "•", "*", "-" or "o").</para>
/// <para> If this option is set to true, whitespaces are also used as list number delimeters:
/// list recognition algorithm for Arabic style numbering (1., 1.1.2.) uses both whitespaces and dot (".") symbols.</para>
/// </remarks>
public bool DetectNumberingWithWhitespaces
{{< /highlight >}}

UC:

{{< highlight csharp >}}
TxtLoadOptions loadOptions = new TxtLoadOptions();
loadOptions.DetectNumberingWithWhitespaces = false;
Document doc = new Document(fileName, loadOptions);
{{< /highlight >}}
### **API for Removing Personal Information Setting from Document**
WORDSNET-16914 has been resolved. We have added new public option

{{< highlight csharp >}}
bool Document.RemovePersonalInformation
{{< /highlight >}}

Important note: Setting this option does not actually remove personal information while document is processed in Aspose.Words and affects only Microsoft Word behavior.
### **TxtLoadOptions Class was Extended**
WORDSNET-14858 has been resolved. A new LoadOptions class for dealing with the text files was introduced : ***TxtLoadOptions***.

New public properties ***LeadingSpacesOptions*** and ***TrailingSpacesOptions*** were added into the TxtLoadOptions class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets preferred option of a trailing space handling.
/// Default value is <see cref="TxtTrailingSpacesOptions.Trim"/>.
/// </summary>
public TxtTrailingSpacesOptions TrailingSpacesOptions
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// Gets or sets preferred option of a leading space handling.
/// Default value is <see cref="TxtLeadingSpacesOptions.ConvertToIndent"/>.
/// </summary>
public TxtLeadingSpacesOptions LeadingSpacesOptions
{{< /highlight >}}

These properties allows to control  the way of handling leading and trailing spaces during loading txt file.

Leading spaces could be trimmed, preserved or converted to indent (*Please see **TxtLeadingSpacesOptions*** *enum*).
Trailing spaces could be trimmed or preserved.

UC:

{{< highlight csharp >}}
TxtLoadOptions loadOptions = new TxtLoadOptions();
loadOptions.LeadingSpacesOptions = TxtLeadingSpacesOptions.Trim;
loadOptions.TrailingSpacesOptions = TxtTrailingSpacesOptions.Trim;
Document doc = new Document(fileName, loadOptions);
{{< /highlight >}}
### **Obsolete Method RemoveUnusedResources() was Removed from Document Class**
Obsolete method RemoveUnusedResources() was removed from Document class. Please use Document.Cleanup() method instead.
### **Obsolete Method SetImage() was Removed from ImageData Class**
Obsolete method SetImage() was removed from ImageData class. Please use the ImageBytes property to set an image.
### **Obsolete Property MirrorMargins was Removed from PageSetup Class**
Obsolete property MirrorMargins was removed from PageSetup class. Please use the MultiplePages property to set MultiplePagesType. 
