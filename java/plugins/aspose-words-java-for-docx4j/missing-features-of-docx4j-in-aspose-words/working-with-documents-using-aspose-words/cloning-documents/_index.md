---
title: Cloning Documents
type: docs
weight: 20
url: /java/cloning-documents/
---

## **Aspose.Words - Clone Documents**
To clone documents using Aspose.Words, simply invoke the deepClone() method of Documentclass.

**Java**

{{< highlight csharp >}}

 Document doc = new Document("document.doc");

Document clone = doc.deepClone();

clone.save("AsposeClone.doc", SaveFormat.DOC);

{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/releases/view/618874)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/documents/clonedocuments/AsposeCloneDoc.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/asposefeatures/documents/clonedocuments/AsposeCloneDoc.java)

{{% alert color="primary" %}} 

For more details, visit [Cloning a Document](/words/java/working-with-document/#workingwithdocument-cloningadocument).

{{% /alert %}}
