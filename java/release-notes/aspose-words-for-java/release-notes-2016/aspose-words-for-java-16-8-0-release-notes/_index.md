---
title: Aspose.Words for Java 16.8.0 Release Notes
type: docs
weight: 40
url: /java/aspose-words-for-java-16-8-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 16.8.0](http://maven.aspose.com/repository/simple/ext-release-local/com/aspose/aspose-words/16.8.0/)

{{% /alert %}} 

## Major Features

There are 73 improvements and fixes in this regular monthly release. The most notable are:

- Huge Mailmerge performance optimization.
- NumberFormats performance optimization.
- Pdf performance optimization.
- Performance optimization of Fonts catch.
- Shapes with the translucent fill rendering implemented in PDF and other fixed-page formats. Opacity parameter is now taken into account.
- New base class FixedPageSaveOptions added for all fixed page formats e.g. PNG, PDF, HTML and numerous others.
- Over a dozen of fixes and improvements over model and flow formats.
- The analogue of NEXT fields is added to LINQ Reporting Engine.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-1414|java.lang.OutOfMemoryError is thrown while saving big image to pdf|Exception|
|WORDSJAVA-1167|Performance issue while converting Doc to Pdf|Performance|
|WORDSJAVA-1205|Aspose Words UpdateFields() Performance problem|Performance|
|WORDSJAVA-1237|Aspose Words ExecuteWithRegions() Performance problem|Performance|
|WORDSJAVA-1319|WORDSJAVA-1237 Up to 50% MailMerge performance degradation|Performance|
|WORDSJAVA-1399|Performance downgraded while generating Word/Pdf document when compare v16.5.0 to 15.6.0|Performance|
|WORDSJAVA-1417|Improve NumberFormats performance.|Performance|
|WORDSNET-10377|List items are rendered incorrectly.|Bug|
|WORDSNET-12765|Shape has wrong position after export to HTML|Bug|
|WORDSNET-13450|Incorrect generic font name is exported to EPUB for a missing font|Bug|
|WORDSNET-13548|Tables layout corrupted during open/save a DOC|Bug|
|WORDSNET-13666|Problem converting DOC to PDF with transparent image inside doc|Bug|
|WORDSNET-13682|List numbers are changed after re-saving RTF|Bug|
|WORDSNET-13701|Rotated image on Linux (Mono) during DOCX to HTML conversion|Bug|
|WORDSNET-13764|Space after paragraph disappears in AW pdf, docx output.|Bug|
|WORDSNET-13787|Problems in arabic language direction during HTML to DOCX conversion|Bug|
|WORDSNET-13792|Doc to Pdf conversion issue with GroupShape rendering|Bug|
|WORDSNET-13795|The rule "Allow hanging punctuation" is processed improperly if a line ends by a few spaces.|Bug|
|WORDSNET-13797|Mismatch in table styles when the docx converted to pdf|Bug|
|WORDSNET-13823|The ROUND function works incorrectly with negative arguments|Bug|
|WORDSNET-13832|Unnecessary text appears after re-saving mhtml|Bug|
|WORDSNET-13842|Date field not transformed correctly if used Hijri/Lunar Calendar|Bug|
|WORDSNET-13850|Chinese words are rotated in HtmlFixed format|Bug|
|WORDSNET-13855|document.UpdatePageLayout throws ArgumentOutOfRangeException|Bug|
|WORDSNET-13859|LayoutCollector.GetEndPageIndex throws InvalidOperationException|Bug|
|WORDSNET-13866|Last page missing when appending document|Bug|
|WORDSNET-13868|Bar chart labels overlap bars in the PDF|Bug|
|WORDSNET-13869|Charts Leader lines are not rendering correctly in PDF|Bug|
|WORDSNET-13902|Generated html has white font color and misplaced images|Bug|
|WORDSNET-13960|Hyperlink.Result update => lost link formatting (font size, link color)|Bug|
|WORDSNET-13961|Few words show as bold incorrectly in the PDF output|Bug|
|WORDSNET-13962|ListLabel.LabelValue is rendered incorrectly in Odt and Pdf|Bug|
|WORDSNET-13977|Docx to pdf conversion issue with chart rendering|Bug|
|WORDSNET-13982|Document.UpdateFields does not update TOC field's number|Bug|
|WORDSNET-14017|'::after' pseudo-element is imported incorrectly from HTML|Bug|
|WORDSNET-14056|Comments numbering are changed when show revision in the balloons|Bug|
|WORDSNET-14069|When Chart object in Word document is converted to .jpg image, highest value in axis is different|Bug|
|WORDSNET-14083|Consider SpanFormField as RTL when the field start marker is RTL|Bug|
|WORDSNET-6933|/vml/ Shapes are laid out incorrectly in DOC on HTML import|Bug|
|WORDSNET-8441|RTL text of HTML Fixed Page document is reordered when copied to Clipboard|Bug|
|WORDSNET-9658|Formula (Equation.DSMT4) background color is lost after conversion from Docx to HTML|Bug|
|WORDSNET-13188|Extract numerous duplicate options from Fixed-page based save formats to one abstract class.|Enhancement|
|WORDSNET-13952|Index is loosing style(italic) information.when convert rtf to docx|Enhancement|
|WORDSNET-10055|Throw a meaningful exception during Range.Replace callback|Exception|
|WORDSNET-13555|Exception is thrown in VmlShapeReader while reading VML shape|Exception|
|WORDSNET-13745|java.lang.NullPointerException occurs upon converting to HTML|Exception|
|WORDSNET-13816|System.InvalidCastException is thrown while conversion of Docx to pdf.|Exception|
|WORDSNET-13889|ArgumentException is thrown while saving to png|Exception|
|WORDSNET-13900|System.InvalidCastException is thrown while loading Docx|Exception|
|WORDSNET-13901|ArgumentOutOfRangeException on Section.Clone operation|Exception|
|WORDSNET-13909|MailMerge.ExecuteWithRegions throws System.InvalidOperationException|Exception|
|WORDSNET-13912|Document.ImportNode throws System.NullReferenceException|Exception|
|WORDSNET-13924|System.NullReferenceException occurs during converting DOC to PDF|Exception|
|WORDSNET-13925|System.NullReferenceException occurs during converting DOC to PDF|Exception|
|WORDSNET-13926|System.NullReferenceException occurs during converting DOC to PDF|Exception|
|WORDSNET-13951|Document.Save throws System.InvalidCastException|Exception|
|WORDSNET-13957|Document.Save throws System.ArgumentOutOfRangeException|Exception|
|WORDSNET-13964|Node.ToString(SaveFormat.Html) throws System.IndexOutOfRangeException|Exception|
|WORDSNET-13971|Aspose.Words.FileCorruptedException is thrown while loading Html|Exception|
|WORDSNET-13992|System.NullReferenceException is thrown while saving Docx to Html|Exception|
|WORDSNET-13996|Word doc with MERGEFORMAT template variables failing to convert to PDF|Exception|
|WORDSNET-14006|Aspose.Words.FileCorruptedException is thrown while loading Docx|Exception|
|WORDSNET-14019|System.NullReferenceException occurs during converting DOCX to PDF|Exception|
|WORDSNET-14089|System.InvalidOperationException assertion occured while saving document to HTML format|Exception|
|WORDSNET-10041|Consider exporting editable TextBox Shape to HTML|Feature|
|WORDSNET-13084|root/ Support loading of Mobi (Mobipocket) documents|Feature|
|WORDSNET-13563|Add support of Next field in Linq Reporting Engine|Feature|
|WORDSNET-13389|Improve Inline.Font.Hidden property performance|Performance|
|WORDSNET-13835|Out of memory exception occurs during rendering to HTML|Performance|
|WORDSNET-13837|Timeout was reached upon rendering to PDF|Performance|
|WORDSNET-13958|Docx to Doc conversion takes much time|Performance|
|WORDSNET-13997|Aspose Words 16.6 UpdateFields() and ExecuteWithRegions() Performance problem|Performance|
|WORDSNET-14013|Value in calculated textbox not exported to PDF with Aspose.Words|Regression|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 16.8.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### Added HtmlLoadOptions.SupportVml public property

WORDSNET-6933 is resolved and we have added new public property to HtmlLoadOptions class:

{{< highlight csharp >}}
/// <summary>
/// Specifies HTML parser to parse conditional comments exactly like &lt;!--[if gte vml 1]&gt;
/// and not to parse conditional comments exactly like &lt;![if !vml]&gt;.
/// </summary>
public bool SupportVml
{
    get { return mSupportVml; }
    set { mSupportVml = value; }
}
{{< /highlight >}}

### Added HtmlSaveOptions.ExportTextBoxAsSvg public property

WORDSNET-10041 is resolved and we have added new public property to HtmlSaveOptions class:

{{< highlight csharp >}}
/// <summary>
/// Controls how textboxes represented by <see cref="Drawing.Shape"/> are saved to HTML, MHTML or EPUB. 
/// Default value is <c>false</c>.
/// </summary>
/// <remarks>
/// <p>When set to <c>true</c>, exports textboxes as inline <b>&lt;svg&gt;</b> elements. 
/// When <c>false</c>, exports as <b>&lt;img&gt;</b> elements.</p>
/// </remarks>
public bool ExportTextBoxAsSvg
{
    get { return mSaveImageOptions.TextBoxAsSvg; }
    set { mSaveImageOptions.TextBoxAsSvg = value; }
}
{{< /highlight >}}

### HtmlLoadOptions public class is introduced

WORDSNET-6933 is resolved and HtmlLoadOptions class is a subclass of LoadOptions and should be used instead of LoadOptions whenever specific options are needed to be set when loading HTML document.
Currently HtmlLoadOptions class has two properties:

{{< highlight csharp >}}
/// <summary>
/// Specifies HTML parser to parse conditional comments exactly like &lt;!--[if gte vml 1]&gt;
/// and not to parse conditional comments exactly like &lt;![if !vml]&gt;.
/// </summary>
public bool SupportVml
{
    get { return mSupportVml; }
    set { mSupportVml = value; }
}
/// <summary>
/// The number of milliseconds to wait before the web request times out. The default value is 100000 milliseconds (100 seconds).
/// </summary>
/// <remarks>
/// The number of milliseconds that Aspose.Words waits for a response, when loading external resources (images, style sheets)
/// linked in HTML and MHTML documents.
/// </remarks>
public new int WebRequestTimeout
{
    get { return mWebRequestTimeout; }
    set { mWebRequestTimeout = value; }
}
{{< /highlight >}}

Base property LoadOptions.WebRequestTimeout is marked as obsolete and will be removed in numerous releases. If you need to specify web request timeout use HtmlLoadOptions.WebRequestTimeout property.

Use case:

{{< highlight csharp >}}
HtmlLoadOptions htmlLoadOptions = new HtmlLoadOptions();
htmlLoadOptions.SupportVml = true;
htmlLoadOptions.WebRequestTimeout = 1000;
Document doc = new Document("Test.html", htmlLoadOptions);
{{< /highlight >}}

### WORDSNET-13188 Changes in save options of fixed page formats

1. Now all save option classes of fixed page formats (HtmlFixedSaveOptions, ImageSaveOptions, PdfSaveOptions, PsSaveOptions, SvgSaveOptions, SwfSaveOptions, XamlFixedSaveOptions and XpsSaveOptions) are inherited from the new public abstract class FixedPageSaveOptions.

2. The MetafileRenderingOptions property has become available in the SwfSaveOptions class:

{{< highlight csharp >}}
/// <summary>
/// Allows to specify metafile rendering options.
/// </summary>
public MetafileRenderingOptions MetafileRenderingOptions { get; }
{{< /highlight >}}

3. The JpegQuality property has become available in the XamlFixedSaveOptions and XpsSaveOptions classes:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value determining the quality of the JPEG images inside Html document.
/// </summary>
/// <remarks>
/// <para>Has effect only when a document contains JPEG images.</para>
///
/// <p>Use this property to get or set the quality of the images inside a document when saving in fixed page format.
/// The value may vary from 0 to 100 where 0 means worst quality but maximum compression and 100
/// means best quality but minimum compression.</p>
///
/// <p>The default value is 95.</p>
/// </remarks>
public int JpegQuality { get; set; }
{{< /highlight >}}

Jpeg quality was 100 for the XAML and XPS formats in the previous version. Now its default value is 95 to unify with the other formats (except PDF).

### The analogue of NEXT fields is added to LINQ Reporting Engine

The "[Forcing Movement to Next Item within Data Band](https://docs.aspose.com/words/java/forcing-movement-to-next-item-within-data-band/)" section of the engine's documentation was added to describe the change
