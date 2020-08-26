---
title: Find and Replace Text in Documents
type: docs
weight: 40
url: /java/find-and-replace-text-in-documents/
---

## **Aspose.Words - Find and Replace Text in Documents**
Use Range.replace to find or replace a particular string within the current range. It returns the number of replacements made, so it is useful for searching strings without replace. An exception is thrown if a captured or replacement string contains one or more special characters: paragraph break, cell break, section break, field start, field separator, field end, inline picture, drawing object, footnote.

**Java**

{{< highlight csharp >}}

 // Replaces all 'sad' and 'mad' occurrences with 'bad'

doc.getRange().replace("sad", "bad", false, true);

// Replaces all 'sad' and 'mad' occurrences with 'bad'

doc.getRange().replace(Pattern.compile("[s|m]ad"), "bad");

{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithtext/findnreplacetxt/AsposeFindnReplace.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithtext/findnreplacetxt/AsposeFindnReplace.java)

{{% alert color="primary" %}} 

For more details, visit [Find and Replace](/words/java/find-and-replace/).

{{% /alert %}}
