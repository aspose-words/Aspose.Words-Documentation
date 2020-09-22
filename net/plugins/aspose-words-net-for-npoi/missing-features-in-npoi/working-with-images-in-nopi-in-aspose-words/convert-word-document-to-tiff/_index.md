---
title: Convert Word Document to TIFF
type: docs
weight: 20
url: /net/convert-word-document-to-tiff/
---

{{% alert color="primary" %}} 

To convert a Word document to TIFF simply invoke the Document.Save method and specify a file name with the “.TIFF” extension.

{{% /alert %}} 

The code sample below converts document's pages from DOC to TIFF.

##### **Example**

**C#**

{{< highlight csharp >}}
string fileDir = "../../data/";

// open the document
Document doc = new Document(fileDir + "test.doc");

// Save the document as multipage TIFF.
doc.Save("TestFile Out.tiff");
{{< /highlight >}}

## **Download Sample Code**

- [CodePlex](https://asposewordsnpoi.codeplex.com/downloads/get/1556913)
- [Github](https://github.com/asposewords/Aspose.Words-for-.NET/releases/tag/Aspose.WordsFeaturesmissinginNPOIv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/More-Code-Examples-of-d19b2e19/view/SourceCode#content)

## **Download Running Code**

- [CodePlex](https://asposewordsnpoi.codeplex.com/SourceControl/latest#Missing Features of NPOI HWPF and XWPF/Aspose.Words/08-WorkingWithImages/08.02-ConvertWordDocumentToTIFF/)
- [Github](https://github.com/asposewords/Aspose.Words-for-.NET/releases/download/Aspose.WordsFeaturesmissinginNPOIv1.2/08.02-ConvertWordDocumentToTIFF.zip)
- [Code.MSDN](https://code.msdn.microsoft.com/More-Code-Examples-of-d19b2e19/view/SourceCode#content)
