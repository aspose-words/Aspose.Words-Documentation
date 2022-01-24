---
title: Aspose.Words for Java 19.7 Release Notes
description: "Aspose.Words for Java 19.7 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 60
url: /java/aspose-words-for-java-19-7-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 19.7](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/19.7).

{{% /alert %}} 

## Major Features

- Cryptographic libraries are updated to eliminate known possible security vulnerabilities.
- Aspose.Words.jdk16.jar compatibility with old Java 6,7 and 8 environments.
- Implemented basic reader and writer for Markdown format.
- Implemented public API for dealing with linked text boxes.
- Implemented feature to detect SmartArt shape.
- Added property Revision.Group.
- Supported dynamic list numbering restart for LINQ Reporting Engine.
- Released Advanced Typography package, kerning feature works now.
- Improved handling of whitespace shrinking in a presence of an option "Balance SBCS characters and DBCS character".
- Improved handling of number separator in complex script languages.
- Improved character spacing control handling where punctuation and kerning features come into play.
- Improved handling of interscript spacing when it affects text shading area.
- Improved row height calculation in specific scenarios where cell has vertical text direction.
- Improved table breaking in specific cases where table contains floating objects
- Fixed line overflow when tab character precedes large inline shape which does not fit into the container.
- Implemented font fallback for WMF/EMF metafiles rendering.
- Improved rendering of embedded objects thumbnails.
- Improved rendering of stock charts with three series (high-low-close)
- Improved rendering of charts with NaN values in the series.
- Improved rendering of the plot area rectangle of DML chart, if a manual layout is specified.
- Improved rendering of DML charts with scaled date axis.
- Language settings in the format code are now taken into account when rendering DML charts.
- Fixed a bug with rendering of the Pie chart with empty series.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-2113|Update cryptographic libraries to eliminate known possible security vulnerabilities.|New Feature|
|WORDSJAVA-2124|Support Markdown format read/write.|New Feature|
|WORDSNET-18418|Add feature to create link with RevisionGroup and Revision|New Feature|
|WORDSNET-16984|Numbers in picture not visible in PDF|New Feature|
|WORDSNET-16572|Special characters are converted as block in converted PDF|New Feature|
|WORDSNET-17234|Add feature to restart the list number for each record of parent table|New Feature|
|WORDSNET-11297|Add feature to create linked textboxes programmatically|New Feature|
|WORDSNET-16412|Chinese text of image is rendered as square boxes in output PDF|New Feature|
|WORDSNET-18745|Add feature to detect SmartArt shape|New Feature|
|WORDSJAVA-1101|Using AW Javadoc in Eclipse does not work for some members|Bug|
|WORDSJAVA-2087|Document with embedded QuickTime MOV file throws Exception|Bug|
|WORDSJAVA-2097|CurrentThreadSettings.setTimeZone does not set when used for LINQ Reporting|Bug|
|WORDSJAVA-2109|Aspose.Words.jdk16.jar compatibility with old Java 6,7,8 environments.|Bug|
|WORDSNET-17955|Content control range is changed after DOCX->HTML->DOCX conversion|Bug|
|WORDSNET-18712|Aspose.Words.FileCorruptedException occurs upon loading a DOCX|Bug|
|WORDSNET-18708|System.IndexOutOfRangeException at tableStyle.ConditionalStyles.GetEnumerator()|Bug|
|WORDSNET-18720|Text characters are changed after conversion from DOC to DOCX|Bug|
|WORDSNET-18727|Aspose.Words.FileCorruptedException is thrown while loading DOC|Bug|
|WORDSNET-18728|Aspose.Words.FileCorruptedException is thrown while loading DOC|Bug|
|WORDSNET-18734|Aspose.Words does not work under Xamarin.Android|Bug|
|WORDSNET-18729|Document get corrupted after saving DOCX file with enable track changes and user comments|Bug|
|WORDSNET-18738|Highlighted color is lost for space character in output PDF|Bug|
|WORDSNET-18711|Aspose.Words issue with multi-layer SVG image|Bug|
|WORDSNET-17274|Minus and Plus signs in embedded graph do not render in output PDF|Bug|
|WORDSNET-18611|DOCX to PDF - text is moved to the page before|Bug|
|WORDSNET-15403|Text position issue in rendered PDF document|Bug|
|WORDSNET-18334|The colon at the image top is not retained in PDF|Bug|
|WORDSNET-18428|TIFF image is rendered as black box in output PDF|Bug|
|WORDSNET-18614|System.ArgumentOutOfRangeException occurs upon saving to PDF|Bug|
|WORDSNET-17272|Parentheses in embedded graph do not render in output PDF|Bug|
|WORDSNET-17380|DOCX to PDF conversion issue with space character rendering|Bug|
|WORDSNET-17440|Text in shapes turned into square boxes when rendered to PDF|Bug|
|WORDSNET-17513|Parenthesis in X-Axis of chart rendered as Square Boxes in PDF|Bug|
|WORDSNET-17574|DOCX to PDF conversion issue with text that contains tab and inline shape|Bug|
|WORDSNET-17865|DOCX to PDF conversion issue with chart rendering|Bug|
|WORDSNET-18089|DOCX to PDF conversion issue with horizontal date axis of chart|Bug|
|WORDSNET-18045|SVG image is not visible after DOCX to HtmlFixed conversion|Bug|
|WORDSNET-18331|The last bracket of x-scale is missing in PDF|Bug|
|WORDSNET-17269|Parentheses do not render in output PDF|Bug|
|WORDSNET-18533|UpdateFields updates the format of paragraph end mark|Bug|
|WORDSNET-17777|Russian text is lost after conversion from DOC to DOCX/PDF|Bug|
|WORDSNET-18541|Paragraphs are scrambled after conversion from Docx to RTF|Bug|
|WORDSNET-18544|MailMerge.Execute generates incorrect output when mail merge fields are used with QUOTE and SET fields|Bug|
|WORDSNET-12163|Contents move to next page after conversion from Docx to Pdf|Bug|
|WORDSNET-18550|Content pushed to the next pages in PDF|Bug|
|WORDSNET-18624|The contents of the section footer is moved up to the right of the table|Bug|
|WORDSNET-18450|The CellFormat.HorizontalMerge returns incorrect value|Bug|
|WORDSNET-18201|DOCX to PDF conversion issue formula rendering|Bug|
|WORDSNET-18108|Ink drawings not preserved during DOCX to DOC or RTF conversion|Bug|
|WORDSNET-18630|System.ArgumentException is thrown while converting DOCX to PDF|Bug|
|WORDSNET-17596|CellFormat.getVerticalMerge and getHorizontalMerge ignores cell property information|Bug|
|WORDSNET-18394|Picture moves towards the right page edge in HTML|Bug|
|WORDSNET-18692|The order of w:rubyPr tag is incorrect in output DOCX|Bug|
|WORDSNET-17230|Kerning problem in DOC to PDF conversion|Bug|
|WORDSNET-18702|Gradient color of shape is lost when DOT is converted to DOCX/DOTX|Bug|
|WORDSNET-18585|Charts with #N/A in data are rendered incorrectly when converting to PDF|Bug|
|WORDSNET-18769|Unable to cast object of type 'Aspose.Words.Style' to type 'Aspose.Words.TableStyle'|Bug|
|WORDSNET-17488|Content position is changed after conversion from DOCX to PDF|Bug|
|WORDSNET-18043|System.NullReferenceException is thrown while saving DOCX to PDF|Bug|
|WORDSNET-18133|Document.UpdateFields changes the text alignment of table's cell|Bug|
|WORDSNET-18102|DOCX to PDF conversion issue with chart's rendering|Bug|
|WORDSNET-17199|Contents shifted up in Aspose.Words PDF output|Bug|
|WORDSNET-18379|DOCX to HTML performance regression between 19.1 and 19.2|Bug|
|WORDSNET-18755|Word 2003 XML document corrupts after loading with Aspose.Words|Bug|
|WORDSNET-18649|Horizontal Axis of chart does not render correctly|Bug|
|WORDSNET-18731|DOCX to HtmlFixed conversion issue with inline content control|Bug|
|WORDSNET-18181|Image quality of OLE icon is lost after conversion from RTF to HTML|Bug|
|WORDSNET-18765|'too many styles in the document' exception upon loading a RTF|Bug|
|WORDSNET-18675|Aspose removing foreign characters on converting to PDF|Bug|
|WORDSNET-18676|System.IndexOutOfRangeException occurs upon UpdatePageLayout|Bug|
|WORDSNET-18684|Failed few test from TestLineCaps class|Bug|
|WORDSNET-18685|Format of axis labels is incorrect after converting to PDF|Bug|
|WORDSNET-18741|ReportingEngine.BuildReport throws NullPointerException when table has merged cell|Bug|
|WORDSNET-18695|Incorrect position of CommentRange|Bug|
|WORDSNET-18749|Check suspicious code found by PVS studio|Bug|
|WORDSNET-18777|TrackChanges stop working for Replace in 19.6|Bug|
|WORDSNET-18748|Check suspicious code found by PVS studio|Bug|
|WORDSNET-16214|SVG image is filled incorrectly after import|Bug|
|WORDSNET-17977|DOCX to PDF conversion issue with chart's X-Axis|Bug|
|WORDSNET-17138|Comma separated number changed when DOCX is converted to PDF|Bug|
|WORDSNET-17378|Text of Image is not rendered in output PDF|Bug|
|WORDSNET-17516|Star symbols in chart rendered as Square Boxes in PDF|Bug|
|WORDSNET-17514|Triangle delta symbols in Y-Axis of chart rendered as Square Boxes in PDF|Bug|
|WORDSNET-15794|Hebrew text is reversed when RTF is converted to PDF|Bug|
|WORDSNET-14866|Text is divided on columns after converting by Aspose from DOCX to FixedHTML|Bug|
|WORDSNET-12847|Cell's contents are render in two lines in output PDF|Bug|
|WORDSNET-12705|VML shape in improperly converted from DOCX to PDF|Bug|
|WORDSNET-13327|Horizontally merged cells are ignored in PDF after calling Document.UpdateTableLayout|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 19.7. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies existing behavior is especially important and is documented here.


