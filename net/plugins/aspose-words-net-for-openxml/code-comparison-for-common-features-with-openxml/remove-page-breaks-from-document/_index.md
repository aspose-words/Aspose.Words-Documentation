---
title: Remove Page Breaks from Document
type: docs
weight: 170
url: /net/remove-page-breaks-from-document/
---

### **OpenXML**
Below is the code example for removing page breaks from MS Word Document.

{{< highlight cs >}}
  string FilePath = @"..\..\..\..\Sample Files\";
  string fileName = FilePath + "Remove Page Breaks.docx";
  RemovePageBreaks(fileName);
  static void RemovePageBreaks(string filename)
  {
     using (WordprocessingDocument myDoc = WordprocessingDocument.Open(filename, true))
     {
        MainDocumentPart mainPart = myDoc.MainDocumentPart;
        List<Break> breaks = mainPart.Document.Descendants<Break>().ToList();
        foreach (Break b in breaks)
        {
           b.Remove();
        }
        mainPart.Document.Save();
     }
  }
{{< /highlight >}}
### **Aspose.Words**
Below is the code example for removing page breaks from MS Word Document using Aspose.Words.

{{< highlight cs >}}
  string FilePath = @"..\..\..\..\Sample Files\";
  string fileName = FilePath + "Remove Page Breaks.docx";
  Document doc = new Document(fileName);
  RemovePageBreaks(doc);
  private static void RemovePageBreaks(Document doc)
  {
    // Retrieve all paragraphs in the document.
    NodeCollection paragraphs = doc.GetChildNodes(NodeType.Paragraph, true);

    // Iterate through all paragraphs
    foreach (Paragraph para in paragraphs)
    {
      // If the paragraph has a page break before set then clear it.
      if (para.ParagraphFormat.PageBreakBefore)
      para.ParagraphFormat.PageBreakBefore = false;

      // Check all runs in the paragraph for page breaks and remove them.
      foreach (Run run in para.Runs)
      {
        if (run.Text.Contains(ControlChar.PageBreak))
        run.Text = run.Text.Replace(ControlChar.PageBreak, string.Empty);
      }
    }
{{< /highlight >}}
### **Download Running Example**
- [CodePlex](https://asposewordsopenxml.codeplex.com/releases/view/620544)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7#content)
### **Download Sample Code**
- [CodePlex](https://asposewordsopenxml.codeplex.com/SourceControl/latest#Aspose.Words VS OpenXML/Remove Page Breaks/)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20OpenXML%20Words/Aspose.Words%20VS%20OpenXML/Remove%20Page%20Breaks)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7/view/SourceCode#content)

{{% alert color="primary" %}} 

For more information about Aspose.Words features please visit [Remove Page and Section Breaks](http://www.aspose.com/docs/display/wordsnet/How+to++Remove+Page+and+Section+Breaks)

{{% /alert %}}
