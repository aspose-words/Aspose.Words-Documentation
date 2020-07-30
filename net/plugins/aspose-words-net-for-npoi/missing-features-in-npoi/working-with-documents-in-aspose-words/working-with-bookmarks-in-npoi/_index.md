---
title: Working with Bookmarks in NPOI
type: docs
weight: 80
url: /net/working-with-bookmarks-in-npoi/
---

## **Aspose.Words - Working with Bookmarks**
Use **DocumentBuilder.StartBookmark** and **DocumentBuilder.EndBookmark** to create a bookmark by marking its start and end, respectively. Do not forget to pass the same bookmark name to both methods. Bookmarks in a document can overlap and span any range. Badly formed bookmarks or bookmarks with duplicate names will be ignored when the document is saved.

**C#**

{{< highlight cs >}}

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
## **Download Running Code**
Download **Working with Bookmarks** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1475284)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Working.With.Bookmarks.Aspose.Words.zip)

{{% alert color="primary" %}} 

For more details, visit [Working with Bookmarks](http://www.aspose.com/docs/display/wordsnet/Working+with+Bookmarks).

{{% /alert %}}
