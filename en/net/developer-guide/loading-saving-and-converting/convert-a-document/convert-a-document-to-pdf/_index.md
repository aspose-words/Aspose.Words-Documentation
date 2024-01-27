---
title: Convert Word to PDF in C#
second_title: Aspose.Words for .NET
articleTitle: Convert a Document to PDF
linktitle: Convert a Document to PDF
description: "Convert a document to PDF using C#. Convert DOCX to PDF C#. Various input formats are supported, including Word, OpenOffice, Image and eBook formats."
type: docs
weight: 10
url: /net/convert-a-document-to-pdf/
---

The ability to easily and reliably convert documents from one format to another is a key feature of Aspose.Words. One of the most popular formats for converting is PDF – a fixed-layout format, which preserves the original appearance of a document during its rendering on various platforms. The “rendering” term is used in Aspose.Words to describe the process of converting a document into a file format that is paginated or has the concept of pages.

## Convert a Word Document to PDF

Conversion from Word to PDF is a rather complex process that requires several stages of calculation. Aspose.Words layout engine mimics the way the Microsoft Word’s page layout engine works, making PDF output documents look as close as possible to what you can see in Microsoft Word.

With Aspose.Words you can programmatically convert a document from Word formats, such as DOC or DOCX, to PDF without using Microsoft Office. This article explains how to perform this conversion.

{{% alert color="primary" %}}

Note that the number of pages in a document affects the conversion time.

{{% /alert %}}

### Convert DOCX or DOC to PDF

Converting from the DOC or DOCX document format into the PDF format in Aspose.Words is very easy and can be accomplished with just two lines of code that:

1. Load your document into a [Document](https://reference.aspose.com/words/net/aspose.words/document/) object using one of its constructors by specifying the document name with its format extension.
1. Invoke one of the [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) methods on the **Document** object and specify the desired output format as PDF by entering a file name with the “.PDF” extension.

The following code example shows how to convert a document from DOCX into PDF using the [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) method:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Sometimes it is necessary to specify additional options, which can affect the result of saving a document as a PDF. These options can be specified by the use of the [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) class, containing properties that determine how the PDF output will be displayed.

Note that with the same technique, you can convert any flow-layout format document to PDF format.

{{% /alert %}}

### Convert to Different PDF Standards

Aspose.Words provides the [PdfCompliace ](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/)enumeration to support the conversion of DOC or DOCX into various PDF format standards (such as PDF 1.7, PDF 1.5, etc.).

The following code example demonstrates how to convert a document to PDF 1.7 using [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) with compliance to PDF17:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## Convert Images to PDF

Converting to PDF is not restricted by Microsoft Word document formats. Any format supported by Aspose.Words, including programmatically created, can also be converted to PDF. For example, we can convert single-page images, such as JPEG, PNG, BMP, EMF, or WMF, as well as multi-page images, such as TIFF and GIF, to PDF.

The following code example shows how to convert JPEG and TIFF images to PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

To make this code work, you need to add references to Aspose.Words and `System.Drawing` to your project.

## Reduce PDF Output Size

When saving to PDF, you can specify whether you want to optimize the output. To do this, you need to set the [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) flag to true, and then redundant nested canvases and empty canvases will be removed, neighbor glyphs with the same formatting will be concatenated.

The following code example shows how to optimize the output:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

Using the **OptimizeOutput** property may affect the accuracy of content display.

{{% /alert %}}

## See Also

- The article [“Rendering"](/words/net/rendering/) for more information on the fixed-page and flow-layout formats
- The article ["Converting to Fixed-page Format"](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) for more information on the page layout
- The article ["Specify Rendering Options When Converting to PDF"](/words/net/specify-rendering-options-when-converting-to-pdf/) for more information on using the `PdfSaveOptions` class
- The article ["Learn Features of Conversion to PDF/A and PDF/UA"](https://docs.aspose.com/words/net/learn-features-of-conversion-to-pdf-a-pdf-ua/) describing which PDF standard and the relevant ISO for PDF standards support Aspose.Words
- The article ["Which PDF Standard Is Better to Choose"](https://docs.aspose.com/words/net/which-pdf-standard-is-better-to-choose/) to determine which PDF standards make sense for which cases

- The article ["Working with PDF/A or PDF/UA"](https://docs.aspose.com/words/net/working-with-pdfa-or-pdfua/) describes the requirements for the document content in PDF/A and PDF/UA formats – mainly the requirements for the structure and fonts

- The article ["Accessibility Issue Warnings When Saving to PDF/A and PDF/UA"](https://docs.aspose.com/words/net/warnings-when-saving-to-pdfa-and-pdfua/) describes what content accessibility requirements PDF/A and PDF/UA impose
