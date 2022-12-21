---
title: 21.2 Release Notes
second_title: Aspose.Words for Java
articleTitle: Aspose.Words for Java 21.2 Release Notes
linktitle: Aspose.Words for Java 21.2 Release Notes
description: "Aspose.Words for Java 21.2 Release Notes – the latest updates and fixes."
type: docs
weight: 11
url: /java/aspose-words-for-java-21-2-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 21.2](https://releases.aspose.com/words/java/21-2/).

{{% /alert %}}

## Major Features

There are 97 improvements and fixes in this regular monthly release. The most notable are:

- Optimized "throws Exception" clauses in public API.
- Harfbazz improvements, XmlDataSource fixes.
- Make it possible to load documents from IStream object in COM applications.
- Added an option to update CreatedTime property upon saving.
- Implemented API to manipulate themed properties of Font object.
- FindReplaceOptions class was extended with a new useful option.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-21363 | Support dynamic adding of combobox and dropdown list items for LINQ Reporting Engine | New Feature |
| WORDSNET-6146 | Allow the extraction of visible plain text from an OLE object | New Feature |
| WORDSNET-11848 | Add a saveoptions either to mimics MS Word behavior or not for created,   modified and printed dates | New Feature |
| WORDSNET-6125 | Add an option to export images in the document to HTML as SVG format | New Feature |
| WORDSNET-10148 | Provide ability to move to a particular character inside the Paragraph | New Feature |
| WORDSNET-20863 | Content control date is changed when DOCX is converted to PDF at Azure | New Feature |
| WORDSNET-21639 | Range.Replace throws System.IndexOutOfRangeException when LegacyMode =   false | New Feature |
| WORDSNET-21183 | Set custom font style as Linked to the Themes font does not work | New Feature |
| WORDSNET-20546 | ComHelper.Open does not import RTF from stream using Delphi | New Feature |
| WORDSNET-20414 | PdfDocumentReaderPlugin mirrors Hebrew text | Enhancement |
| WORDSNET-9605 | Support rendering of DrawingML 3D Effects | Enhancement |
| WORDSNET-15833 | Improve the compatibility of rendering shape-lines created in MS Word 97 | Enhancement |
| WORDSNET-10441 | Support drawing objects for Word 6.0/95 | Enhancement |
| WORDSNET-2799 | Try to recover damaged documents on import | Enhancement |
| WORDSNET-1738 | Optimize memory usage during saving DOCX files | Enhancement |
| WORDSNET-21652 | No generator name is written to XamlFixed/XamlFlow/XamlFlowPack/HtmlFixed   documents | Enhancement |
| WORDSJAVA-2433 | IllegalStateException while building report with XmlDataSource | Bug |
| WORDSJAVA-2488 | Unable to merge region from XML data | Bug |
| WORDSJAVA-2492 | TOC not being updated correctly on Ubuntu | Bug |
| WORDSJAVA-2500 | Json: nested property with xmlns prefix doesn't read. | Bug |
| WORDSJAVA-2509 | com.aspose.words.FileCorruptedException upon converting a DOC to HTML   Fixed | Bug |
| WORDSJAVA-2510 | (HarfBazz) Khmer text with KhmerOS font shapes incorrectly | Bug |
| WORDSJAVA-2512 | JsonDataSource throws java.lang.NullPointerException | Bug |
| WORDSJAVA-2513 | (Harfbazz) Buffer.guessSegmentProperties() does nothing | Bug |
| WORDSJAVA-2515 | Metered.SetMeteredKey Method wrongly reports Data related to Metering | Bug |
| WORDSJAVA-2522 | Remove spare "throws Exception"clauses from public API | Bug |
| WORDSJAVA-2525 | Every method Aspose.Words lib now has a throws Exception clause? | Bug |
| WORDSNET-21635 | Unable to load an ODT file when targeting .NET framework 2.0 | Bug |
| WORDSNET-21470 | System.NullReferenceException is thrown while saving OfficeMath to String | Bug |
| WORDSNET-21640 | Hidden runs located in a Structured Document tag cannot be iterated | Bug |
| WORDSNET-21329 | Range.Replace does not Remove CR Character in Cell with Nested Table | Bug |
| WORDSNET-21564 | TabStop Leader is lost after updating TOC | Bug |
| WORDSNET-21644 | Fix layout performance decrease | Bug |
| WORDSNET-21335 | Font type of text is changed during DOCX to PDF conversion | Bug |
| WORDSNET-10628 | Image presentation of OLE object does not show in DOCX | Bug |
| WORDSNET-10627 | Image presentation of OLE object does not show in RTF | Bug |
| WORDSNET-21377 | Font issue during import an empty Html paragraph | Bug |
| WORDSNET-21630 | Incorrect width of Merged Cell when saving to DOC | Bug |
| WORDSNET-14628 | Content control is getting deleted while merging two document | Bug |
| WORDSNET-16265 | Arabic text is corrupted in PDF output document | Bug |
| WORDSNET-17920 | DOCX to PDF conversion issue with PRINTDATE field | Bug |
| WORDSNET-21406 | Line shape in footer is not tagged | Bug |
| WORDSNET-13113 | ParagraphFormat.StyleName returns incorrect style name after track   changes | Bug |
| WORDSNET-21661 | System.InvalidCastException occurs upon resaving ODT | Bug |
| WORDSNET-18480 | Conversion from MHT to PDF - the output file content appears as narrow   text | Bug |
| WORDSNET-4330 | Reference sourcess lost after opening and saving document | Bug |
| WORDSNET-21677 | Blank Output produced when Converting a PDF with Images to JPEG Format | Bug |
| WORDSNET-19730 | Shape text stretches when converting to PDF | Bug |
| WORDSNET-20277 | Text is moved to next page after joining documents in output PDF | Bug |
| WORDSNET-21562 | premStart and permEnd are changed after re-saving DOCX | Bug |
| WORDSNET-21711 | Incorrect MatchNode in replacing callback | Bug |
| WORDSNET-21093 | Word shape in wrong position after save to PDF | Bug |
| WORDSNET-21578 | DOCX to PDF - additional space between characters | Bug |
| WORDSNET-21245 | Large memory consumption of DOCX to PDF conversion | Bug |
| WORDSNET-21587 | Open docx file with metafile conversion | Bug |
| WORDSNET-20919 | Incorrect STYLEREF result | Bug |
| WORDSNET-21589 | Performance drop in the conversion of word files to HTML | Bug |
| WORDSNET-20941 | Incorrect layout | Bug |
| WORDSNET-21455 | FileCorruptedException is thrown during import CHM file | Bug |
| WORDSNET-20477 | getChildDataSource() is not calling when we have Region inside if   statement | Bug |
| WORDSNET-21595 | System.InvalidOperationException occurs upon DOC to PDF conversion | Bug |
| WORDSNET-21006 | ReportingEngine.BuildReport could not create the bitmap - lack of system   resources - FileFormat=0 | Bug |
| WORDSNET-21473 | DOCX to PDF conversion issue with accessibility check for alternative   text | Bug |
| WORDSNET-20982 | Artifact issue while converting DOCX to PDF | Bug |
| WORDSNET-21305 | IChar solution allocates too many class instances | Bug |
| WORDSNET-21306 | DOCX to PDF conversion: a part of first page is pushed to second page   after conversion | Bug |
| WORDSNET-21307 | Messed up headers after extract page | Bug |
| WORDSNET-21617 | Track changes - Bookmarks not being generated for Headings during Word to   PDF conversion | Bug |
| WORDSNET-21495 | Incorrect conversion from DOC to PNG | Bug |
| WORDSNET-21616 | RTF to PDF conversion issue with Paragraph alignment | Bug |
| WORDSNET-21320 | Revision text format messed up when comparing docx files with merge   fields | Bug |
| WORDSNET-21615 | ImportNode() function causes Exception: "Index was out of   range" | Bug |
| WORDSNET-21491 | Images not loaded from a CHM document | Bug |
| WORDSNET-21628 | Aspose.Words.FileCorruptedException is thrown for RTF | Bug |
| WORDSNET-21631 | DOCX to PDF conversion: Fails with exception when input file contains   malformed URL | Bug |
| WORDSNET-2896 | The text orientation of an Excel file isn't converted to Word correctly | Bug |
| WORDSNET-19002 | Text direction is different in HTML | Bug |
| WORDSNET-6860 | RTF Document contents are lost during loading into DOM | Bug |
| WORDSNET-7629 | DOCX document crashes | Bug |
| WORDSNET-7673 | An inline shape in table in header should not be wrapped on conversion to   PDF, DOC | Bug |
| WORDSNET-9212 | Images are displayed incorrectly&nbsp;   after round-trip | Bug |
| WORDSNET-9231 | Formatting of list numbers is not preserved during converting HTML to   Word | Bug |
| WORDSNET-11116 | DrawingML is pushed up causing partial rendering of text in PDF | Bug |
| WORDSNET-11132 | Invalid rendering of TOC for Word 2013 documents | Bug |
| WORDSNET-11121 | A figure in Page Footer stirs from original place in PDF | Bug |
| WORDSNET-13189 | Conversion to PDF takes very long | Bug |
| WORDSNET-8641 | FileCorruptedException occurs when loading MHT file having   Content-Transfer-Encoding:binary | Bug |
| WORDSNET-21606 | System.InvalidOperationException is thrown by BuildReport | Bug |
| WORDSNET-10889 | Position of content in PDF is far below compared to the original DOCX | Bug |
| WORDSNET-20728 | Different scales of the image watermark | Bug |
| WORDSNET-21273 | License.SetLicense throws System.NotSupportedException | Bug |
| WORDSNET-5023 | TestCallout.doc saved as MHTML lost some content | Bug |
| WORDSNET-11072 | Saving Word document as PDF duplicates image in page header | Bug |
| WORDSNET-12129 | A blank page added to generated PDF document | Bug |
| WORDSNET-12128 | Unexpected blank page added to the and of PDF document | Bug |
| WORDSNET-17385 | System.TypeInitializationException is thrown after deploying application at Windows 2012 | Bug |
| WORDSNET-21719 | Only one page is visible after PDF to DOCX conversion | Bug |

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 21.2. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.


### Added a new public method OpenIStream to the ComHelper class

Related issue: WORDSNET-20546

The following public method has been added to the ComHelper class:

{{< highlight csharp >}}
/// <summary>
/// Allows a COM application to load a <see cref="Document"/> from an IStream object.
/// </summary>
/// <param name="stream">A .NET IStream object that contains the document to load.</param>
/// <returns>A <see cref="Document"/> object that represents a Word document.</returns>
public Document OpenIStream(IStream stream)
{{< /highlight >}}

Use Case (Delphi):

{{< highlight csharp >}}
var
  ComHelper, Doc : OLEVariant;
  RtfString : string;
  StringAdapter : TStreamAdapter;
  StrStream: TStringStream;

  CoInitializeEx(nil, COINIT_MULTITHREADED);

  RtfString := '{\rtf1\ansi\deff0\nouicompat{\fonttbl{\f0\fnil Times New Roman;}}{\colortbl ;\red255\green0\blue0;}{\*\generator Riched20 10.0.18362}\viewkind4\uc1\pard\sa200\sl264\slmult1\cf1\b\f0\fs24\lang1036 TEST\par}';
  ComHelper := CreateOleObject('Aspose.Words.ComHelper');

  //Important! Rtf string MUST be ascii encoded.
  StrStream := TStringStream.Create(RtfString);
  StringAdapter := TStreamAdapter.Create(StrStream, soOwned);
  Doc := ComHelper.OpenIStream(StringAdapter as ActiveX.IStream);
  Doc.Save('Out.rtf');
{{< /highlight >}}

### Added a new public property SaveOptions.UpdateCreatedTimeProperty

Related issue: WORDSNET-11848

Added a new public property SaveOptions.UpdateCreatedTimeProperty:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value determining whether the BuiltInDocumentProperties.CreatedTime property is updated before saving.
/// Default value is false.
/// </summary>
public bool UpdateCreatedTimeProperty
{{< /highlight >}}

Use Case: 

{{< highlight csharp >}}
Document doc = new Document(docPath);
SaveOptions saveOptions = new PdfSaveOptions();
saveOptions.UpdateLastPrintedProperty = true;
doc.Save(pdfPath, saveOptions);
{{< /highlight >}}

### Added new public properties allowing to manipulate themed properties of Font object

Related issue: WORDSNET-21183

Added a new public properties to the Font object:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets the theme font in the applied font scheme that is associated with this Font object.
/// </summary>
public ThemeFont ThemeFont

/// <summary>
/// Gets or sets the theme font used for Latin text (characters with character codes from 0 (zero) through 127)
/// in the applied font scheme that is associated with this Font object.
/// </summary>
public ThemeFont ThemeFontAscii

/// <summary>
/// Gets or sets the East Asian theme font in the applied font scheme that is associated with this Font object.
/// </summary>
public ThemeFont ThemeFontFarEast

/// <summary>
/// Gets or sets the theme font used for characters with character codes from 128 through 255
/// in the applied font scheme that is associated with this Font object.
/// </summary>
public ThemeFont ThemeFontOther

/// <summary>
/// Gets or sets the theme font in the applied font scheme that is associated with this Font object
/// in a right-to-left language document.
/// </summary>
public ThemeFont ThemeFontBi
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// Gets or sets the theme color in the applied color scheme that is associated with this Font object.
/// </summary>
public ThemeColor ThemeColor
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a double value that lightens or darkens a color.
/// </summary>
/// <remarks>
/// <para> The allowed values are in range from -1 (darkest) to 1 (lightest) for this property.
/// Zero (0) is neutral. Attempting to set this property to a value less than -1 or more than 1
/// results in a <see cref="ArgumentOutOfRangeException"/>.</para>
/// <para> Setting this property for Font object with non-theme colors
/// results in a <see cref="InvalidOperationException"/>.</para>
/// </remarks>
public double TintAndShade
{{< /highlight >}}

Also added corresponding public enums:

{{< highlight csharp >}}
/// <summary>
/// Specifies the types of theme font names for document themes.
/// </summary>
/// <remarks>
/// Specifies a theme font type which can be referenced as a theme font within the parent object properties.
/// This theme font is a reference to one of the predefined theme fonts, located in the document's
/// Theme part, which allows for font information to be set centrally in the document.
/// </remarks>
public enum ThemeFont
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// Specifies the theme colors for document themes.
/// </summary>
/// <remarks>
/// The specified theme color is a reference to one of the predefined theme colors, located in the
/// document's Theme part, which allows color information to be set centrally in the document.
/// </remarks>
public enum ThemeColor
{{< /highlight >}}

Use Case: Explains how to create and use themed style.

{{< highlight csharp >}}
Document doc = new Document("input.docx");
DocumentBuilder builder = new DocumentBuilder(doc);
builder.MoveToDocumentEnd();
builder.Writeln();

// Create some style with theme font properties.
Style style = doc.Styles.Add(StyleType.Paragraph, "ThemedStyle");
style.Font.ThemeFont = ThemeFont.Major;
style.Font.ThemeColor = ThemeColor.Accent5;
style.Font.TintAndShade = 0.3;

builder.ParagraphFormat.StyleName = "ThemedStyle";
builder.Writeln("Text with themed style");

// Get just inserted run.
Run run = (Run)((Paragraph)builder.CurrentParagraph.PreviousSibling).FirstChild;

Console.WriteLine("Theme color: {0}", run.Font.ThemeColor);
Console.WriteLine("Color: {0}\n", run.Font.Color);

Console.WriteLine("TintAndShade: {0:N2}\n", run.Font.TintAndShade);

Console.WriteLine("Theme font: {0}", run.Font.ThemeFont);
Console.WriteLine("Font: {0}\n", run.Font.Name);

Console.WriteLine("Theme font Ascii: {0}", run.Font.ThemeFontAscii);
Console.WriteLine("Font Ascii: {0}\n", run.Font.NameAscii);

Console.WriteLine("Theme font Bi: {0}", run.Font.ThemeFontBi);
Console.WriteLine("Font Bi: {0}\n", run.Font.NameBi);

Console.WriteLine("Theme font EastAsian: {0}", run.Font.ThemeFontFarEast);
Console.WriteLine("Font EastAsian: {0}\n", run.Font.NameFarEast);

Console.WriteLine("Theme font Other: {0}", run.Font.ThemeFontOther);
Console.Write("Font Other: {0}", run.Font.NameOther);

/*
This code example produces the following results:

Theme color: Accent5
Color: Color [Empty]

TintAndShade: 0.30

Theme font: Major
Font: Calibri Light

Theme font Ascii: Major
Font Ascii: Calibri Light

Theme font Bi: Major
Font Bi: Times New Roman

Theme font EastAsian: Major
Font EastAsian: Times New Roman

Theme font Other: Major
Font Other: Calibri Light
*/
{{< /highlight >}}

Use Case: Explains how to change non-theme font name to the themed one and vice versa by applying theme font 'None'.

{{< highlight csharp >}}
// Create new document with themes.
Document doc = new Document();
doc.Theme.MinorFonts.Latin = "Algerian";
doc.Theme.MinorFonts.EastAsian = "Aharoni";
doc.Theme.MinorFonts.ComplexScript = "Andalus";

// Check original theme font.
Font font = doc.Styles["Normal"].Font;
Console.WriteLine("Originally the Normal style theme font is: {0}\n", font.ThemeFont);

// Apply theme font 'Minor'
font.ThemeFont = ThemeFont.Minor;
Console.WriteLine("'Minor' theme font is applied:");
Console.WriteLine("Theme font: {0}", font.ThemeFont);
Console.WriteLine("Font: {0}\n", font.Name);

Console.WriteLine("Theme font Ascii: {0}", font.ThemeFontAscii);
Console.WriteLine("Font Ascii: {0}\n", font.NameAscii);

Console.WriteLine("Theme font Bi: {0}", font.ThemeFontBi);
Console.WriteLine("Font Bi: {0}\n", font.NameBi);

Console.WriteLine("Theme font EastAsian: {0}", font.ThemeFontFarEast);
Console.WriteLine("Font EastAsian: {0}\n", font.NameFarEast);

Console.WriteLine("Theme font Other: {0}", font.ThemeFontOther);
Console.WriteLine("Font Other: {0}\n\n", font.NameOther);

// Set non-theme font.
font.ThemeFont = ThemeFont.None;
Console.WriteLine("'None' theme font is applied:");
Console.WriteLine("Theme font: {0}", font.ThemeFont);
Console.WriteLine("Font: {0}\n", font.Name);

Console.WriteLine("Theme font Ascii: {0}", font.ThemeFontAscii);
Console.WriteLine("Font Ascii: {0}\n", font.NameAscii);

Console.WriteLine("Theme font Bi: {0}", font.ThemeFontBi);
Console.WriteLine("Font Bi: {0}\n", font.NameBi);

Console.WriteLine("Theme font EastAsian: {0}", font.ThemeFontFarEast);
Console.WriteLine("Font EastAsian: {0}\n", font.NameFarEast);

Console.WriteLine("Theme font Other: {0}", font.ThemeFontOther);
Console.Write("Font Other: {0}\n", font.NameOther);
/*
This code example produces the following results:

Originally the Normal style theme font is: None

'Minor' theme font is applied:
Theme font: Minor
Font: Algerian

Theme font Ascii: Minor
Font Ascii: Algerian

Theme font Bi: Minor
Font Bi: Andalus

Theme font EastAsian: Minor
Font EastAsian: Aharoni

Theme font Other: Minor
Font Other: Algerian


'None' theme font is applied:
Theme font: None
Font: Algerian

Theme font Ascii: None
Font Ascii: Algerian

Theme font Bi: None
Font Bi: Andalus

Theme font EastAsian: None
Font EastAsian: Aharoni

Theme font Other: None
Font Other: Algerian
*/
{{< /highlight >}}

Use Case: Explains how to change non-theme font name to the themed one and vice versa by applying some simple font name.

{{< highlight csharp >}}
// Create new document with themes.
Document doc = new Document();
doc.Theme.MinorFonts.Latin = "Algerian";
doc.Theme.MinorFonts.EastAsian = "Aharoni";
doc.Theme.MinorFonts.ComplexScript = "Andalus";

// Check original theme font.
Font font = doc.Styles["Normal"].Font;
Console.WriteLine("Originally the Normal style theme font is: {0}\n", font.ThemeFont);

// Apply theme font 'Minor'
font.ThemeFont = ThemeFont.Minor;
Console.WriteLine("'Minor' theme font is applied:");
Console.WriteLine("Theme font: {0}", font.ThemeFont);
Console.WriteLine("Font: {0}\n", font.Name);

Console.WriteLine("Theme font Ascii: {0}", font.ThemeFontAscii);
Console.WriteLine("Font Ascii: {0}\n", font.NameAscii);

Console.WriteLine("Theme font Bi: {0}", font.ThemeFontBi);
Console.WriteLine("Font Bi: {0}\n", font.NameBi);

Console.WriteLine("Theme font EastAsian: {0}", font.ThemeFontFarEast);
Console.WriteLine("Font EastAsian: {0}\n", font.NameFarEast);

Console.WriteLine("Theme font Other: {0}", font.ThemeFontOther);
Console.WriteLine("Font Other: {0}\n\n", font.NameOther);

// Set non-theme font name.
font.Name = "Arial";
Console.WriteLine("Non-themed font name is applied:");
Console.WriteLine("Theme font: {0}", font.ThemeFont);
Console.WriteLine("Font: {0}\n", font.Name);

Console.WriteLine("Theme font Ascii: {0}", font.ThemeFontAscii);
Console.WriteLine("Font Ascii: {0}\n", font.NameAscii);

Console.WriteLine("Theme font Bi: {0}", font.ThemeFontBi);
Console.WriteLine("Font Bi: {0}\n", font.NameBi);

Console.WriteLine("Theme font EastAsian: {0}", font.ThemeFontFarEast);
Console.WriteLine("Font EastAsian: {0}\n", font.NameFarEast);

Console.WriteLine("Theme font Other: {0}", font.ThemeFontOther);
Console.Write("Font Other: {0}", font.NameOther);

/*
This code example produces the following results:

Originally the Normal style theme font is: None

'Minor' theme font is applied:
Theme font: Minor
Font: Algerian

Theme font Ascii: Minor
Font Ascii: Algerian

Theme font Bi: Minor
Font Bi: Andalus

Theme font EastAsian: Minor
Font EastAsian: Aharoni

Theme font Other: Minor
Font Other: Algerian


Non-themed font name is applied:
Theme font: None
Font: Arial

Theme font Ascii: None
Font Ascii: Arial

Theme font Bi: None
Font Bi: Arial

Theme font EastAsian: None
Font EastAsian: Arial

Theme font Other: None
Font Other: Arial
*/
{{< /highlight >}}

Use Case: Explains how to change non-theme color to the theme color and vice versa by applying theme font color 'None'.

{{< highlight csharp >}}
Document doc = new Document();

// Check original theme color.
Font font = doc.Styles["Normal"].Font;
Console.WriteLine("Originally the Normal style theme color is: {0} and RGB color is: {1}\n", font.ThemeColor, font.Color);

// Apply theme color.
font.ThemeColor = ThemeColor.Accent2;
Console.WriteLine("'Accent2' theme color is applied:");
Console.WriteLine("Theme color: {0}", font.ThemeColor);
Console.WriteLine("RGB color: {0}\n", font.Color);

// Set theme color back to 'None'.
font.ThemeColor = ThemeColor.None;
Console.WriteLine("Theme color 'None' is applied:");
Console.WriteLine("Theme color: {0}", font.ThemeColor);
Console.WriteLine("RGB color: {0}", font.Color);
/*
This code example produces the following results:

Originally the Normal style theme color is: None and RGB color is: Color [Empty]

'Accent2' theme color is applied:
Theme color: Accent2
RGB color: Color [Empty]

Theme color 'None' is applied:
Theme color: None
RGB color: Color [Empty]
*/
{{< /highlight >}}

Use Case: Explains how to change non-theme font name to the themed one and vice versa by applying some simple RGB color.

{{< highlight csharp >}}
Document doc = new Document();

// Check original theme color.
Font font = doc.Styles["Normal"].Font;
Console.WriteLine("Originally the Normal style theme color is: {0} and RGB color is: {1}\n", font.ThemeColor, font.Color);

// Apply theme color.
font.ThemeColor = ThemeColor.Accent2;
Console.WriteLine("'Accent2' theme color is applied:");
Console.WriteLine("Theme color: {0}", font.ThemeColor);
Console.WriteLine("RGB color: {0}\n", font.Color);

// Set simple RGB color.
font.Color = Color.Blue;
font.ThemeColor = ThemeColor.None;
Console.WriteLine("RGB color is applied:");
Console.WriteLine("Theme color: {0}", font.ThemeColor);
Console.WriteLine("RGB color: {0}", font.Color);
/*
This code example produces the following results:

Originally the Normal style theme color is: None and RGB color is: Color [Empty]

'Accent2' theme color is applied:
Theme color: Accent2
RGB color: Color [Empty]

RGB color is applied:
Theme color: None
RGB color: Color [A=255, R=0, G=0, B=255]
*/
{{< /highlight >}}

Use Case: Explains how to use Font.TintAndShade property.

{{< highlight csharp >}}
Document doc = new Document();
Font font = doc.Styles["Normal"].Font;

font.ThemeColor = ThemeColor.Accent6;
font.TintAndShade = -0.25;

Console.WriteLine("TintAndShade is set to {0:N2}", font.TintAndShade);
Console.WriteLine("Theme color: {0}", font.ThemeColor);
Console.WriteLine("RGB color: {0}", font.Color);
/*
This code example produces the following results:

TintAndShade is set to -0.25
Theme color: Accent6
RGB color: Color [Empty]
*/
{{< /highlight >}}

### Added a new public property FindReplaceOptions.SmartParagraphBreakReplacement

Related issue: WORDSNET-21329

Added a new public property to FindReplaceOptions object:

{{< highlight csharp >}}
/// <summary>
/// <para>Gets or sets a boolean value indicating either it is allowed to replace paragraph break
/// when there is no next sibling paragraph.</para>
/// <para>The default value is <c>false</c>.</para>
/// </summary>
/// <remarks>
/// This option allows to replace paragraph break when there is no next sibling paragraph to which all child
/// nodes can be moved, by finding any (not necessarily sibling) next paragraph after the paragraph being replaced.
/// </remarks>
public bool SmartParagraphBreakReplacement { get; set; }
{{< /highlight >}}

Use Case: Explains how to use SmartParagraphBreakReplacement property.

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Create two tables with paragraph and inner table in first cell:
// ┌───────────────────────┐
// │ TEXT1¶                │
// │ ┌───────────────────┐ │
// │ |¶                  | |
// | └───────────────────┘ │
// └───────────────────────┘
// ┌───────────────────────┐
// │ TEXT2¶                │
// │ ┌───────────────────┐ │
// │ |¶                  | |
// | └───────────────────┘ │
// └───────────────────────┘

builder.StartTable();
builder.InsertCell();
builder.Write("TEXT1");
builder.StartTable();
builder.InsertCell();
builder.EndTable();
builder.EndTable();
builder.Writeln();

builder.StartTable();
builder.InsertCell();
builder.Write("TEXT2");
builder.StartTable();
builder.InsertCell();
builder.EndTable();
builder.EndTable();
builder.Writeln();

FindReplaceOptions options = new FindReplaceOptions();
// When the following option is set to 'true',
// Aspose.Words will remove paragraph's text completely with its paragraph mark.
options.SmartParagraphBreakReplacement = true;
doc.Range.Replace(new Regex(@"TEXT1&p"), "", options);

// But if the option is set to 'false',
// Aspose.Words will mimic Word and remove only paragraph's text and leaves the paragraph mark intact.
options.SmartParagraphBreakReplacement = false;
doc.Range.Replace(new Regex(@"TEXT2&p"), "", options);

doc.Save("out.docx");

// This code example produces the following results:

// ┌───────────────────────┐
// │ ┌───────────────────┐ │
// │ |¶                  | |
// | └───────────────────┘ │
// └───────────────────────┘

// ┌───────────────────────┐
// │ ¶                     │
// │ ┌───────────────────┐ │
// │ |¶                  | |
// | └───────────────────┘ │
// └───────────────────────┘
{{< /highlight >}}

### Added SaveOptions.CustomTimeZoneInfo property

Related issue: WORDSNET-20863

SaveOptions.CustomTimeZoneInfo property has been added to set custom timezone when SdtType.Date structured document tag updated from custom XML.

Default value is TimeZoneInfo.Local which means that date is saved using system local timezone.

Use Case:

{{< highlight csharp >}}
Document doc = new Document("DocumentContainingSdtDate.docx");

SaveOptions so = SaveOptions.CreateSaveOptions(SaveFormat.Pdf);
so.CustomTimeZoneInfo = TimeZoneInfo.CreateCustomTimeZone("Auckland", new TimeSpan(+13 /* New Zeland - Auckland */, 0, 0), "Auckland", "Auckland");

// SdtType.Date content control value will be adjusted to Auckland timezone regardless of which system local timezone set.
doc.Save("output.pdf", so);
{{< /highlight >}}

Please note this option is available in either .NET framework starting from 3.5 version or .NET Standard.

### The behavior of DocumentBuilder.MoveToParagraph and DocumentBuilder.MoveToCell methods was changed

Related issue: WORDSNET-10148

Now the methods DocumentBuilder.MoveToParagraph and DocumentBuilder.MoveToCell support any character indexes, not only 0 and -1.

{{< highlight csharp >}}
/// <summary>
/// Moves the cursor to a paragraph in the current section.
/// </summary>
/// <remarks>
/// <p>The navigation is performed inside the current story of the current section.
/// That is, if you moved the cursor to the primary header of the first section,
/// then paragraphIndex specified the index of the paragraph inside that header
/// of that section.</p>
/// <p>When paragraphIndex is greater than or equal to 0, it specifies an index from
/// the beginning of the section with 0 being the first paragraph. When paragraphIndex is less than 0,
/// it specified an index from the end of the section with -1 being the last paragraph.</p>
/// </remarks>
/// <param name="paragraphIndex">The index of the paragraph to move to.</param>
/// <param name="characterIndex">The index of the character inside the paragraph.
/// A negative value allows you to specify a position from the end of the paragraph. Use -1 to move to the end of
/// the paragraph.</param>
public void MoveToParagraph(int paragraphIndex, int characterIndex);

/// <summary>
/// Moves the cursor to a table cell in the current section.
/// </summary>
/// <remarks>
/// <p>The navigation is performed inside the current story of the current section.</p>
/// <p>For the index parameters, when index is greater than or equal to 0, it specifies an index from
/// the beginning with 0 being the first element. When index is less than 0, it specified an index from
/// the end with -1 being the last element.</p>
/// </remarks>
/// <param name="tableIndex">The index of the table to move to.</param>
/// <param name="rowIndex">The index of the row in the table.</param>
/// <param name="columnIndex">The index of the column in the table.</param>
/// <param name="characterIndex">The index of the character inside the cell.
/// A negative value allows you to specify a position from the end of the cell. Use -1 to move to the end of
/// the cell.</param>
public void MoveToCell(int tableIndex, int rowIndex, int columnIndex, int characterIndex)
{{< /highlight >}}

Use Case:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.Writeln("Allows moving to any position in a paragraph.");

builder.MoveToParagraph(0, 14);
builder.Font.Bold = true;
builder.Write("the cursor ");

builder.MoveToParagraph(0, -2);
builder.Font.Italic = true;
builder.Write(" or cell");

Paragraph paragraph = doc.FirstSection.Body.Paragraphs[0];
Console.Write(paragraph.GetText()); // Writes: Allows moving the cursor to any position in a paragraph or cell.

doc.Save(dir + "Out.docx");
{{< /highlight >}}

### Removed obsolete FieldToc.IsPageNumberOmittingLevelRangeSpecified property

Related issue: WORDSNET-21154

Removed obsolete property from the FieldToc class:

{{< highlight csharp >}}
[Obsolete("This property is obsolete. Please use PageSet property instead.")]
public bool IsPageNumberOmittingLevelRangeSpecified { get; }
{{< /highlight >}}

### Supported dynamic adding of combobox and dropdown list items for LINQ Reporting Engine

Related issue: WORDSNET-21363

The ["Adding Combobox and Dropdown List Items Dynamically"](/words/java/working-with-content-controls/#adding-combobox-and-dropdown-list-items-dynamically) section of the engine's documentation was updated to describe the change.

