---
title: Aspose.Words for .NET 16.7.0 Release Notes
type: docs
weight: 50
url: /net/aspose-words-for-net-16-7-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 16.7.0](https://www.nuget.org/packages/Aspose.Words/16.7.0)

{{% /alert %}} 

## Major Features

There are 132 improvements and fixes in this regular monthly release. The most notable are:

- A document page can now be saved in GIF format using SaveFormat.Gif in ImageSaveOptions.
- Font substitution rules improved. Now embedded font is used for substitution if available.
- Multilevel strings rendering in DrawingML Chart axis labels improved.
- OfficeMath objects now can be exported (optional) to HTML,MHTML or EPUB as mathml elements.
- Implemented rendering of format revisions in balloons.
- SKIPIF field supported.
- LINQ Reporting Engine supports more numeric and string formats missing in standard .Net/Java libraries.
- Replace API v2.0. Advanced replace methods added.
- ReplaceAction, IReplacingCallback and ReplacingArgs moved to Aspose.Words.Replacing.
- Old Range.Replace API marked as (Obsolete).
- Font Embedding API (Implemented API for adding or removing embedded fonts).
- MsWordVersion enum moved to Aspose.Words.Settings.
- Added public methods to the DigitalSignatureUtil class that allow to specify a password for decrypting document before it will be signed.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-11021|Layout issues with Kinosku and AsianHangingPunctuation.|Bug|
|WORDSNET-11563|Size of images changed during open/save a HTML|Bug|
|WORDSNET-12205|List label is lost when list item is first in comment.|Bug|
|WORDSNET-13012|CSS is lost after re-saving Html|Bug|
|WORDSNET-13149|Doc to Pdf conversion issue with contents position|Bug|
|WORDSNET-13279|InsertHtml reuses imported styles even if their CSS don't match|Bug|
|WORDSNET-13339|/format revision/ Preserve Revision details in Balloons in PDF|Bug|
|WORDSNET-13344|Content Control is not rendering in output Pdf|Bug|
|WORDSNET-13430|Table layout is corrupted after saving a DOCX to DOCX|Bug|
|WORDSNET-13475|ParagraphFormat.StyleName returns incorrect value for custom styles|Bug|
|WORDSNET-13485|AppendDocument does not preserve table's cell width|Bug|
|WORDSNET-13530|Text direction of cell's text is changed in output Html|Bug|
|WORDSNET-13550|Mixed Numbers, English and non-English content is incorectly encoded|Bug|
|WORDSNET-13558|Cell's position is changed after re-saving Rtf|Bug|
|WORDSNET-13559|Font size of text is changed after re-saving Rtf|Bug|
|WORDSNET-13565|Numeric formatting does not take effect in Linq Reporting Engine|Bug|
|WORDSNET-13595|Font size of Hebrew text is changed after conversion from Docx to Html|Bug|
|WORDSNET-13599|Tables do not merge correctly after removing paragraph between them|Bug|
|WORDSNET-13605|/para rules/ Paragraphs are rendered on next page in output Pdf|Bug|
|WORDSNET-13611|Parts of chart lost when converted to png with aspose words|Bug|
|WORDSNET-13613|Alignment of a list item imported from HTML gets incorrect after Indent+Outdent or Remove+Insert|Bug|
|WORDSNET-13631|Text font's color is lost after re-saving RTF|Bug|
|WORDSNET-13641|Images are inverted after conversion from Doc to Pdf|Bug|
|WORDSNET-13672|/format revision/ Formatting markup changes are not rendered in PDF|Bug|
|WORDSNET-13681|Two empty pages appear in output document after re-saving RTF|Bug|
|WORDSNET-13685|Docx to Pdf conversion issue with ListLabel|Bug|
|WORDSNET-13706|Corrupted document is generated on saving as DOCX|Bug|
|WORDSNET-13708|Doc to Pdf conversion issue with textbox's text rendering|Bug|
|WORDSNET-13710|Chart x-Axis is rendered incorrectly in output Pdf when DataTable is visible|Bug|
|WORDSNET-13715|NumPages field value in PDF is not according to the culture/language|Bug|
|WORDSNET-13716|NumPages field value in PDF is not according to the culture/language|Bug|
|WORDSNET-13717|SECTIONPAGES field value in PDF is not according to the culture/language|Bug|
|WORDSNET-13723|Docx to Pdf conversion issue with SmartArt rendering|Bug|
|WORDSNET-13733|Document.UpdateFields does not update Formula field inside Table|Bug|
|WORDSNET-13747|/footnote balancing/ Footnote separator is overlapped with body text in output Pdf|Bug|
|WORDSNET-13753|Images in GroupShape become inverted when saving to PDF|Bug|
|WORDSNET-13758|Document's footer and some text elements will be rendered with the Error! No text of specified style in document|Bug|
|WORDSNET-13760|Table's merged cells are repeated after re-saving Rtf|Bug|
|WORDSNET-13777|FileFormatInfo.LoadFormat : Text document format detected as Unknown|Bug|
|WORDSNET-13781|A picture in HtmlFixed repeats|Bug|
|WORDSNET-13786|Text font's color is lost after re-saving RTF|Bug|
|WORDSNET-13805|Shape's text color is lost after conversion from Docx to Pdf|Bug|
|WORDSNET-13806|Exception occured while saving MathML to DOC document|Bug|
|WORDSNET-13814|DocumentBuilder.InsertHtml renders a blank Math equation|Bug|
|WORDSNET-13819|Contents render on previous page in output Pdf|Bug|
|WORDSNET-13820|Docx to Pdf conversion issue with table's rendering in HtmlFixed/Pdf|Bug|
|WORDSNET-13827|Local document link incorrect when inside a shape (PDF)|Bug|
|WORDSNET-13828|Office MathML matrix equation in PDF has too much spacing|Bug|
|WORDSNET-13833|Doc to HtmlFixed conversion issue with OLE|Bug|
|WORDSNET-13839|MathMLReader ignores accents in some cases|Bug|
|WORDSNET-13862|MailMerge.Execute does not update IF field when it is inside table|Bug|
|WORDSNET-13897|State of checkbox SDT is lost after conversion from Docx to Doc/Fixed file format|Bug|
|WORDSNET-13898|Checkbox (SDT ) does not render correctly in Pdf|Bug|
|WORDSNET-13899|Numbers in hebrew text are reversed after conversion from Docx to Pdf|Bug|
|WORDSNET-13903|Problem converting Document with data bindings to PDF|Bug|
|WORDSNET-13917|InvalidOperationException is thrown upon rendering.|Bug|
|WORDSNET-13947|SmartArt text is overlapped in output Pdf|Bug|
|WORDSNET-3766|/hidden/ Hidden content remains when rendered to PDF|Bug|
|WORDSNET-3878|/table grid/ Table width is incorrect during HTML to PDF conversion, if table contains very long link url.|Bug|
|WORDSNET-4572|/table grid/ Width of table is incorrect during rendering.|Bug|
|WORDSNET-4810|Nested lists with DIV tags are not properly imported from HTML.|Bug|
|WORDSNET-5642|/revision marks/ Deleted bullets/Listitems appear again when converting to PDF|Bug|
|WORDSNET-6320|Table does not render across pages in PDF|Bug|
|WORDSNET-6490|Header formatting lost during conversion DOCX to HTML|Bug|
|WORDSNET-7868|/nonstandard font/ Incorrect fonts are used during rendering to PDF|Bug|
|WORDSNET-7911|/nonstandard font/ Docx to PDF conversion issue with Arabic text fonts|Bug|
|WORDSNET-8219|DOC to HTML conversion issue with border lines|Bug|
|WORDSNET-8621|Bug: 'font-weight' from default CSS style is applied as direct formatting|Bug|
|WORDSNET-8651|SUM(ABOVE) not correct working with values in brackets|Bug|
|WORDSNET-8932|Vertical spacing between some table rows is not preserved in PDF|Bug|
|WORDSNET-9258|The checkbox position is incorrect after conversion from HTML to Pdf|Bug|
|WORDSNET-9357|Problem with Top Margin when converting DOC to PDF|Bug|
|WORDSNET-9444|Document.Save does not preserve the FormField|Bug|
|WORDSNET-1252|Improve Range.Replace to support breaks|Enhancement|
|WORDSNET-13676|Assertion for unknown shape property when opening a document|Enhancement|
|WORDSNET-13817|Improve font substitution in case when embedded font and substitute available|Enhancement|
|WORDSNET-12078|Range.Replace method throws System.NotSupportedException|Exception|
|WORDSNET-12954|Document.Range.Replace is throwing exception when isForward is set to true|Exception|
|WORDSNET-13046|Range.Replace throws System.NotSupportedException|Exception|
|WORDSNET-13105|Document.UpdateFields throws System.IndexOutOfRangeException|Exception|
|WORDSNET-13138|Document.Range.Replace throws exception when isForward is set to true|Exception|
|WORDSNET-13364|Document.PageCount throws "Index was outside the bounds of the array" exception|Exception|
|WORDSNET-13500|DocumentBuilder.InsertHtml throws System.NullReferenceException|Exception|
|WORDSNET-13545|NodeCollection.Clear throws System.InvalidOperationException|Exception|
|WORDSNET-13573|Document.PageCount throws "Index was outside the bounds of the array" exception|Exception|
|WORDSNET-13574|Aspose.Words.FileCorruptedException occurs upon loading WordML files|Exception|
|WORDSNET-13684|Document.AcceptAllRevisions throws System.InvalidOperationException|Exception|
|WORDSNET-13686|Aspose.Words.FileCorruptedException is thrown while loading Docx|Exception|
|WORDSNET-13735|Aspose.Words.16.4.0 Exception when signing a password-protected Words file with a digital signature|Exception|
|WORDSNET-13767|MailMerge.Execute throws System.InvalidCastException|Exception|
|WORDSNET-13773|System.NullReferenceException occurs during converting DOC to PDF|Exception|
|WORDSNET-13807|System.ArgumentException is thrown while saving Docx to pdf|Exception|
|WORDSNET-13813|System.IndexOutOfRangeException is thrown while saving docx to pdf|Exception|
|WORDSNET-13815|System.InvalidOperationException is thrown while conversion of Docx to Pdf|Exception|
|WORDSNET-13830|Document.UpdateFields throws System.InvalidOperationException|Exception|
|WORDSNET-13831|Aspose.Words.FileCorruptedException is thrown while loading Doc|Exception|
|WORDSNET-13834|System.NullReferenceException during converting to PDF/HTML|Exception|
|WORDSNET-13836|Out of memory exception occurs during rendering to PDF|Exception|
|WORDSNET-13838|System.NullReferenceException during converting to PDF|Exception|
|WORDSNET-13841|System.OverflowException occurs upon rendering to TIFF|Exception|
|WORDSNET-13843|Length cannot be less than zero exception occurs during Word to PDF/HTML conversion|Exception|
|WORDSNET-13844|Length cannot be less than zero exception occurs during Word to PDF/HTML conversion|Exception|
|WORDSNET-13845|Length cannot be less than zero exception occurs during Word to PDF/HTML conversion|Exception|
|WORDSNET-13846|Aspose.Words.FileCorruptedException occurs upon loading a DOCX|Exception|
|WORDSNET-13848|Attempted to divide by zero exception occurs during rendering|Exception|
|WORDSNET-13858|LayoutEnumerator constructor throws System.NullReferenceException|Exception|
|WORDSNET-13904|NullReferenceException occurs when converting from Word to PDF|Exception|
|WORDSNET-13911|Document.AppendChild throws System.NullReferenceException|Exception|
|WORDSNET-13932|Document.PageCount throws System.IndexOutOfRangeException|Exception|
|WORDSNET-13936|Document.AcceptAllRevisions throws System.InvalidOperationException|Exception|
|WORDSNET-2847|NullReferenceException occurs during Replace|Exception|
|WORDSNET-7456|NullReferenceException occurs when performing a find and replace operation|Exception|
|WORDSNET-8404|Document.UpdateFields throws System.NullReferenceException exception|Exception|
|WORDSNET-8558|System.NullReferenceException is thrown while conversion from Docx to fixed file format.|Exception|
|WORDSNET-10085|/Show revisions in balloons/ Support rendering of revisions inside of balloons rather than inline|Feature|
|WORDSNET-10086|/Show revisions in balloons/ Images from Markup Area are rendered in the middle of main content area in PDF|Feature|
|WORDSNET-10988|/format revision/ Add feature to show format revision in pdf|Feature|
|WORDSNET-12753|/format revision/ Add feature to show format revision in pdf|Feature|
|WORDSNET-12891|Convert OfficeMath nodes into MathML|Feature|
|WORDSNET-13537|Provide ability to create mathematical equation from MathML string|Feature|
|WORDSNET-13566|Add feature to format string values in Linq Reporting Engine|Feature|
|WORDSNET-13603|Import html image tag with height only (or width only) proportionally|Feature|
|WORDSNET-13734|Add new save format in ImageSaveOptions as SaveFormat.GIF|Feature|
|WORDSNET-13768|Non ECMA-367 documents with CustomXML issue with Microsoft Word Online|Feature|
|WORDSNET-3827|Allow embedding fonts into DOCX documents.|Feature|
|WORDSNET-4285|Support the SKIPIF mailmerge field|Feature|
|WORDSNET-6205|Export W3C MathML formulas to HTML|Feature|
|WORDSNET-8752|Ruby (Equation) field does not import in Aspose.Words DOM|Feature|
|WORDSNET-13575|Cells widths are changed after joining the tables|Regression|
|WORDSNET-13585|Aspose.Words.FileCorruptedException is thrown while loading Docx|Regression|
|WORDSNET-13920|Japanese ruby text does not render correctly in output pdf|Regression|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 16.7.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### Added Public Methods to the DigitalSignatureUtil Class that Allow to Specify a Password for Decrypting Document before it will be Signed.

WORDSNET-13735 is resolved and we have added following static methods for signing encrypted documents:

{{< highlight csharp >}}
public static void Sign(string srcFileName, string dstFileName, CertificateHolder certHolder, string comments, DateTime signTime, string srcPassword);
public static void Sign(Stream srcStream, Stream dstStream, CertificateHolder certHolder, string comments, DateTime signTime, string srcPassword);
{{< /highlight >}}

Methods sign source file or stream using given certificate holder and writes signed document to destination file/stream.
In the last parameter you can specify a password for decrypting source document. If document is not encrypted this parameter will be ignored.
Also, this is meaningful only if source document has **DOCX** format.

**UC1 (working with file)**

{{< highlight csharp >}}

// Create certificate holder from a file.
CertificateHolder cert = CertificateHolder.Create("certFileName", "certPassword");

// Digitally sign encrypted with "docPassword" document in the specified path.
DigitalSignatureUtil.Sign("srcDocFileName", "signedDocFileName", cert, "Comment", DateTime.Now, "docPassword");

// Open encrypted document from a file.
Document signedDoc = new Document("signedDocFileName", new LoadOptions("docPassword"));

// Check that encrypted document was successfully signed.
DigitalSignatureCollection signatures = doc.DigitalSignatures;
if (signatures.IsValid && (signatures.Count > 0))
  Console.WriteLine("The document was signed successfully.")
{{< /highlight >}}

UC2 (working with stream)

{{< highlight csharp >}}

// Create certificate holder from a file.
CertificateHolder cert = CertificateHolder.Create("certFileName", "certPassword");

// Digitally sign encrypted with "docPassword" document in the specified stream.
DigitalSignatureUtil.Sign(srcDocStream, signedDocStream, cert, "Comment", DateTime.Now, "docPassword");

// Open encrypted document from a stream.
Document signedDoc = new Document("signedDocStream", new LoadOptions("docPassword"));

// Check that encrypted document was successfully signed.
DigitalSignatureCollection signatures = doc.DigitalSignatures;
if (signatures.IsValid && (signatures.Count > 0))
  Console.WriteLine("The document was signed successfully.")
{{< /highlight >}}

### A Document Page can now be Saved in GIF Format

The document page can now be saved into GIF format just like any other image formats. A new 'Gif' member is added into 'SaveFormat' enum.

Aspose.Words for .Net uses standard GIF codec provided by GDI+. Aspose.Words for Java uses standard GIF codec provided by ImageIO.

Sample code:

{{< highlight csharp >}}

// Open some document.
Document doc = new Document("mydocument.docx");

// Save the second page as GIF image.
ImageSaveOptions saveOptions = new ImageSaveOptions(SaveFormat.Gif);
saveOptions.PageIndex = 1;
doc.Save("mydocument.gif", saveOptions);
{{< /highlight >}}

### Exposed more String and Number Formats for Expression Results in LINQ Reporting Engine

The ["Outputting Expression Results"](https://docs.aspose.com/words/net/template-syntax/#outputting-expression-results) section of the engine's documentation was updated to describe the change.

### MsWordVersion Enum Moved to Aspose.Words.Settings

Customers will now have to use 

{{< highlight csharp >}}
using Aspose.Words.Settings;
{{< /highlight >}}

to work with MsWordVersion.

This however should not be a breaking change as presently CompatibilityOptions.OptimizeFor is the only method that uses MsWordVersion enum and is already a member of Aspose.Words.Settings namespace.

### ReplaceAction, IReplacingCallback and ReplacingArgs Moved to Aspose.Words.Replacing

During WORDSNET-1252 implementation we decided to create new namespace Aspose.Words.Replacing and move classes related to find/replace operations to this new namespace.

### WORDSNET-1252. Advanced replace methods

Two methods were added to class Range to support advanced find/replace operations.

{{< highlight csharp >}}
public int Replace(string pattern, string replacement, FindReplaceOptions options)
public int Replace(Regex pattern, string replacement, FindReplaceOptions options)
{{< /highlight >}}

These methods support breaks in both search pattern and replacement string. Customer needs to use special meta-characters to specify breaks: &p for paragraph break, &b for section break, &m for page break and &l for manual line break.Also new FindReplaceOptions class was introduced to hold all find/replace options. Most notable member of this class is ApplyFont/ApplyParagraphFormat. It allow to specify text/paragraph formatting to be applied to replacement text.

Below are couple examples.

**UC1**

Demonstrate how breaks support works. In this example we replace certain paragraph breaks with new paragraph breaks + some underline while make it centered. Additionally we replace custom text tag with section break.

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Font.Name = "Arial";
builder.Writeln("First section");
builder.Writeln("  1st paragraph");
builder.Writeln("  2nd paragraph");
builder.Writeln("{insert-section}");
builder.Writeln("Second section");
builder.Writeln("  1st paragraph");
FindReplaceOptions options = new FindReplaceOptions();
options.ApplyParagraphFormat.Alignment = ParagraphAlignment.Center;

// Double each paragraph break after word "section", add kind of underline and make it centered.
int count = doc.Range.Replace("section&p", "section&p----------------------&p", options);

// Insert section break instead of custom text tag.
count = doc.Range.Replace("{insert-section}", "&b", options);
{{< /highlight >}}

**UC2**

Demonstrates usage of apply formatting and customer callback. In this example we replace numbers with their hexadecimal representations while make them highlighted with color.

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Font.Name = "Arial";
builder.Write("There are few numbers that should be converted to HEX and highlighted: 123, 456, 789 and 17379.");
FindReplaceOptions options = new FindReplaceOptions();

// Highlight newly inserted content.
options.ApplyFont.HighlightColor = Color.DarkOrange;
options.ReplacingCallback = new NumberHexer();
int count = doc.Range.Replace(new Regex("[0-9]+"), "", options);

// Customer defined callback.
private class NumberHexer : IReplacingCallback
{
    public ReplaceAction Replacing(ReplacingArgs args)
    {
        // Parse numbers.
        int number = Convert.ToInt32(args.Match.Value);

        // And write it as HEX.
        args.Replacement = string.Format("0x{0:X}", number);
        return ReplaceAction.Replace;
    }
}
{{< /highlight >}}

Some improvements were made to make replace method to be isolated from changes made by customer in callback.

## Deprecated methods

Old Replace methods are left for backward compatibility but marked as obsolete.

We going to remove following methods in this year:

{{< highlight csharp >}}
public int Replace(string oldValue, string newValue, bool isMatchCase, bool isMatchWholeWord)
public int Replace(Regex pattern, IReplacingCallback handler, bool isForward)
{{< /highlight >}}

One old method

{{< highlight csharp >}}
public int Replace(Regex pattern, string replacement)
{{< /highlight >}}

continues to work with old code and will be switched to new code eventually.

### WORDSNET-4285 - SKIPIF field supported

This feature has been requested by many customers and we have it implemented now. SKIPIF field is now updated during mail merge.

### WORDSNET-6205 Added Support for MathML in HTML Export

WORDSNET-6205 is implemented.

Added support for MathML in HTML export.

The following property is added to HtmlSaveOptions class:

{{< highlight csharp >}}
/// <summary>
/// Controls how OfficeMath objects are exported to HTML, MHTML or EPUB.
/// Default value is <c>HtmlOfficeMathOutputMode.Image</c>.
/// </summary>
public HtmlOfficeMathOutputMode OfficeMathOutputMode
{
    get { return mOfficeMathOutputMode; }
    set { mOfficeMathOutputMode = value; }
}
{{< /highlight >}}

The following enum is publicly available:

{{< highlight csharp >}}
/// <summary>
/// Specifies how Aspose.Words exports OfficeMath to HTML, MHTML and EPUB.
/// </summary>
public enum HtmlOfficeMathOutputMode
{
    /// <summary>
    /// OfficeMath is converted to HTML as image specified by <img> tag.
    /// </summary>
    Image,
    /// <summary>
    /// OfficeMath is converted to HTML using MathML.
    /// </summary>
    MathML,
    /// <summary>
    /// OfficeMath is converted to HTML as sequence of runs specified by <span> tags.
    /// </summary>
    Text
}
{{< /highlight >}}

Sample output for simple OfficeMath equation exported using HtmlOfficeMathOutputMode.Image value:

{{< highlight csharp >}}
<img src="Test Out.001.png" width="49" height="21" alt="" />
{{< /highlight >}}

Sample output for simple OfficeMath equation exported using HtmlOfficeMathOutputMode.MathML value:

{{< highlight csharp >}}
<math xmlns="http://www.w3.org/1998/Math/MathML">
	<mi>A</mi>
	<mo>=</mo>
	<mi>π</mi>
	<msup>
		<mrow>
			<mi>r</mi>
		</mrow>
		<mrow>
			<mn>2</mn>
		</mrow>
	</msup>
</math>
{{< /highlight >}}

Sample output for simple OfficeMath equation exported using HtmlOfficeMathOutputMode.Text value:

{{< highlight csharp >}}
<span style="font-family:'Cambria Math'">A=π</span><span style="font-family:'Cambria Math'">r</span><span style="font-family:'Cambria Math'">2</span>
{{< /highlight >}}

### WORDSNET-12901 Implemented API for Adding or Removing Embedded Fonts

WORDSNET-12901 is implemented.

Added following properties to FontInfoCollection class:

{{< highlight csharp >}}
/// <summary>
/// Specifies whether or not to embed TrueType fonts in a document when it is saved.
/// Default value for this property is <b>false</b>.
/// </summary>
/// <remarks>
/// <para>Embedding TrueType fonts enables others to view the document with the same fonts that were used to create it,
/// but may substantially increase the document size.</para>
/// <para>This option works for DOC, DOCX and RTF formats only.</para>
/// </remarks>
public bool EmbedTrueTypeFonts
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// <para>Specifies whether or not to embed System fonts into the document.
/// Default value for this property is <b>false</b>.</para>
/// <para>This option works only when <see cref="EmbedTrueTypeFonts"/> option is set to <b>true</b>.</para>
/// </summary>
/// <remarks>
/// <para>
/// Setting this property to <c>True</c> is useful if the user is on an East Asian system
/// and wants to create a document that is readable by others who do not have fonts for that
/// language on their system. For example, a user on a Japanese system could choose to embed the
/// fonts in a document so that the Japanese document would be readable on all systems.
/// </para>
/// <para>This option works for DOC, DOCX and RTF formats only.</para>
/// </remarks>
public bool EmbedSystemFonts
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// <para>Specifies whether or not to save a subset of the embedded TrueType fonts with the document.
/// Default value for this property is <b>false</b>.</para>
/// <para>This option works only when <see cref="EmbedTrueTypeFonts"/> property is set to <b>true</b>.</para>
/// </summary>
/// <remarks>
/// This option works for DOC, DOCX and RTF formats only.
/// </remarks>
public bool SaveSubsetFonts
{{< /highlight >}}

{{< highlight csharp >}}

// UC1 - Save document with embedded TrueType fonts. System fonts are not included. Saves full versions of embedding fonts.
Document doc = new Document("fileName");
FontInfoCollection fontInfos = doc.FontInfos;
fontInfos.EmbedTrueTypeFonts = true;
fontInfos.EmbedSystemFonts = false;
fontInfos.SaveSubsetFonts = false;
doc.Save("DocWithEmbeddedFonts");
{{< /highlight >}}

{{< highlight csharp >}}

// UC2 - Save document with embedded TrueType fonts. System fonts are included. Saves full versions of embedding fonts.
Document doc = new Document("fileName");
FontInfoCollection fontInfos = doc.FontInfos;
fontInfos.EmbedTrueTypeFonts = true;
fontInfos.EmbedSystemFonts = true;
fontInfos.SaveSubsetFonts = false;
doc.Save("DocWithEmbeddedFonts");
{{< /highlight >}}

{{< highlight csharp >}}

// UC3 - Save document with embedded TrueType fonts. System fonts are included. Saves subset of embedding fonts.
Document doc = new Document("fileName");
FontInfoCollection fontInfos = doc.FontInfos;
fontInfos.EmbedTrueTypeFonts = true;
fontInfos.EmbedSystemFonts = true;
fontInfos.SaveSubsetFonts = true;
doc.Save("DocWithEmbeddedFonts");
{{< /highlight >}}

{{< highlight csharp >}}

// UC4 -  Save document with embedded TrueType fonts. System fonts are not included. Saves subset of embedding fonts.
Document doc = new Document("fileName");
FontInfoCollection fontInfos = doc.FontInfos;
fontInfos.EmbedTrueTypeFonts = true;
fontInfos.EmbedSystemFonts = false;
fontInfos.SaveSubsetFonts = true;
doc.Save("DocWithEmbeddedFonts");
{{< /highlight >}}

{{< highlight csharp >}}

// UC5 -  Remove embedded fonts from the saved document.
Document doc = new Document("fileName");
FontInfoCollection fontInfos = doc.FontInfos;
fontInfos.EmbedTrueTypeFonts = false;
doc.Save("DocWithoutEmbeddedFonts");
{{< /highlight >}}

### WORDSNET-13817 Font Substitution Rules Improved

Improvement is made in case when specific font is not installed but is embedded into the document and a substitute for this font is assigned.

Previously font substitute was used in this case. Now embedded font is used.
