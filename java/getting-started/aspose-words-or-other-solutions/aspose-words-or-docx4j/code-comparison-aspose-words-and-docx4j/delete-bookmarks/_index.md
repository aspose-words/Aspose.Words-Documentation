---
title: Delete Bookmarks
description: "Aspose.Words for Java allows you to delete bookmarks from a document easily and fast instead of using docx4j."
type: docs
weight: 20
url: /java/delete-bookmarks/
---

## Aspose.Words - Delete Bookmarks

Bookmarks can be deleted by calling bookmark.remove().

**Java**

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Aspose_Bookmark.doc");

// By name.
Bookmark bookmark = doc.getRange().getBookmarks().get("AsposeBookmark");
bookmark.remove();
{{< /highlight >}}

## docx4j - Delete Bookmarks

The following code example shows how a bookmark can be removed using docx4j.

**Java**

{{< highlight csharp >}}
WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage
		.load(new java.io.File(dataDir + "Docx4j_BookmarkAdd.docx"));
MainDocumentPart documentPart = wordMLPackage.getMainDocumentPart();

// Before..

// System.out.println(XmlUtils.marshaltoString(documentPart.getJaxbElement(), true, true));
org.docx4j.wml.Document wmlDocumentEl = (org.docx4j.wml.Document) documentPart
		.getJaxbElement();
Body body = wmlDocumentEl.getBody();
fixRange(body.getContent(), "CTBookmark", "CTMarkupRange");

// After
System.out.println(XmlUtils.marshaltoString(documentPart.getJaxbElement(), true, true));
wordMLPackage.save(new java.io.File(dataDir + "Docx4jBookmarkDeleted.docx"));
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/featurescomparison/bookmarks/addbookmark)

{{% alert color="primary" %}} 

For more details, visit [Bookmarks in Aspose.Words](/words/java/working-with-bookmarks/).

{{% /alert %}}
