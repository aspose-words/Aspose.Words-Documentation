---
title: Working with Footers in NPOI
second_title: Aspose.Words for .NET
articleTitle: Working with Footers in NPOI
linktitle: Working with Footers in NPOI
description: "Work with footers in a document easily and fast instead of using NPOI in C#."
type: docs
weight: 10
url: /net/working-with-footers-in-npoi/
---

## Aspose.Words - Working with Footers

Below is the code to demonstrate how to insert footer in word document:

**C#**

{{< highlight csharp >}}
 Document wordDocument = new Document("Convert Word Doc to Other Formats.doc");
 HeaderFooterCollection footers = wordDocument.FirstSection.HeadersFooters;
 foreach (HeaderFooter footer in footers)
 {
    if (footer.HeaderFooterType == HeaderFooterType.FooterFirst || footer.HeaderFooterType == HeaderFooterType.FooterPrimary || footer.HeaderFooterType ==
    HeaderFooterType.FooterEven)
    Console.WriteLine(footer.GetText());
 }
{{< /highlight >}}

## NPOI HWPF XWPF - Working with Footers

Below is the code to demonstrate how to insert footer in word document using NPOI:

**C#**

{{< highlight csharp >}}
  XWPFDocument wordDocument = new XWPFDocument(new FileStream("Working with Footers.doc", FileMode.Open));
  IList<XWPFFooter> footers = wordDocument.FooterList;
  foreach (XWPFFooter footer in footers)
  {
     Console.WriteLine(footer.Text);
  }
{{< /highlight >}}

## Download Running Code

Download **Working with Footers** from any of the below mentioned social coding sites:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/NPOI/Aspose.Words%20Vs%20NPOI%20HWPF%20and%20XWPF%20v1.1/Working%20with%20Footers)

## Download Sample Code

Download **Working with Footers** from any of the below mentioned social coding sites:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsNPOIHWPFandXWPF1.1)
