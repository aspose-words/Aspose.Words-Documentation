---
title: Aspose.Words for .NET 17.4 Release Notes
description: "Aspose.Words for .NET 17.4 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 90
url: /net/aspose-words-for-net-17-4-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 17.4](https://www.nuget.org/packages/Aspose.Words/17.4.0)

{{% /alert %}} 

## Major Features

There are 80 improvements and fixes in this regular monthly release. The most notable are:

- CompareOptions class introduced to allow customer specify comparison settings.
- Custom Xml Data Properties is now supported for RTF format.
- Implemented support for baseline alignment in asian text.
- Improved table split for vertically merged cells in combination with atleast height.
- Improved table grid calculation for horizontally merged cells.
- Improved BalanceSingleByteDoubleByteWidth  handling.
- The horizontal and vertical resolution of output images can now be specified separately (through ImageSaveOptions.VerticalResolution and ImageSaveOptions.HorizontalResolution).
- Underline, strikethrough, text borders and effects are now taken into account wile rendering OfficeMath equation text.
- A substitution of fonts with the same name but with different suffixes now generates a proper warning.
- Metafiles with isotropic mapping mode is now rendered properly (shapes placement fixed).
- Textboxes with automatic fit is now rendered correctly inside the group shapes.
- Corrupted texture images do not stop the rendering procedure with an exception, a warning is sent instead now.
- DrawingML Charts rendering improved (rotated and scaled horizontal axis labels).

## Full List of Issues Covering all Changes in this Release


|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-10953|Table width is not calculated correctly during rendering to PDF|Bug|
|WORDSNET-11295|ROOT Inline Shape position is changed after conversion from Docx to Pdf|Bug|
|WORDSNET-12171|Docx to Pdf conversion issue with AltChunk (HTML file)|Bug|
|WORDSNET-12921|Restricted and Hidden styles appearing in styles pane and Quick style gallary|Bug|
|WORDSNET-13142|The font size of altChunk contents is changed after re-saving Docx|Bug|
|WORDSNET-13143|The font name of altChunk contents is changed after re-saving Docx|Bug|
|WORDSNET-13535|TextAlignment property does not take effect and leads to different output from MS Word when converting to xps|Bug|
|WORDSNET-14000|PDF Conversion Issue with Docx containing customxml|Bug|
|WORDSNET-14053|Unknown ListTrailingCharacter enum member.|Bug|
|WORDSNET-14159|Image is rendered on next page after conversion from Docx to Pdf|Bug|
|WORDSNET-14246|Document.Compare generates incorrect format revisions|Bug|
|WORDSNET-14265|Incorrect export of equation in MathML|Bug|
|WORDSNET-14319|Incorrect order of tags if they are inside of MS Word's table during Replace operation|Bug|
|WORDSNET-14323|Shape's text does not render correctly in output Pdf|Bug|
|WORDSNET-14324|Docx to Pdf conversion issue with shape's rendering|Bug|
|WORDSNET-14325|Docx to Pdf conversion issue with shape's rendering/position|Bug|
|WORDSNET-14540|Strikethrough in Equation not preserved during rendering|Bug|
|WORDSNET-14744|Textbox positions are not preserved during open/save a DOCX|Bug|
|WORDSNET-14807|Roundtrip of the DOCX document has wrong output|Bug|
|WORDSNET-14812|Word to HTML then back to Word, table has extra space between rows|Bug|
|WORDSNET-14853|PageRef is converted to hyperlink in output Pdf|Bug|
|WORDSNET-14857|Showing bullets and font substitution problems|Bug|
|WORDSNET-14871|Document's contents are lost after re-saving Docx|Bug|
|WORDSNET-14899|Saving Embedded Spreadsheet produces a different file every time|Bug|
|WORDSNET-14917|MHTML to PDF, Hebrew content in Subject is changed.|Bug|
|WORDSNET-14919|When DOCX is saved as PDF, some content overlaps the footer.|Bug|
|WORDSNET-14924|Document.UpdateFields does not update Ref field in output Docx/Pdf|Bug|
|WORDSNET-14932|Extra div elements are exported in HtmlFixed|Bug|
|WORDSNET-14938|While transforming a specific Word document to PDF, the table appears mixed up.|Bug|
|WORDSNET-14946|Word drawing diagrams are overlapped after conversion from Docx to Doc/Pdf|Bug|
|WORDSNET-14965|When DOCX is saved as PDF, the line of graph is different.|Bug|
|WORDSNET-14967|The embedded xlsm is changed to xlsx after re-saving Docx|Bug|
|WORDSNET-14969|DOCX save inserts invalid tblPrEx element to style|Bug|
|WORDSNET-14980|Different number of lines in AW pdf output because of SBCS/DBCS balancing|Bug|
|WORDSNET-14985|Stylesheet problem when saving DOC to DOC|Bug|
|WORDSNET-14988|When DOCX is saved as PDF, gradient fill is lost|Bug|
|WORDSNET-14991|Horizontal Axis of chart does not render correctly|Bug|
|WORDSNET-14993|ShapeRenderer.Save renders extra number on chart's image|Bug|
|WORDSNET-15021|Corrupted word file after save|Bug|
|WORDSNET-15030|DocumentBuilder.MoveToHeaderFooter does not move the cursor to the header of document|Bug|
|WORDSNET-15031|Trendline of chart is changed in output Pdf|Bug|
|WORDSNET-15036|Part of header image is truncated in output HtmlFixed|Bug|
|WORDSNET-15039|Docx to Pdf conversion issue with OfficeMath equations|Bug|
|WORDSNET-15046|Range.Replace finds and replaces text in the incorrect order|Bug|
|WORDSNET-15049|The Image is lost When Convert docx to docx (pdf)|Bug|
|WORDSNET-15050|Old incorrect value is rendered inside a SDT in PDF|Bug|
|WORDSNET-15051|When DOCX is saved as PDF, the comma in chart has been replaced by semi-colon in all labels.|Bug|
|WORDSNET-15056|The chart's legend entries are reversed in HtmlFixed|Bug|
|WORDSNET-15070|SEQ Ordinal not translated in Dutch|Bug|
|WORDSNET-15074|Pictures not shown or rendered incorrectly in HtmlFixed|Bug|
|WORDSNET-15082|Custom document properties are lost after conversion from Doc to Docx|Bug|
|WORDSNET-15092|Spanish labels become english|Bug|
|WORDSNET-4586|Style of text in header is changed during rendering.|Bug|
|WORDSNET-4930|Composite nodes inside paragraph not handled during TOC update.|Bug|
|WORDSNET-7079|Font name is corrupted when converting RTF to DOC|Bug|
|WORDSNET-13324|Document.Save removes *\datastore ... tag from Rtf|Enhancement|
|WORDSNET-14330|Make sure CssIdentifierValue.ToCss escapes identifier.|Enhancement|
|WORDSNET-14766|Import custom list markers from ::before pseudo-elements when converting from HTML to Words|Enhancement|
|WORDSNET-15005|x-none language is not supported for DOCX|Enhancement|
|WORDSNET-15043|Cell's border become visible after modifying style of Div tag in HtmlFixed|Enhancement|
|WORDSNET-10847|System.NullReferenceException when calling UpdateFields method|Exception|
|WORDSNET-14529|Aspose.Words.FileCorruptedException occurs upon loading HTML|Exception|
|WORDSNET-14897|System.ArgumentNullException is thrown while saving Doc to Html|Exception|
|WORDSNET-14935|A generic error occurred in GDI+|Exception|
|WORDSNET-14963|System.ArgumentOutOfRangeException is thrown while saving Docx to Pdf|Exception|
|WORDSNET-14981|Shape.GetShapeRenderer throws System.NullReferenceException|Exception|
|WORDSNET-14983|System.NullReferenceException occurs upon converting DOCX to XPS|Exception|
|WORDSNET-15012|Bookmark.Text throws System.NullReferenceException|Exception|
|WORDSNET-15015|System.ArgumentOutOfRangeException is thrown while converting Docx to Pdf|Exception|
|WORDSNET-15042|Document.AcceptAllRevisions thriws System.ArgumentException|Exception|
|WORDSNET-15066|Chart object crashing shape.GetShapeRenderer()|Exception|
|WORDSNET-15097|Aspose.Words.FileCorruptedException is thrown while loading DOC|Exception|
|WORDSNET-12345|Compare documents with comparison setting|Feature|
|WORDSNET-13938|Convert Vml shapes to Dml upon saving to Strict Open XML Document format.|Feature|
|WORDSNET-14944|Add feature to remove spaces between sign and digits during mail merge|Feature|
|WORDSNET-15010|Add feature to set Horizontal and Vertical Resolution of output image|Feature|
|WORDSNET-2496|Consider support of conditional and browser-dependent comments|Feature|
|WORDSNET-12477|Table doesn't use the entire page width in PDF|Regression|
|WORDSNET-14978|Some of the rows and columns are missing in Aspose 17.2 generated PDF file|Regression|
|WORDSNET-15087|Document.UpdateFields does not update fields when ExecuteWithRegions is used|Regression|

Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 17.4. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### Added an Interface to Flexibly Format Field Result

WORDSNET-14944 has been resolved.

We have added an interface allowing to implement a custom formatting of field's result. The original request was about addiing a feature to remove spaces between sign and digits during mail merge. However, we decided to implement a more generic and flexible solution because our API is already overwhelmed with different specific properties.

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();
Document document = builder.Document;
Field field = builder.InsertField("=-1234567.89 \\# \"### ### ###.000\"", null);
document.FieldOptions.ResultFormatter = new FieldResultFormatter("[{0}]", null);
field.Update();
Assert.AreEqual("[-1234567.89]", field.Result);
private class FieldResultFormatter : IFieldResultFormatter
{
    public FieldResultFormatter(string numberFormat, string dateFormat)
    {
        mNumberFormat = numberFormat;
        mDateFormat = dateFormat;
    }
    public FieldResultFormatter()
        : this(null, null)
    {
    }
    public string FormatNumber(double value, string format)
    {
        mNumberFormatInvocations.Add(new object[] { value, format });
        return string.IsNullOrEmpty(mNumberFormat)
            ? null
            : string.Format(mNumberFormat, value);
    }
    public string FormatDate(DateTime value, string format, CalendarType calendarType)
    {
        mDateFormatInvocations.Add(new object[] { value, format, calendarType });
        return string.IsNullOrEmpty(mDateFormat)
            ? null
            : string.Format(mDateFormat, value);
    }
    public string FormatNumber(double value, string format, string formattedValue)
    {
        throw new NotImplementedException();
    }
    public string FormatDate(DateTime value, string format, CalendarType calendarType, string formattedValue)
    {
        throw new NotImplementedException();
    }
    private readonly string mNumberFormat;
    private readonly string mDateFormat;
    private readonly ArrayList mNumberFormatInvocations = new ArrayList();
    private readonly ArrayList mDateFormatInvocations = new ArrayList();
}
{{< /highlight >}}

### Added Feature to Set Horizontal and Vertical Resolution of Output Image

Previously it was one property Resolution that set both vertical and horizontal resolution to the same values.
Now new public properties HorizontalResolution and VerticalResolution are added into the ImageSaveOptions class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets the horizontal resolution for the generated images, in dots per inch.
/// </summary>
/// <remarks>
/// <para>This property has effect only when saving to raster image formats.</para>
/// <p>The default value is 96.</p>
/// </remarks>
public float getHorizontalResolution()
public void  setgetHorizontalResolution(float value)
/// <summary>
/// Gets or sets the vertical resolution for the generated images, in dots per inch.
/// </summary>
/// <remarks>
/// <para>This property has effect only when saving to raster image formats.</para>
/// <p>The default value is 96.</p>
/// </remarks>
public float getVerticalResolution()
public void  getVerticalResolution(float value)
{{< /highlight >}}

Please note, that Resolution property became write-only:

{{< highlight csharp >}}
/// <summary>
/// Sets both horizontal and vertical resolution for the generated images, in dots per inch.
/// </summary>
/// <remarks>
/// <para>This property has effect only when saving to raster image formats.</para>
/// </remarks>
public void setResolution(float value)
{{< /highlight >}}
