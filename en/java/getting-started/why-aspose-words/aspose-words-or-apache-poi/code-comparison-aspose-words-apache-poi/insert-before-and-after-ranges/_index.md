---
title: Insert Before and After Ranges
second_title: Aspose.Words for Java
articleTitle: Insert Before and After Ranges
linktitle: Insert Before and After Ranges
description: "Insert before and after ranges within a document easily and fast instead of using Apache POI."
type: docs
weight: 30
url: /java/insert-before-and-after-ranges/
---

## Aspose.Words - Insert Before and After Ranges

insertBefore to insert before range.

**Java**

{{< highlight csharp >}}
compositeNode.getParentNode().insertBefore(newChildNode, refChildNode);
{{< /highlight >}}

## Apache POI HWPF XWPF - Insert Before and After Ranges

insertBefore to insert before range.

**Java**

{{< highlight csharp >}}
doc.getRange().getSection(0).insertBefore("Apache Inserted THIS Text before the below section");
String text = doc.getRange().text();
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/featurescomparison/ranges)
