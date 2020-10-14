---
title: Convert Word Document to PNG
type: docs
weight: 10
url: /net/convert-word-document-to-png/
---

{{% alert color="primary" %}} 

To convert a Word document to PNG simply invoke the Document.Save method and specify a file name with the “.PNG” extension.

{{% /alert %}} 

The code sample below converts  each document's  page from DOC to PNG's 

##### Example

**C#**

{{< highlight csharp >}}

// define document file location
string fileDir = "../../data/";

// load the document.
Document doc = new Document(fileDir + "test.doc");
//Create an ImageSaveOptions object to pass to the Save method
ImageSaveOptions options = new ImageSaveOptions(SaveFormat.Png);

// Save each page of the document as Png
for (int i = 0; i < doc.PageCount; i++)
{
options.PageIndex = i;
doc.Save(string.Format(i + "WordDocumentAsPNG out.Png", i), options);
}
{{< /highlight >}}

## Download Sample Code

- [CodePlex](https://asposewordsnpoi.codeplex.com/downloads/get/1556912)
- [Github](https://github.com/asposewords/Aspose.Words-for-.NET/releases/tag/Aspose.WordsFeaturesmissinginNPOIv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/More-Code-Examples-of-d19b2e19/view/SourceCode#content)

## Download Running Code

- [CodePlex](https://asposewordsnpoi.codeplex.com/SourceControl/latest#Missing Features of NPOI HWPF and XWPF/Aspose.Words/08-WorkingWithImages/08.01-ConvertWordDocumentToPNG/)
- [Github](https://github.com/asposewords/Aspose.Words-for-.NET/releases/download/Aspose.WordsFeaturesmissinginNPOIv1.2/08.01-ConvertWordDocumentToPNG.zip)
- [Code.MSDN](https://code.msdn.microsoft.com/More-Code-Examples-of-d19b2e19/view/SourceCode#content)
