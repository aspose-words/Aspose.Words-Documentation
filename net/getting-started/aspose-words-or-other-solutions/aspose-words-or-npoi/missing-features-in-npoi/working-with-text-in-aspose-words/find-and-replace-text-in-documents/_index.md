---
title: Find and Replace Text in Documents
type: docs
weight: 10
url: /net/find-and-replace-text-in-documents/
---

## Aspose.Words - Find and Replace Text in Documents

Use Range.Replace to find or replace a particular string within the current range. It returns the number of replacements made, so it is useful for searching strings without replace. An exception is thrown if a captured or replacement string contains one or more special characters: paragraph break, cell break, section break, field start, field separator, field end, inline picture, drawing object, footnote.

**C#**

{{< highlight csharp >}}
Document doc = new Document("../../data/document.doc");

// Replaces all 'sad' and 'mad' occurrences with 'bad'
doc.Range.Replace("document", "document replaced", false, true);

// Replaces all 'sad' and 'mad' occurrences with 'bad'
doc.Range.Replace(new Regex("[s|m]ad"), "bad");
doc.Save("replacedDocument.doc");
{{< /highlight >}}

## Download Running Code

Download **Find and Replace Text in Documents** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1475287)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Find.and.Replace.Text.in.Documents.Aspose.Words.zip)

{{% alert color="primary" %}} 

For more details, visit [Find and Replace](https://docs.aspose.com/words/net/find-and-replace/).

{{% /alert %}}
