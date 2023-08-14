---
title: 23.8 Release Notes
second_title: Aspose.Words for Python via .NET
articleTitle: Aspose.Words for Python via .NET 23.8 Release Notes
linktitle: Aspose.Words for Python via .NET 23.8 Release Notes
description: "Aspose.Words for Python via .NET 23.8 Release Notes – the latest updates and fixes."
type: docs
weight: 50
url: /python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for  [Aspose.Words for Python via .NET 23.8](https://pypi.org/project/aspose-words/23.8.0/).

{{% /alert %}}

## Major Features

There are 106 improvements and fixes in this regular monthly release. The most notable are:

- Introduced functionality to automatically generate a Table of Contents (TOC) for MOBI documents.
- Expanded PdfEncryptionDetails constructor with PdfPermissions.
- Introduced a new public property to specify the size of rendered images in pixels.
- Implemented shaping of vertical text for EMF metafiles.
- Added an option in the LINQ Reporting Engine to preserve whitespaces for JSON string values.

## Full List of Issues Covering all Changes in this Release

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues.</summary>

|Key|Summary|Category|
| :- | :- | :- |
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
56. Cells spacing is ignored upon rendering|Enhancement
57. HTML to PDF conversion issue with table's cells|Enhancement
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
78. Performance degradation of UpdateFields
79. NullReferenceException is thrown upon comparing documents
80. Issue with TIFF images
81. IndexOutOfRangeException is thrown upon rendering document
82. StructuredDocumentTag.GetText() returns incorrect value for Date SDT
83. Bookmark end position is changed after comparing documents
84. An exception occurs while saving pages as SVG
85. Chart area is shifted upon rendering
86. Incorrect shape sizes or properties on HTML to DOCX conversion
87. REF field is not updated properly
88. "Footnote Reference" is not properly updated
89. Bulleted list is converted to numbered list after open/save
90. DOCX to PDF with HarfBuzz: Symbols not converted correctly 
91. Incorrect placement of text in a fraction when using a font with "Internal Leading"
92. FileCorruptedException is thrown upon loading HTML document
93. Implement PseudoInline property reading for DOC format
94. FileCorruptedException is thrown upon loading DOTX document
95. Text is wrapped improperly upon rendering
96. Problem with Captions and References in the first paragraph
97. Text outline in EMF shape partially invisible in AW pdf output
98. Image is cropped after rendering
99. Shadow effects are rendered incorrectly for glyphs with simulated bold and/or italic style
100. Thaana RTL text is exported to PDF as LRT 
101. Three pages instead of two in DOCX file on Linux
102. Hairlines in metafile are barely invisible in Acrobat reader.
103. Images are not displayed in Mac TextEdit after open/save RTF document
104. Failed to open PDF file generated by our apps
105. License Conflict with Cortex XDR
106. Rendering document causes tables to continue outside the page

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words for Python via .NET 23.8. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words for Python via .NET which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added a new public property to specify the size of rendered images in pixels

The following public property has been added to the **ImageSaveOptions** class:

{{< highlight python >}}
@property
def image_size(self) -> aspose.pydrawing.Size:
    '''Gets or sets the size of a generated image in pixels.
    
    This property has effect only when saving to raster image formats.
    
    The default value is (0 x 0), which means that the size of the generated image will be calculated
    according to the size of the image in points, the specified resolution and scale.'''
    ...

@image_size.setter
def image_size(self, value: aspose.pydrawing.Size):
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to render every page of a document to a separate TIFF image at 2325x5325 pixels and 600 dpi:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import BreakType, Document, DocumentBuilder, SaveFormat
from aspose.words.saving import ImageSaveOptions, PageSet
import aspose.pydrawing as pd

doc = Document()
builder = DocumentBuilder(doc)

builder.writeln("Page 1.")
builder.insert_break(BreakType.PAGE_BREAK)
builder.writeln("Page 2.")
builder.insert_break("Logo.jpg")
builder.insert_break(BreakType.PAGE_BREAK)
builder.writeln("Page 3.")

# Create an "ImageSaveOptions" object which we can pass to the document's "Save" method
# to modify the way in which that method renders the document into an image.

options = ImageSaveOptions(SaveFormat.TIFF)

for i in range(doc.page_count):
    # Set the "PageSet" property to the number of the first page from
    # which to start rendering the document from.
    options.page_set = PageSet(i)
    # Export page at 2325x5325 pixels and 600 dpi.
    options.vertical_resolution = 600
    options.horizontal_resolution = 600
    options.image_size = pd.Size(2325, 5325)

    doc.save(f'ImageSaveOptions.PageByPage.{i + 1}.tiff', options)
{{< /highlight >}}

### Added PdfEncryptionDetails ctor overload with PdfPermissions

{{< highlight python >}}
class PdfEncryptionDetails:

    @overload
    def __init__(self, user_password: str, owner_password: str, permissions: aspose.words.saving.PdfPermissions):
        '''Initializes an instance of this class.'''
...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to use PdfPermissions:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.words.saving import PdfEncryptionDetails, PdfPermissions, PdfSaveOptions

doc = Document()

builder = DocumentBuilder(doc)
builder.writeln("Hello world!")

# Extend permissions to allow the editing of annotations.
encryptionDetails = PdfEncryptionDetails("password", "", PdfPermissions.MODIFY_ANNOTATIONS | PdfPermissions.DOCUMENT_ASSEMBLY)

# Create a "PdfSaveOptions" object that we can pass to the document's "Save" method
# to modify how that method converts the document to.PDF.

saveOptions = PdfSaveOptions()
# Enable encryption via the "EncryptionDetails" property.
saveOptions.encryption_details = encryptionDetails

# When we open this document, we will need to provide the password before accessing its contents.
doc.save("PdfSaveOptions.EncryptionPermissions.pdf", saveOptions)
{{< /highlight >}}

### Added the ability to generate TOC (table of contents) for MOBI documents

Now Aspose.Words can generate TOC (table of contents) for MOBI documents.

Desired depth of TOC can be specified same way as it's done for AZW3 or EPUB documents using HtmlSaveOptions.epub_navigation_map_level property.

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to create MOBI document with TOC and specify navigation_map_level:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document, SaveFormat
from aspose.words.saving import HtmlSaveOptions
doc = Document("Big document.docx")

options = HtmlSaveOptions(SaveFormat.MOBI)
options.navigation_map_level = 5

doc.save("HtmlSaveOptions.CreateMobiToc.mobi", options)
{{< /highlight >}}

Note: Currently MOBI TOC won't be displayed by some viewers. For example, MOBI TOC won't be displayed by calibre app.

### The property HtmlSaveOptions.EpubNavigationMapLevel has been deprecated.

The **HtmlSaveOptions.epub_navigation_map_level** property is marked as obsolete. Please, use **HtmlSaveOptions.navigation_map_level** instead.

### Added an option for LINQ Reporting Engine to preserve whitespaces for JSON string values

Starting from Aspose.Words 23.8, you can instruct LINQ Reporting Engine to preserve leading and trailing whitespaces for JSON string values (which are trimmed by default).

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to instruct LINQ Reporting Engine to preserve leading whitespaces:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import DocumentBuilder
from aspose.words.reporting import JsonDataLoadOptions, JsonDataSource, JsonSimpleValueParseMode, ReportingEngine
template = r'LINE\r<<[LineWhitespace]>>'
json = b"""{
             LineWhitespace:"    "
            }"""

options = JsonDataLoadOptions()
options.preserve_spaces = True
options.simple_value_parse_mode = JsonSimpleValueParseMode.STRICT

dataSource = JsonDataSource(io.BytesIO(json), options)

builder = DocumentBuilder()
builder.write(template)
print(builder.document.get_text())

engine = ReportingEngine()
engine.build_report(builder.document, dataSource, "ds")
{{< /highlight >}}