---
title: Convert Document to EPUB
type: docs
weight: 10
url: /net/convert-document-to-epub/
---

An **EPUB** document (short for electronic publication) is HTML-based format commonly used for electronic book distribution. This format is fully supported in **Aspose.Words** for exporting electronic books compatible with majority of devices used for reading. This article shows how to convert simple MS Word document to **EPUB** with a few lines of code. It also demonstrates what a sample document looks like after being converted to **EPUB** using **Aspose.Words**.

Converts a document to EPUB using default save options.

{{< highlight csharp >}}
string FilePath = @"..\..\..\Sample Files\";
string FileName = FilePath + "Converting Document.docx";

// Open an existing document from disk.
Document doc = new Document(FileName);

// Create a new instance of HtmlSaveOptions. This object allows us to set options that control

// how the output document is saved.
HtmlSaveOptions saveOptions =
    new HtmlSaveOptions();

// Specify the desired encoding.
saveOptions.Encoding = System.Text.Encoding.UTF8;

// Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB
 
// which allows you to limit the size of each HTML part. This is useful for readers which cannot read
 
// HTML files greater than a certain size e.g 300kb.
saveOptions.DocumentSplitCriteria = DocumentSplitCriteria.HeadingParagraph;

// Specify that we want to export document properties.
saveOptions.ExportDocumentProperties = true;

// Specify that we want to save in EPUB format.
saveOptions.SaveFormat = SaveFormat.Epub;

// Export the document as an EPUB file.
doc.Save(FilePath + "Document.EpubConversion Out.epub", saveOptions);
{{< /highlight >}}

## Download Sample Code

- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)
