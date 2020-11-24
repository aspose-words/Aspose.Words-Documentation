---
title: Insert Comments
type: docs
weight: 20
url: /net/insert-comments/
---

## Aspose.Words - Insert Comments

Comments of the document are represented by the Comment class.

**C#**

{{< highlight csharp >}}
Document doc = new Document("../../data/document.doc");
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Some text is added.");
Comment comment = new Comment(doc, "Aspose", "As", new DateTime());
builder.CurrentParagraph.AppendChild(comment);
comment.Paragraphs.Add(new Paragraph(doc));
comment.FirstParagraph.Runs.Add(new Run(doc, "Comment text."));
doc.Save("insertedComments.doc");
{{< /highlight >}}

## Download Running Code

Download **Insert Comments** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1475288)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Insert.Comments.Aspose.Words.zip)

{{% alert color="primary" %}} 

For more details, visit [Insert Comments](https://docs.aspose.com/words/net/insert-comments/).

{{% /alert %}}
