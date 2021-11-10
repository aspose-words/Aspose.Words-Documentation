---
title: Delete Ranges in Document
type: docs
weight: 20
url: /java/delete-ranges-in-document/
---

## Aspose.Words - Delete Ranges in Document

Range allows the deletion of all characters of the range by calling **Range.delete**.

**Java**

{{< highlight csharp >}}
doc.getSections().get(0).getRange().delete();
String text = doc.getRange().getText();
{{< /highlight >}}

## Apache POI HWPF XWPF - Delete Ranges in Document

delete method can be used after retrieving Section of Range.

**Java**

{{< highlight csharp >}}
doc.getRange().getSection(0).delete();
String text = doc.getRange().text();
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/featurescomparison/ranges)

{{% alert color="primary" %}} 

For more details, visit [Deleting Text](/words/java/working-with-ranges/#workingwithranges-deletingtext).

{{% /alert %}}
