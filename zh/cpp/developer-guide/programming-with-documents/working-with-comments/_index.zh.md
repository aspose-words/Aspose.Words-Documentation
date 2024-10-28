---
title: 使用C++中的注释
second_title: Aspose.Words对于C++
articleTitle: 处理意见
linktitle: 处理意见
description: "使用 C++ 处理注释。"
type: docs
weight: 260
url: /zh/cpp/working-with-comments/
---

{{% alert color="primary" %}}

**在线试用**

您可以使用我们的 [免费在线删除注释](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words允许用户使用注释-Aspose.Words中的文档中的注释由[Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/)类表示。 还可以使用[CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/)和[CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/)类指定应与注释关联的文本区域。

## 添加评论

Aspose.Words允许您以多种方式添加注释:

1. 使用[Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/)类
2. 使用[CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/)和[CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)类

下面的代码示例演示如何使用**Comment**类向段落添加注释:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AddComments-AddComments.cpp" >}}

下面的代码示例演示如何使用文本区域以及**CommentRangeStart**和**CommentRangeEnd**类向段落添加注释:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AnchorComment-AnchorComment.cpp" >}}

## 提取或删除注释

在Word文档中使用注释（除了跟踪更改之外）是审阅文档时的常见做法，特别是当有多个审阅者时。 在某些情况下，您需要从文档中获得的唯一内容是注释。 假设您想生成一个审查结果列表，或者您已经从文档中收集了所有有用的信息，并且您只想删除不必要的评论。 您可能希望查看或删除特定审阅者的注释。

在本示例中，我们将介绍一些简单的方法，既可以从文档中的注释中收集信息，也可以从文档中删除注释。 具体来说，我们将介绍如何:

- 从文档中提取所有注释或仅提取特定作者的注释。
- 从文档中或仅从特定作者中删除所有注释。

### 如何提取或删除注释

此示例中的代码实际上非常简单，所有方法都基于相同的方法。 Word文档中的注释由Aspose.Words文档对象模型中的[Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/)对象表示。 要收集文档中的所有注释，请使用第一个参数设置为[NodeType.Comment](https://reference.aspose.com/words/cpp/aspose.words/nodetype/)的[GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/)方法。 确保**GetChildNodes**方法的第二个参数设置为true：这会强制**GetChildNodes**递归地从所有子节点中进行选择，而不是只收集直接子节点。

为了说明如何从文档中提取和删除注释，我们将执行以下步骤:

1. 使用[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)类打开Word文档
1. 将文档中的所有注释获取到集合中
1. 提取评论:
   1. 使用foreach运算符浏览集合
   1. 提取并列出所有评论的作者姓名，日期和时间以及文本
   1. 提取并列出作者姓名，日期和时间以及特定作者撰写的评论文本，在这种情况下，作者'ks'
1. 删除注释:
   1. 使用for the operator向后遍历集合
   1. 删除评论
1. 保存更改

### 如何提取所有评论

**GetChildNodes**方法非常有用，您可以在每次需要获取任何类型的文档节点列表时使用它。 生成的集合不会立即产生开销，因为只有在枚举或访问其中的项时，才会将节点选择到此集合中。

下面的代码示例演示如何提取文档中所有注释的作者姓名、日期和时间以及文本:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractComments.cpp" >}}

### 如何提取指定作者的评论

在将注释节点选择到集合中后，您所要做的就是提取所需的信息。 在此示例中，作者姓名缩写、日期、时间和注释的纯文本组合成一个字符串；您可以选择以其他方式存储它。

从特定作者提取注释的重载方法几乎相同，它只是在将信息添加到数组之前检查作者的姓名。

下面的代码示例演示如何提取指定作者的作者姓名、日期和时间以及注释的文本:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cpp" >}}

### 如何删除评论

如果要删除所有注释，则无需逐个删除注释；您可以通过在comments集合上调用`NodeCollection.Clear`来删除它们。

下面的代码示例演示如何删除文档中的所有注释:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveComments.cpp" >}}

当您需要有选择地删除注释时，该过程变得更加类似于我们用于注释提取的代码。

下面的代码示例演示如何删除指定作者的注释:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cpp" >}}

这里要强调的要点是使用for运算符。 与简单的提取不同，在这里您要删除注释。 一个合适的技巧是将集合从最后一个注释向后迭代到第一个注释。 这样做的原因如果您从末尾开始并向后移动，则前面项目的索引保持不变，并且您可以工作回到集合中的第一个项目。

下面的代码示例演示注释提取和删除的方法:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ProcessComments.cpp" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### 如何删除CommentRangeStart和CommentRangeEnd之间的注释

使用Aspose.Words还可以删除**CommentRangeStart**和**CommentRangeEnd**节点之间的注释。

下面的代码示例演示如何删除**CommentRangeStart**和**CommentRangeEnd**之间的文本:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cpp" >}}

## 添加和删除评论的回复

[AddReply](https://reference.aspose.com/words/cpp/aspose.words/comment/addreply/)方法将回复添加到此注释。 请注意，由于现有的Microsoft Office限制，文档中仅允许1级别的回复。 如果对现有回复注释调用此方法，则会引发*InvalidOperationException*类型的异常。

您可以使用[RemoveReply](https://reference.aspose.com/words/cpp/aspose.words/comment/removereply/)方法删除对此注释的指定回复。

下面的代码示例演示如何向注释添加回复并删除注释的回复:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cpp" >}}

## 阅读评论的回复

[Replies](https://reference.aspose.com/words/cpp/aspose.words/comment/get_replies/)属性返回**Comment**对象的集合，这些对象是指定注释的直接子项。

下面的代码示例演示如何遍历注释的回复并解析它们:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cpp" >}}