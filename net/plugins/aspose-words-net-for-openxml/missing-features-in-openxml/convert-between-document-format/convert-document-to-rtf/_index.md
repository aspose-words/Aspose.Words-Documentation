---
title: Convert Document to RTF
type: docs
weight: 30
url: /net/convert-document-to-rtf/
---

The type of file format known as **Rich Text Format** (or RTF for short), was developed by Microsoft. Any word processing program can open and use this format, whether the file was created in that program or not. This allows someone using Microsoft Word to read a document created in **WordPerfect**, for example. Documents formatted using **RFT** are also compatible with any computer operating system, from Windows, to Mac to Linux, to name a few.

{{< highlight csharp >}}
string FilePath = @"..\..\..\Sample Files\";
string FileName = FilePath + "Converting Document.docx";
Document doc = new Document(FileName);
doc.Save(FilePath + "Document.Doc2RtfSave Out.rtf");
{{< /highlight >}}
## **Download Sample Code**
- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)
