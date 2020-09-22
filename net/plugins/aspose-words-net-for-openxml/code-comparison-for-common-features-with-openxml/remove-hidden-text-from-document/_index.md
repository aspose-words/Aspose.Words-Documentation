---
title: Remove Hidden Text from Document
type: docs
weight: 160
url: /net/remove-hidden-text-from-document/
---

### **OpenXML**

Below is the code example for removing hidden text from MS Word Document.

{{< highlight csharp >}}
  string FilePath = @"..\..\..\..\Sample Files\";
  string fileName = FilePath + "Remove Hidden Text.docx";       
  WDDeleteHiddenText(fileName);
  public static void WDDeleteHiddenText(string docName)
  {
    // Given a document name, delete all the hidden text.
    const string wordmlNamespace = "http://schemas.openxmlformats.org/wordprocessingml/2006/main";
    using (WordprocessingDocument wdDoc = WordprocessingDocument.Open(docName, true))
    {
      // Manage namespaces to perform XPath queries.
      NameTable nt = new NameTable();
      XmlNamespaceManager nsManager = new XmlNamespaceManager(nt);
      nsManager.AddNamespace("w", wordmlNamespace);

      // Get the document part from the package.
      // Load the XML in the document part into an XmlDocument instance.
      XmlDocument xdoc = new XmlDocument(nt);
      xdoc.Load(wdDoc.MainDocumentPart.GetStream());
      XmlNodeList hiddenNodes = xdoc.SelectNodes("//w:vanish", nsManager);
      foreach (System.Xml.XmlNode hiddenNode in hiddenNodes)
      {
        XmlNode topNode = hiddenNode.ParentNode.ParentNode;
        XmlNode topParentNode = topNode.ParentNode;
        topParentNode.RemoveChild(topNode);
        if (!(topParentNode.HasChildNodes))
        {
           topParentNode.ParentNode.RemoveChild(topParentNode);
        }
      }

      // Save the document XML back to its document part.
      xdoc.Save(wdDoc.MainDocumentPart.GetStream(FileMode.Create, FileAccess.Write));
    }
{{< /highlight >}}

### **Aspose.Words**

Below is the example of removing Hidden text from MS Word Document

{{< highlight csharp >}}
 string FilePath = @"..\..\..\..\Sample Files\";
 string fileName = FilePath + "Remove Hidden Text.docx";
 Document doc = new Document(fileName);
 foreach (Paragraph par in doc.GetChildNodes(NodeType.Paragraph, true))
 {
   par.ParagraphBreakFont.Hidden = false;
   foreach (Run run in par.GetChildNodes(NodeType.Run, true))
   {
     if (run.Font.Hidden)
     run.Font.Hidden = false;
   }
 }
 doc.Save(fileName);
{{< /highlight >}}

### **Download Running Example**

- [CodePlex](https://asposewordsopenxml.codeplex.com/releases/view/620544)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7#content)

### **Download Sample Code**

- [CodePlex](https://asposewordsopenxml.codeplex.com/SourceControl/latest#Aspose.Words VS OpenXML/Remove Hidden Text/)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20OpenXML%20Words/Aspose.Words%20VS%20OpenXML/Remove%20Hidden%20Text)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7/view/SourceCode#content)
