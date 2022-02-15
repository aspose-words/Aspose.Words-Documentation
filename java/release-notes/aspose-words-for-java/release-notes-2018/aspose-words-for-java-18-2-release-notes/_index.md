---
title: Aspose.Words for Java 18.2 Release Notes
description: "Aspose.Words for Java 18.2 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 110
url: /java/aspose-words-for-java-18-2-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 18.2](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/18.2/)

{{% /alert %}} 

## Major Features

There are 102 improvements and fixes in this regular monthly release. The most notable are:

- FontSettings.EnableFontSubstitution option added
- Support to insert Style Separator to put different Paragraph styles
- HtmlSaveOptions.MetafileFormat property added 
- KeepSourceFormatting logic improved
- Rendering of SVG graphics elements embedded into DrawingML objects (svgBlip) implemented
- Added option to disable the internal font substitution mechanism and use the default font instead while rendering to PDF. (FontSettings.EnableFontSubstitution)
- Fixed "Compound lines are not supported" warning generation
- Fixed problem with path gradient brush scaling while rendering metafiles
- Spacing  between legend items in DrawingML Charts rendering fixed
- The data series line with "Round" cap type is rendered properly when exporting DrawingML Charts into PDF now
- Rotated VML text boxes with non-default alignment rendering fixed
- Auto-size calculation of rotated VML text boxes with vertical layout fixed
- Implemented none wrapping for text frames
- Improved paragraph spacing computation with hidden paragraphs
- Improved custom tab stops handling around hidden paragraphs
- Improved line wrapping around dashes
- Improved character spacing control for complex code point sequences
- Improved processing of out-of-order footnotes
- Implemented mirror margins and gutter position handling when page orientation changes
- Improved performance of reflow when document is large and has fields in headers/footers
- Fixed text box width issue with left-aligned RTL text

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-1677|Extra chart's border is rendered in output PDF|Bug|
|WORDSJAVA-1683|AdvancedBrushFeatures: non ideal modifying of gradient mapping.|Bug|
|WORDSJAVA-1719|The code hangs while opening the corrupted document|Enhancement|
|WORDSJAVA-1720|Broken font link in Windows Registry causes NPE.|Exception|
|WORDSJAVA-1725|Metered License does not work|Exception|
|WORDSJAVA-1684|Unsupported ROP2 Metafile operation.|Feature|
|WORDSJAVA-1689|MailMerge Date field culture source mix.|Regression|
|WORDSNET-10413|Text of WordArt is rotated after conversion from RTF to Pdf|Bug|
|WORDSNET-10616|Docx to Pdf conversion issue wiht chart's legend|Bug|
|WORDSNET-10624|Docx to RTF conversion issue with French characters|Bug|
|WORDSNET-10863|Text position is changed after convert Docx to Pdf|Bug|
|WORDSNET-11628|The layout of WordML is corrupted after re-saving WordML|Bug|
|WORDSNET-12364|Text color of shape is changed in output Doc/Docx/Pdf|Bug|
|WORDSNET-12532|Some Words in Paragraph moved to second line during rendering to HtmlFixed|Bug|
|WORDSNET-12728|VML textboxes with layoutflow are rendered improperly.|Bug|
|WORDSNET-13292|More space between some words added in pdf|Bug|
|WORDSNET-13502|Non-English Paragraph text is stretched in rendered document|Bug|
|WORDSNET-13802|Aspose.Words.FileCorruptedException is thrown while loading Odt|Bug|
|WORDSNET-14315|SVG does not render correctly in output Html/Pdf|Bug|
|WORDSNET-14316|Font of SVG is lost in output Html/Pdf|Bug|
|WORDSNET-14391|Chinese text moves to next line after conversion from Docx to Pdf/Png|Bug|
|WORDSNET-14587|Font size of text is changed when InsertDocument is used with KeepSourceFormatting mode|Bug|
|WORDSNET-14755|Layout problems in rendered PDF|Bug|
|WORDSNET-14842|Doc to Pdf conversion issue with Hebrew text position|Bug|
|WORDSNET-15153|AppendDocument method is not preserving numbering|Bug|
|WORDSNET-15474|ODT does not open in MS Word 2016 after conversion from DOCX|Bug|
|WORDSNET-15536|The document formatting lost after appending to another document.|Bug|
|WORDSNET-15549|The document formatting lost after appending to another document.|Bug|
|WORDSNET-15561|List numbers missing in subsequent section|Bug|
|WORDSNET-15661|DocumentBuilder.InsertDocument ignores list formatting while inserting document|Bug|
|WORDSNET-15842|An exception occurs while loading HTML contain SVG image|Bug|
|WORDSNET-15992|Gif image is change to PNG after re-saving DOCX|Bug|
|WORDSNET-16021|MHTML to PDF conversion issue with image rendering|Bug|
|WORDSNET-16064|Incorrect line wrapping due to character compressing|Bug|
|WORDSNET-16112|Chart series line in SVG image is jagged|Bug|
|WORDSNET-16113|Font information of SVG image is ignored in image rendering|Bug|
|WORDSNET-16154|Symbols are changed after re-saving DOCX|Bug|
|WORDSNET-16177|Comments with replies are saved to docx with errors|Bug|
|WORDSNET-16181|Japanese text with numbers wraps incorrectly|Bug|
|WORDSNET-16185|Incorrect TOC page numbers in RTF to DOCX conversion|Bug|
|WORDSNET-16204|ParagraphBreakFont.Size is incorrect after performing mail merge|Bug|
|WORDSNET-16207|List Label is not rendered correctly in output PNG|Bug|
|WORDSNET-16213|SVG image loses colors after import from HTML|Bug|
|WORDSNET-16216|Issue with vertical merging in table while saving as DOCX when AllowAutoFit is false|Bug|
|WORDSNET-16218|DOC to PDF Issue with table formatting|Bug|
|WORDSNET-16230|Images are misaligned in PDF output|Bug|
|WORDSNET-16242|Issue in AcceptAllRevisions|Bug|
|WORDSNET-16249|Contents are rendered on previous page in output PDF|Bug|
|WORDSNET-16261|Line with "Round" cap type is rendered incorrectly when exporting to PDF|Bug|
|WORDSNET-16263|Symbol characters improperly rendered in PDF output|Bug|
|WORDSNET-16277|TestHebrewShaping test fails on the default.|Bug|
|WORDSNET-16299|Incorrect text box size while rendering|Bug|
|WORDSNET-16328|Height of MathElement is calculated improperly|Bug|
|WORDSNET-16329|Unnecessary cells revisions occurs into comparison result|Bug|
|WORDSNET-16354|Textbox has incorrect size upon rendering.|Bug|
|WORDSNET-16361|Blank PDF Created during Converting DOCX to PDF|Bug|
|WORDSNET-16366|Yellow background not same after converting docx to PDF|Bug|
|WORDSNET-16380|Handle "Compound lines are not supported" warning correctly|Bug|
|WORDSNET-16394|Document.Save throws System.NullReferenceException after joining RTF files|Bug|
|WORDSNET-2719|HTML looks differently, when use Embedded and Inline CssStyleSheetType.|Bug|
|WORDSNET-6359|Font language settings are lost when converting RTF to DOC|Bug|
|WORDSNET-6463|Image is clipped|Bug|
|WORDSNET-7083|Aspose.Words takes a lot of time for rendering documents with one big paragraph|Bug|
|WORDSNET-8193|Chinese text lose orientation after conversion from doc to pdf.|Bug|
|WORDSNET-8513|One more page is rendered to the PDF|Bug|
|WORDSNET-8569|Extra empty lines are rendered while conversion from Docx to Pdf|Bug|
|WORDSNETSTD-22|InvalidCastException is thrown when create CertificateHolder.|Bug|
|WORDSNET-10378|WordArt objects are rendered incorrectly|Enhancement|
|WORDSNET-11080|List numbers are changed after re-saving Docx|Enhancement|
|WORDSNET-11883|Top/Bottom margins are not correct in a 2 pages per sheet layout|Enhancement|
|WORDSNET-11902|Content is misplaced after DOCX to HtmlFixed|Enhancement|
|WORDSNET-12355|Tables touch left page edge in generated PDF|Enhancement|
|WORDSNET-12538|Table is not rendered correctly in the output PDF|Enhancement|
|WORDSNET-14982|Consider removing script suffix from font name on RTF import|Enhancement|
|WORDSNET-15099|Docx to Pdf conversion issue with SVG rendering|Enhancement|
|WORDSNET-15839|Too many styles in resultant merged document|Enhancement|
|WORDSNET-16284|DOC to PDF Number of Pages Increased|Enhancement|
|WORDSNET-16295|DOC to PDF Issue with Art Fonts and Image Shading|Enhancement|
|WORDSNET-16315|FontSettings.DefaultFontName priority over FontInfo|Enhancement|
|WORDSNET-16355|The paragraph format has been lost in PDF output|Enhancement|
|WORDSNET-16362|Shape is not resized properly|Enhancement|
|WORDSNET-16367|SonarQube issues|Enhancement|
|WORDSNET-9709|More improvements need in WORDSNET-8414|Enhancement|
|WORDSNET-16083|System.InvalidOperationException is thrown while saving DOCX to PDF|Exception|
|WORDSNET-16193|Document.UpdateFields throws System.NullReferenceException|Exception|
|WORDSNET-16210|Exception when loading an SVG image|Exception|
|WORDSNET-16211|On fields update, infinite loop detected.|Exception|
|WORDSNET-16280|MailMerge.GetFieldNames throws System.ArgumentNullException|Exception|
|WORDSNET-16300|System.InvalidOperationException is thrown when OfficeMathOutputMode is used as MathML|Exception|
|WORDSNET-16302|System.InvalidOperationException is thrown when OfficeMathOutputMode is used as MathML|Exception|
|WORDSNET-16319|When DOC is converted to PDF, an InvalidCastException occurs.|Exception|
|WORDSNET-16326|Aspose.Words.FileCorruptedException is thrown while loading RTF|Exception|
|WORDSNET-15943|Support to insert Style Separator to put different Paragraph styles|Feature|
|WORDSNET-15995|Support to save SVG images in resultant HTML|Feature|
|WORDSNET-15023|Page count performance issue|Performance|
|WORDSNET-16255|Update fields is taking too much time.|Performance|
|WORDSNET-16296|Performance issue with UpdatePageLayout, updating fields, and Saving DOCX to Pdf|Performance|
|WORDSNET-16297|Performance issue with updating fields|Performance|
|WORDSNET-5903|UpdateFields is taking more time when having long Paragraphs in Document|Performance|
|WORDSNET-15347|Bookmark.Text throws System.InvalidOperationException|Regression|
|WORDSNET-16306|System.InvalidOperationException is thrown when MailMerge.FieldMergingCallback is used|Regression|
|WORDSNET-16324|Empty Image Url Results in Broken Image Bullet Point|Regression|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 18.2. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose. Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### Changed Importing Logic with KeepSourceFormatting Mode

