---
title: 在 Python 中使用书签
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用书签
linktitle: 使用书签
description: "如何使用 Python 插入、获取、移动、显示或隐藏书签。"
type: docs
weight: 180
url: /zh/python-net/working-with-bookmarks/
---

书签在 Microsoft Word 文档中标识您命名和标识的位置或片段，以供将来参考。例如，您可以使用书签来标识稍后要修改的文本。您可以使用"书签"对话框转到文本，而不是滚动文档来查找文本。

使用 Aspose.Words 对书签执行的操作与使用 Microsoft Word 执行的操作相同。您可以插入新书签、删除、移动到书签、获取或设置书签名称、获取或设置其中包含的文本。使用 Aspose.Words，您还可以在报告或文档中使用书签，将一些数据插入书签或对其内容应用特殊格式。您还可以使用书签从文档中的特定位置检索文本。

## 插入书签

使用 [start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) 和 [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/) 分别通过标记其开始和结束来创建书签。不要忘记将相同的书签名称传递给这两个方法。文档中的书签可以重叠并跨越任何范围。保存文档时，格式错误的书签或名称重复的书签将被忽略。

{{% alert color="primary" %}}

书签中的所有空格均替换为下划线。此限制来自 MS Word 格式，因为 MS Word 格式中的书签（如 DOCX 或 DOC）不能包含空格。然而，PDF 允许这样的书签。因此，现在，如果您需要在 PDF 或 XPS 大纲中使用书签，则可以将它们与空格一起使用。

{{% /alert %}}

以下代码示例展示了如何创建新书签：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## 获取书签

有时需要获取书签集合以迭代书签或用于其他目的。使用任何文档节点公开的 [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) 属性，该属性返回表示该节点中包含的文档部分的 [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) 对象。使用此对象检索 [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/)，然后使用集合索引器获取特定书签。

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx) 下载这些示例的示例文件。

{{% /alert %}}

以下代码示例演示如何从书签集合中获取书签：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

以下代码示例显示如何获取或设置书签名称和文本：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

以下代码示例显示如何为表添加书签：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

如果将书签名称更改为文档中已存在的名称，则保存文档时不会产生错误，并且只会存储第一个书签。

请注意，文档中的某些书签已分配给表单字段。移动到这样的书签并在其中插入文本会将文本插入表单字段代码中。虽然这不会使表单字段无效，但插入的文本将不可见，因为它成为字段代码的一部分。

以下代码示例显示如何访问已添加书签的表的列：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## 移至书签

如果需要在书签中插入丰富的内容（不仅仅是纯文本），则应使用 [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) 将光标移动到书签，然后使用 [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 方法和属性插入内容。

## 显示隐藏书签内容

整个书签（*包括加书签的内容*）可以使用 Aspose.Words 封装在 `IF` 字段的 True 部分中。可以这样的方式，`IF`字段在表达式(*操作符的左边*)中包含嵌套的合并字段，并且根据合并字段的值，`IF`字段显示或隐藏Word文档中书签的内容。

以下代码示例展示了如何显示/隐藏书签：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
