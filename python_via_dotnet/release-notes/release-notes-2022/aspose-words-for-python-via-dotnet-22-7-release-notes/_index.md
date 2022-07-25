---
title: 22.7 Release Notes
second_title: Aspose.Words for Python via .NET
articleTitle: Aspose.Words for Python via .NET 22.7 Release Notes
linktitle: Aspose.Words for Python via .NET 22.7 Release Notes
description: "Aspose.Words for Python via .NET 22.7 Release Notes – the latest updates and fixes."
type: docs
weight: 40
url: /python-net/aspose-words-for-python-via-dotnet-22-7-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Python via .NET 22.7.0](https://pypi.org/project/aspose-words/22.7.0/).

{{% /alert %}}

## Major Features

There are 85 improvements and fixes in this regular monthly release. The most notable are:

- Implemented an ability to convert PDF documents to fixed page formats with high fidelity and performance.
- Implemented support of WCAG 2.0 PDF.
- Implemented our own glyph outlines parsing for OpenType(CFF) fonts.
- Introduced new HTML import mode for block-level elements.
- Provided an ability to set shadow formatting of the shape object.

## Full List of Issues Covering all Changes in this Release (Reported by .NET Users)

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-13702 | Support parsing of glyph data for OpenType(CFF) | New Feature |
| WORDSNET-15752 | Support DATABASE field | New Feature |
| WORDSNET-19220 | Add feature to support WCAG 2.0 PDF | New Feature |
| WORDSNET-23295 | Add a flag to take EXIF orientation in account while inserting a JPEG   image by LINQ Reporting Engine | New Feature |
| WORDSNET-23654 | Add a new mode for import HTML block-level   elements during inserting HTML via DocumentBuilder.InsertHtml method | New Feature |
| WORDSNET-18125 | Make sure saving to tagged PDF follows Section 508   Guidelines | Enhancement |
| WORDSNET-6892 | TextBox is not preserved on HTML import | Bug |
| WORDSNET-14009 | Text Font and Gradient fill not saved in PDF output | Bug |
| WORDSNET-20981 | Word document converted to PDF results in different font for last page | Bug |
| WORDSNET-21368 | Unexpected Bold Formatting to custom style during Word to HTML to Word   conversion | Bug |
| WORDSNET-22323 | DOCX to PDF conversion issue with formula/equation rendering | Bug |
| WORDSNET-22948 | Import of SVG image differs from what is in browser | Bug |
| WORDSNET-23313 | Invalidate document layout after calling Document.Compare with two PDF   documents | Bug |
| WORDSNET-23544 | Document missing sections after saving | Bug |
| WORDSNET-23646 | Date X-Axis shows values with incorrect step | Bug |
| WORDSNET-23684 | Incorrect calculation of indents for border box&nbsp; around the formula | Bug |
| WORDSNET-23701 | Font size is not exported to HTML | Bug |
| WORDSNET-23706 | Numbering is broken after converting document to HTML | Bug |
| WORDSNET-23709 | Shape stroke is not rendered to JPEG | Bug |
| WORDSNET-23783 | Consider disabling support for external resources when loading EPUB   documents | Bug |
| WORDSNET-23810 | Incorrect background image after Pdf2Word conversion | Bug |
| WORDSNET-23817 | Header height is changed that leads to layout issues | Bug |
| WORDSNET-23828 | Content is removed after saving the document | Bug |
| WORDSNET-23829 | DOCX to PDF: Characters rendered as boxes | Bug |
| WORDSNET-23841 | Text orientation is turned to vertical after converting to HTML | Bug |
| WORDSNET-23851 | Data label values are rendered improperly | Bug |
| WORDSNET-23855 | CryptographicException: The input data is not a complete block | Bug |
| WORDSNET-23865 | KeepSourceFormatting does not honor source document style | Bug |
| WORDSNET-23866 | Field updating hangs if document is optimized for Word2016 | Bug |
| WORDSNET-23867 | Wrong outlines are returned for the space character | Bug |
| WORDSNET-23869 | Incorrect font detection when rendering a formula | Bug |
| WORDSNET-23874 | Thickness of hairline is different when render with .NET and .NET   Standard versions | Bug |
| WORDSNET-23875 | Header row is not repeated upon rendering for a floating table | Bug |
| WORDSNET-23878 | Text is wrapped improperly | Bug |
| WORDSNET-23886 | Style applied to text is changed after open/save DOCX document | Bug |
| WORDSNET-23888 | Aspose.Words hangs for a while upon loading MHTML file | Bug |
| WORDSNET-23889 | Wrong list numbering in SDT bound to custom XML part | Bug |
| WORDSNET-23890 | Evaluation watermark in ODT document overlaps content of the document | Bug |
| WORDSNET-23902 | Redundant space between letter is added upon rendering SVG image | Bug |
| WORDSNET-23913 | FileNotFoundException is thrown upon loading DOCX document | Bug |
| WORDSNET-23918 | ArgumentException because of duplicates in CustomDocumentProperties | Bug |
| WORDSNET-23919 | Aspose.Words hangs upon updating fields or layout | Bug |
| WORDSNET-23922 | Incorrect font detection for East Asian characters when rendering a   formula | Bug |
| WORDSNET-23924 | InvalidCastException is thrown upon updating fields | Bug |
| WORDSNET-23925 | Word document not saving PNG | Bug |
| WORDSNET-23929 | Text is wrapped differently after rendering | Bug |
| WORDSNET-23936 | Reverse order of replies on the comment in the air | Bug |
| WORDSNET-23941 | ZlibException: Bad state (invalid distance code) | Bug |
| WORDSNET-23942 | Images are rendered in PDF as red cross | Bug |
| WORDSNET-23947 | System.OverflowException: Value was either too large or too small for an   Int32 | Bug |
| WORDSNET-23948 | InvalidOperationException: MediaBox is null | Bug |
| WORDSNET-23950 | Reply naming differences within export to PDF | Bug |
| WORDSNET-23951 | Formating issue on the lastest Pdf2Word release | Bug |
| WORDSNET-23952 | Chart axis are not visible when render as SVG | Bug |
| WORDSNET-23954 | List labels in Swedish are rendered in English | Bug |
| WORDSNET-23955 | Spacing between numbers and Chinese hieroglyphs is too big in chart axis   labels | Bug |
| WORDSNET-23958 | Exception when comparing documents | Bug |
| WORDSNET-23963 | List label is added to the paragraph on the next page when ExtractPages   is used | Bug |
| WORDSNET-23965 | InvalidOperationException is thrown upon rendering document | Bug |
| WORDSNET-23974 | Style separator produces line break after rendering | Bug |
| WORDSNET-23976 | Korean text is not wrapped properly when WordWrap option is disabled | Bug |
| WORDSNET-23981 | DOCX to MD conversion exception | Bug |
| WORDSNET-24010 | ImportStyle() returns null for KeepDifferentStyles | Bug |
| WORDSNET-24034 | InvalidOperationException is thrown upon comparing document | Bug |

## Full List of Issues Covering all Changes in this Release (Reported by Java Users)

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-21279 | Arabic text rendered LTR (garbled) when converting from document to PDF | Bug |
| WORDSNET-21764 | Math equations are blurred during exporting Word to HTML on Linux | Bug |
| WORDSNET-22648 | Incorrect Rendering of Math Equations in PDF | Bug |
| WORDSNET-22896 | Font Fallback does not work properly for text within SVG images | Bug |
| WORDSNET-23598 | Part of content is moved to previous page | Bug |
| WORDSNET-23599 | Whitespaces font is reset to Arial upon importing HTML | Bug |
| WORDSNET-23623 | API fails to load EML files as MHTML | Bug |
| WORDSNET-23781 | UpdatePageLayout hangs | Bug |
| WORDSNET-23862 | Chinese text in SVG is rendered as tofu when convert to PDF | Bug |
| WORDSNET-23877 | Provide API to remove the shape shadows | Bug |
| WORDSNET-23893 | InvalidOperationException is thrown upon executing mail merge | Bug |
| WORDSNET-23909 | Numbering is changed after inserting document | Bug |
| WORDSNET-23910 | Font is changed after inserting document when KeepDifferentStyles is used | Bug |
| WORDSNET-23927 | NullReferenceException is thrown upon rendering document | Bug |
| WORDSNET-23937 | Layout is different after DOCX to PDF conversion | Bug |
| WORDSNET-23938 | FileCorruptedException is thrown upon loading DOCX document | Bug |
| WORDSNET-23968 | Hanging during export to PDF | Bug |
| WORDSNET-23970 | Header and footer are lost after rendering | Bug |
| WORDSNET-23979 | Word to PDF \-&nbsp; conversion issue   with floating table header rows | Bug |
| WORDSNET-23980 | IF field with wildcard is updated improperly | Bug |
| WORDSNET-24007 | FileCorruptedException on loading RTF file | Bug |

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 22.7. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added a new mode for import HTML block-level elements during inserting HTML via DocumentBuilder.insert_html() method

Related issue: WORDSNET-23654

New HTML insertion option was added to HtmlInsertOptions enum.
{{< highlight python >}}
class HtmlInsertOptions(IntEnum):
    ...
    
    # Preserve properties of block-level elements.
    #
    # By default, properties of parent blocks are merged and stored on their child elements (i.e. paragraphs or tables).
    # If this option is specified, properties of each block are stored separately in a special logical structure.
    # As a result, this option allows to better preserve individual borders and margins seen in the HTML document
    # and get better conversion results. The downside is that the resulting document gets harder to modify, since borders
    # and margins stored in the logical structure are not available for editing.
    #
    # Only margins and borders of 'body', 'div', and 'blockquote' HTML elements are preserved. Properties of each HTML
    # element are stored separately.
    #
    # If this option is specified, Aspose.Words mimics MS Word's behavior regarding import of block properties.
    PRESERVE_BLOCKS = 4

{{< /highlight >}}

The new mode of import HTML block-level elements during inserting HTML via DocumentBuilder.insert_html() method allows to better preserve borders and margins seen in the HTML document and get better conversion results.
{{< highlight python >}}
html = """
<html>
    <div style='border:dotted'>
        <div style='border:solid'>
            <p>paragraph 1</p>
            <p>paragraph 2</p>
        </div>
    </div>
</html>
"""

# Set the new mode of import HTML block-level elements.
insert_options = aw.HtmlInsertOptions.PRESERVE_BLOCKS
builder = aw.DocumentBuilder()
builder.insert_html(html, insert_options)
builder.document.save(my_dir + "sample.docx")
{{< /highlight >}}

### Added new public property shadow_format

Related issue: WORDSNET-23877

A new public shadow_format property has been added to ShapeBase class
{{< highlight python >}}
class ShapeBase:
    ...

    @property
    def shadow_format(self) -> aw.drawing.ShadowFormat:
        """Gets shadow formatting for the shape."""
        ...
{{< /highlight >}}

With this property customers can set or get one of the preset shadow types.
{{< highlight python >}}
class ShadowFormat:
    ...

    @property
    def type(self) -> aw.drawing.ShadowType:
        """Gets the specified ShadowType for ShadowFormat."""
        ...

    @type.setter
    def type(self, value: aw.drawing.ShadowType):
        """Sets the specified ShadowType for ShadowFormat."""
        ...
{{< /highlight >}}

Users can also get information about a shadow's visibility.
{{< highlight python >}}
class ShadowFormat:
    ...

    @property
    def visible(self) -> bool:
        """Returns True if the formatting applied to this instance is visible.
        
        Unlike clear(), assigning False to visible does not clear the formatting,
        it only hides the shape effect."""
        ...
{{< /highlight >}}

And it is also possible to clear ShadowFormat.
{{< highlight python >}}
class ShadowFormat:
    ...

    def clear(self):
        """Clears shadow format."""
        ...
{{< /highlight >}}

Use Case:
{{< highlight python >}}
doc = aw.Document("DocumentWithShape.docx")
shape = doc.first_section.body.get_child(aw.NodeType.SHAPE, 0, True).as_shape()
# Checking whether the shadow effect is visible and whether the preset type is SHADOW2.
if shape.shadow_format.visible and shape.shadow_format.shape_type == aw.drawing.ShapeType.SHADOW2:
    # Setting the preset shadow type to SHADOW7.
    shape.shadow_format.type = aw.drawing.ShadowType.SHADOW7
# Checking whether the shadow is customized, i.e. the preset type is SHADOW_MIXED.
if shape.shadow_format.type == aw.drawing.ShadowType.SHADOW_MIXED:
    # Clearing ShadowFormat.
    shape.shadow_format.clear()
{{< /highlight >}}
	
### ReportBuildOptions.RESPECT_JPEG_EXIF_ORIENTATION enum member

Related issue: WORDSNET-23295

The following member has been added to the ReportBuildOptions enum:
{{< highlight python >}}
class ReportBuildOptions(IntEnum):
    ...

    # Specifies that the engine should use EXIF ​​image orientation values to appropriately rotate inserted
    # JPEG images.
    RESPECT_JPEG_EXIF_ORIENTATION = 16
{{< /highlight >}}

The option can be applied while building a report in the following way:
{{< highlight python >}}
engine = aw.reporting.ReportingEngine()
engine.options |= aw.reporting.ReportBuildOptions.RESPECT_JPEG_EXIF_ORIENTATION
engine.build_report(...)
{{< /highlight >}}

### Added new class for saving PDFs to other fixed formats

Related feature task: WORDSNET-23059

We've added a new way to work with PDF input files. Now they can be converted into a fixed format without using Words layout model.

I.e. the feature runs without Document class and returns the result in a stream object.

Example:
{{< highlight python >}}
pdf_renderer = aw.pdf2word.fixedformats.PdfFixedRenderer();
options = aw.pdf2word.fixedformats.PdfFixedOptions()
options.page_index = 0
options.page_count = 2
result_stream = pdf_renderer.save_pdf_as_html(pdf_stream, options)
{{< /highlight >}}

Pros:
 - More accurate conversion (positions of text and other elements).
 - Better performance and memory usage (less logic to run, no need to build flow models, etc).

Cons:
 - The list of output formats is limited for now (PDF, Html, XPS, Jpeg, Png, Tiff, Bmp).
 - There is no way to edit the data during the conversion.
 - A small amount of options such as Password, page range and Jpeg image quality.

Supported methods:
{{< highlight python >}}
save_pdf_as_html(...)
save_pdf_as_xps(...)
save_pdf_as_images(...)
save_pdf_as_pdf(...)
{{< /highlight >}}

Available options:

 - page_index and page_count can be used to select a subset of pages.
 - password - allows to decode an encrypted PDF. The result would be decrypted.
 - jpeg_quality - can be provided before save_pdf_as_images calls to setup output Jpeg image quality.
 - image_format - should be used to specify the output image format for save_pdf_as_images.
 
 All options are optional and can be ommited in favor of default values.
