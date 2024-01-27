---
title: Convert Word Document to TIFF
second_title: Aspose.Words for .NET
articleTitle: Convert Word Document to TIFF
linktitle: Convert Word Document to TIFF
description: "Convert Word document to TIFF. NPOI does not provide an opportunity to work with formats other than Word using C#."
type: docs
weight: 20
url: /net/convert-word-document-to-tiff/
---

{{% alert color="primary" %}}

To convert a Word document to TIFF, simply invoke the [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) method and specify a file name with the “.TIFF” extension.

See more details in the ["Save a Document"](/words/net/save-a-document/) documentation section.

{{% /alert %}}

The following code example shows how to convert document pages from DOC to TIFF:

{{< highlight csharp >}}
string fileDir = "../../data/";

// open the document
Document doc = new Document(fileDir + "test.doc");

// Save the document as multipage TIFF.
doc.Save("TestFile Out.tiff");
{{< /highlight >}}

See also:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/Aspose.WordsFeaturesmissinginNPOIv1.2) for code example

- [Github](https://github.com/asposewords/Aspose.Words-for-.NET/releases/download/Aspose.WordsFeaturesmissinginNPOIv1.2/08.02-ConvertWordDocumentToTIFF.zip) for running code
