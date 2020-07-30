---
title: Remove Comments from Document
type: docs
weight: 20
url: /java/remove-comments-from-document/
---

## **Aspose.Words - Remove Comments from Document**
If you are removing all comments, there is no need to move through the collection deleting comments one by one; you can remove them by calling NodeCollection.clear on the comments collection.
When you need to selectively remove comments, the process becomes more similar to the code we used for comment extraction.

**Java**

{{< highlight java >}}

 Document doc = new Document(dataDir + "AsposeComments.docx");

// Collect all comments in the document

NodeCollection comments = doc.getChildNodes(NodeType.COMMENT, true);

// Look through all comments and remove those written by the authorName author.

for (int i = comments.getCount() - 1; i >= 0; i--)

{

    Comment comment = (Comment) comments.get(i);

    if (comment.getAuthor().equalsIgnoreCase("Aspose"))

	System.out.println("Aspose comment removed");

	comment.remove();

}

{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithtext/removecomments/AsposeRemoveComments.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithtext/removecomments/AsposeRemoveComments.java)

{{% alert color="primary" %}} 

For more details, visit [How to Extract or Remove Comments](/words/java/working-with-comments/#workingwithcomments-howtoextractorremovecomments).

{{% /alert %}}
