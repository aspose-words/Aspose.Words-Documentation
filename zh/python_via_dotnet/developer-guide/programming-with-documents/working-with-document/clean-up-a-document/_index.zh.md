---
title: 清理 Python 中的文档
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 清理文档
linktitle: 清理文档
description: "使用 Python 删除未使用或重复的信息以减少输出大小和处理时间。删除未使用的样式、未使用的内置样式、重复的样式或未使用的列表。"
type: docs
weight: 30
url: /zh/python-net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

有时您可能需要删除未使用或重复的信息，以减少输出文档的大小和处理时间。

虽然您可以手动查找和删除未使用的数据（例如样式或列表）或重复信息，但使用 Aspose.Words 提供的特性和功能来执行此操作会更加方便。

[CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) 类允许您指定文档清理选项。要从文档中删除重复的样式或仅删除未使用的样式或列表，您可以使用 [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/) 方法。

## 从文档中删除未使用的信息

您可以使用 [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) 和 [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) 属性来检测和删除标记为"未使用"的样式。

您可以使用 [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) 属性来检测和删除标记为"未使用"的列表和列表定义。

以下代码示例演示如何从文档中仅删除未使用的样式：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## 从文档中删除重复信息

您还可以使用 [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) 属性将所有重复样式替换为原始样式，并从文档中删除重复项。

以下代码示例演示如何从文档中删除重复的样式：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}
