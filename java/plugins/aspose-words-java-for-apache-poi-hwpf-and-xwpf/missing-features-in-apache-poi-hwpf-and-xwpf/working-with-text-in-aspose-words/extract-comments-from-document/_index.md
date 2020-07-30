---
title: Extract Comments from Document
type: docs
weight: 10
url: /java/extract-comments-from-document/
---

## **Aspose.Words - Extract Comments from Document**
To illustrate how to extract and remove comments from a document, we will go through the following steps:

1. Open a Word document using the **Aspose.Words.Document** class.
1. Get all comments from the document into a collection.
1. To extract comments:
   1. Go through the collection using the for each operator.
   1. Extract and list the author name, date & time and text of all comments.
   1. Extract and list the author name, date & time and text of comments written by a specific author, in this case, the author ‘ks’.
1. To remove comments:
   1. Go back through the collection using the for the operator.
   1. Remove comments.
1. Save the changes.

**Java**

{{< highlight java >}}

 Document doc = new Document(dataDir + "AsposeComments.docx");

ArrayList collectedComments = new ArrayList();

// Collect all comments in the document

NodeCollection comments = doc.getChildNodes(NodeType.COMMENT, true);

// Look through all comments and gather information about them.

for (Comment comment : (Iterable<Comment>) comments)

{

    System.out.println(comment.getAuthor() + " - " + comment.getDateTime() + " - "

	    + comment.toString(SaveFormat.TEXT));

}

{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithtext/extractcomments/AsposeExtractComments.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithtext/extractcomments/AsposeExtractComments.java)

{{% alert color="primary" %}} 

For more details, visit [How to Extract or Remove Comments](/words/java/working-with-comments/#workingwithcomments-howtoextractorremovecomments).

{{% /alert %}}
