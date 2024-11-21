---
title: 在文档中清除 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 清除文档
linktitle: 清除文档
description: "删除未使用或重复的信息以减少输出大小和处理时间. 删除未使用的样式、未使用的内置样式、重复样式或使用未使用的列表 Java。 。 。 。"
type: docs
weight: 30
url: /zh/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

有时可能需要删除未使用或重复的信息,以减少输出文档的大小和处理时间.

虽然您可以找到并删除未使用的数据,如样式或列表,或者手动复制信息,但使用由: Aspose.Words。 。 。 。

那个 [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) 类允许您指定文档清理的选项。 要从文档中删除重复的样式或只是未使用的样式或列表,您可以使用 [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) 方法。

## 从文档中删除未使用的信息

你可以用这个 [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) 和 [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) 属性以检测并删除标记为"未使用"的样式。

你可以用这个 [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) 属性来检测和删除被标记为"未使用"的列表和定义。

以下代码示例显示如何从文档中只删除未使用的样式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## 从文档中删除复制信息

你也可以使用这个 [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) 属性,以原始样式取代所有重复样式,并从文档中删除重复样式。

以下代码示例显示如何从文档中删除重复样式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
