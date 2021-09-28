---
title: Convert a Document to PDF
description: "Aspose.Words for Java allows you to convert a document in Word or any other supported format to PDF, which preserves the original appearance of a document during its rendering on various platforms."
aliases: 
    - /java/converting-a-microsoft-word-document-using-save-method/
type: docs
weight: 10
url: /java/convert-a-document-to-pdf/
---

The ability to easily and reliably convert documents from one format to another is a key feature of Aspose.Words. One of the most popular formats for converting is PDF – a fixed-layout format, which preserves the original appearance of a document during its rendering on various platforms. The “rendering” term is used in Aspose.Words to describe the process of converting a document into a file format that is paginated or has the concept of pages.

## Convert a Word Document to PDF

Conversion from Word to PDF is a rather complex process that requires several stages of calculation. Aspose.Words layout engine mimics the way the Microsoft Word’s page layout engine works, making PDF output documents look as close as possible to what you can see in Microsoft Word.

With Aspose.Words you can programmatically convert a document from DOC or DOCX format to PDF without using Microsoft Office. This article explains how to perform this conversion.

{{% alert color="primary" %}} 

Note that the number of pages in a document affects the conversion time.

{{% /alert %}} 

### Converting DOC or DOCX to PDF

Converting from the DOC or DOCX document format into the PDF format in Aspose.Words is very easy and can be accomplished with just two lines of code that:

1. Load your document into a [Document](https://apireference.aspose.com/words/java/com.aspose.words/Document) object using one of its constructors by specifying the document name with its format extension.
1. Invoke one of the [Document.Save](https://apireference.aspose.com/words/java/com.aspose.words/document#save\(java.lang.String,int\)) methods on the **Document** object and specify the desired output format as PDF by entering a file name with the “.PDF” extension.

The following code example shows how to convert a document from DOCX into PDF using the Save method:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToPDF-Doc2Pdf.java" >}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}} 

Sometimes it is necessary to specify additional options, which can affect the result of saving a document as a PDF. These options can be specified by the use of the [PdfSaveOptions](https://apireference.aspose.com/words/java/com.aspose.words/PdfSaveOptions) class, containing properties that determine how the PDF output will be displayed.

Note that with the same technique, you can convert any flow-layout format document to PDF format.

{{% /alert %}} 

### Converting to Various PDF Standards

Aspose.Words provides the [PdfCompliace ](https://apireference.aspose.com/words/java/com.aspose.words/PdfCompliance)enumeration to support the conversion of DOC or DOCX into various PDF format standards (such as PDF 1.7, PDF 1.5, etc.).

The following code example demonstrates how to convert a document to PDF 1.7 using [PdfSaveOptions](https://apireference.aspose.com/words/java/com.aspose.words/PdfSaveOptions) with compliance to PDF17:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ConversionToPDF17.java" >}}

## Convert an Image to PDF

Converting to PDF is not restricted by Microsoft Word document formats. Any format supported by Aspose.Words, including programmatically created, can also be converted to PDF. For example, we can convert single-page images, such as JPEG, PNG, BMP, EMF, or WMF, as well as multi-page images, such as TIFF and GIF, to PDF.

The following code example shows how to convert JPEG and TIFF images to PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToPDF-ImageToPdf.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToPDF-ConvertImageToPDF.java" >}}

To make this code work, you need to add references to Aspose.Words, Java.awt.image, and javax.imageio class packages to your project.

## See Also

- The article [“Rendering"](/words/java/rendering/) for more information on the fixed-page and flow-layout formats
- The article ["Converting to Fixed-page Format"](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) for more information on the page layout
- The article ["Specify Rendering Options When Converting to PDF"](/words/java/specify-rendering-options-when-converting-to-pdf/) for more information on using the PdfSaveOptions class
