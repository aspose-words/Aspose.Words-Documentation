---
title: 清理Java中的文档
second_title: Aspose.Words为Java
articleTitle: 清理文档
linktitle: 清理文档
description: "删除未使用或重复的信息，以减少输出大小和处理时间。 使用Java删除未使用的样式、未使用的内置样式、重复样式或未使用的列表。"
type: docs
weight: 30
url: /zh/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

有时您可能需要删除未使用或重复的信息，以减少输出文档的大小和处理时间。

虽然您可以手动查找和删除未使用的数据（如样式或列表）或重复信息，但使用Aspose.Words提供的功能和功能执行此操作会方便得多。

[CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/)类允许您指定用于文档清理的选项。 要从文档中删除重复的样式或只是未使用的样式或列表，可以使用[Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup)方法。

## 从文档中删除未使用的信息

您可以使用[UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles)和[UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles)属性来检测和删除标记为"未使用"的样式。

您可以使用[UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists)属性检测并删除标记为"未使用"的列表和列表定义。

下面的代码示例演示如何从文档中仅删除未使用的样式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## 从文档中删除重复信息

您还可以使用[DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle)属性将所有重复样式替换为原始样式，并从文档中删除重复项。

下面的代码示例演示如何从文档中删除重复的样式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
