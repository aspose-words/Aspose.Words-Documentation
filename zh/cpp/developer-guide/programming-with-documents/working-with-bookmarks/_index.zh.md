---
title: 在C++中使用书签
second_title: Aspose.Words对于C++
articleTitle: 使用书签
linktitle: 使用书签
description: "了解书签概念以及如何使用 C++ 在程序中使用书签。"
type: docs
weight: 180
url: /zh/cpp/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

书签在Microsoft Word文档中标识您命名并标识以供将来参考的位置或片段。 例如，您可以使用书签来标识要稍后修改的文本。 您可以使用"书签"对话框转到文档，而不是滚动文档以查找文本。

使用Aspose.Words可以使用书签执行的操作与使用Microsoft Word可以执行的操作相同。 您可以插入新书签，删除，移动到书签，获取或设置书签名称，获取或设置包含在其中的文本。 使用Aspose.Words，您还可以使用报表或文档中的书签将一些数据插入书签或对其内容应用特殊格式。 您还可以使用书签从文档中的某个位置检索文本。

## 插入书签

使用[StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/)和[EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/)通过分别标记书签的开始和结束来创建书签。 不要忘记将相同的书签名称传递给这两种方法。 文档中的书签可以重叠并跨越任何范围。 保存文档时，格式错误的书签或名称重复的书签将被忽略。

下面的代码示例演示如何创建新书签:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## 获取书签

有时需要获取书签集合以遍历书签或用于其他目的。 使用返回表示此节点中包含的文档部分的[Range](https://reference.aspose.com/words/cpp/aspose.words/range/)对象的任何文档节点公开的[Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/)属性。 使用此对象检索[BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/)，然后使用集合索引器获取特定书签。

下面的代码示例演示如何从书签集合中获取书签:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

下面的代码示例演示如何获取或设置书签名称和文本:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

下面的代码示例演示如何为表添加书签:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

如果将书签的名称更改为文档中已存在的名称，则不会生成错误，并且在保存文档时只会存储第一个书签。

{{% alert color="primary" %}}

请注意，文档中的某些书签被分配给表单字段。 移动到这样的书签并在那里插入文本将文本插入表单字段代码中。 虽然这不会使表单字段无效，但插入的文本将不可见，因为它成为字段代码的一部分。

{{% /alert %}}

## 移动到书签

如果您需要将丰富内容（不仅仅是纯文本）插入书签，则应使用[MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/)将光标移动到书签，然后使用[DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)方法和属性插入内容。

## 显示隐藏书签内容

整个书签（*including the bookmarked content*）可以使用Aspose.Words封装在`IF`字段的真实部分中。 `IF`字段在表达式（*Left of Operator*）中包含嵌套的合并字段，并且根据合并字段的值，`IF`字段显示或隐藏Word文档中的书签内容。

下面的代码示例演示如何显示/隐藏书签:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
