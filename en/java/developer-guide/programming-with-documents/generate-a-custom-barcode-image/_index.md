---
title: Create BarCode in Java
second_title: Aspose.Words for Java
articleTitle: Generate a Custom BarCode Image
linktitle: Generate a Custom BarCode Image
description: "Example of barcode shape generation using Java."
type: docs
weight: 350
url: /java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

A barcode is a visual representation of data in the form of parallel lines or patterns. Barcodes are widely used in various industries such as retail, logistics, healthcare, banking, and many others.

Microsoft Word allows users to embed barcodes directly into documents using fields. Users can insert a specific type of barcode, such as a QR code or a linear barcode, using the [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) field.

In this article, we will look at how the BARCODE field is implemented in Aspose.Words and how Aspose.Words allows users to work with Word documents to which a barcode has already been added.

## Barcode Types Supported by Aspose.Words

Aspose.Words supports various types of barcodes. The barcode type is passed as a string value in the [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType) property.

{{% alert color="primary" %}}

Since working with barcodes within the functionality of Aspose.Words is limited, the user can use any library, including Aspose.Barcode, or write his own rendering to work with barcodes. You can learn more about the types of barcodes [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

When saving to Word formats that support barcodes, you can use any type of barcode that is [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). If an incorrect type of barcode was passed, Word will display an error.

When saving to other formats, such as PDF, Aspose.Words delegates barcode rendering to the user code, so the user is limited to the barcode types of their implementation or library used.

## Insert a Barcode into a Document or Load a Document with an Added Barcode

Aspose.Words provides the ability to:

1. Programmatically insert a barcode into a document using the [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) and [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) field codes
2. Or load a Word document with barcodes already inserted into it for further work

Aspose.Words has an interface for generating custom barcodes that makes it easy to use [Aspose.Words](https://products.aspose.com/words/java/) and [Aspose.BarCode](https://products.aspose.com/barcode/java/) together to render barcode images in output documents. For example, you can create a DOC, OOXML, or RTF document and add DISPLAYBARCODE field to it using Aspose.Words. Or you can load a DOC, OOXML or RTF document with DISPLAYBARCODE field already existing in it and provide your implementation of custom barcode generator.

A typical DISPLAYBARCODE field has the following syntax:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Below is an example code generator using the Aspose.Words and Aspose.BarCode APIs. This example shows how to insert barcode images at DISPLAYBARCODE field position in a Word document:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

You can also save the document with the loaded or newly inserted barcode in fixed page formats such as PDF, XPS, etc. The following code example shows how to save a Word document to PDF format:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

For more information about converting documents from one format to another, see  the [Convert a Document](/words/java/convert-a-document/) documentation section.

{{% /alert %}}

{{% alert color="primary" %}}

You can also use the [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) interface to convert barcodes embedded in Word documents into images. The resulting images can be extracted from the document – see the Working with Images article for details.

{{% /alert %}}

## Specify Barcode Options

When working with barcodes, you can set some additional properties. Aspose.Words provides you with the [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) class – class for barcode parameters to pass-through to BarcodeGenerator.

Aspose.Words supports embedded 96 ppi resolution for images generated with [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), which limits the minimum size of a barcode image. To address this, developers can manually insert barcode images with the target resolution into a Word document and save them in the required format. For more details and examples on working with barcodes, see the article [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
