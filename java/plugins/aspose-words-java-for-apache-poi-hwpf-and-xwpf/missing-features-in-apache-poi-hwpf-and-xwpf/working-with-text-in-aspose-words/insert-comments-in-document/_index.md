---
title: Insert Comments in Document
type: docs
weight: 50
url: /java/insert-comments-in-document/
---

## **Aspose.Words - Insert Comments**
Comments of the document are represented by the Comment class.

**Java**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Some text is added.");
Comment comment = new Comment(doc, "Aspose", "As", new Date());
builder.getCurrentParagraph().appendChild(comment);
comment.getParagraphs().add(new Paragraph(doc));
comment.getFirstParagraph().getRuns().add(new Run(doc, "Comment text."));
{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithtext/insertcomments/AsposeInsertComments.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithtext/insertcomments/AsposeInsertComments.java)

{{% alert color="primary" %}} 

For more details, visit [How to Add a Comment](/words/java/working-with-comments/#workingwithcomments-howtoaddacomment).

{{% /alert %}}
