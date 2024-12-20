---
title: Working with Headers in NPOI
second_title: Aspose.Words for .NET
articleTitle: Working with Headers in NPOI
linktitle: Working with Headers in NPOI
description: "Work with headers in a document easily and fast instead of using NPOI in C#."
type: docs
weight: 20
url: /net/working-with-headers-in-npoi/
timestamp: 2024-10-21-11-17-44
---

## Aspose.Words - Working with Headers

The following sample code demonstrates how to create headers/footers using Document object.

**C#**

{{< highlight csharp >}}
 Document wordDocument = new Document("Convert Word Doc to Other Formats.doc");
 HeaderFooterCollection headers = wordDocument.FirstSection.HeadersFooters;
 foreach (HeaderFooter header in headers)
 {
   if (header.HeaderFooterType == HeaderFooterType.HeaderFirst |  | header.HeaderFooterType == HeaderFooterType.HeaderPrimary |  | header.HeaderFooterType ==
       HeaderFooterType.HeaderEven)
   Console.WriteLine(header.GetText());
 }
{{< /highlight >}}

## NPOI HWPF XWPF - Working with Headers

**C#**

{{< highlight csharp >}}
  XWPFDocument wordDocument = new XWPFDocument(new FileStream("Working with Headers.doc", FileMode.Open));
  IList<XWPFHeader> headers = wordDocument.HeaderList;
  foreach (XWPFHeader header in headers)
  {
     Console.WriteLine(header.Text);
  }
{{< /highlight >}}

## Download Running Code

Download **Working with Headers** from any of the below mentioned social coding sites:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/NPOI/Aspose.Words%20Vs%20NPOI%20HWPF%20and%20XWPF%20v1.1/Working%20with%20Headers)

## Download Sample Code

Download **Working with Headers** from any of the below mentioned social coding sites:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsNPOIHWPFandXWPF1.1)
