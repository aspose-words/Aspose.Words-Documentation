---
title: Find and Replace Text in Documents
second_title: Aspose.Words for Java
articleTitle: Find and Replace Text in Documents
linktitle: Find and Replace Text in Documents
description: "Find and replace text or strings. Apache POI does not provide an opportunity to find and replace."
type: docs
weight: 30
url: /java/find-and-replace-text-in-documents/
---

{{% alert color="primary" %}}

See more details in the [Find and Replace](/words/java/find-and-replace/) article.

{{% /alert %}}

Use one of the [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) methods to find or replace a particular string within the current range. It returns the number of replacements made, so it is useful for searching strings without replace. An exception is thrown if a captured or replacement string contains one or more special characters: paragraph break, cell break, section break, field start, field separator, field end, inline picture, drawing object, footnote.

The following code example shows how to find some text and replace it:

{{< highlight java >}}

// Replaces all 'sad' and 'mad' occurrences with 'bad'
doc.getRange().replace("sad", "bad", false, true);

// Replaces all 'sad' and 'mad' occurrences with 'bad'
doc.getRange().replace(Pattern.compile("[s|m]ad"), "bad");
{{< /highlight >}}

See also:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithtext/findnreplacetxt/AsposeFindnReplace.java) for code example
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0) for running code
