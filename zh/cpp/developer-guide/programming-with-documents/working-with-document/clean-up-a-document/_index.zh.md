---
title: 用C++清理文档
second_title: Aspose.Words对于C++
articleTitle: 清理文档
linktitle: 清理文档
description: "使用C++删除未使用或重复的信息以减少输出大小和处理时间。 删除未使用的样式、未使用的内置样式、重复样式或未使用的列表。"
type: docs
weight: 30
url: /zh/cpp/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

有时您可能需要删除未使用或重复的信息，以减少输出文档的大小和处理时间。

虽然您可以手动查找和删除未使用的数据（如样式或列表）或重复信息，但使用Aspose.Words提供的功能和功能执行此操作会方便得多。

[CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options)类允许您指定用于文档清理的选项。 要从文档中删除重复的样式或只是未使用的样式或列表，可以使用[Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/)方法。

## 从文档中删除未使用的信息

您可以使用[UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/)和[UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/)属性来检测和删除标记为"未使用"的样式。

您可以使用[UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/)属性检测并删除标记为"未使用"的列表和列表定义。

下面的代码示例演示如何从文档中仅删除未使用的样式:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## 从文档中删除重复信息

您还可以使用[DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/)属性将所有重复样式替换为原始样式，并从文档中删除重复项。

下面的代码示例演示如何从文档中删除重复的样式:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
