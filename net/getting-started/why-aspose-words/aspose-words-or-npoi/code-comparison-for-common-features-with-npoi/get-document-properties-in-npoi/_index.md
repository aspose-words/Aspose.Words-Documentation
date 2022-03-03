---
title: Get Document Properties in NPOI
second_title: Aspose.Words for .NET
articleTitle: Get Document Properties in NPOI
linktitle: Get Document Properties in NPOI
description: "Get document properties easily and fast instead of using NPOI in C#."
type: docs
weight: 50
url: /net/get-document-properties-in-npoi/
---

## Aspose.Words - Get Document Properties

Document properties allow some useful information to be stored along with the document. There are system (built-in) and user defined (custom) properties. Built-in properties contain such things as document title, author's name, document statistics, and so on. Custom properties are just name-value pairs where user defines both the name and value.

You can use document properties in your document automation project to store some useful info along with the document such as when the document was received/processed/time stamped and so on.

**C#**

{{< highlight csharp >}}
  Document doc = new Document("Get Document Properties.doc");
  foreach (DocumentProperty prop in doc.BuiltInDocumentProperties)
  {
      Console.WriteLine(prop.Name+": "+ prop.Value);
  }
{{< /highlight >}}

## NPOI HWPF XWPF - Get Document Properties

**C#**

{{< highlight csharp >}}
 SummaryInformation summaryInfo = new SummaryInformation(new PropertySet(new FileStream("Get Document Properties.doc", FileMode.Open)));
 Console.WriteLine(summaryInfo.ApplicationName);
 Console.WriteLine(summaryInfo.Author);
 Console.WriteLine(summaryInfo.Comments);
 Console.WriteLine(summaryInfo.CharCount);
 Console.WriteLine(summaryInfo.EditTime);
 Console.WriteLine(summaryInfo.Keywords);
 Console.WriteLine(summaryInfo.LastAuthor);
 Console.WriteLine(summaryInfo.PageCount);
 Console.WriteLine(summaryInfo.RevNumber);
 Console.WriteLine(summaryInfo.Security);
 Console.WriteLine(summaryInfo.Subject);
 Console.WriteLine(summaryInfo.Template);
{{< /highlight >}}

## Download Running Code

Download **Get Document Properties** from any of the below mentioned social coding sites:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/NPOI/Aspose.Words%20Vs%20NPOI%20HWPF%20and%20XWPF%20v1.1/Get%20Document%20Properties)

## Download Sample Code

Download **Get Document Properties** from any of the below mentioned social coding sites:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsNPOIHWPFandXWPF1.1)
