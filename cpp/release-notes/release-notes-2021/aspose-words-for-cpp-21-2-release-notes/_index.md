---
title: Aspose.Words for C++ 21.2 Release Notes
second_title: Aspose.Words for C++
articleTitle: Aspose.Words for C++ 21.2 Release Notes
linktitle: Aspose.Words for C++ 21.2 Release Notes
description: "Aspose.Words for C++ 21.2 Release Notes – the latest updates and fixes."
type: docs
weight: 60
url: /cpp/aspose-words-for-cpp-21-2-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for C++ 21.2](https://www.nuget.org/packages/Aspose.Words.Cpp/21.2.0)

{{% /alert %}}

## Major Features

We have added the following features from Aspose.Words for .NET on this regular monthly release:

- Implemented API to manipulate themed properties of `Font` object.
- Added an option to update `CreatedTime` property upon saving.
- `SaveOptions` was extended with new `CustomTimeZoneInfo` option.
- `FindReplaceOptions` class was extended with a new `SmartParagraphBreakReplacement` option.

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release.
The missing features will be added in future releases.

- The current release does not support Metered license.
- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support advanced typography based on HarfBuzz shaper.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ doesn't have common API for DB like .NET System.Data.
- The current release supports Microsoft Visual C++ version 2017 or higher.
- The current release supports GCC 6.3 or higher and Clang 3.9.1 or higher on Linux and only for the x86_x64 platform.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
| WORDSCPP-1047 |	Memory leak in Aspose.Words for C++	Bug | Bug |
| WORDSNET-6146 | Allow the extraction of visible plain text from an OLE object | New Feature |
| WORDSNET-11848 | Add a saveoptions either to mimics MS Word behavior or not for created,   modified and printed dates | New Feature |
| WORDSNET-6125 | Add an option to export images in the document to HTML as SVG format | New Feature |
| WORDSNET-10148 | Provide ability to move to a particular character inside the Paragraph | New Feature |
| WORDSNET-20863 | Content control date is changed when DOCX is converted to PDF at Azure | New Feature |
| WORDSNET-21639 | Range.Replace throws System.IndexOutOfRangeException when LegacyMode =   false | New Feature |
| WORDSNET-21183 | Set custom font style as Linked to the Themes font does not work | New Feature |
| WORDSNET-9605 | Support rendering of DrawingML 3D Effects | Enhancement |
| WORDSNET-15833 | Improve the compatibility of rendering shape-lines created in MS Word 97 | Enhancement |
| WORDSNET-10441 | Support drawing objects for Word 6.0/95 | Enhancement |
| WORDSNET-2799 | Try to recover damaged documents on import | Enhancement |
| WORDSNET-1738 | Optimize memory usage during saving DOCX files | Enhancement |
| WORDSNET-21652 | No generator name is written to XamlFixed/XamlFlow/XamlFlowPack/HtmlFixed   documents | Enhancement |
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

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 21.2. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.


### Added a new public property `SaveOptions.UpdateCreatedTimeProperty`

Related issue: WORDSNET-11848

Added a new public property `SaveOptions::UpdateCreatedTimeProperty`:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value determining whether the BuiltInDocumentProperties.CreatedTime property is updated before saving.
/// Default value is false.
/// </summary>
public bool UpdateCreatedTimeProperty
{{< /highlight >}}

Use Case: 

{{< highlight cpp >}}
auto doc = MakeObject<Document>(docPath);
auto saveOptions = MakeObject<PdfSaveOptions>();
saveOptions->set_UpdateLastPrintedProperty(true);
doc->Save(pdfPath, saveOptions);
{{< /highlight >}}

### Added new public properties allowing to manipulate themed properties of `Font` object

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

{{< highlight cpp >}}
auto doc = MakeObject<Document>(u"input.docx");
auto builder = MakeObject<DocumentBuilder>(doc);
builder->MoveToDocumentEnd();
builder->Writeln();

// Create some style with theme font properties.
auto style = doc->get_Styles()->Add(StyleType::Paragraph, u"ThemedStyle");
style->get_Font()->set_ThemeFont(ThemeFont::Major);
style->get_Font()->set_ThemeColor(ThemeColor::Accent5);
style->get_Font()->set_TintAndShade(0.3);

builder->get_ParagraphFormat()->set_StyleName(u"ThemedStyle");
builder->Writeln(u"Text with themed style");

// Get just inserted run.
auto run = DynamicCast<Run>(DynamicCast<Paragraph>(builder->get_CurrentParagraph()->get_PreviousSibling())->get_FirstChild());

std::cout << "Theme color: " << ObjectExt::ToString(run->get_Font()->get_ThemeColor()).ToUtf8String() << '\n'
std::cout << "Color: " << ObjectExt::ToString(run->get_Font()->get_Color()).ToUtf8String() << "\n\n"; 

std::cout << "TintAndShade: " << run->get_Font()->get_TintAndShade() << '\n';

std::cout << "Theme font: " << run->get_Font()->get_ThemeFont().ToUtf8String() << '\n';
std::cout << "Font: " << run->get_Font()->get_Name().ToUtf8String() << "\n\n";

std::cout << "Theme font Ascii: " << run->get_Font()->get_ThemeFontAscii().ToUtf8String() << '\n';
std::cout << "Font Ascii: " << run->get_Font()->get_NameAscii().ToUtf8String() << "\n\n";

std::cout << "Theme font Bi: " << run->get_Font()->get_ThemeFontBi().ToUtf8String() << '\n';
std::cout << "Font Bi: " << run->get_Font()->get_NameBi().ToUtf8String() << "\n\n";

std::cout << "Theme font EastAsian: " << run->get_Font()->get_ThemeFontFarEast().ToUtf8String() << '\n';
std::cout << "Font EastAsian: " << run->get_Font()->get_NameFarEast().ToUtf8String() << "\n\n";

std::cout << "Theme font Other: " << run->get_Font()->get_ThemeFontOther().ToUtf8String() << '\n';
std::cout << "Font Other: " << run->get_Font()->get_NameOther().ToUtf8String() << "\n\n";

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

{{< highlight cpp >}}
// Create new document with themes.
auto doc = MakeObject<Document>();
doc->get_Theme()->get_MinorFonts()->set_Latin(u"Algerian");
doc->get_Theme()->get_MinorFonts()->set_EastAsian(u"Aharoni");
doc->get_Theme()->get_MinorFonts()->set_ComplexScript(u"Andalus");

// Check original theme font.
auto font = doc->get_Styles()->idx_get(u"Normal")->get_Font();
std::cout << "Originally the Normal style theme font is: " << ObjectExt::ToString(font->get_ThemeFont()).ToUtf8String() << '\n';

// Apply theme font 'Minor'
font->set_ThemeFont(ThemeFont::Minor);
std::cout << "'Minor' theme font is applied:\n"
std::cout << "Theme font: " << ObjectExt::ToString(font->get_ThemeFont()).ToUtf8String() << '\n';
std::cout << "Font: " << font->get_Name() << "\n\n";

std::cout << "Theme font Ascii: " << font->get_ThemeFontAscii().ToUtf8String() << '\n';
std::cout << "Font Ascii: " << font->get_NameAscii().ToUtf8String() << "\n\n";

std::cout << "Theme font Bi: " << font->get_ThemeFontBi().ToUtf8String() << '\n';
std::cout << "Font Bi: " << font->get_NameBi().ToUtf8String() << "\n\n";

std::cout << "Theme font EastAsian: " << font->get_ThemeFontFarEast().ToUtf8String() << '\n';
std::cout << "Font EastAsian: " << font->get_NameFarEast().ToUtf8String() << "\n\n";

std::cout << "Theme font Other: " << font->get_ThemeFontOther().ToUtf8String() << '\n';
std::cout << "Font Other: " << font->get_NameOther().ToUtf8String() << "\n\n";

// Set non-theme font.
font->set_ThemeFont(ThemeFont::None);
std::cout << "'None' theme font is applied:\n";
std::cout << "Theme font: " << ObjectExt::ToString(font->get_ThemeFont()).ToUtf8String() << '\n';
std::cout << "Font: " << font->get_Name() << "\n\n";

std::cout << "Theme font Ascii: " << font->get_ThemeFontAscii().ToUtf8String() << '\n';
std::cout << "Font Ascii: " << font->get_NameAscii().ToUtf8String() << "\n\n";

std::cout << "Theme font Bi: " << font->get_ThemeFontBi().ToUtf8String() << '\n';
std::cout << "Font Bi: " << font->get_NameBi().ToUtf8String() << "\n\n";

std::cout << "Theme font EastAsian: " << font->get_ThemeFontFarEast().ToUtf8String() << '\n';
std::cout << "Font EastAsian: " << font->get_NameFarEast().ToUtf8String() << "\n\n";

std::cout << "Theme font Other: " << font->get_ThemeFontOther().ToUtf8String() << '\n';
std::cout << "Font Other: " << font->get_NameOther().ToUtf8String() << "\n\n";
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
auto doc = MakeObject<Document>();
doc->get_Theme()->get_MinorFonts()->set_Latin(u"Algerian");
doc->get_Theme()->get_MinorFonts()->set_EastAsian(u"Aharoni");
doc->get_Theme()->get_MinorFonts()->set_ComplexScript(u"Andalus");

// Check original theme font.
auto font = doc->get_Styles()->idx_get(u"Normal")->get_Font();
std::cout << "Originally the Normal style theme font is: " << ObjectExt::ToString(font->get_ThemeFont()).ToUtf8String() << '\n';

// Apply theme font 'Minor'
font->set_ThemeFont(ThemeFont::Minor);
std::cout << "'Minor' theme font is applied:\n"
std::cout << "Theme font: " << ObjectExt::ToString(font->get_ThemeFont()).ToUtf8String() << '\n';
std::cout << "Font: " << font->get_Name() << "\n\n";

std::cout << "Theme font Ascii: " << font->get_ThemeFontAscii().ToUtf8String() << '\n';
std::cout << "Font Ascii: " << font->get_NameAscii().ToUtf8String() << "\n\n";

std::cout << "Theme font Bi: " << font->get_ThemeFontBi().ToUtf8String() << '\n';
std::cout << "Font Bi: " << font->get_NameBi().ToUtf8String() << "\n\n";

std::cout << "Theme font EastAsian: " << font->get_ThemeFontFarEast().ToUtf8String() << '\n';
std::cout << "Font EastAsian: " << font->get_NameFarEast().ToUtf8String() << "\n\n";

std::cout << "Theme font Other: " << font->get_ThemeFontOther().ToUtf8String() << '\n';
std::cout << "Font Other: " << font->get_NameOther().ToUtf8String() << "\n\n";

// Set non-theme font name.
font->set_Name(u"Arial");
std::cout << "Non-themed font name is applied:\n";
std::cout << "Theme font: " << ObjectExt::ToString(font->get_ThemeFont()).ToUtf8String() << '\n';
std::cout << "Font: " << font->get_Name() << "\n\n";

std::cout << "Theme font Ascii: " << font->get_ThemeFontAscii().ToUtf8String() << '\n';
std::cout << "Font Ascii: " << font->get_NameAscii().ToUtf8String() << "\n\n";

std::cout << "Theme font Bi: " << font->get_ThemeFontBi().ToUtf8String() << '\n';
std::cout << "Font Bi: " << font->get_NameBi().ToUtf8String() << "\n\n";

std::cout << "Theme font EastAsian: " << font->get_ThemeFontFarEast().ToUtf8String() << '\n';
std::cout << "Font EastAsian: " << font->get_NameFarEast().ToUtf8String() << "\n\n";

std::cout << "Theme font Other: " << font->get_ThemeFontOther().ToUtf8String() << '\n';
std::cout << "Font Other: " << font->get_NameOther().ToUtf8String() << "\n\n";

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

{{< highlight cpp >}}
auto doc = MakeObject<Document>();

// Check original theme color.
auto font = doc->get_Styles()->idx_get(u"Normal")->get_Font();
std::cout << "Originally the Normal style theme color is: " << ObjectExt::ToString(font->get_ThemeColor()).ToUtf8String()
          << " and RGB color is: "<< ObjectExt::ToString(font->get_Color()).ToUtf8String() << '\n';

// Apply theme color.
font->set_ThemeColor(ThemeColor::Accent2);
std::cout << "'Accent2' theme color is applied:\n";
std::cout << "Theme color: " << ObjectExt::ToString(font->get_ThemeColor()).ToUtf8String() << '\n';
std::cout << "RGB color: " << ObjectExt::ToString(font->get_Color()).ToUtf8String() << "\n\n";

// Set theme color back to 'None'.
font->set_ThemeColor(ThemeColor::None);
std::cout << "Theme color 'None' is applied:\n";
std::cout << "Theme color: " << ObjectExt::ToString(font->get_ThemeColor()).ToUtf8String() << '\n';
std::cout << "RGB color: " << ObjectExt::ToString(font->get_Color()).ToUtf8String() << "\n\n";
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

{{< highlight cpp >}}
auto doc = MakeObject<Document>();

// Check original theme color.
auto font = doc->get_Styles()->idx_get(u"Normal")->get_Font();

std::cout << "Originally the Normal style theme color is: " << ObjectExt::ToString(font->get_ThemeColor()).ToUtf8String()
          << " and RGB color is: "<< ObjectExt::ToString(font->get_Color()).ToUtf8String() << '\n';

// Apply theme color.
font->set_ThemeColor(ThemeColor::Accent2);
std::cout << "'Accent2' theme color is applied:\n";
std::cout << "Theme color: " << ObjectExt::ToString(font->get_ThemeColor()).ToUtf8String() << '\n';
std::cout << "RGB color: " << ObjectExt::ToString(font->get_Color()).ToUtf8String() << "\n\n";

// Set simple RGB color.
font->set_Color(Color->get_Blue());
font->set_ThemeColor(ThemeColor::None);
std::cout << "RGB color is applied:\n";
std::cout << "Theme color: " << ObjectExt::ToString(font->get_ThemeColor()).ToUtf8String() << '\n';
std::cout << "RGB color: " << ObjectExt::ToString(font->get_Color()).ToUtf8String() << "\n\n";
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

{{< highlight cpp >}}
auto doc = MakeObject<Document>();
auto font = doc->get_Styles()->idx_get(u"Normal")->get_Font();

font->set_ThemeColor(ThemeColor::Accent6);
font->set_TintAndShade(-0.25);

std::cout << "TintAndShade is set to " font->get_TintAndShade() << '\n';
std::cout << "Theme color: " << ObjectExt::ToString(font->get_ThemeColor()).ToUtf8String() << '\n';
std::cout << "RGB color: " << ObjectExt::ToString(font->get_Color()).ToUtf8String() << "\n\n";
/*
This code example produces the following results:

TintAndShade is set to -0.25
Theme color: Accent6
RGB color: Color [Empty]
*/
{{< /highlight >}}

### Added a new public property `FindReplaceOptions::SmartParagraphBreakReplacement`

Related issue: WORDSNET-21329

Added a new public property to `FindReplaceOptions` object:

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

{{< highlight cpp >}}
auto doc = MakeObject<Document>();
auto builder = MakeObject<DocumentBuilder>(doc);

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

builder->StartTable();
builder->InsertCell();
builder->Write(u"TEXT1");
builder->StartTable();
builder->InsertCell();
builder->EndTable();
builder->EndTable();
builder->Writeln();

builder->StartTable();
builder->InsertCell();
builder->Write(u"TEXT2");
builder->StartTable();
builder->InsertCell();
builder->EndTable();
builder->EndTable();
builder->Writeln();

auto options = MakeObject<FindReplaceOptions>();
// When the following option is set to 'true',
// Aspose.Words will remove paragraph's text completely with its paragraph mark.
options->set_SmartParagraphBreakReplacement(true);
doc->get_Range()->Replace(MakeObject<Regex>(uR("TEXT1&p"), u"", options);

// But if the option is set to 'false',
// Aspose.Words will mimic Word and remove only paragraph's text and leaves the paragraph mark intact.
options->set_SmartParagraphBreakReplacement(false);
doc->get_Range()->Replace(MakeObject<Regex>(uR("TEXT2&p"), u"", options);

doc->Save(u"out.docx");

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

### Added `SaveOptions.CustomTimeZoneInfo` property

Related issue: WORDSNET-20863

`SaveOptions.CustomTimeZoneInfo` property has been added to set custom timezone when `SdtType.Date` structured document tag updated from custom XML.

Default value is `TimeZoneInfo.Local` which means that date is saved using system local timezone.

Use Case:

{{< highlight cpp >}}
auto doc = MakeObject<Document>("DocumentContainingSdtDate.docx");

auto so = SaveOptions::CreateSaveOptions(SaveFormat::Pdf);
so->set_CustomTimeZoneInfo(TimeZoneInfo::CreateCustomTimeZone(u"Auckland", TimeSpan(+13 /* New Zeland - Auckland */, 0, 0), u"Auckland", u"Auckland");

// SdtType.Date content control value will be adjusted to Auckland timezone regardless of which system local timezone set.
doc->Save(u"output.pdf", so);
{{< /highlight >}}

### The behavior of `DocumentBuilder::MoveToParagraph` and `DocumentBuilder::MoveToCell` methods was changed

Related issue: WORDSNET-10148

Now the methods `DocumentBuilder::MoveToParagraph` and `DocumentBuilder::MoveToCell` support any character indexes, not only 0 and -1.

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

{{< highlight cpp >}}
auto doc = MakeObject<Document>();
auto builder = MakeObject<DocumentBuilder>(doc);

builder->Writeln(u"Allows moving to any position in a paragraph.");

builder->MoveToParagraph(0, 14);
builder->get_Font()->set_Bold(true);
builder->Write(u"the cursor ");

builder->MoveToParagraph(0, -2);
builder->get_Font()->set_Italic(true);
builder->get_Write()(u" or cell");

auto paragraph = doc->get_FirstSection()->get_Body()->get_Paragraphs()->idx_get(0);
std::cout << paragraph->GetText().ToUtf8String() << '\n'; // Writes: Allows moving the cursor to any position in a paragraph or cell.

doc->Save(dir + u"Out.docx");
{{< /highlight >}}

### Removed obsolete `FieldToc::IsPageNumberOmittingLevelRangeSpecified` property

Related issue: WORDSNET-21154

Removed obsolete property from the `FieldToc` class:

{{< highlight csharp >}}
[Obsolete("This property is obsolete. Please use PageSet property instead.")]
public bool IsPageNumberOmittingLevelRangeSpecified { get; }
{{< /highlight >}}
