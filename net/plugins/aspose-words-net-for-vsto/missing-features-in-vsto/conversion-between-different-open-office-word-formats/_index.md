---
title: Conversion between different Open Office Word formats
type: docs
weight: 80
url: /net/conversion-between-different-open-office-word-formats/
---

Below is the code for conversions between Open Office formats:
#### **Conversion from ODT:**
{{< highlight cs >}}
 Document doc = new Document("OpenOfficeWord.odt");
 doc.Save("ConvertedOdtFromDoc.docx",SaveFormat.Docx);
{{< /highlight >}}
#### **Conversion from OTT:**
{{< highlight cs >}}
 Document doc = new Document("Sample.ott");
 doc.Save("ConvertedFromOttFromDoc.docx", SaveFormat.Docx);
{{< /highlight >}}
#### **Conversion to ODT:**
{{< highlight cs >}}
 Document doc = new Document("ConvertedOdtFromDoc.docx");
 doc.Save( "ConvertedToODT.odt", SaveFormat.Odt);
{{< /highlight >}}
### **Download Running Examples**
- [Codeplex](https://asposewordsvsto.codeplex.com/SourceControl/latest#Aspose.Words Features missing in VSTO/Conversion to Open Office Document/)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20VSTO%20Word/Aspose.Words%20Features%20missing%20in%20VSTO/Conversion%20to%20Open%20Office%20Document)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Features-bfd6167c/view/SourceCode#content)
### **Download Sample Code**
- [Codeplex](https://asposewordsvsto.codeplex.com/releases/view/619474)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofVSTOv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Features-bfd6167c#content)
