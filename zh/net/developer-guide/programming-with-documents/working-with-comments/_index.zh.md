---
title: 使用 C# 中的注释
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用评论
linktitle: 使用评论
description: "使用 C# 处理注释。"
type: docs
weight: 260
url: /zh/net/working-with-comments/
---

{{% alert color="primary" %}}

**在线尝试**

您可以使用我们的 [免费在线删除注释](https://products.aspose.app/words/annotation) 尝试此功能。

{{% /alert %}}

Aspose.Words 允许用户使用注释 - Aspose.Words 文档中的注释由 [Comment](https://reference.aspose.com/words/zh/net/aspose.words/comment/) 类表示。还可以使用 [CommentRangeStart](https://reference.aspose.com/words/zh/net/aspose.words/commentrangestart/) 和 [CommentRangeEnd](https://reference.aspose.com/words/zh/net/aspose.words/commentrangeend/) 类来指定应与注释关联的文本区域。

## 添加评论

Aspose.Words 允许您通过多种方式添加注释：

1.使用[Comment](https://reference.aspose.com/words/zh/net/aspose.words/comment/)类
2.使用[CommentRangeStart](https://reference.aspose.com/words/zh/net/aspose.words/commentrangestart/)和[CommentRangeEnd](https://reference.aspose.com/words/zh/net/aspose.words/commentrangeend/)类

以下代码示例演示如何使用 **Comment** 类向段落添加注释：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AddComments-AddComments.cs" >}}

以下代码示例演示如何使用文本区域以及 **CommentRangeStart** 和 **CommentRangeEnd** 类向段落添加注释：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-AnchorComment-AnchorComment.cs" >}}

## 提取或删除评论

在 Word 文档中使用注释（除了跟踪更改之外）是审阅文档时的常见做法，特别是当有多个审阅者时。在某些情况下，您从文档中需要的唯一内容可能就是注释。假设您想要生成审核结果列表，或者您可能已经从文档中收集了所有有用的信息，并且您只想删除不必要的注释。您可能想要查看或删除特定审阅者的评论。

在此示例中，我们将了解一些简单的方法，用于从文档中的注释中收集信息以及从文档中删除注释。具体来说，我们将介绍如何：

- 提取文档中的所有评论或仅提取特定作者的评论
- 删除文档中的所有评论或仅删除特定作者的评论

### 如何提取或删除评论

该示例中的代码实际上非常简单，并且所有方法都基于相同的方法。 Word 文档中的注释由 Aspose.Words 文档对象模型中的 [Comment](https://reference.aspose.com/words/zh/net/aspose.words/comment/) 对象表示。要收集文档中的所有注释，请使用 [GetChildNodes](https://reference.aspose.com/words/zh/net/aspose.words/compositenode/getchildnodes/) 方法，并将第一个参数设置为 [NodeType.Comment](https://reference.aspose.com/words/zh/net/aspose.words/nodetype/)。确保 **GetChildNodes** 方法的第二个参数设置为 true：这会强制 **GetChildNodes** 递归地从所有子节点中进行选择，而不是仅收集直接子节点。

为了说明如何从文档中提取和删除注释，我们将执行以下步骤：

1.使用[Document](https://reference.aspose.com/words/zh/net/aspose.words/document/)类打开Word文档
2.将文档中的所有评论获取到一个集合中
3. 提取注释：
   1. 使用 foreach 运算符遍历集合
   2. 提取并列出所有评论的作者姓名、日期和时间以及文本
   3. 提取并列出作者姓名、日期和时间以及特定作者撰写的评论文本，在本例中为作者"ks"
4. 删除评论：
   1. 使用 for 运算符向后遍历集合
   2.删除评论
5. 保存更改

### 如何提取所有评论

**GetChildNodes** 方法非常有用，每次需要获取任何类型的文档节点列表时都可以使用它。生成的集合不会立即产生开销，因为仅当您枚举或访问其中的项目时，才会将节点选择到该集合中。

以下代码示例展示了如何提取文档中所有评论的作者姓名、日期和时间以及文本：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractComments.cs" >}}

### 如何提取指定作者的评论

将 **Comment** 节点选择到集合中后，您所要做的就是提取所需的信息。在此示例中，作者姓名首字母、日期、时间和评论的纯文本组合成一个字符串；您可以选择以其他方式存储它。

从特定作者提取评论的重载方法几乎相同，它只是在将信息添加到数组之前检查作者的姓名。

以下代码示例显示如何提取指定作者的评论的作者姓名、日期和时间以及文本：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cs" >}}

### 如何删除评论

如果要删除所有评论，则无需在集合中逐一删除评论。您可以通过在评论集合上调用 [Clear](https://reference.aspose.com/words/zh/net/aspose.words/nodecollection/clear/) 方法来删除它们。

以下代码示例展示了如何删除文档中的所有注释：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveComments.cs" >}}

当您需要有选择地删除评论时，该过程变得与我们用于评论提取的代码更加相似。

以下代码示例展示了如何删除指定作者的评论：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cs" >}}

这里要强调的要点是 for 运算符的使用。与简单的提取不同，这里要删除一条评论。一个合适的技巧是从最后一个 Comment 向后迭代集合到第一个 Comment。这样做的原因是，如果从末尾开始向后移动，前面的项目的索引保持不变，并且您可以返回到集合中的第一项。

以下代码示例展示了注释提取和删除的方法：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-ProcessComments.cs" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Comments.docx) 下载本示例的示例文件。

{{% /alert %}}

### 如何删除 CommentRangeStart 和 CommentRangeEnd 之间的注释

使用 Aspose.Words，您还可以删除 **CommentRangeStart** 和 **CommentRangeEnd** 节点之间的注释。

以下代码示例显示如何删除 **CommentRangeStart** 和 **CommentRangeEnd** 之间的文本：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cs" >}}

## 添加或删除评论的回复

[AddReply](https://reference.aspose.com/words/zh/net/aspose.words/comment/addreply/) 方法添加对此评论的回复。请注意，由于现有的 Microsoft Office 限制，文档中仅允许 1 级回复。如果在现有 Reply 注释上调用此方法，将引发 *InvalidOperationException* 类型的异常。

您可以使用 [RemoveReply](https://reference.aspose.com/words/zh/net/aspose.words/comment/removereply/) 方法删除对此评论的指定回复。

以下代码示例展示了如何添加评论回复和删除评论回复：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cs" >}}

## 阅读评论的回复

[Replies](https://reference.aspose.com/words/zh/net/aspose.words/comment/replies/) 属性返回 [Comment](https://reference.aspose.com/words/zh/net/aspose.words/comment/) 对象的集合，这些对象是指定注释的直接子级。

以下代码示例展示了如何迭代评论的回复并解决它们：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cs" >}}