Related issue: WORDSNET-14587

The importing logic with KeepSourceFormatting mode is changed to be closer to MS Word behavior.

Before fix we cloned styles with same names to destination document, but now we are expanding source formatting into the direct attributes of imported nodes.

### Support to Insert Style Separator to Put different Paragraph Styles

Related issue: WORDSNET-15943

The following public method has been added into the **DocumentBuilder** class:

{{< highlight csharp >}}
/// <summary>
/// Inserts style separator into the document.
/// </summary>
/// <remarks>
/// This method allows to apply different paragraph styles to two different parts of a text line.
/// </remarks>
public void InsertStyleSeparator()
{{< /highlight >}}

Style Separator can be added to the end of a paragraph using the* *Ctrl+Alt+Enter Keyboard Shortcut into MS Word. This feature allows for two different paragraph styles used in one logical printed paragraph.

Use case:

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder(new Document());
Style paraStyle = builder.getDocument().getStyles().add(StyleType.PARAGRAPH, "MyParaStyle");
paraStyle.getFont().setBold(false);
paraStyle.getFont().setSize(8);
paraStyle.getFont().setName("Arial");

// Append text with "Heading 1" style.
builder.getParagraphFormat().setStyleIdentifier(StyleIdentifier.HEADING_1);
builder.write("Heading 1");
builder.insertStyleSeparator();

