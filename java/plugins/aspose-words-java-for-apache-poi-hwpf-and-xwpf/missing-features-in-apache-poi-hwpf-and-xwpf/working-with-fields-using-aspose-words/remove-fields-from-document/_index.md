---
title: Remove Fields from Document
type: docs
weight: 20
url: /java/remove-fields-from-document/
---

## **Aspose.Words - Remove Fields from Document**
A field inserted into the document using DocumentBuilder.insertField returns a Field object which provides a convenience method to easily remove the field from the document.

**Java**

{{< highlight csharp >}}

 DocumentBuilder builder = new DocumentBuilder(doc);

Field field = builder.insertField("PAGE");

// Calling this method completely removes the field from the document.

field.remove();

{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithfields/removefields/AsposeRemoveFields.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithfields/removefields/AsposeRemoveFields.java)

{{% alert color="primary" %}} 

For more details, visit [Removing a Field](/words/java/insert-and-remove-field/#insertandremovefield-removingafield).

{{% /alert %}}
