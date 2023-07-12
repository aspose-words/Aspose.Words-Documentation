---
title: 23.7 Release Notes
second_title: Aspose.Words for Python via .NET
articleTitle: Aspose.Words for Python via .NET 23.7 Release Notes
linktitle: Aspose.Words for Python via .NET 23.7 Release Notes
description: "Aspose.Words for Python via .NET 23.7 Release Notes – the latest updates and fixes."
type: docs
weight: 60
url: /python-net/aspose-words-for-python-via-dotnet-23-7-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for  [Aspose.Words for Python via .NET 23.7](https://pypi.org/project/aspose-words/23.7.0/).

{{% /alert %}}

## Major Features

There are 114 improvements and fixes in this regular monthly release. The most notable are:

- The possibility to save the document page or shape into EPS format has been implemented.
- The ability to retrieve the digital signature value from a digitally signed document as a byte array has been added.
- The Row and Cell classes have been extended with new public members.
- Mustache tags are now supported in the MailMerge.GetRegionsHierarchy and MailMerge.GetFieldNamesForRegion methods. .

## Full List of Issues Covering all Changes in this Release

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues.</summary>

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
112. Default font family is written to `<li>` element
113. Table row is moved to the previous page after rendering
114. Aspose.Words takes more time and memory over .NET Core

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words for Python via .NET 23.7. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words for Python via .NET which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added ability to get digital signature value from digitally signed document as byte array

Added ability to get a digital signature value from a digitally signed document into **Aspose.Words.DigitalSignatures.DigitalSignature** class:

{{< highlight python >}}
@property
def signature_value(self) -> bytes:
    '''Gets an array of bytes representing a signature value.'''
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to obtain digital signature value as byte array from a document:

{{% /alert %}}

{{< highlight python >}}
import base64
from aspose.words import Document

doc = Document("docWithSign.docx")
for digitalSignature in doc.digital_signatures:
    signatureValue = base64.b64encode(digitalSignature.signature_value)
    print(digitalSignature)
{{< /highlight >}}

### Added new EPS image format

The document page or shape could be saved into **EPS** format now. A new EPS value is added into **SaveFormat** class.

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to save document as EPS image:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document, SaveFormat
from aspose.words.saving import ImageSaveOptions, PageSet

# Open some document.
doc = Document("document.docx")

# Save the second page as EPS image.
saveOptions = ImageSaveOptions(SaveFormat.EPS)
saveOptions.page_set = PageSet(1)
doc.save("image.eps", saveOptions)
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to save any particular shape as EPS image:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document, NodeType, SaveFormat
from aspose.words.saving import ImageSaveOptions
# Open some document.
doc = Document("document.docx")

# Save the shape as EPS image.
saveOptions = ImageSaveOptions(SaveFormat.EPS)

shape = doc.get_child(NodeType.SHAPE, 0, True).as_shape()
renderer = shape.get_shape_renderer()
renderer.save("image.eps", saveOptions)
{{< /highlight >}}

### Added new public properties Row.next_row, Row.previous_row, Cell.next_cell and Cell.previous_cell

The following public properties have been added to the **Row** class:

{{< highlight python >}}
@property
def next_row(self) -> aspose.words.tables.Row:
    '''Gets the next :class:`Row` node.
    
    The method can be used when you need to have typed access to table rows. If a
    :class:`aspose.words.markup.StructuredDocumentTag` node is found in a table instead of a row,
    it is automatically traversed to get a row contained within.'''
    ...

@property
def previous_row(self) -> aspose.words.tables.Row:
    '''Gets the previous :class:`Row` node.
    
    The method can be used when you need to have typed access to table rows. If a
    :class:`aspose.words.markup.StructuredDocumentTag` node is found in a table instead of a row,
    it is automatically traversed to get a row contained within.'''
    ...
{{< /highlight >}}

The following public properties have been added to the **Cell** class:

{{< highlight python >}}
@property
def next_cell(self) -> aspose.words.tables.Cell:
    '''Gets the next :class:`Cell` node.
    
    The method can be used when you need to have typed access to cells of a :class:`Row`. If a
    :class:`aspose.words.markup.StructuredDocumentTag` node is found in a row instead of a cell, it is automatically
    traversed to get a cell contained within.'''
    ...

@property
def previous_cell(self) -> aspose.words.tables.Cell:
    '''Gets the previous :class:`Cell` node.
    
    The method can be used when you need to have typed access to cells of a :class:`Row`. If a
    :class:`aspose.words.markup.StructuredDocumentTag` node is found in a row instead of a cell, it is automatically
    traversed to get a cell contained within.'''
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to enumerate through all table cells:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document

doc = Document(fileName)
table = doc.first_section.body.tables[0]

# Enumerate through all cells of the table.
row = table.first_row
while row is not None:
    cell = row.first_cell
    
    while cell is not None:
        print(cell.get_text())
        cell = cell.next_cell
    
    row = row.next_row
{{< /highlight >}}

### A warning is issued if loaded HTML document has fixed-page structure

Aspose.Words doesn't support loading of fixed-page HTML document (for example, documents that are produced when saving in **SaveFormat.HtmlFixed**).
If Aspose.Words detects that the loaded HTML document has fixed-page structure, it will issue the following warning:

{{< highlight python >}}
WarningSource.HTML
WarningType.MINOR_FORMATTING_LOSS
"The document is fixed-page HTML. Its structure may not be loaded correctly."
{{< /highlight >}}

### Supported mustache tags in the MailMerge.GetRegionsHierarchy and MailMerge.GetFieldNamesForRegion methods

Now the **MailMerge.get_regions_hierarchy** method returns mustache regions and mustache fields when the **MailMerge.use_non_merge_fields** option is True.

Now the **MailMerge.get_field_names_for_region** method accepts mustache region names and returns mustache field names when the **MailMerge.use_non_merge_fields** option is True.

The **MustacheTag** class has been introduced:

{{< highlight python >}}
class MustacheTag:
    '''Represents "mustache" tag.'''
    
    @property
    def reference_run(self) -> aspose.words.Run:
        '''Gets the run that contains the beginning of the tag.'''
        ...
    
    @property
    def reference_offset(self) -> int:
        '''Gets the zero-based starting position of the tag from the start of the :attr:`MustacheTag.reference_run`.'''
        ...
    
    @property
    def text(self) -> str:
        '''Gets the text of the tag.'''
        ...
    
    ...
{{< /highlight >}}

The start_mustache_tag, end_mustache_tag and mustache_tags properties have been added to the MailMergeRegionInfo class:

{{< highlight python >}}
class MailMergeRegionInfo:

    @property
    def mustache_tags(self) -> list[aspose.words.mailmerging.MustacheTag]:
        '''Returns a list of child "mustache" tags.'''
        ...
     
    @property
    def start_mustache_tag(self) -> aspose.words.mailmerging.MustacheTag:
        '''Returns a start "mustache" tag for the region.'''
        ...
    
    @property
    def end_mustache_tag(self) -> aspose.words.mailmerging.MustacheTag:
        '''Returns an end "mustache" tag for the region.'''
        ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to use MustacheTag:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document
document = Document("Template.docx")
document.mail_merge.use_non_merge_fields = True

hierarchy = document.mail_merge.get_regions_hierarchy()
for mustacheTag in hierarchy.mustache_tags:
    print(mustacheTag.text)

for region in hierarchy.regions:
    print(region.start_mustache_tag.text)
    print(region.end_mustache_tag.text)
{{< /highlight >}}