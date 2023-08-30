---
title: Aspose.Words for C++ 23.8 Release Notes
description: "Aspose.Words for C++ 23.8 Release Notes – the latest updates and fixes."
type: docs
weight: 35
url: /cpp/aspose-words-for-cpp-23-8-release-notes/
---
{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for C++ 23.8](https://www.nuget.org/packages/Aspose.Words.Cpp/23.8.0).

{{% /alert %}}

## Major Features

There are 107 improvements and fixes in this regular monthly release. The most notable are:

- Added support for CITATION and BIBLIOGRAPHY fields.
- Introduced functionality to automatically generate a Table of Contents (TOC) for MOBI documents.
- Expanded PdfEncryptionDetails constructor with PdfPermissions.
- Introduced a new public property to specify the size of rendered images in pixels.
- Implemented shaping of vertical text for EMF metafiles.
- 
## Full list of changes

{{% alert color="secondary" %}}

<details><summary>Expand to view the full list of issues, covering all changes in this release.</summary>

1. Unexpected break (text wrapping) occurs in Cell when rendered to PDF
2. Amended version of the Aspose.Word SaveOption WordHtmlFixedSaveOptions
3. Add navigation (table of contents, TOC) to generated MOBI documents
4. Content are distorted and truncated after MHTML to PDF conversion
5. Document.UpdateTableLayout changes the table's width in output PDF
6. Text wrapping problem in Tables during HTML to PDF conversion
7. HTML to PDF conversion issue with table's width
8. Table Cells widths are incorrect in rendered TIFF
9. Tables in HTML file is not proper in the converted file
10. Content are truncated in output PDF after conversion from MHTML
11. Table layout is badly formatted after conversion from MHT to DOCX/PDF
12. Conversion issue in MSG to PDF - One character per line in Table
13. Table content is partially invisible after rendering MHTML document
14. Width of table's cell is changed after conversion from DOCX to PDF
15. Image is getting trimmed while converting from DOCX to PDF
16. Table/Cell width is not correct in rendered document
17. Table Column Cell Widths are incorrect in rendered PDF
18. Cell spacing issue while converting DOC to PDF
19. Table content is truncated when saving to PDF
20. Incorrect document layout upon rendering
21. Enable the new table grid re-calculation logic for formats other than DOC/DOCX
22. Consider providing PdfEncryptionDetails constructor overload that accepts PdfPermissions and a parameter
23. Implement ImageSaveOptions.ImageSize property
24. TOC not being updated correctly
25. Cell borders with cell spacing 0" are not rendered properly
26. A single word Run in Cell is rendering in two lines in PDF
27. HTML to PDF conversion issue with Text rendering
28. MHTML to PDF conversion issue with number rendering
29. Cell width is not calculated correctly during rendering to PDF
30. HTML to PDF conversion issue with table's width
31. Table formatting is lost after HTML to PDF
32. HTML table not displayed correctly in PDF
33. Cell text renders lower than the actual position in PDF
34. Table is rendered outside the page in output PDF
35. Tables have incorrect widths in PDF
36. Content is shifted when rendering mht to pdf or image
37. HTML to PDF conversion issue with custom margin
38. MHTML to PDF conversion issue with content position
39. Incorrect table column width after MHTML to PDF
40. Text in a table cell is wrapped when saved to PDF
41. MHTML to PDF conversion issue with table's cell width
42. Table width is lost after conversion from HTML to PDF
43. When converting HTML to PDF, the output is shrunken
44. Incorrect Table layout when converting HTML to PDF
45. DOCX to PDF conversion issue with cell width after using LINQ
46. Tables are lost in output PDF when UpdateTableLayout is called
47. Wrong additional columns appear in Table when converting HTML to DOCX
48. Table cell width is changed when HTML is converted to PDF
49. HTLM to PDF conversion - Table widths are not correct
50. Table moved to the right after conversion to PDF
51. Contents are Lost after HTML to PDF conversion
52. Table width is incorrect after rendering MHTML document
53. DOCX to PDF conversion issue
54. Consider adding a warning about missing, empty or not accessing fonts folder
55. Incorrect space before the first line on the page after a page break
56. Cells spacing is ignored upon rendering
57. HTML to PDF conversion issue with table's cells
58. Table Cells have incorrect Widths causing more pages in PDF
59. Numbering is changed after converting DOCX to RTF
60. Numbers format is changed after conversion from DOCX to XLSX
61. DOCX to MD: incorrect heading levels in the output document
62. OleFormat.GetRawData returns null
63. Numbering is changed after DOCX to RTF conversion
64. Footer looks ugly after conversion to XLSX
65. Exception is thrown when handling SVG image
66. Data label font size changes are not applied
67. Data label font size and color changes are not applied
68. Remove obsolete SaveOptions.UpdateSdtContent property
69. Pdf2Word should process XForm dictionary with missing "Type" key
70. LINQ Reporting Engine - JsonDataSource trims whitespaces for string values
71. The style changed after xmlns modification
72. Incorrect calculation of the minimum height of the math formula
73. RTL content is moved outside the page after rendering
74. Document comparison long execution time
75. The math text size is changed after converting to PDF
76. Footer from the first page is mover to the top of the second page after PDF to DOCX conversion
77. Hebrew text is rendered improperly
78. CITATION and BIBLIOGRAPHY fields are not updated by Document.UpdateFields method
79. Performance degradation of UpdateFields
80. NullReferenceException is thrown upon comparing documents
81. Issue with TIFF images
82. IndexOutOfRangeException is thrown upon rendering document
83. StructuredDocumentTag.GetText() returns incorrect value for Date SDT
84. Bookmark end position is changed after comparing documents
85. An exception occurs while saving pages as SVG
86. Chart area is shifted upon rendering
87. Incorrect shape sizes or properties on HTML to DOCX conversion
88. REF field is not updated properly
89. "Footnote Reference" is not properly updated
90. Bulleted list is converted to numbered list after open/save
91. DOCX to PDF with HarfBuzz: Symbols not converted correctly
92. Incorrect placement of text in a fraction when using a font with "Internal Leading"
93. FileCorruptedException is thrown upon loading HTML document
94. Implement PseudoInline property reading for DOC format
95. FileCorruptedException is thrown upon loading DOTX document
96. Text is wrapped improperly upon rendering
97. Problem with Captions and References in the first paragraph
98. Text outline in EMF shape partially invisible in AW pdf output
99. Image is cropped after rendering
100. Shadow effects are rendered incorrectly for glyphs with simulated bold and/or italic style
101. Thaana RTL text is exported to PDF as LRT
102. Three pages instead of two in DOCX file on Linux
103. Hairlines in metafile are barely invisible in Acrobat reader.
104. Images are not displayed in Mac TextEdit after open/save RTF document
105. Failed to open PDF file generated by our apps
106. License Conflict with Cortex XDR
107. Rendering document causes tables to continue outside the page

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.8. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added a new public property to specify the size of rendered images in pixels

The following public property has been added to the **ImageSaveOptions** class:
{{< highlight cpp >}}

    /// Gets or sets the size of a generated image in pixels.
    ///
    /// This property has effect only when saving to raster image formats.
    ///
    /// The default value is (0 x 0), which means that the size of the generated image will be calculated
    /// according to the size of the image in points, the specified resolution and scale.
    ASPOSE_WORDS_SHARED_API System::Drawing::Size get_ImageSize() const;

    /// Setter for Aspose::Words::Saving::ImageSaveOptions::get_ImageSize
    ASPOSE_WORDS_SHARED_API void set_ImageSize(System::Drawing::Size value);
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to render every page of a document to a separate TIFF image at 2325x5325 pixels and 600 dpi:
{{< gist "aspose-words-gists" ".b065846d84145e07dc54369e00300215" "image-size-for-every-page.cpp" >}}
{{% /alert %}}

### Added PdfEncryptionDetails ctor overload with PdfPermissions

{{< highlight cpp >}}

    ASPOSE_WORDS_SHARED_API PdfEncryptionDetails(const System::String& userPassword, const System::String& ownerPassword, Aspose::Words::Saving::PdfPermissions permissions);
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to use PdfPermissions:
{{< gist "aspose-words-gists" ".b065846d84145e07dc54369e00300215" "encryption-permissions.cpp" >}}
{{% /alert %}}

### Added the ability to generate TOC (table of contents) for MOBI documents

Now Aspose.Words for C++ can generate TOC (table of contents) for MOBI documents.

Desired depth of TOC can be specified same way as it's done for AZW3 or EPUB documents using HtmlSaveOptions.NavigationMapLevel property.

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to create MOBI document with TOC and specify NavigationMapLevel:
{{< gist "aspose-words-gists" ".b065846d84145e07dc54369e00300215" "create-mobi-toc.cpp" >}}
{{% /alert %}}

Note: Currently MOBI TOC won't be displayed by some viewers. For example, MOBI TOC won't be displayed by calibre app.

### Supported CITATION and BIBLIOGRAPHY fields

Now the **CITATION** and **BIBLIOGRAPHY** fields are supported by Aspose.Words and can be updated with the **Document.UpdateFields**, **Range.UpdateFields** or **Field.Update** methods.

Aspose.Words supports following citation and bibliography styles:

- **APA** - APASixthEditionOfficeOnline.xsl
- **Chicago** - CHICAGO.XSL
- **GB7714** - GB.XSL
- **GOST** - Name Sort - GostName.XSL
- **GOST** - Title Sort - GostTitle.XSL
- **Harvard** - Anglia - HarvardAnglia2008OfficeOnline.xsl
- **IEEE** - IEEE2006OfficeOnline.xsl
- **ISO 690** - First Element and Date - ISO690.XSL
- **ISO 690** - Numerical Reference - ISO690Nmerical.XSL
- **MLA** - MLASeventhEditionOfficeOnline.xsl
- **SIST02** - SIST02.XSL
- **Turabian** - TURABIAN.XSL

The **IBibliographyStylesProvider** interface and the **FieldOptions.BibliographyStylesProvider** property are introduced to override built-in styles or provide custom one:
{{< highlight cpp >}}

    /// \interface IBibliographyStylesProvider
    /// Implement this interface to provide bibliography style for
    /// the  <see cref="Aspose::Words::Fields::FieldBibliography">FieldBibliography</see> and <see cref="Aspose::Words::Fields::FieldCitation">FieldCitation</see> fields when they're updated.
    class ASPOSE_WORDS_SHARED_CLASS IBibliographyStylesProvider : public virtual System::Object
    {
    public:
    
        /// Returns bibliography style.
        /// 
        /// @param styleFileName The bibliography style file name.
        /// 
        /// @return The <see cref="System::IO::Stream">Stream</see> with bibliography style XSLT stylesheet.
        virtual System::SharedPtr<System::IO::Stream> GetStyle(System::String styleFileName) = 0;

    };

    class ASPOSE_WORDS_SHARED_CLASS FieldOptions final : public System::Object
    {
    /// Gets a provider that returns a bibliography style for
    /// the <see cref="Aspose::Words::Fields::FieldBibliography">FieldBibliography</see> and <see cref="Aspose::Words::Fields::FieldCitation">FieldCitation</see> fields.
    ASPOSE_WORDS_SHARED_API const System::SharedPtr<Aspose::Words::Fields::IBibliographyStylesProvider>& get_BibliographyStylesProvider() const;

    /// Sets a provider that returns a bibliography style for
    /// the <see cref="Aspose::Words::Fields::FieldBibliography">FieldBibliography</see> and <see cref="Aspose::Words::Fields::FieldCitation">FieldCitation</see> fields.
    ASPOSE_WORDS_SHARED_API void set_BibliographyStylesProvider(const System::SharedPtr<Aspose::Words::Fields::IBibliographyStylesProvider>& value);
    }
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to use IBibliographyStylesProvider:
{{< gist "aspose-words-gists" ".b065846d84145e07dc54369e00300215" "change-bibliography-styles.cpp" >}}
{{% /alert %}}

### The property HtmlSaveOptions.EpubNavigationMapLevel has been deprecated.

The **HtmlSaveOptions.EpubNavigationMapLevel** property is marked as obsolete. Please, use **HtmlSaveOptions.NavigationMapLevel** instead.

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release. The missing features will be added in future releases.

- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ doesn't have common API for DB like .NET System.Data.
