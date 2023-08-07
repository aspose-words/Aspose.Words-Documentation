---
title: Aspose.Words for C++ 23.7 Release Notes
description: "Aspose.Words for C++ 23.7 Release Notes – the latest updates and fixes."
type: docs
weight: 40
url: /cpp/aspose-words-for-cpp-23-7-release-notes/
---
{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for C++ 23.7](https://www.nuget.org/packages/Aspose.Words.Cpp/23.7.0).

{{% /alert %}}

## Major Features

There are 114 improvements and fixes in this regular monthly release. The most notable are:

- The possibility to save the document page or shape into EPS format has been implemented.
- The ability to retrieve the digital signature value from a digitally signed document as a byte array has been added.
- The Row and Cell classes have been extended with new public members.
- Mustache tags are now supported in the MailMerge.GetRegionsHierarchy and MailMerge.GetFieldNamesForRegion methods.

## Full list of changes

{{% alert color="secondary" %}}

<details><summary>Expand to view the full list of issues, covering all changes in this release.</summary>

1. Making Cell.PreviousCell, Cell.NextCell, Row.PreviousRow, Row.NextRow properties public
2. Consider providing a way to extract digital signature as byte array
3. Text is wrapped improperly in table cell
4. Right edge of shape is cut after rendering
5. Table column's width is incorrect after rendering.
6. Images are rendered improperly
7. Table is rendered a little narrower that leads to incorrect hyperlink wrapping
8. Table width is changed after redenring
9. Table layout is incorrect after rendering
10. Issue a warning when loading a fixed-page HTML document
11. Paragraphs are overlapped the Shape in output PDF
12. A Table moves towards the right page edge in PDF
13. Image in table is getting cut off in generated PDF
14. Text in footer is misplaced when converting a Word document to PDF
15. DOCM to PDF conversion issue with table rendering
16. HTML to PDF conversion : Table rendering
17. DOC to XPS conversion issue with table rendering
18. DOCX to PDF conversion issue with table's rendering
19. Table's width shrinks when images are present in cell
20. Image alignment issue in DOCX to PDF conversion
21. UpdateTableLayout method use in Word to PDF conversion
22. Paragraph is rendered on previous page
23. DOCX to HtmlFixed conversion issue with table position
24. Cell's text is wrapped to next line in output PDF
25. Images are overlapped after conversion from DOC to PDF
26. Pictures slightly overlap each other in PDF
27. DOCX to PDF conversion issue with table content
28. Table row appears on the 4th page in Word but on 5th in AW
29. Date in the header of document does not render correctly in output PDF
30. Support rendering to EPS
31. Incorrect table width in generated PDF
32. Shape (logo) position is changed after DOCX to PDF conversion
33. Picture shifts towards right page margin, causing partial rendering in PDF
34. Preserve Table Column widths in Landscape Section's Header during DOCM to PDF Conversion
35. UpdatePageLayout and UpdateTableLayout changed the printed document layout using .NET
36. Document.UpdateTableLayout changes the layout of document footer in output PDF
37. Image is cropped after DOCX to PDF conversion
38. Incorrect Table after conversion to PDF
39. Word to PDF transformation Table alignment issue in header
40. A design bug while converting a DOCX to PDF
41. The width of the cell is not correct when converting DOCX file to PDF
42. The logo shifts to the center in the PDF
43. Incorrect table column widths on DOCX to PDF conversion
44. Header on landscape page is rendered improperly
45. Header with table on landscape page is rendered improperly
46. Header layout changed when converting DOCX to PDF
47. Image is truncated upon rendering document
48. An empty page is rendered in PDF
49. Throw a better error message when reading corrupted MOBI file
50. Table is rendered slightly narrower than in source document
51. Text in table is wrapped incorrectly
52. Image in Header getting chopped off in Save as PDF
53. Image in table not centered when converting word to PDF
54. Document.UpdateTableLayout changes the layout of table in output PDF
55. Image inside table is cut off in PDF format
56. Right table border is not visible after rendering
57. Check whether customXxml part is required in AllStyles2003.docx resource
58. FindReplaceOptions.ApplyFont.Color is not applied
59. MailMerge.GetRegionsHierarchy and MailMerge.GetFieldNamesForRegion do not work with mustache syntax
60. Memory leak issue occurs in AW.NET while converting documents inside GroupDocs.Editor
61. Text is rendered as tofu
62. Text is rendered as tofu 2
63. Cell background is lost after conversion from DOCX to XLSX
64. Font style underline does not work
65. Rendering performance depredated in new version of Aspose.Words
66. OLE object extracted incorrectly from DOC created in WPS
67. InvalidCastException when saving HTML to MOBI
68. Images don't preserve hyperlinks when they are saved to SVG
69. Colors of image are inverted after conversion of MHT to PCL
70. DOCX merging issue
71. Error inserting SVG+XML image
72. REF field is not updated properly after first call of UpdateFields
73. TOC is updated improperly by Aspose.Words
74. MergeBarcode fields names are not listed in MailMerge.GetFieldNames()
75. Infinite loop while reading document with DML
76. HTML AltChunk loses text color after open/save document
77. Small caps text is rendered improperly
78. DOCX to PDF: some images inside tables are pushed back to the previous page
79. DOCX to PDF: Page missing after conversion
80. Widow/orphan rule not respected in a broken table cell on conversion to PDF
81. Chinese text is missed after rendering document
82. Incorrect bounds calculation if one of fraction parts has a different font size
83. Quality of graphics degrades after merging PDF documents
84. DOCX to PDF: Table overflows to the footer
85. PdfSaveOptions.OptimizeOutput produces incorrect output when Shaping.HarfBuzz is used
86. Image proportions are not preserved after rendering document
87. NullReferenceException is thrown upon updating words count
88. List is incorrectly formatted after export to HTML
89. List is formatted incorrectly after export to HTML
90. List is incorrect after export to HTML
91. Improve HTML list export
92. Aspose.Words.FileCorruptedException throwed opening HTML file
93. Incorrect position of the fraction line in the formula
94. Incorrect top and bottom offsets if the emedded image on top level of the math formula
95. InvalidCastException is thrown when try to move DocumentBuilder to a bookmark inside OfficeMath
96. DOCX to PDF: Text changes color
97. Operator glyphs (+,-), if they are part of a "inline" fraction, are changed after converting to PDF
98. File is mistakenly detected as PDF by Aspose.Words
99. Placeholder text lost after saving
100. Comparing the document with itself produces invisible revisions
101. Compatibility mode changes on saving HTML to DOCX
102. Make sure compatibility mode changes on saving HTML to DOCX
103. Incorrect percent numbers in pie chart
104. DOC to XPS conversion issue with table's text rendering
105. Font fallback does not work for Wingdings font
106. Cell margins change on saving from DOC to ODT
107. Wrong format when appending a document twice
108. DOCX to PDF: Symbols not converted correctly
109. Bullet formatting for the component content changed
110. NullReferenceException is thrown upon rendering document after removing table row
111. HTML is converted to the blank resulting DOCX
112. Default font family is written to LI element
113. Table row is moved to the previous page after rendering
114. Aspose.Words takes more time and memory over .NET Core

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.7. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added ability to get digital signature value from digitally signed document as byte array

Added ability to get a digital signature value from a digitally signed document into **Aspose.Words.DigitalSignatures.DigitalSignature** class:

{{< highlight cpp >}}

    /// Gets an array of bytes representing a signature value.
    ASPOSE_WORDS_SHARED_API const System::ArrayPtr<uint8_t>& get_SignatureValue() const;
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to obtain digital signature value as byte array from a document:

{{% /alert %}}

{{< highlight cpp >}}
    
    System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(System::String(u"document.docx"));

    for (auto&& digitalSignature : doc->get_DigitalSignatures())
    {
        System::String signatureValue = System::Convert::ToBase64String(digitalSignature->get_SignatureValue());
        System::Console::WriteLine(u"Base64 signature value is: {0}", signatureValue);
    }
    
    // The code produces the following output:
    // Base64 signature value is: AJjRFbflcj+H7VUZ9Q/9rpbavjT7TC10M5orYCRYnEIwyPCtTman8+na4ynclQtBFFgT7uJoHyuHStleXwnbbj6AVNp/B1oCtlEcg9t7WjsgLlm7LQsr6PCCCkgWYNEOwe3s6Wpfop9qkyEEBxATgfpfbbdodB/wO0elS/Ei+dfUmu
{{< /highlight >}}

### Added new EPS image format

The document page or shape could be saved into **EPS** format now. A new EPS value is added into **SaveFormat** enum.

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to save document as EPS image:

{{% /alert %}}

{{< highlight cpp >}}

    // Open some document.
    System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(System::String(u"document.docx"));

    // Save the second page as EPS image.
    System::SharedPtr<Aspose::Words::Saving::ImageSaveOptions> saveOptions = System::MakeObject<Aspose::Words::Saving::ImageSaveOptions>(Aspose::Words::SaveFormat::Eps);
    saveOptions->set_PageSet(System::MakeObject<Aspose::Words::Saving::PageSet>(1));
    doc->Save(u"image.eps", saveOptions);
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to save any particular shape as EPS image:

{{% /alert %}}

{{< highlight cpp >}}
    
    // Open some document.
    System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(System::String(u"document.docx"));
    
    // Save the shape as EPS image.
    System::SharedPtr<Aspose::Words::Saving::ImageSaveOptions> saveOptions = System::MakeObject<Aspose::Words::Saving::ImageSaveOptions>(Aspose::Words::SaveFormat::Eps);
    System::SharedPtr<Aspose::Words::Drawing::Shape> shape = System::ExplicitCast<Aspose::Words::Drawing::Shape>(doc->GetChild(Aspose::Words::NodeType::Shape, 0, true));
    System::SharedPtr<Aspose::Words::Rendering::ShapeRenderer> renderer = shape->GetShapeRenderer();
    renderer->Save(u"image.eps", saveOptions);
{{< /highlight >}}

### Added new public properties Row.NextRow, Row.PreviousRow, Cell.NextCell and Cell.PreviousCell

The following public properties have been added to the **Row** class:
{{< highlight cpp >}}

    /// Gets the next <see cref="Aspose::Words::Tables::Row">Row</see> node.
    ASPOSE_WORDS_SHARED_API System::SharedPtr<Aspose::Words::Tables::Row> get_NextRow();
    
    /// <summary>/// Gets the previous <see cref="Aspose::Words::Tables::Row">Row</see> node.
    ASPOSE_WORDS_SHARED_API System::SharedPtr<Aspose::Words::Tables::Row> get_PreviousRow();
{{< /highlight >}}

The following public properties have been added to the **Cell** class:
{{< highlight cpp >}}

    /// Gets the next <see cref="Aspose::Words::Tables::Cell">Cell</see> node.
    ASPOSE_WORDS_SHARED_API System::SharedPtr<Aspose::Words::Tables::Cell> get_NextCell();

    /// Gets the previous <see cref="Aspose::Words::Tables::Cell">Cell</see> node.
    ASPOSE_WORDS_SHARED_API System::SharedPtr<Aspose::Words::Tables::Cell> get_PreviousCell();
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to enumerate through all table cells:

{{% /alert %}}

{{< highlight cpp >}}

    System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(System::String(u"document.docx"));
    System::SharedPtr<Aspose::Words::Tables::Table> table = doc->get_FirstSection()->get_Body()->get_Tables()->idx_get(0);
    
    // Enumerate through all cells of the table.
    for (System::SharedPtr<Aspose::Words::Tables::Row> row = table->get_FirstRow(); row != nullptr; row = row->get_NextRow())
    {
        for (System::SharedPtr<Aspose::Words::Tables::Cell> cell = row->get_FirstCell(); cell != nullptr; cell = cell->get_NextCell())
        {
            System::Console::WriteLine(cell->GetText());
        }
    }
{{< /highlight >}}

### A warning is issued if loaded HTML document has fixed-page structure

Aspose.Words doesn't support loading of fixed-page HTML document (for example, documents that are produced when saving in **SaveFormat.HtmlFixed**).
If Aspose.Words detects that the loaded HTML document has fixed-page structure, it will issue the following warning:

{{< highlight cpp >}}

    WarningSource::Html
    WarningType::MajorFormattingLoss
    "The document is fixed-page HTML. Its structure may not be loaded correctly."
{{< /highlight >}}

### Supported mustache tags in the MailMerge.GetRegionsHierarchy and MailMerge.GetFieldNamesForRegion methods

Now the **MailMerge.GetRegionsHierarchy** method returns mustache regions and mustache fields when the **MailMerge.UseNonMergeFields** option is true.

Now the **MailMerge.GetFieldNamesForRegion** method accepts mustache region names and returns mustache field names when the **MailMerge.UseNonMergeFields** option is true.

The **MustacheTag** class has been introduced:
{{< highlight cpp >}}

    /// Represents "mustache" tag.
    class ASPOSE_WORDS_SHARED_CLASS MustacheTag : public System::Object
    {
    public:
    
        /// Gets the run that contains the beginning of the tag.
        ASPOSE_WORDS_SHARED_API const System::SharedPtr<Aspose::Words::Run>& get_ReferenceRun() const;
    
        /// Gets the zero-based starting position of the tag from the start of the <see cref="Aspose::Words::MailMerging::MustacheTag::get_ReferenceRun">ReferenceRun</see>.
        ASPOSE_WORDS_SHARED_API int32_t get_ReferenceOffset() const;
    
        /// Gets the text of the tag.
        ASPOSE_WORDS_SHARED_API System::String get_Text() const;
    };
{{< /highlight >}}

The StartMustacheTag, EndMustacheTag and MustacheTags properties have been added to the MailMergeRegionInfo class:
{{< highlight cpp >}}

    class ASPOSE_WORDS_SHARED_CLASS MailMergeRegionInfo : public System::Object
    {
    public:
        /// Returns a start "mustache" tag for the region.
        ASPOSE_WORDS_SHARED_API const System::SharedPtr<Aspose::Words::MailMerging::MustacheTag>& get_StartMustacheTag() const;
    
        /// Returns an end "mustache" tag for the region.
        ASPOSE_WORDS_SHARED_API const System::SharedPtr<Aspose::Words::MailMerging::MustacheTag>& get_EndMustacheTag() const;
    
        /// Returns a list of child "mustache" tags.
        ASPOSE_WORDS_SHARED_API const System::SharedPtr<System::Collections::Generic::IList<System::SharedPtr<Aspose::Words::MailMerging::MustacheTag>>>& get_MustacheTags() const;
    }
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to use MustacheTag:

{{% /alert %}}

{{< highlight cpp >}}

    System::SharedPtr<Aspose::Words::Document> document = System::MakeObject<Aspose::Words::Document>(System::String(u"document.docx"));
    document->get_MailMerge()->set_UseNonMergeFields(true);
    
    System::SharedPtr<Aspose::Words::MailMerging::MailMergeRegionInfo> hierarchy = document->get_MailMerge()->GetRegionsHierarchy();
    
    for (auto&& mustacheTag : System::IterateOver(hierarchy->get_MustacheTags()))
    {
        System::Console::WriteLine(mustacheTag->get_Text());
    }
    
    for (auto&& region : System::IterateOver(hierarchy->get_Regions()))
    {
        System::Console::WriteLine(region->get_StartMustacheTag()->get_Text());
        System::Console::WriteLine(region->get_EndMustacheTag()->get_Text());
    }
{{< /highlight >}}

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release. The missing features will be added in future releases.

- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ doesn't have common API for DB like .NET System.Data.
