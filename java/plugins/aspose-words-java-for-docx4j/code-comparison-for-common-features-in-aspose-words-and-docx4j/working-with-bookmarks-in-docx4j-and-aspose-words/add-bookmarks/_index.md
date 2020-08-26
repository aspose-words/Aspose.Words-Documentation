---
title: Add Bookmarks
type: docs
weight: 10
url: /java/add-bookmarks/
---

## **Aspose.Words - Add Bookmarks**
Use **DocumentBuilder.StartBookmark** and **DocumentBuilder.EndBookmark** to create a bookmark by marking its start and end, respectively. Do not forget to pass the same bookmark name to both methods. Bookmarks in a document can overlap and span any range. Badly formed bookmarks or bookmarks with duplicate names will be ignored when the document is saved.

**Java**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.startBookmark("AsposeBookmark");
builder.writeln("Text inside a bookmark.");
builder.endBookmark("AsposeBookmark");

// By index.
Bookmark bookmark1 = doc.getRange().getBookmarks().get(0);

// By name.
Bookmark bookmark2 = doc.getRange().getBookmarks().get("AsposeBookmark");
{{< /highlight >}}
## **docx4j - Add Bookmarks**
The following code example shows how a bookmark can be added using docx4j.

**Java**

{{< highlight csharp >}}
WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage.createPackage();
String outputfilepath = dataDir + "Docx4j_BookmarkAdd.docx";
wordMLPackage.getMainDocumentPart().addParagraphOfText("x");
wordMLPackage.getMainDocumentPart().addParagraphOfText("x");
wordMLPackage.getMainDocumentPart().addParagraphOfText("hello world");
P p = (P)wordMLPackage.getMainDocumentPart().getContent().get(2);
R r = (R)p.getContent().get(0);
String bookmarkName = "abcd";
bookmarkRun(p,r, bookmarkName, 123);
wordMLPackage.getMainDocumentPart().addParagraphOfText("x");
wordMLPackage.getMainDocumentPart().addParagraphOfText("x");

// Now add an internal hyperlink to it
Hyperlink h = MainDocumentPart.hyperlinkToBookmark(bookmarkName, "link to bookmark");
wordMLPackage.getMainDocumentPart().addParagraphOfText("some text").getContent().add(h);
{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/releases/view/618874)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/featurescomparison/bookmarks/addbookmark/)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/featurescomparison/bookmarks/addbookmark)

{{% alert color="primary" %}} 

For more details, visit [Bookmarks in Aspose.Words](/words/java/working-with-bookmarks/).

{{% /alert %}}
