---
title: 22.9 Release Notes
second_title: Aspose.Words for Python via .NET
articleTitle: Aspose.Words for Python via .NET 22.9 Release Notes
linktitle: Aspose.Words for Python via .NET 22.9 Release Notes
description: "Aspose.Words for Python via .NET 22.9 Release Notes – the latest updates and fixes."
type: docs
weight: 30
url: /python-net/aspose-words-for-python-via-dotnet-22-9-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Python via .NET 22.9.0](https://pypi.org/project/aspose-words/22.9.0/).

{{% /alert %}}

## Major Features

There are 102 improvements and fixes in this regular monthly release. The most notable are:

- [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) was extended with new `auto_numbering_detection` option.
- Implemented an ability to cache the header/footer shapes to reduce the size of the output PDF file.
- Added a new feature to get [FieldEQ](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldeq/) as [OfficeMath](https://reference.aspose.com/words/python-net/aspose.words.math/officemath/). 
- Allowed creation of structured document tags of Group type at Row level.
- Added Python type hints for all classes.

## Full List of Issues Covering all Changes in this Release (Reported by .NET Users)

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-5844|Custom Table border style is rendering incorrectly in Fixed Page Formats|New Feature
|WORDSNET-13166|Implement caching of watermarks through frame xObjects|New Feature
|WORDSNET-17215|Table borders are not correct in PDF|New Feature
|WORDSNET-22966|Add feature to render the comments according to preferred language|New Feature
|WORDSNET-24126|Inaccurate spacing between shape and next line text in footer |New Feature
|WORDSNET-24144|Allow creating SDT of Group type on Row level|New Feature
|WORDSNET-5288|Table borders looks incorrectly after converting to PDF|Enhancement
|WORDSNET-7205|Cell borders are getting lost when rendering to PDF|Enhancement
|WORDSNET-15408|Conversion from RTF to PDF using Words results in a squished table|Enhancement
|WORDSNET-16836|PDF rendition differs from the source document|Enhancement
|WORDSNET-24124|Outset border type is not rendered correctly in presence of cell spacing|Enhancement
|WORDSNET-10996|Add possiblity to generate PDF of Minimum Size (Publishing Online)|Bug
|WORDSNET-18373|DOCX to PDF conversion issue with line wrapping in the middle of Russian word |Bug
|WORDSNET-18530|Incorrect calculation of NUMPAGES fields in PDF|Bug
|WORDSNET-18559|DOCX to PDF conversion issue with text rendering|Bug
|WORDSNET-18637|DOCX to HTML conversion issue with background color of paragraph|Bug
|WORDSNET-18759|DOCX to PDF conversion issue with word wrapping|Bug
|WORDSNET-20308|Y-Axis labels are changed after DOCX to PDF conversion|Bug
|WORDSNET-20613|Word to pdf files become hundreds of times larger|Bug
|WORDSNET-20748|Text moves to next line after DOCX to PDF conversion|Bug
|WORDSNET-21064|Fill entire DIV with lightblue background-color during HTML to Word Conversion|Bug
|WORDSNET-22229|Content are lost after DOCX to PDF conversion |Bug
|WORDSNET-22815|Issues after Set XML Mapping|Bug
|WORDSNET-22894|Frame is lost after RTF to PDF conversion |Bug
|WORDSNET-22920|DOCX to PDF conversion breaks words and wraps parts of words to the next line|Bug
|WORDSNET-22945|Preserve RestartPageNumbering section property during DOCX HTML roundtrip session|Bug
|WORDSNET-23030|ZlibException: Bad state Unknown compression method|Bug
|WORDSNET-23112|Spaces between images are lost|Bug
|WORDSNET-23113|Images with SMask bigger than original image are processed incorrectly|Bug
|WORDSNET-23174|IndexOutOfRangeException in LibTiff library code|Bug
|WORDSNET-23208|InvalidOperationException at PdfObjectStreamParseObject|Bug
|WORDSNET-23624|Data label values order is changed upon rendering|Bug
|WORDSNET-23636|Chart legend is cut of at the bottom|Bug
|WORDSNET-23645|Data labels values are rendered improperly|Bug
|WORDSNET-23669|Header contents do not match on wml to docx conversion|Bug
|WORDSNET-23748|Incorrect paragraph break font size in AW document model for a WML document|Bug
|WORDSNET-23787|Incorrect page margins on wml to docx conversion|Bug
|WORDSNET-23833|LINQ Reporting Engine always considers JSON null literals as string values|Bug
|WORDSNET-23858|ArgumentOutOfRangeException is thrown upon conversion DOCX to HTML|Bug
|WORDSNET-23887|Caption Ref present on first para get missing|Bug
|WORDSNET-23903|Text is overlapped after rendering SVG image|Bug
|WORDSNET-23934|An image is scaled down in AW document model on reading and RTF document|Bug
|WORDSNET-23943|Abort pdf2word builds by timeout|Bug
|WORDSNET-23962|Issue with line spacing when converting odt to docx|Bug
|WORDSNET-24000|Text is wrapped improperly upon rendering|Bug
|WORDSNET-24001|Frame in header lost on conversion to PDF|Bug
|WORDSNET-24008|AW renders invisible text inside text box|Bug
|WORDSNET-24009|LayoutCollectorGetStartPageIndex returns incorrect page number for shape in nested table|Bug
|WORDSNET-24021|StackOverflowException upon loading a HTML document|Bug
|WORDSNET-24022|Revisions are rendered in wrong places|Bug
|WORDSNET-24047|Remove CodePorting attributes from release build|Bug
|WORDSNET-24062|RTL content is reversed and has spaces after importing PDF|Bug
|WORDSNET-24063|RTL TOC is corrupted after importing PDF document |Bug
|WORDSNET-24083|IndexOutOfRangeException is thrown upon rendering document|Bug
|WORDSNET-24093|Issue with conversion Word to PDF|Bug
|WORDSNET-24107|Blurry text occurs aftet PDF to JPG conversion via PdfFixedRenderer|Bug
|WORDSNET-24109|Text wrapping is incorrect after rendering |Bug
|WORDSNET-24116|New style introduced after updating CXP|Bug
|WORDSNET-24120|Invalid positioning and alignment of elements when appending DOCX documents|Bug
|WORDSNET-24125|FileCorruptedException is thrown upon loading DOCX document|Bug
|WORDSNET-24127|Header row is duplicated when use ExtractPages method|Bug
|WORDSNET-24133|Hidemark handling is not right|Bug
|WORDSNET-24140|Nested bookmark is removed after setting text of outer bookmark |Bug
|WORDSNET-24169|SDT to custom XML mapping wrong list numbering|Bug
|WORDSNET-24174|Floating table position property changes on conversion to docx|Bug
|WORDSNET-24177|Page orientation is not preserved after DOCX HTML roundtrip|Bug
|WORDSNET-24178|Exception is thrown when converting DOCX to HTML|Bug
|WORDSNET-24180|Content moved to next page and extra page created|Bug
|WORDSNET-24181|Incorrect nodes order in AW document model for a wml document|Bug
|WORDSNET-24182|Incorrect paragraphs count in AW document model for a WML document|Bug
|WORDSNET-24185|NullReferenceException is thrown upon getting ChildNodes from imported StructuredDocumentTagRangeStart|Bug
|WORDSNET-24186|NullReferenceException is thrown upon rendering document with chart|Bug
|WORDSNET-24190|Paragraph formatting is not the same in the output file|Bug
|WORDSNET-24196|IndexOutOfRangeException when converting RTF to PDF|Bug
|WORDSNET-24199|ArgumentException because of an empty key in CustomDocumentProperties|Bug
|WORDSNET-24205|Tr class name cannot be used when AsposeWords is referenced|Bug
|WORDSNET-24207|Incorrect handling of underline text display for formulas|Bug
|WORDSNET-24211|Series data is not rendered on the chart area|Bug
|WORDSNET-24214|Update links in tests and test files to use new wiki|Bug
|WORDSNET-24218|Embedded SVG fragments are indented incorrectly when saved with PrettyFormat enabled|Bug
|WORDSNET-24219|Saving docx document to markdown throws exception|Bug
|WORDSNET-24220|InvalidOperationException is thrown upon comparing documents|Bug
|WORDSNET-24231|Smart Arts are converted to images|Bug
|WORDSNET-24234|NullReferenceException on UpdatePageLayout on document with charts|Bug
|WORDSNET-24236|FileCorruptedException on loading DOCX document|Bug
|WORDSNET-24242|NullReferenceException when saving AZW3 to stream|Bug
|WORDSNET-24251|OutOfMemoryException is thrown upon importing RTF document|Bug
|WORDSNET-24258|Incorrect display of the radical character for the case of subscript as an argument|Bug
|WORDSNET-24275|Cannot save to Azw3 when saving to stream|Bug

## Full List of Issues Covering all Changes in this Release (Reported by Java Users)

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-22351|UpdatePageLayout invalidates PrintDate fields values in Header Footers|Bug
|WORDSNET-23551|Add an ability to convert EQ field to OfficeMath|Bug
|WORDSNET-23562|Numbers with decimal point are mistakenly detected as list item upon loading TXT document |Bug
|WORDSNET-24100|CommentAddReply adds reply as a separate comment instead of reply|Bug
|WORDSNET-24139|CN-CODE128 font is substituted with Courier New|Bug
|WORDSNET-24145|CardText merge field is not localized to Italian|Bug
|WORDSNET-24153|FileCorruptedException is thrown upon loading RTF document|Bug
|WORDSNET-24163|Word to PDF Missing content|Bug
|WORDSNET-24168|Text wrapping is incorrect after rendering SVG|Bug
|WORDSNET-24226|DOCX to PDF Text is not alligned properly|Bug
|WORDSNET-24230|Thick cell borders are rendered with artifacts|Bug
|WORDSNET-24249|Comparing the document with its exact copy shows a difference|Bug
|WORDSNET-24253|Tab with leader at the end of line is missed upon rendering|Bug

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 22.9. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added FieldEQ.as_office_math method

Related issue: WORDSNET-23551

The following public method is added to [FieldEQ](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldeq/) class:
{{< highlight python >}}
class FieldEQ:
    ...
    def as_office_math(self) -> OfficeMath:
        """Returns Office Math object corresponded to the EQ field.
        
        Returns None if field code is empty or invalid, otherwise an OfficeMath instance."""
        ...
{{< /highlight >}}

Use Case: Replace EQ fields with Office Math.
{{< highlight python >}}
document = aw.Document(file_name)
for field in document.range.fields:
    if field.type == aw.fields.FieldType.FIELD_EQUATION:
        office_math = field.as_field_eq().as_office_math()

        field.start.parent_node.insert_before(office_math, field.start)
        field.remove()
{{< /highlight >}}

Use Case: Import Office Math to another document.
{{< highlight python >}}
document = aw.Document(file_name)
new_document = aw.Document()

for field in document.range.fields:
    if field.type == aw.fields.FieldType.FIELD_EQUATION:
        office_math = field.as_field_eq().as_office_math()

        new_document.first_section.body.first_paragraph.append_child(new_document.import_node(office_math, True))
{{< /highlight >}}

### Added new TxtLoadOptions.auto_numbering_detection property

Related issue: WORDSNET-23562.

The following public property is added to [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) class:
{{< highlight python >}}
class TxtLoadOptions:
    ...
    @property
    def auto_numbering_detection(self) -> bool:
        """Gets or sets a boolean value indicating either automatic numbering detection
        will be performed while loading a document.
        
        The default value is True."""
        ...
{{< /highlight >}}

Use Case: Explains how to disable automatic numbering detection upon loading TXT document.
{{< highlight python >}}
# Disable automatic numbering detection.
options = aw.loading.TxtLoadOptions()
options.auto_numbering_detection = False
doc = aw.Document("input.txt", options)

list_items_count = 0
for node in doc.get_child_nodes(aw.NodeType.PARAGRAPH, True):
    paragraph = node.as_paragraph()
    if paragraph.is_list_item:
        list_items_count += 1

print(
    "The expected number of list items in document with 'auto_numbering_detection' option disabled is 0," +
    " and the actual is", list_items_count)

# The code produces the following output:
# The expected number of list items in document with 'auto_numbering_detection' option disabled is 0, and the actual is 0
{{< /highlight >}}
	
### Added PdfSaveOptions.cache_header_footer_shapes property

Related issues: WORDSNET-13166, WORDSNET-20613, WORDSNET-10996

The following public property is added to [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) class:
{{< highlight python >}}
class PdfSaveOptions:
    ...
    @property
    def cache_header_footer_shapes(self) -> bool:
        """Gets or sets a value determining whether or not to cache shapes placed in header and footer of document.
        
        Default value is False and shapes are not cached.
        When the value is True shapes graphics are written to the PDF document as an xObject.
        Some shapes are not supported for caching(shapes with fields, bookmarks, HRefs)."""
        ...

{{< /highlight >}}

The new property allows you to cache the header/footer shapes and reduce the size of PDF output file.

Use Case:
{{< highlight python >}}
doc = aw.Document(file_name)
save_options = aw.saving.PdfSaveOptions()
save_options.cache_header_footer_shapes = True
doc.save(output_file_name, save_options)
{{< /highlight >}}

### Allowed creation of structured document tags of Group type at Row level

Related issue: WORDSNET-24144

You can now create [SdtType.GROUP](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#group) structured document tags at the [MarkupLevel.ROW](https://reference.aspose.com/words/python-net/aspose.words.markup/markuplevel/#row) level.

Use Case:
{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Insert a table.
table = builder.start_table()

# Create a Group structured document tag at the Row level.
group_sdt = aw.markup.StructuredDocumentTag(doc, aw.markup.SdtType.GROUP, aw.markup.MarkupLevel.ROW)
table.append_child(group_sdt)
group_sdt.is_showing_placeholder_text = False
group_sdt.remove_all_children()

# Create a child row of the structured document tag.
row = aw.tables.Row(doc)
group_sdt.append_child(row)

# Append a cell.
cell = aw.tables.Cell(doc)
row.append_child(cell)

builder.end_table()

# Insert cell contents.
cell.ensure_minimum()
builder.move_to(cell.last_paragraph)
builder.write("Some text 1")

# Insert text after the table.
builder.move_to(table.next_sibling)
builder.write("Some text 2")

doc.save("Out.docx")
{{< /highlight >}}
