---
title: Aspose.Words for C++ 23.2 Release Notes
description: "Aspose.Words for C++ 23.2 Release Notes – the latest updates and fixes."
type: docs
weight: 60
url: /cpp/aspose-words-for-cpp-23-2-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for C++ 23.2](https://www.nuget.org/packages/Aspose.Words.Cpp/23.2.0).

{{% /alert %}}

## Major Features

There are 75 improvements and fixes in this regular monthly release. The most notable are:

- MOBI (also called PRC, AZW - Amazon Kindle's proprietary e-book file format) is now supported for import and export.
- Added an ability to specify the character spacing adjustment of a document.
- Provided the way to instruct Aspose.Words whether to include textboxes, footnotes and endnotes in word count statistics.
- Introduced the new option for the document style, which allows specifying whether this style is automatically redefined based on the appropriate value.
- Significantly improved chart rendering.
- Implemented support for "Lay out footnotes the way Word 6.x/95/97 does" compatibility option.

## Full list of changes

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues, covering all changes in this release.</summary>

1. Make the Document.DocPr.DoNotIncludeSubDocsInStats property public
2. Count words from Footnotes and Endnotes
3. Add support for saving to MOBI
4. Provide functionality to merge PDF documents
5. Provide public API to get/set characterSpacingControl
6. Compress generated AZW3 documents
7. Implement relative coordinates support for rendering radial gradient brushes
8. Support rendering of the trendline equation
9. Support endering of the trendline R-squared value
10. Support rendering trendline equation and R-squared value on chart
11. Rendering of power trendline label
12. Rendering of polynomial trendline label
13. Prepare .Net 7 build and tests
14. Rendering of logarithmic trendline label
15. Rendering of exponential trendline label
16. Provide an ability of lazy document preview rendering
17. HTML to Word to PDF - Inline Anchor Tags
18. Load fonts in FontSearchInfoLoader in parallel
19. Support "Lay out footnotes the way Word 6.x/95/97 does" compatibility option
20. Add bookmarks for imported HTML elements with "id" attributes so that they can be referenced by hyperlinks in the same document
21. DOCX->HTML->DOCX: Preserve TOC field codes
22. Lowered inline image is improperly imported from HTML
23. Manipulations with e.Node (on NodeInserted and NodeInserting events) have no effect in the result document
24. Issue with Document.ExtractPages
25. Different tab spaces inside the same ordered list
26. Document with embedded fonts is rendered improperly
27. Bullet point missing when mapping input XML to SDT
28. Image cropping is lost after open/save RTF document
29. Aspose.Words improperly updates formula fields hen group separator is used in numbers
30. Header row is doubled after using ExtractPages method
31. BadImageFormatException is thrown when using Aspose.Words.Shaping.Harfbuzz in Web application
32. HarfBuzz does not work in .NET Web Application
33. Document comparison produces unnecessary revisions
34. FileCorruptedException is thrown upon loading DOCX document with HTML altChunk
35. Position of footnote is incorrect after rendering
36. Hanging indentation is lost after open/save DOCX document
37. DOCX to PDF: Extra page is added upon conversion
38. "TypeError: unknown wrapper type" error when try setting LayoutEnumerator.current
39. Line count is incorrect with sub-docs included in statistics
40. ArgumentException: 'Parameter is not valid.' is thrown upon converting DOCX to PDF
41. LINQ Reporting Engine - JsonDataSource gets confused about objects
42. Distorted image when converting from DOCX to HTML
43. DOCX to HTML: Document not split by headings
44. Stamp Image should be transparent in Html Fixed
45. Radial gradients are rendered incorrectly
46. Footer is lost after rendering ODT document
47. Aspose.Words replace behavior differs from MS Word when matched text contains a shape
48. Chart contents are lost after saving DOCX to PDF
49. Trend-line Label of chart is lost after conversion from DOCX to HTML
50. Trendline Equation Label Data (Formulae) of Chart in Word DOCX missing in PDF
51. Chart element missing in AW output conversion from DOCX to PDF
52. Data of Chart Labels missing in PDF
53. Chart series is lost after conversion from DOCX to PDF
54. Colors of image are inverted after conversion of PDF to DOCX
55. OverflowException is thrown upon comparing documents
56. SDT dropdown list item with empty value is lost after open/save document
57. ArgumentOutOfRangeException when Range.Replace is sued with "A*" regex
58. Update Noto fallback table to use new fonts
59. PDF to PDF with signing: Formatting issues
60. ArgumentOutOfRangeException when converting DOCX to PDF
61. FileCorruptedException is thrown upon loading DOCX document
62. DOCX->HTML->DOCX: Footer differences
63. NullReferenceException is thrown upon calling UpdatePageLayout after comparing documents
64. Parenthesis in RTL document are reversed when render the document with HarfBuzz text shaping
65. Calibri (Body) fonts is substituted with Times New Roman upon rendering the document
66. Make Style.AutomaticallyUpdate property public
67. Word to PDF: links are not tagged
68. Invalid positioning of signature
69. Inconsistent result when use number formats in LINQ Reporting Engine and Mail Merge
70. Link is truncated in PDF document
71. Inaccurate table size when inserting HTML string into another table
72. ArgumentOutOfRangeException is thrown upon rendering documents
73. Unable load harfbuzz lib in docker
74. TOC and List Numbering issues during Word-HTML-Word round-trip
75. List item's indent is incorrect after DOCX-HTML-DOCX roundtrip
76. List labels are exported incorrectly when document is save to HTML using Node.ToString
77. Image in header is flipped on PDF import

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.2. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added public property Document.IncludeTextboxesFootnotesEndnotesInStat

The following public property was added to the **Aspose.Words.Document** class:

{{< highlight csharp >}}
/// <summary>
/// Specifies whether to include textboxes, footnotes and endnotes in word count statistics.
/// </summary>
bool get_IncludeTextboxesFootnotesEndnotesInStat();
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to include or exclude textboxes, footnotes and endnotes from word count statistics. Please see the following code example:

{{% /alert %}}

{{< highlight csharp >}}
System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>();
System::SharedPtr<Aspose::Words::DocumentBuilder> builder = System::MakeObject<Aspose::Words::DocumentBuilder>(doc);

builder->Writeln(u"Lorem ipsum");
builder->InsertFootnote(Aspose::Words::Notes::FootnoteType::Footnote, u"sit amet");

// Check the option is set to 'false' by default when a new document is created.
System::Console::WriteLine(u"By default for new document this option is set to '{0}'", doc->get_IncludeTextboxesFootnotesEndnotesInStat());
doc->UpdateWordCount();
System::Console::WriteLine(u"Words count without textboxes, footnotes and endnotes: {0}", doc->get_BuiltInDocumentProperties()->get_Words());

// Change option.
doc->set_IncludeTextboxesFootnotesEndnotesInStat(true);
doc->UpdateWordCount();

System::Console::WriteLine(u"Words count with textboxes, footnotes and endnotes: {0}", doc->get_BuiltInDocumentProperties()->get_Words());

/* This code produces the following output:
By default for new document this option is set to 'False'
Words count without textboxes, footnotes and endnotes: 2
Words count with textboxes, footnotes and endnotes: 4
*/
{{< /highlight >}}

### Added public property Document.JustificationMode

A new public property **JustificationMode** has been added to the **Document** class:

{{< highlight csharp >}}
/// Gets the character spacing adjustment of a document.
Aspose::Words::Settings::JustificationMode get_JustificationMode();

/// Sets the character spacing adjustment of a document.
void set_JustificationMode(Aspose::Words::Settings::JustificationMode value);
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to get and set the character spacing adjustment of a document. Please see the following code example:

{{% /alert %}}

{{< highlight csharp >}}
System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(u"in.docx");

// Getting JustificationMode.
Aspose::Words::Settings::JustificationMode justificationMode = doc->get_JustificationMode();
if (justificationMode == Aspose::Words::Settings::JustificationMode::Expand)
{
    // Setting JustificationMode.
    doc->set_JustificationMode(Aspose::Words::Settings::JustificationMode::Compress);
}
{{< /highlight >}}

### Added public property Style.AutomaticallyUpdate

A new public property **AutomaticallyUpdate** has been added to thr **Style** class:

{{< highlight csharp >}}
/// Specifies whether this style is automatically redefined based on the appropriate value.
///
/// If the property value is set to true, MS Word automatically redefines the current style when
/// the appropriate paragraph formatting has been changed.
///
/// AutomaticallyUpdate property is applicable to paragraph styles only.
///
/// The default value is <c>%false</c>.
bool get_AutomaticallyUpdate() const;

/// Setter for Aspose::Words::Style::get_AutomaticallyUpdate
void set_AutomaticallyUpdate(bool value);
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to get and set **AutomaticallyUpdate** property of a Style. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight csharp >}}
System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(u"in.docx");
// Getting AutomaticallyUpdate.
if (!doc->get_Styles()->idx_get(Aspose::Words::StyleIdentifier::Normal)->get_AutomaticallyUpdate())
{
    System::SharedPtr<Aspose::Words::Style> style = doc->get_Styles()->Add(Aspose::Words::StyleType::Paragraph, u"Redefined");
    style->set_BaseStyleName(u"Normal");
    // Setting AutomaticallyUpdate.
    style->set_AutomaticallyUpdate(true);
}
{{< /highlight >}}