### Added property Revision.Group

Related issue: WORDSNET-18418

Added the following new property to the Revision class:

{{< highlight csharp >}}
/// <summary>
/// Gets the revision group. Returns null if the revision does not belong to any group.
/// </summary>
/// <remarks>
/// Revision has no group if revision type is RevisionType.StyleDefinitionChange or
/// if the revision is not longer exist in document context (accepted/rejected).
/// </remarks>
public RevisionGroup Group
{{< /highlight >}}

**Use Case:**

{{< highlight csharp >}}
Document doc = new Document(@"source.docx");
foreach (Revision revision in doc.Revisions)
{
    string groupText = revision.Group != null
        ? "Revision group text: " + revision.Group.Text
        : "Revision has no group";
    Console.WriteLine("Type: " + revision.RevisionType);
    Console.WriteLine("Author: " + revision.Author);
    Console.WriteLine("Date: " + revision.DateTime);
    Console.WriteLine("Revision text: " + revision.ParentNode.ToString(SaveFormat.Text));
    Console.WriteLine(groupText);
}
{{< /highlight >}}

### Implemented basic reader and writer for Markdown features

Related issue: WORDSNET-18338.

For a moment the following Markdown features are supported:

- Headings
- Block quotes
- Horizontal rules
- Bold emphasis
- Italic emphasis

