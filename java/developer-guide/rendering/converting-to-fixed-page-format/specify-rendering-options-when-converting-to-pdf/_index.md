---
title: Specify Rendering Options When Converting to PDF
description: "Aspose.Words for Java provides the ability to convert DOC or DOCX to PDF. To change the result of saving a document to PDF format, you need to specify additional options for the PdfSaveOptions class."
type: docs
weight: 20
url: /java/specify-rendering-options-when-converting-to-pdf/
---

The PDF format is a fixed-page format that is very popular among users and widely supported by various applications because a PDF document looks the same on any device. For that reason, converting to PDF is an important feature of Aspose.Words.

PDF is a complex format. Several stages of calculations are required in the process of converting a document to PDF, including the layout calculation. Since these stages include complex computations, they are time-consuming. Also, the PDF format is rather complex by itself. It has a specific file structure, graphics model and font embedding. Moreover, it features some complex output functionality, such as document structure tags, encryption, digital signatures, and editable forms.

Aspose.Words layout engine imitates the way the Microsoft Word’s page layout engine works. Therefore, Aspose.Words makes PDF output documents look as close as possible to what you can see in Microsoft Word. Sometimes it is necessary to specify additional options, which can affect the result of saving a document into the PDF format. These options can be specified by the use of the [PdfSaveOptions](https://apireference.aspose.com/words/java/com.aspose.words/PdfSaveOptions) class, containing the properties that determine how the PDF output will be displayed.

Some examples of using **PdfSaveOptions** are provided below.

{{% alert color="primary" %}} 

Currently, you can also save to PDF/A-1 and PDF/A-2 formats. Note that with the PDF/A format, an output file size is larger than a regular PDF file size.

[PdfCompliance.PdfA1a](https://apireference.aspose.com/words/java/com.aspose.words/PdfCompliance#PDF_17) and [PdfCompliance.PdfA1b](https://apireference.aspose.com/words/java/com.aspose.words/PdfCompliance#PDF_17) are marked as obsolete.

For more information on PDF/A, see the next article, "Learn Features of Conversion to PDF/A".

{{% /alert %}} 

## Creating a PDF Document with Fillable Forms

It is also possible to export fillable forms from a Microsoft Word document into output PDF, which has fillable forms instead of a plain text. Use the [PreserveFormFields](https://apireference.aspose.com/words/java/com.aspose.words/pdfsaveoptions#PreserveFormFields) property to save a document as PDF with fillable forms.

Note that in contrast to Microsoft Word, the PDF format has a limited number of options for editable forms, such as textbox, combo box, and checkbox. Microsoft Word has more types of forms, for example, calendar date picker. Generally, it is not possible to fully imitate Microsoft Word behavior in PDF. Therefore, in some complex cases, PDF output may differ from what you see in Microsoft Word.

The code example below demonstrates how to save a document as PDF with fillable forms with specified Jpeg compression and quality:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Exporting Document Structure and Custom Properties

The [ExportDocumentStructure](https://apireference.aspose.com/words/java/com.aspose.words/pdfsaveoptions#ExportDocumentStructure) property allows you to export document structure to PDF output.

PDF logical structure facilities provide a mechanism for incorporating information, regarding the document content structure, into a PDF file. Aspose.Words preserves information about the structure from a Microsoft Word document, such as paragraphs, lists, tables, footnotes/endnotes, etc.

The following example shows how to save a document to PDF format, preserving the document structure:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words also allows you to export document custom properties to PDF, which is demonstrated by the following example:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Exporting Outlines from Bookmarks and Headings in Output PDF

If you want to export bookmarks as outlines in output PDF, you can use the [DefaultBookmarksOutlineLevel](https://apireference.aspose.com/words/java/com.aspose.words/outlineoptions#DefaultBookmarksOutlineLevel) property. This property specifies the default level in the document outline, at which Microsoft Word bookmarks are displayed. If the document contains bookmarks in the header/footer of the document, you can set the [HeaderFooterBookmarksExportMode](https://apireference.aspose.com/words/java/com.aspose.words/pdfsaveoptions#HeaderFooterBookmarksExportMode) property to [First](https://apireference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode#FIRST) or [All](https://apireference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode#ALL) in order to specify how they are exported in output PDF. The bookmarks in headers/footers are not exported when the value of **HeaderFooterBookmarksExportMode** is [None](https://apireference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode#NONE).

The code example below demonstrates how to export bookmarks from the first header/footer of a section:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

The output PDF of this example is shown below:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](specify-rendering-options-when-converting-to-pdf_1.png)

When **HeaderFooterBookmarksExportMode** is set to [First](https://apireference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode#FIRST) and the document has even and odd headers/footers or a different first-page header/footer, bookmarks are exported for the first unique headers/footers in a section.

You can also export headings in the output PDF, using the [HeadingsOutlineLevels](https://apireference.aspose.com/words/java/com.aspose.words/outlineoptions#HeadingsOutlineLevels) property. This property specifies how several levels of headings are included in the document outline.

The code example below demonstrates how to export headings with three levels:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

The output PDF of this example is depicted below:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](specify-rendering-options-when-converting-to-pdf_2.png)

{{% alert color="primary" %}} 

A bookmark or heading navigation may have different appearances in various PDF viewers. Moreover, in some applications, bookmarks and heading navigation are not available in UI.

{{% /alert %}} 

## Downsampling Images to Reduce Document Size

Aspose.Words provides an ability to downsample images in order to reduce the output PDF size, using the [DownsampleOptions](https://apireference.aspose.com/words/java/com.aspose.words/pdfsaveoptions#DownsampleOptions) property. Downsampling is enabled by default in the [DownsampleImages](https://apireference.aspose.com/words/java/com.aspose.words/downsampleoptions#DownsampleImages) property.

Note that it is also possible to set a specific resolution in the [Resolution](https://apireference.aspose.com/words/java/com.aspose.words/downsampleoptions#Resolution) property, or a resolution threshold in the [ResolutionThreshold](https://apireference.aspose.com/words/java/com.aspose.words/downsampleoptions#ResolutionThreshold) property. In the second case, if the image resolution is less than the threshold value, then downsampling will not apply.

The code example below displays how to change the resolution of images in an output PDF document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

Resolution is calculated according to the real image size on the page.

## Embedding Fonts in Adobe PDF Format

Aspose.Words also enables you to control how fonts are embedded into the resulting PDF documents. Fonts need to be embedded into any Adobe PDF document to ensure that the document can be correctly rendered on any machine (see more details about font rendering in the section ["Using TrueType Fonts"](/words/java/using-truetype-fonts/)). By default, Aspose.Words embeds a subset of fonts used in the document into the generated PDF. In this case, only the glyphs (characters) used in the document are saved to PDF.

### When to Use Full Fonts and When to Subset

There is a way to specify an option for Aspose.Words to embed full fonts. Further details, along with some advantages and disadvantages of each setting are described in the table below.

|Embed Fonts Mode|Advantages|Disadvantages|
| :- | :- | :- |
|Full|Useful when you want to edit the resulting PDF later by adding or modifying the text. All fonts are included, hence all glyphs are present.|Since some fonts are large (several megabytes), embedding them without subsetting can result in large output files.|
|Subset|Subsetting is useful if you want to keep the output file size smaller.|<p>The user cannot fully add or edit the text using the subsetted font in the output PDF document. This is because not all glyphs of the font are present.</p><p>If a few PDFs are saved with subsetted fonts and assembled together, then the combined PDF document may have a font containing numerous unnecessary subsets.</p>|

### Embedding Full Fonts in PDF

The [EmbedFullFonts](https://apireference.aspose.com/words/java/com.aspose.words/pdfsaveoptions#EmbedFullFonts) property allows you to specify how Aspose.Words embeds fonts into an output PDF document.

- To embed full fonts into the output PDF document, set **EmbedFullFonts** to true
- To subset fonts when saving to PDF, set **EmbedFullFonts** to false

The following example demonstrates how to embed full fonts in the output PDF document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

The following example demonstrates how to set Aspose.Words to subset fonts in the output PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}} 

You can download the template file for these examples from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering-Printing/Rendering.doc).

{{% /alert %}} 

## How to Control Embedding Core Fonts and Windows Standard Fonts

Core fonts and Windows Standard fonts are the “standard” sets of fonts, which are usually present on the target machine or provided by the document reader, therefore they do not need to be embedded in the output PDF. By not embedding these fonts, you can decrease the size of rendered PDF documents and yet maintain portability.

Aspose.Words provides options to choose how fonts are exported to PDF. You can choose either to embed core and standard fonts into the output PDF or to skip embedding them and use standard core PDF fonts or system fonts on the target machine instead. Using either one of these options normally results in significant file size reduction for PDF documents generated by Aspose.Words.

- Since these options are mutually exclusive, you should choose only one at a time.
- When saving with PDF/A-1 compliance, all used fonts must be embedded with the PDF document. When saving with this compliance, the [UseCoreFonts](https://apireference.aspose.com/words/java/com.aspose.words/pdfsaveoptions#UseCoreFonts) property must be set to false and the [FontEmbeddingMode](https://apireference.aspose.com/words/java/com.aspose.words/pdfsaveoptions#FontEmbeddingMode) property must be set to [EmbedAll](https://apireference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](http://www.aspose.com/api/net/words/aspose.words.saving/pdfsaveoptions/properties/usecorefonts)

### Embedding Core Fonts

The option to embed Core fonts can be enabled or disabled by using the [UseCoreFonts](https://apireference.aspose.com/words/java/com.aspose.words/pdfsaveoptions#UseCoreFonts) property. When it is set to true, the following most popular “True Type” fonts (Base 14 fonts) are not embedded in the output PDF document:

- Arial
- Times New Roman
- Courier New
- Symbol

These fonts are replaced with the corresponding core Type 1 fonts, which are provided by a reader when the PDF is opened.

The example provided below shows how to set Aspose.Words to avoid embedding core fonts and let the reader to substitute them with PDF Type 1 fonts:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}} 

You can download the template file for this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering-Printing/Rendering.doc).

{{% /alert %}} 

Since PDF viewers provide core fonts on any supported platform, this option is also useful when greater document portability is required. However, core fonts may look different from system fonts.

{{% alert color="primary" %}} 

This setting works only for ANSI (Windows-1252) encoding text. Writing a non-ANSI text to PDF will always require the corresponding fonts to be embedded.

{{% /alert %}} 

### Embedding System Fonts

This option can be enabled or disabled by using the [FontEmbeddingMode](https://apireference.aspose.com/words/java/com.aspose.words/pdfsaveoptions#FontEmbeddingMode)[ ](http://www.aspose.com/api/net/words/aspose.words.saving/pdfsaveoptions/properties/embedstandardwindowsfonts)property. When this property is set to [EmbedNonstandard](https://apireference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_NONSTANDARD), the “Arial” and “Times New Roman” true type fonts are not embedded into a PDF document. In this case, the client viewer relies on the fonts that are installed on the client operating system. When the **FontEmbeddingMode** property is set to [EmbedNone](https://apireference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_NONE), Aspose.Words do not embed any fonts.

The example below shows how to set Aspose.Words to skip embedding Arial and Times New Roman fonts into a PDF document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

This mode is most useful when you wish to view your documents on the same platform, preserving the exact appearance of fonts in the output PDF.

{{% alert color="primary" %}} 

This setting works only for ANSI (Windows-1252) encoding text. Writing a non-ANSI text to PDF requires the corresponding font to be embedded.

{{% /alert %}}