// Append text with another style.
builder.getParagraphFormat().setStyleName(paraStyle.getName());
builder.write("This is text with some other formatting ");
builder.getDocument().save("OutDoc.docx");
{{< /highlight >}}

### HtmlSaveOptions.MetafileFormat Property Added

Related issue: WORDSNET-15995

The following property has been added to the HtmlSaveOptions class:

{{< highlight csharp >}}
public class HtmlSaveOptions
{
    /// <summary>
    /// Specifies in what format metafiles are saved when exporting to HTML, MHTML, or EPUB.
    /// Default value is <see cref="HtmlMetafileFormat.Png" />, meaning that metafiles are rendered to raster PNG images.
    /// </summary>
    /// <remarks>
    /// <p>Metafiles are not natively displayed by HTML browsers. By default, Aspose.Words converts WMF and EMF
    /// images into PNG files when exporting to HTML. Other options are to convert metafiles to SVG images or to export
    /// them as is without conversion.</p>
    /// <p>Some image transforms, in particular image cropping, will not be applied to metafile images if they are exported
    /// to HTML without conversion.</p>
    /// </remarks>
    /// <seealso cref="ImageResolution"/>
    /// <seealso cref="ScaleImageToShapeSize"/>
    public HtmlMetafileFormat MetafileFormat
    {
        get { return mSaveImageOptions.MetafileFormat; }
        set { mSaveImageOptions.MetafileFormat = value; }
    }
}
/// <summary>
/// Indicates the format in which metafiles are saved to HTML documents.
/// </summary>
public enum HtmlMetafileFormat
{
    /// <summary>
    /// Metafiles are rendered to raster PNG images.
    /// </summary>
    Png,
    /// <summary>
    /// Metafiles are converted to vector SVG images.
    /// </summary>
    Svg,
    /// <summary>
    /// Metafiles are saved as is, without conversion.
    /// </summary>
    EmfOrWmf
}
{{< /highlight >}}

