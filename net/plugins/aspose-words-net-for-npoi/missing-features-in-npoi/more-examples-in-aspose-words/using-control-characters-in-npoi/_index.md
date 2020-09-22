---
title: Using Control Characters in NPOI
type: docs
weight: 40
url: /net/using-control-characters-in-npoi/
---

## **Aspose.Words - Using Control Characters**

The **ControlChar** class is a repository for the constants that represent control characters often encountered in documents. It provides both char and string versions of the same constants. For example, string **ControlChar.LineBreak** and char **ControlChar.LineBreakChar** have the same value.

**C#**

{{< highlight csharp >}}
Document doc = new Document("../../data/document.doc");

// Enter a dummy field into the document.
DocumentBuilder builder = new DocumentBuilder(doc);
builder.InsertField("MERGEFIELD Field");

// GetText will retrieve all field codes and special characters
Console.WriteLine("GetText() Result: " + doc.GetText());
string text = doc.GetText();
text = text.Replace(ControlChar.Cr, ControlChar.CrLf);
Console.WriteLine("Replaced text Result: " + text);
{{< /highlight >}}

## **Download Running Code**

Download **Using Control Characters** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1475297)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Using.Control.Characters.Aspose.Words.zip)
