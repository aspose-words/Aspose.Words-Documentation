---
title: Options When Converting to PDF
second_title: Aspose.Words for Python via .NET
articleTitle: Specify Rendering Options When Converting to PDF
linktitle: Specify Rendering Options When Converting to PDF
description: "Convert a document to PDF with advanced options using Python. Use PdfSaveOptions to change the result of saving a document to PDF format."
type: docs
weight: 20
url: /python-net/specify-rendering-options-when-converting-to-pdf/
aliases: [/python/specify-rendering-options-when-converting-to-pdf/]
timestamp: 2024-10-21-11-17-44
---

The PDF format is a fixed-page format that is very popular among users and widely supported by various applications, because a PDF document looks the same on any device. For that reason, converting to PDF is an important feature of Aspose.Words.

PDF is a complex format. Several stages of calculations are required in the process of converting a document to PDF, including the layout calculation. Since these stages include complex computations, they are time-consuming. Also, the PDF format is rather complex by itself. It has a specific file structure, graphics model and font embedding. Moreover, it features some complex output functionality, such as document structure tags, encryption, digital signatures, and editable forms.

Aspose.Words layout engine imitates the way the Microsoft Word’s page layout engine works. Therefore, Aspose.Words makes PDF output documents look as close as possible to what you can see in Microsoft Word. Sometimes it is necessary to specify additional options, which can affect the result of saving a document into the PDF format. These options can be specified by use of the [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) class, containing the properties that determine how the PDF output will be displayed.

Some examples of using [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) are provided below.

{{% alert color="primary" %}}

Currently, you can also save to PDF/A-1 and PDF/A-2 formats. Note that with the PDF/A format, an output file size is larger than a regular PDF file size.

[PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) and [PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b) are marked as obsolete.

For more information on PDF/A, see the next article, "Learn Features of Conversion to PDF/A".

{{% /alert %}}

## Creating a PDF Document with Fillable Forms

It is also possible to export fillable forms from a Microsoft Word document into output PDF, which has fillable forms instead of a plain text. Use the [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/) property to save a document as PDF with fillable forms.

Note that in contrast to Microsoft Word, the PDF format has a limited number of options for editable forms, such as textbox, combobox, and checkbox. Microsoft Word has more types of forms, for example, calendar date picker. Generally, it is not possible to fully imitate Microsoft Word behavior in PDF. Therefore, in some complex cases, PDF output may differ from what you see in Microsoft Word.

The code example below shows how to save a document as PDF with fillable forms with specified Jpeg compression and quality:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## Exporting Document Structure and Custom Properties

The [export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/) property enables you to export document structure to PDF output.

PDF logical structure facilities provide a mechanism for incorporating information, regarding the document content structure, into a PDF file. Aspose.Words preserves information about the structure from a Microsoft Word document, such as paragraphs, lists, tables, footnotes/endnotes, etc.

The following example demonstrates how to save a document to PDF format, preserving the document structure:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

Aspose.Words also allows you to export document custom properties to PDF, which is demonstrated by the following example:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## Exporting Outlines from Bookmarks and Headings in Output PDF

If you want to export bookmarks as outlines in output PDF, you can use the [default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/) property. This property specifies the default level in the document outline, at which Microsoft Word bookmarks are displayed. If the document contains bookmarks in the header/footer of the document, you can set the [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) property to [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) or [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all) in order to specify how they are exported in output PDF. The bookmarks in headers/footers are not exported when the value of [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) is [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none).

The code example below shows how to export bookmarks from the first header/footer of a section:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

The output PDF of this example is shown below:

![specify-rendering-options-when-converting-to-pdf_1](specify-rendering-options-when-converting-to-pdf-1.png)

When [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) is set to [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) and the document has even and odd headers/footers or a different first-page header/footer, bookmarks are exported for the first unique headers/footers in a section.

You can also export headings in the output PDF, using the [headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/) property. This property specifies how many levels of headings are included in the document outline.

The code example below shows how to export headings with three levels:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

The output PDF of this example is depicted below:

![specify-rendering-options-when-converting-to-pdf_2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

A bookmark or heading navigation may have different appearances in various PDF viewers. Moreover, in some applications, bookmarks and heading navigation are not available in UI.

{{% /alert %}}

## Downsampling Images to Reduce Document Size

Aspose.Words provides an ability to downsample images in order to reduce the output PDF size, using the [downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/) property. Downsampling is enabled by default in the [downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/) property.

Note that it is also possible to set a specific resolution in the [resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/) property, or a resolution threshold in the [resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/) property. In the second case, if the image resolution is less than the threshold value, then downsampling will not apply.

The code example below displays how to change the resolution of images in an output PDF document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

Resolution is calculated according to the real image size on the page.

## Embedding Fonts in Adobe PDF Format

Aspose.Words also enables you to control how fonts are embedded into the resulting PDF documents. Fonts need to be embedded into any Adobe PDF document to ensure that the document can be correctly rendered on any machine (see more details about font rendering in the section [Using TrueType Fonts](/words/python-net/using-truetype-fonts/)). By default, Aspose.Words embeds a subset of fonts used in the document into the generated PDF. In this case, only the glyphs (characters) used in the document are saved to PDF.

### When to Use Full Fonts and When to Subset

There is a way to specify an option for Aspose.Words to embed full fonts. Further details, along with some advantages and disadvantages of each setting are described in the table below.

| Embed Fonts Mode | Advantages | Disadvantages |
| :- | :- | :- |
| `Full` | Useful when you want to edit the resulting PDF later by adding or modifying the text. All fonts are included, hence all glyphs are present. | Since some fonts are large (several megabytes), embedding them without subsetting can result in large output files. |
| `Subset` | Subsetting is useful if you want to keep the output file size smaller. | <p>The user cannot fully add or edit text using the subsetted font in the output PDF document. This is because not all glyphs of the font are present.</p><p>If multiple PDFs are saved with subsetted fonts and assembled together, then the combined PDF document may have a font containing many unnecessary subsets.</p> |

### Embedding Full Fonts in PDF

The [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) property enables you to specify how Aspose.Words embeds fonts into an output PDF document.

- To embed full fonts into the output PDF document, set [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) to *True*
- To subset fonts when saving to PDF, set [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) to *False*

The following example demonstrates how to embed full fonts in the output PDF document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

The following example demonstrates how to set Aspose.Words to subset fonts in the output PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

You can download the template file for these examples from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## How to Control Embedding Core Fonts and Windows Standard Fonts

Core fonts and Windows Standard fonts are the “standard” sets of fonts, which are usually present on the target machine or provided by the document reader, therefore they do not need to be embedded in the output PDF. By not embedding these fonts, you can decrease the size of rendered PDF documents and yet maintain portability.

Aspose.Words provides options to choose how fonts are exported to PDF. You can choose either to embed core and standard fonts into the output PDF or to skip embedding them and use standard core PDF fonts or system fonts on the target machine instead. Using either one of these options normally results in significant file size reduction for PDF documents generated by Aspose.Words.

- Since these options are mutually exclusive, you should choose only one at a time.
- When saving with PDF/A-1 compliance, all used fonts must be embedded with the PDF document. When saving with this compliance, the [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) property must be set to *False* and the [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) property must be set to [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all).

### Embedding Core Fonts

The option to embed Core fonts can be enabled or disabled by using the [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) property. When it is set to true, the following most popular “True Type” fonts (Base 14 fonts) are not embedded in the output PDF document:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

These fonts are replaced with the corresponding core Type 1 fonts, which are provided by a reader when the PDF is opened.

The example provided below shows how to set Aspose.Words to avoid embedding core fonts and let the reader to substitute them with PDF Type 1 fonts:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

You can download the template file for this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Since PDF viewers provide core fonts on any supported platform, this option is also useful when greater document portability is required. However, core fonts may look different from system fonts.

{{% alert color="primary" %}}

This setting works only for ANSI (Windows-1252) encoding text. Writing a non-ANSI text to PDF will always require the corresponding fonts to be embedded.

{{% /alert %}}

### Embedding System Fonts

This option can be enabled or disabled by using the [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/). When this property is set to [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard), the “Arial” and “Times New Roman” true type fonts are not embedded into a PDF document. In this case, the client viewer relies on the fonts that are installed on the client's operating system. When the [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) property is set to [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none), Aspose.Words do not embed any fonts.

The example below shows how to set Aspose.Words to skip embedding Arial and Times New Roman fonts into a PDF document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

This mode is most useful when you wish to view your documents on the same platform, preserving the exact appearance of fonts in the output PDF.

{{% alert color="primary" %}}

This setting works only for ANSI (Windows-1252) encoding text. Writing a non-ANSI text to PDF requires the corresponding font to be embedded.

{{% /alert %}}
