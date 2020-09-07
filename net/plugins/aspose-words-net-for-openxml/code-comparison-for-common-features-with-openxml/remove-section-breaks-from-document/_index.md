---
title: Remove Section Breaks from Document
type: docs
weight: 180
url: /net/remove-section-breaks-from-document/
---

### **OpenXML**
Below is the code for removing Section Breaks from MS Word Document using OpenXML SDK.

{{< highlight csharp >}}
  string FilePath = @"..\..\..\..\Sample Files\";
  string fileName = FilePath + "Remove Section Breaks.docx";
  RemoveSectionBreaks(fileName);
  static void RemoveSectionBreaks(string filename)
  {
    using (WordprocessingDocument myDoc = WordprocessingDocument.Open(filename, true))
    {
      MainDocumentPart mainPart = myDoc.MainDocumentPart;
      List<ParagraphProperties> paraProps = mainPart.Document.Descendants<ParagraphProperties>().Where(pPr => IsSectionProps(pPr)).ToList();
      foreach (ParagraphProperties pPr in paraProps)
      {
         pPr.RemoveChild<SectionProperties>(pPr.GetFirstChild<SectionProperties>());
      }
      mainPart.Document.Save();
    }
  }
  static bool IsSectionProps(ParagraphProperties pPr)
  {
     SectionProperties sectPr = pPr.GetFirstChild<SectionProperties>();
     if (sectPr == null)
       return false;
     else
       return true;
  }
{{< /highlight >}}
### **Aspose.Words**
Below is the code for removing Section Breaks from MS Word Document using Aspose.Words.

{{< highlight csharp >}}
  string FilePath = @"..\..\..\..\Sample Files\";
  string fileName = FilePath + "Remove Section Breaks.docx";
  Document doc = new Document(fileName);
  RemoveSectionBreaks(doc);
  private static void RemoveSectionBreaks(Document doc)
  {
    // Loop through all sections starting from the section that precedes the last one
    // and moving to the first section.
    for (int i = doc.Sections.Count - 2; i >= 0; i--)
    {
      // Copy the content of the current section to the beginning of the last section.
      doc.LastSection.PrependContent(doc.Sections[i]);

      // Remove the copied section.
      doc.Sections[i].Remove();
     }
   }
{{< /highlight >}}
### **Download Running Example**
- [CodePlex](https://asposewordsopenxml.codeplex.com/releases/view/620544)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7#content)
### **Download Sample Code**
- [CodePlex](https://asposewordsopenxml.codeplex.com/SourceControl/latest#Aspose.Words VS OpenXML/Remove Section Breaks/)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20OpenXML%20Words/Aspose.Words%20VS%20OpenXML/Remove%20Section%20Breaks)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7/view/SourceCode#content)

{{% alert color="primary" %}} 

For more information about Aspose.Words features please visit [Remove Page and Section Breaks](https://docs.aspose.com/words/net/working-with-sections/#how-to-remove-page-and-section-breaks)

{{% /alert %}}
