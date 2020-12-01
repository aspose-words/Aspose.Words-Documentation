---
title: Clone Documents
type: docs
weight: 40
url: /java/clone-documents/
---

## Aspose.Words - Clone Documents

To clone documents using Aspose.Words, simply invoke the deepClone() method of Document class.

**Java**

{{< highlight csharp >}}
Document doc = new Document(dataDir + "document.doc");
Document clone = doc.deepClone();
clone.save(dataDir + "AsposeClone.doc", SaveFormat.DOC);
{{< /highlight >}}

## Download Running Code

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## Download Sample Code

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/clonedoc/AsposeCloneDoc.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/clonedoc/AsposeCloneDoc.java)

{{% alert color="primary" %}} 

For more detail, visit [Cloning a Document](/words/java/working-with-document/#workingwithdocument-cloningadocument).

{{% /alert %}}