The new public enumerations were added:

{{< highlight csharp >}}
LoadFormat.Markdown
SaveFormat.Markdown
FileFormat.Markdown
{{< /highlight >}}

The new TxtSaveOptionsBase class was added:

{{< highlight csharp >}}
/// <summary>
/// The base class for specifying additional options when saving a document into a text based formats.
/// </summary>
public abstract class TxtSaveOptionsBase : SaveOptions
{{< /highlight >}}

Some of the members were moved from the TxtSaveOptions class into TxtSaveOptionsBase class:

{{< highlight csharp >}}
/// <summary>
/// Specifies the encoding to use when exporting in text formats. 
/// Default value is <ms><b>Encoding.UTF8</b></ms><java>'UTF-8' Charset</java>.
/// </summary>
public Encoding Encoding
/// <summary>
/// Specifies the string to use as a paragraph break when exporting in text formats.
/// </summary>
/// <remarks>
/// <p>The default value is <see cref="ControlChar.CrLf"/>.</p>
/// </remarks>
public string ParagraphBreak
/// <summary>
/// Specifies whether the program should attempt to preserve layout of tables when saving in the plain text format.
/// The default value is <b>false</b>.
/// </summary>
public bool PreserveTableLayout
/// <summary>
/// <para>Allows to specify whether the page breaks should be preserved during export.</para>
/// <para>The default value is <b>false</b>.</para>
/// </summary>
/// <remarks>
/// The property affects only page breaks that are inserted explicitly into a document. 
/// It is not related to page breaks that MS Word automatically inserts at the end of each page.
/// </remarks>
public bool ForcePageBreaks
/// <summary>
/// Specifies the way headers and footers are exported to the text formats.
/// Default value is <see cref="TxtExportHeadersFootersMode.PrimaryOnly"/>.
/// </summary>
public TxtExportHeadersFootersMode ExportHeadersFootersMode
{{< /highlight >}}

