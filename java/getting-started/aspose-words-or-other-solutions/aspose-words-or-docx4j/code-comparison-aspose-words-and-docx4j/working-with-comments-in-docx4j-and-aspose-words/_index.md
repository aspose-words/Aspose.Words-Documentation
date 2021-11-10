---
title: Working with Comments in docx4j and Aspose.Words
type: docs
weight: 100
url: /java/working-with-comments-in-docx4j-and-aspose-words/
---

## Aspose.Words - Working with Comments

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
doc.save(dataDir + "Aspose_Comments.docx");
{{< /highlight >}}

## docx4j - Working with Comments

Creates a WordprocessingML document from scratch, and adds a comment.

**Java**

{{< highlight csharp >}}
outputfilepath = dataDir + "Docx4j_CommentsSample.docx";
boolean save = (outputfilepath == null ? false : true);
WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage
		.createPackage();

// Create and add a Comments Part
CommentsPart cp = new CommentsPart();
wordMLPackage.getMainDocumentPart().addTargetPart(cp);

// Part must have minimal contents
Comments comments = factory.createComments();
cp.setJaxbElement(comments);

// Add a comment to the comments part
java.math.BigInteger commentId = BigInteger.valueOf(0);
Comment theComment = createComment(commentId, "fred", null,
		"my first comment");
comments.getComment().add(theComment);

// Add comment reference to document
P paraToCommentOn = wordMLPackage.getMainDocumentPart()
		.addParagraphOfText("here is some content");
paraToCommentOn.getContent().add(createRunCommentReference(commentId));

// ++, for next comment ...
commentId = commentId.add(java.math.BigInteger.ONE);
wordMLPackage.save(new java.io.File(outputfilepath));
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/featurescomparison/documents/comments)

{{% alert color="primary" %}} 

For more details, visit [Working with Comments](/words/java/working-with-comments/).

{{% /alert %}}