### Added support for MOBI export

Aspose.Words now can export documents to MOBI file format.

MOBI (also called PRC, AZW) is Amazon Kindle's proprietary e-book file format.

The following publicly visible enum values were added:

{{< highlight csharp >}}
FileFormat::Mobi
SaveFormat::Mobi
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to save a document to MOBI file format. Please see the following code example:

{{% /alert %}}

{{< highlight csharp >}}
System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(u"in.docx");
doc->Save(u"out.mobi");
{{< /highlight >}}

or

{{< highlight csharp >}}
System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(u"in.docx");
System::SharedPtr<Aspose::Words::Saving::HtmlSaveOptions> options = System::MakeObject<Aspose::Words::Saving::HtmlSaveOptions>(Aspose::Words::SaveFormat::Mobi);
doc->Save(u"out.mobi", options);
{{< /highlight >}}

**HtmlSaveOptions** properties that are not applicable for MOBI export:

- ImagesFolder
- ImagesFolderAlias
- FontsFolder
- FontsFolderAlias
- ResourceFolder
- ResourceFolderAlias
- ExportImagesAsBase64 (always false)
- ExportFontsAsBase64 (always false)
- ExportDropDownFormFieldAsText (always true)
- ExportTextInputFormFieldAsText (always true)
- ExportRoundtripInformation (always false)
- CssStyleSheetType (always CssStyleSheetType::Inline)
- CssStyleSheetFileName
- DocumentSplitCriteria (always DocumentSplitCriteria::None)
- ExportListLabels (always ExportListLabels::ByHtmlTags)
- ExportRelativeFontSize (always false)

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release. The missing features will be added in future releases.

- The current release does not support Metered license.
- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ doesn't have common API for DB like .NET System.Data.
- The current release supports Microsoft Visual C++ version 2017 or higher.
- The current release supports GCC 6.3 or higher and Clang 3.9.1 or higher on Linux and only for the x86_x64 platform.
- The current release supports macOS Big Sur or later (11.5+) for 64-bit Intel Mac platform.