The new property replaces HtmlSaveOptions.ExportMetafileAsRaster, which is now marked obsolete. New code should use MetafileFormat instead of ExportMetafileAsRaster, as shown below:

{{< highlight csharp >}}
MetafileFormat = HtmlMetafileFormat.Png;

// Instead of
ExportMetafileAsRaster = true;
MetafileFormat = HtmlMetafileFormat.EmfOrWmf;

// Instead of
ExportMetafileAsRaster = false;
{{< /highlight >}}

The new option value - HtmlMetafileFormat.Svg - is useful in scenarios where a customer imports SVG images to a document and want to save these images back to SVG format, as in the following code sample:

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();
builder.write("Here is an SVG image: ");
builder.insertHtml("<svg height='210' width='500'> <polygon points='100,10 40,198 190,78 10,78 160,198' style='fill:lime;stroke:purple;stroke-width:5;fill-rule:evenodd;' /></svg> ");
HtmlSaveOptions opts = new HtmlSaveOptions();
opts.setMetafileFormat(HtmlMetafileFormat.SVG);
builder.getDocument().save("D:\\temp\\out.html", opts);
{{< /highlight >}}

### FontSettings.EnableFontSubstitution Option Added

Related issue: WORDSNET-16315



The following public property has been added into the **FontSettings** class:

{{< highlight csharp >}}
/// <summary>
/// Specifies whether to enable or disable font substitution.
/// </summary>
/// <remarks>
/// <para>If font substitution is enabled, Aspose.Words evaluates all the related fields in <see cref="FontInfo"/>
/// (Panose, Sig etc) for the missing font and finds the closest match among the available font sources. Note that
/// font substitution mechanism will override the <see cref="DefaultFontName"/> in cases when <see cref="FontInfo"/>
/// for the missing font is available in the document.</para>
/// <para>If font substitution is disabled, Aspose.Words uses the <see cref="DefaultFontName"/> for the substitution
/// of missing fonts.</para>
/// <para>The default value is <c>true</c>.</para>
/// </remarks>
public boolean EnableFontSubstitution
{
    get; set;
}
{{< /highlight >}}

### Shape was not Resized Properly

Related issue: WORDSNET-16362

Behavior of the model while setting of shape height/width was changed. Relative height/width of the shape resets to zero, while changing absolute size. It is the same as MS Word automation does.

For example, the following code, for shape with relative height 20% from "margin", updates relative height to 0 and set absolute value to 150 points:

{{< highlight csharp >}}
Shape shape = (Shape)doc.getFirstSection().getBody().getChild(NodeType.SHAPE, 0, true);
shape.setHeight(150);
{{< /highlight >}}

### Obsolete Properties were Removed from HtmlSaveOptions

Then following obsolete properties were removed from the HtmlSaveOptions class:

|Removed property|Property to use instead|
| :- | :- |
|HtmlSaveOptions.AllowNegativeLeftIndent|HtmlSaveOptions.AllowNegativeIndent|
|HtmlSaveOptions.ExportHeadersFooters|HtmlSaveOptions.ExportHeadersFootersMode|

### Obsolete Property HtmlFixedSaveOptions.MetafileRenderingMode was Removed

Obsolete property MetafileRenderingMode was removed from the HtmlFixedSaveOptions class. Please use the HtmlFixedSaveOptions.MetafileRenderingOptions.RenderingMode property instead.

### Obsolete Property SvgSaveOptions.MetafileRenderingMode was Removed

Obsolete property MetafileRenderingMode was removed from the SvgSaveOptions class. Please use the SvgSaveOptions.MetafileRenderingOptions.RenderingMode property instead.

### Obsolete SWF File Format was Removed from Aspose.Words API

As you may know, Adobe is going to drop support of Flash that is why we decided to remove SaveFormat.Swf from Aspose.Words API.

SaveFormat.Swf was removed.

### Several Obsolete Properties were Removed from XpsSaveOptions Class

Obsolete property XpsSaveOptions.HeadingsOutlineLevels was removed. Please use OutlineOptions.HeadingsOutlineLevels property instead.

Obsolete property XpsSaveOptions.BookmarksOutlineLevel was removed. Please use OutlineOptions.DefaultBookmarksOutlineLevel property instead.

Obsolete property XpsSaveOptions.MetafileRenderingMode was removed. Please use Use MetafileRenderingOptions.RenderingMode property instead.