Our implementation is mostly follows the CommonMark specification.
In AW model Markdown features are represented as corresponding styles or direct formatting.
So, bold and italic are represented as Font.Bold and Font.Italic.
Headings are paragraphs with Heading 1 - Heading 6 styles.
Quotes are paragraphs with "Quote" in style name.
HorizontalRule is a paragraph with HorizontalRule shape.

**Use Case 1. Explains how to produce the following Markdown document with emphases:**

{{< highlight html >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder(new Document());
builder.Writeln("Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.");
builder.Write("You can write ");
builder.Font.Bold = true;
builder.Write("bold");
builder.Font.Bold = false;
builder.Write(" or ");
builder.Font.Italic = true;
builder.Write("italic");
builder.Font.Italic = false;
builder.Writeln(" text. ");
builder.Write("You can also write ");
builder.Font.Bold = true;
builder.Font.Italic = true;
builder.Write("BoldItalic");
builder.Font.Bold = false;
builder.Font.Italic = false;
builder.Write("text.");
builder.Document.Save("EmphasesExample.md");
{{< /highlight >}}

**Use Case 2. Explains how to produce the following Markdown document with Headings:**

{{< highlight csharp >}}
The following produces headings:
\# Heading1
\## Heading2
\### Heading3
\#### Heading4
\##### Heading5
\###### Heading6
\# **Bold Heading1**
{{< /highlight >}}

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// By default Heading styles in Word may have bold and italic formatting.

// If we do not want text to be emphasized, set these properties explicitly to false.
builder.Font.Bold = false;
builder.Font.Italic = false;
builder.Writeln("The following produces headings:");
builder.ParagraphFormat.Style = doc.Styles["Heading 1"];
builder.Writeln("Heading1");
builder.ParagraphFormat.Style = doc.Styles["Heading 2"];
builder.Writeln("Heading2");
builder.ParagraphFormat.Style = doc.Styles["Heading 3"];
builder.Writeln("Heading3");
builder.ParagraphFormat.Style = doc.Styles["Heading 4"];
builder.Writeln("Heading4");
builder.ParagraphFormat.Style = doc.Styles["Heading 5"];
builder.Writeln("Heading5");
builder.ParagraphFormat.Style = doc.Styles["Heading 6"];
builder.Writeln("Heading6");

// Note, emphases are also allowed inside Headings:
builder.Font.Bold = true;
builder.ParagraphFormat.Style = doc.Styles["Heading 1"];
builder.Writeln("Bold Heading1");
doc.Save("HeadingsExample.md");
{{< /highlight >}}

**Use Case 3. Explains how to produce the following Markdown document with block quotes:**

{{< highlight csharp >}}
We support blockquotes in Markdown:
\>*Lorem*
\>*ipsum*
The quotes can be of any level and can be nested:
\>>>Quote level 3
\>>>>Nested quote level 4
\>
\>*Back to first level*
\> ### Headings are allowed inside Quotes
{{< /highlight >}}

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("We support blockquotes in Markdown:");
builder.ParagraphFormat.Style = doc.Styles["Quote"];
builder.Writeln("Lorem");
builder.Writeln("ipsum");
builder.ParagraphFormat.Style = doc.Styles["Normal"];
builder.Writeln("The quotes can be of any level and can be nested:");
Style quoteLevel3 = doc.Styles.Add(StyleType.Paragraph, "Quote2");
builder.ParagraphFormat.Style = quoteLevel3;
builder.Writeln("Quote level 3");
Style quoteLevel4 = doc.Styles.Add(StyleType.Paragraph, "Quote3");
builder.ParagraphFormat.Style = quoteLevel4;
builder.Writeln("Nested quote level 4");
builder.ParagraphFormat.Style = doc.Styles["Quote"];
builder.Writeln();
builder.Writeln("Back to first level");
Style quoteLevel1WithHeading = doc.Styles.Add(StyleType.Paragraph, "Quote Heading 3");
builder.ParagraphFormat.Style = quoteLevel1WithHeading;
builder.Write("Headings are allowed inside Quotes");
doc.Save("QuotesExample.md");
{{< /highlight >}}



**Use Case 4. Explains how to produce the following Markdown document with Horizontal Rule:**

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
\-----
{{< /highlight >}}

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder(new Document());
builder.Writeln("We support Horizontal rules (Thematic breaks) in Markdown:");
builder.InsertHorizontalRule();
builder.Document.Save("HorizontalRuleExample.md");
{{< /highlight >}}



**Use Case 5. Explains how to read Markdown document.**

{{< highlight csharp >}}

// This is Markdown document that was produced in example of UC3.
Document doc = new Document("QuotesExample.md");

// Let's remove Heading formatting from a Quote in the very last paragraph.
Paragraph paragraph = doc.FirstSection.Body.LastParagraph;
paragraph.ParagraphFormat.Style = doc.Styles["Quote"];
doc.Save("QuotesModifiedExample.md");
{{< /highlight >}}


### Implemented feature to detect SmartArt shape

Related issue: WORDSNET-18745.

Added the following new property to a Shape class:

{{< highlight csharp >}}
/// <summary>
/// Returns true if this Shape has a SmartArt object.
/// </summary>
public bool HasSmartArt
{{< /highlight >}}

**Use Case: Count a number of shapes with SmartArt in a document.**

{{< highlight csharp >}}
Document doc = new Document(@"input.docx");
int count = 0;
foreach (Shape shape in doc.GetChildNodes(NodeType.Shape, true))
{
    if (shape.HasSmartArt)
        count++;
}
Console.WriteLine("The document has {0} shapes with SmartArt.", count);
{{< /highlight >}}


### Supported dynamic list numbering restart for LINQ Reporting Engine

Issue: WORDSNET-17234

The "[Restarting List Numbering Dynamically](/words/java/restarting-list-numbering-dynamically/)" section of the engine's documentation was added to describe the change.


### WORDSNET-11297 - Implemented public API for dealing with linked textboxes

New public properties and methods were added into the TextBox class.

A public property for getting parent shape from text box was added to allow customer to find linked Shape from linked TextBox.

{{< highlight csharp >}}
/// <summary>
/// Determines whether this TextBox can be linked to the target Textbox.
/// </summary>
public bool IsValidLinkTarget(TextBox target)
{
}
/// <summary>
/// Returns or sets a TextBox that represents the next TextBox in a sequence of shapes.
/// </summary>
public TextBox Next
{
  get; set;
}
/// <summary>
/// Returns a TextBox that represents the previous TextBox in a sequence of shapes.
/// </summary>
public TextBox Previous
{
  get;
}
/// <summary>
/// Breaks the forward link for the specified TextBox, if such a link exists.
/// </summary>
/// <remarks>
/// BreakForwardLink() doesn't break all other links in the current sequence of shapes.
/// For example: 1-2-3-4 sequence and BreakForwardLink at the 2-nd textbox will create
/// two sequences 1-2, 3-4.
/// </remarks>
public void BreakForwardLink()
{
}
/// <summary>
/// Gets a parent shape for the TextBox.
/// </summary>
public Shape Parent
{
    get { return mParent; }
}
{{< /highlight >}}

**Use Case to create a link from shape1.TextBox to shape2.TextBox:**

{{< highlight csharp >}}
TextBox textBox1 = shape1.TextBox;
TextBox textBox2 = shape2.TextBox;
if (textBox1.IsValidLinkTarget(textBox2))
  textBox1.Next = textBox2;
{{< /highlight >}}

**Use Case to check if shape.TextBox is a Head, a Tail or a Middle of the sequence:**

{{< highlight csharp >}}
TextBox textBox = shape.TextBox;
if ((textBox.Next != null) && (textBox.Previous == null))
{
  //The head of the sequence.
}
if ((textBox.Next != null) && (textBox.Previous != null))
{
  //The Middle of the sequence.
}
if ((textBox.Next == null) && (textBox.Previous != null))
{
  //The Tail of the sequence.
}
{{< /highlight >}}

**Use Case to break a link for a shape.TextBox:**

{{< highlight csharp >}}
TextBox textBox = shape.TextBox;

// Break a forward link
textBox.BreakForwardLink();

// Break a forward link by setting a null
textBox.Next = null;

// Break a link, which leads to this textbox
if (textBox.Previous != null)
  textBox.Previous.BreakForwardLink();
{{< /highlight >}}
