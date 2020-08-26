---
title: Working with Bookmarks in Aspose.Words
type: docs
weight: 90
url: /java/working-with-bookmarks-in-aspose-words/
---

## **Aspose.Words - Working with Bookmarks**
Use **DocumentBuilder.startBookmark** and **DocumentBuilder.endBookmark** to create a bookmark by marking its start and end, respectively. Do not forget to pass the same bookmark name to both methods. Bookmarks in a document can overlap and span any range. Badly formed bookmarks or bookmarks with duplicate names will be ignored when the document is saved.

**Set Bookmark**

**Java**

{{< highlight csharp >}}
builder.startBookmark("AsposeBookmark");
builder.writeln("Text inside a bookmark.");
builder.endBookmark("AsposeBookmark");
{{< /highlight >}}

**Get Bookmark**

**Java**

{{< highlight csharp >}}

// By index.
Bookmark bookmark1 = doc.getRange().getBookmarks().get(0);

// By name.
Bookmark bookmark2 = doc.getRange().getBookmarks().get("AsposeBookmark");
{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/workingwithbookmarks/AsposeBookmarks.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/workingwithbookmarks/AsposeBookmarks.java)

{{% alert color="primary" %}} 

For more details, visit [Working with Bookmarks](/words/java/working-with-bookmarks/).

{{% /alert %}}
