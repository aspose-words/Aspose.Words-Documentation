---
title: How to Generate a Custom BarCode Image for DISPLAYBARCODE Field
type: docs
weight: 80
url: /java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

{{% alert color="primary" %}} 

Aspose.Words has an interface for generating custom barcodes which makes it very easy to use [Aspose.Words](http://www.aspose.com/products/words/java) and [Aspose.BarCode](http://www.aspose.com/java/barcode-component.aspx) together to render barcode images in output documents. For example, you can load a DOC, OOXML or RTF document containing DISPLAYBARCODE Field into Aspose.Words, provide your implementation of custom barcode generator and save to fixed page formats such as PDF, XPS etc. A typical DISPLAYBARCODE field has the following syntax:

{ DISPLAYBARCODE "SomeData" QR \h 720 }

{{% /alert %}} 

Below is a sample code generator that leverages the Aspose.BarCode API. This example {shows|demonstrates} how to insert barcode images at DISPLAYBARCODE Field's position in Word document using Aspose.Words and Aspose.BarCode APIs.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GenerateACustomBarCodeImage-GenerateACustomBarCodeImage.java" >}}
