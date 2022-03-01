---
title: Find and Replace Text in Documents – Aspose.Words for .NET
articleTitle: Find and Replace Text in Documents
linktitle: Find and Replace Text in Documents
description: "Find and replace text or strings. NPOI does not provide an opportunity to find and replace using C#."
type: docs
weight: 70
url: /net/find-and-replace-text-in-documents/
aliases: [/net/using-find-and-replace-in-npoi/]
---

{{% alert color="primary" %}}

See more details in the ["Find and Replace"](/words/net/find-and-replace/) article.

{{% /alert %}}

Use one of the [Replace](https://apireference.aspose.com/words/net/aspose.words/range/methods/replace/index) methods to find or replace a particular string within the current range. It returns the number of replacements made, so it is useful for searching strings without replace. An exception is thrown if a captured or replacement string contains one or more special characters: paragraph break, cell break, section break, field start, field separator, field end, inline picture, drawing object, footnote.

The following code example shows how to find some text and replace it:

{{< highlight csharp >}}
Document doc = new Document("../../data/document.doc");

// Replaces all 'sad' and 'mad' occurrences with 'bad'.
doc.Range.Replace("document", "document replaced", false, true);

// Replaces all 'sad' and 'mad' occurrences with 'bad'.
doc.Range.Replace(new Regex("[s|m]ad"), "bad");
doc.Save("replacedDocument.doc");
{{< /highlight >}}

See also:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Find.and.Replace.Text.in.Documents.Aspose.Words.zip) for running code
