---
title: Working with Headers in NPOI
type: docs
weight: 20
url: /net/working-with-headers-in-npoi/
---

## **Aspose.Words - Working with Headers**
The following sample code demonstrates how to create headers/footers using Document object.

**C#**

{{< highlight csharp >}}
 Document wordDocument = new Document("Convert Word Doc to Other Formats.doc");
 HeaderFooterCollection headers = wordDocument.FirstSection.HeadersFooters;
 foreach (HeaderFooter header in headers)
 {
   if (header.HeaderFooterType == HeaderFooterType.HeaderFirst || header.HeaderFooterType == HeaderFooterType.HeaderPrimary || header.HeaderFooterType ==
       HeaderFooterType.HeaderEven)
   Console.WriteLine(header.GetText());
 }
{{< /highlight >}}
## **NPOI HWPF XWPF - Working with Headers**
**C#**

{{< highlight csharp >}}
  XWPFDocument wordDocument = new XWPFDocument(new FileStream("Working with Headers.doc", FileMode.Open));
  IList<XWPFHeader> headers = wordDocument.HeaderList;
  foreach (XWPFHeader header in headers)
  {
     Console.WriteLine(header.Text);
  }
{{< /highlight >}}
## **Download Running Code**
Download **Working with Headers** from any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/SourceControl/latest#Aspose.Words_NPOI.HWPF and XWPF/Aspose.Words Vs NPOI HWPF and XWPF v1.1/Working with Headers/)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/NPOI/Aspose.Words%20Vs%20NPOI%20HWPF%20and%20XWPF%20v1.1/Working%20with%20Headers)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-vs-NPOI-HWPF-1ac73164/view/SourceCode#content)
## **Download Sample Code**
Download **Working with Headers** from any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/releases/view/617696)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsNPOIHWPFandXWPF1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-vs-NPOI-HWPF-1ac73164/view/SourceCode#content)
