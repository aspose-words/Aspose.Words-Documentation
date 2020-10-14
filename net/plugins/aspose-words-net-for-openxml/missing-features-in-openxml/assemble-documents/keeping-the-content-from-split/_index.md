---
title: Keeping the content from Split
type: docs
weight: 20
url: /net/keeping-the-content-from-split/
---

It keeps the formatting of destination document as it is instead of following the source document contents.

{{< highlight csharp >}}
string FilePath = @"..\..\..\Sample Files\";
string SrcFileName = FilePath + "Joining Mutiple documents 1.docx";
string DestFileName = FilePath + "Joining Mutiple documents 2.docx";
Document dstDoc = new Document(SrcFileName);
Document srcDoc = new Document(SrcFileName);

// Set the source document to appear straight after the destination document's content.
srcDoc.FirstSection.PageSetup.SectionStart = SectionStart.Continuous;

// Iterate through all sections in the source document.
foreach (Paragraph para in srcDoc.GetChildNodes(NodeType.Paragraph, true))
{
    para.ParagraphFormat.KeepWithNext = true;
}
dstDoc.AppendDocument(srcDoc, ImportFormatMode.KeepSourceFormatting);
dstDoc.Save(SrcFileName);
{{< /highlight >}}

## Download Sample Code

- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)
