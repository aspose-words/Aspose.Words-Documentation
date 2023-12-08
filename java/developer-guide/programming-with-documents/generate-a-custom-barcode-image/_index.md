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

{{% alert color="primary" %}}

Aspose.Words has an interface for generating custom barcodes which makes it very easy to use [Aspose.Words](https://products.aspose.com/words/java/) and [Aspose.BarCode](https://products.aspose.com/barcode/java/) together to render barcode images in output documents. For example, you can load a DOC, OOXML or RTF document containing DISPLAYBARCODE Field into Aspose.Words, provide your implementation of custom barcode generator and save to fixed page formats such as PDF, XPS etc. A typical DISPLAYBARCODE field has the following syntax:

{ DISPLAYBARCODE "SomeData" QR \h 720 }

{{% /alert %}}

Below is a sample code generator that leverages the Aspose.BarCode API. This example shows how to insert barcode images at DISPLAYBARCODE Field's position in Word document using Aspose.Words and Aspose.BarCode APIs.

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}
