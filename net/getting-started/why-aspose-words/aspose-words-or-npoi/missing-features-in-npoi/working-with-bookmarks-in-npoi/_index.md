---
title: Work with Bookmarks – Aspose.Words for .NET
articleTitle: Work with Bookmarks
linktitle: Work with Bookmarks
description: "Aspose.Words for .NET allows to add a bookmark into a document. NPOI does not provide an opportunity to work with bookmarks."
type: docs
weight: 80
url: /net/working-with-bookmarks-in-npoi/
---

{{% alert color="primary" %}}

See more details in the ["Working with Bookmarks"](/words/net/working-with-bookmarks/) article.

{{% /alert %}}

Use the [StartBookmark](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/startbookmark) and [EndBookmark](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/endbookmark) to create a bookmark by marking its start and end, respectively. Do not forget to pass the same bookmark name to both methods.

Bookmarks in a document can overlap and span any range. Badly formed bookmarks or bookmarks with duplicate names will be ignored when the document is saved.

The following code example shows how to set and get bookmarks:

{{< highlight csharp >}}
Document doc = new Document("../../data/document.doc");
DocumentBuilder builder = new DocumentBuilder(doc);

// ----- Set Bookmark
builder.StartBookmark("AsposeBookmark");
builder.Writeln("Text inside a bookmark.");
builder.EndBookmark("AsposeBookmark");

// ----- Get Bookmark

// By index.
Bookmark bookmark1 = doc.Range.Bookmarks[0];

// By name.
Bookmark bookmark2 = doc.Range.Bookmarks["AsposeBookmark"];
doc.Save("AsposeBookmarks.doc");
{{< /highlight >}}

See also:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Working.With.Bookmarks.Aspose.Words.zip) for running code
