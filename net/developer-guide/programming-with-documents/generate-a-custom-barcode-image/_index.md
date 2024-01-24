---
title: How to Create BarCode
second_title: Aspose.Words for .NET
articleTitle: Generate a Custom BarCode Image
linktitle: Generate a Custom BarCode Image
description: "Example of barcode shape generation using C#."
type: docs
weight: 350
url: /net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words has an interface for generating custom barcodes which makes it very easy to use Aspose.Words and [Aspose.BarCode](https://products.aspose.com/barcode/net/) together to render barcode images in output documents. For example, you can load a DOC, OOXML or RTF document containing DISPLAYBARCODE Field into Aspose.Words, provide your implementation of custom barcode generator and save to fixed page formats such as PDF, XPS etc.

A typical `DISPLAYBARCODE` field has the following syntax:

{ DISPLAYBARCODE "SomeData" QR \h 720 }

Below is a sample code generator that leverages the `Aspose.BarCode` API. This example shows how to insert barcode images at DISPLAYBARCODE Field's position in Word document using Aspose.Words and `Aspose.BarCode` APIs:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
