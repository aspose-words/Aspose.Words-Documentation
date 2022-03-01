---
title: Convert Word Doc to Other Formats in NPOI – Aspose.Words for .NET
articleTitle: Convert Word Doc to Other Formats in NPOI
linktitle: Convert Word Doc to Other Formats in NPOI
description: "Convert DOC to other document formats easily and fast instead of using NPOI using C#."
type: docs
weight: 20
url: /net/convert-word-doc-to-other-formats-in-npoi/
---

## Microsoft Word - Conversion to Other Formats

Documents can be converted to other formats using Save As option in File menu.

## Aspose.Words - Convert Word Doc to Other Formats

{{% alert color="primary" %}}

To convert a document to other formats using Aspose.Words, simply invoke the save() method of Document class and specify a file name with the desired and supported extension.

Aspose.Words allows exporting or converting word documents to PDF, XPS, XamlFixed, XamlFlow, XamlFlowPack, EPUB, HTML, HtmlFixed, OpenXPS, PostScript, TXT and popular image/multimedia file formats including TIFF, JPG, PNG, BMP, SVG, SVG and SWF.

{{% /alert %}}

Converts a whole document from DOC to other formats using default options.

**C#**

{{< highlight csharp >}}
 Document wordDocument = new Document("Convert Word Doc to Other Formats.doc");
 wordDocument.Save("data/Convert Word Doc to Other Formatsblank.docx", SaveFormat.Docx);
 wordDocument.Save("data/Convert Word Doc to Other Formatsblank.bmp", SaveFormat.Bmp);
 wordDocument.Save("data/Convert Word Doc to Other Formatsblank.html", SaveFormat.Html);
 wordDocument.Save("data/Convert Word Doc to Other Formatsblank.pdf", SaveFormat.Pdf);
 wordDocument.Save("data/Convert Word Doc to Other Formatsblank.text", SaveFormat.Text);
{{< /highlight >}}

## NPOI HWPF XWPF - Convert Word Doc to Other Formats

**C#**

{{< highlight csharp >}}
  XWPFDocument  wordDocument = new XWPFDocument( new FileStream("Convert Word Doc to Other Formats.doc", FileMode.Open));
  using (FileStream sw = File.Create("data/Convert Word Doc to Other Formatsblank.docx"))
  {
      wordDocument.Write(sw);
  }
{{< /highlight >}}

## Download Running Code

Download **Convert Word Doc to Other Formats** from any of the below mentioned social coding sites:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/NPOI/Aspose.Words%20Vs%20NPOI%20HWPF%20and%20XWPF%20v1.1/Convert%20Word%20Doc%20to%20Other%20Formats)

## Download Sample Code

Download **Convert Word Doc to Other Formats** from any of the below mentioned social coding sites:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsNPOIHWPFandXWPF1.1)
