---
title: 使用Java中的注释
second_title: Aspose.Words为Java
articleTitle: 处理意见
linktitle: 处理意见
description: "使用Java处理注释。"
type: docs
weight: 260
url: /zh/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**在线试用**

您可以使用我们的 [免费在线删除注释](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words允许用户使用注释-Aspose.Words中的文档中的注释由[Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)类表示。 还可以使用[CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/)和[CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)类指定应与注释关联的文本区域。

## 添加评论

Aspose.Words允许您以多种方式添加注释:

1. 使用[Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)类
2. 使用[CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/)和[CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)类

下面的代码示例演示如何使用**Comment**类向段落添加注释:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

下面的代码示例演示如何使用文本区域以及**CommentRangeStart**和**CommentRangeEnd**类向段落添加注释:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## 提取或删除注释

在Word文档中使用注释（除了跟踪更改之外）是审阅文档时的常见做法，特别是当有多个审阅者时。 在某些情况下，您需要从文档中获得的唯一内容是注释。 假设你想生成一个审查结果的列表，或者你已经从文档中收集了所有有用的信息，你只是想删除不必要的评论。 您可能希望查看或删除特定审阅者的注释。

在本示例中，我们将介绍一些简单的方法，既可以从文档中的注释中收集信息，也可以从文档中删除注释。 具体来说，我们将介绍如何:

- 从文档中提取所有注释或仅提取特定作者的注释。
- 从文档中或仅从特定作者中删除所有注释。

### 如何提取或删除注释

此示例中的代码非常简单，所有方法都基于相同的方法。 Word文档中的注释由Aspose.Words文档对象模型中的`Comment`对象表示。 要收集文档中的所有注释，请使用第一个参数设置为`NodeType.Comment`的[getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes)方法。 确保**getChildNodes**方法的第二个参数设置为true：这会强制**getChildNodes**递归地从所有子节点中进行选择，而不是只收集直接子节点。

为了说明如何从文档中提取和删除注释，我们将执行以下步骤:

1. 使用[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)类打开Word文档
1. 将文档中的所有注释获取到集合中
1. 提取评论:
   1. 使用for the operator浏览集合
   1. 提取并列出所有评论的作者姓名，日期和时间以及文本
   1. 提取并列出作者姓名，日期和时间以及特定作者撰写的评论文本，在这种情况下，作者'ks'
1. 删除注释:
   1. 使用for the operator向后遍历集合
   1. 删除评论
1. 保存更改。

我们将使用以下Word文档进行此练习:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

正如您所看到的，它包含两位作者的几个评论，首字母为"pm"和"ks"。

### 如何提取所有评论

[getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes)方法非常有用，您可以在每次需要获取任何类型的文档节点列表时使用它。 生成的集合不会立即产生开销，因为只有在枚举或访问其中的项时，才会将节点选择到此集合中。

下面的代码示例演示如何提取文档中所有注释的作者姓名、日期和时间以及文本:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### 如何提取指定作者的评论

在将注释节点选择到集合中后，您所要做的就是提取所需的信息。 在此示例中，作者的首字母、日期、时间和注释的纯文本被组合成一个字符串；您可以选择以其他方式存储它。

从特定作者提取注释的重载方法几乎相同，它只是在将信息添加到数组之前检查作者的姓名。

下面的代码示例演示如何提取指定作者的作者姓名、日期和时间以及注释的文本:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### 如何删除评论

如果要删除所有注释，则无需逐个删除注释；您可以通过在comments集合上调用[clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear)来删除它们。

下面的代码示例演示如何删除文档中的所有注释:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

当您需要有选择地删除注释时，该过程变得更加类似于我们用于注释提取的代码。

下面的代码示例演示如何删除指定作者的注释:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

这里要强调的要点是使用for运算符。 与简单的提取不同，在这里您要删除注释。 一个合适的技巧是将集合从最后一个注释向后迭代到第一个注释。 这样做的原因如果您从末尾开始并向后移动，则前面项目的索引保持不变，并且您可以工作回到集合中的第一个项目。

下面的代码示例演示注释提取和删除的方法:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

启动时，示例显示以下结果。 首先，它列出所有作者的所有评论，然后只列出所选作者的评论。 最后，代码删除所有注释。

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

输出Word文档现在已从中删除注释:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### 如何删除CommentRangeStart和CommentRangeEnd之间的文本

使用Aspose.Words还可以删除CommentRangeStart和CommentRangeEnd节点之间的注释。

下面的代码示例演示如何删除CommentRangeStart和CommentRangeEnd之间的文本:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## 添加或删除评论的回复

[addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String)方法将回复添加到此注释。 请注意，由于现有的MSOffice限制，文档中仅允许一(1)级回复。 如果对现有回复注释调用此方法，则会引发InvalidOperationException类型的异常。

您可以使用[removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment)方法删除对此注释的指定回复。

下面的代码示例演示如何向注释添加回复并删除注释的回复:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## 阅读评论的回复

Aspose.Words支持阅读评论的回复。 [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies)属性返回[Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)对象的集合，这些对象是指定注释的直接子项。

下面的代码示例演示如何遍历注释的回复并解析它们:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
