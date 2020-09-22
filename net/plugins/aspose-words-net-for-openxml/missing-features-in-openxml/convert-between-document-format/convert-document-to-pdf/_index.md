---
title: Convert Document to PDF
type: docs
weight: 40
url: /net/convert-document-to-pdf/
---

{{< highlight csharp >}}
string FilePath = @"..\..\..\Sample Files\";
string FileName = FilePath + "Converting Document.docx";
Document doc = new Document(FileName);
doc.Save(FilePath + "Document.Doc2PdfSave Out.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## **Download Sample Code**

- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)
