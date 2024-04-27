---
title: 与评论合作 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 与评论合作
linktitle: 与评论合作
description: "使用注释处理 Java。 。 。 。"
type: docs
weight: 260
url: /zh/java/working-with-comments/
---

{{% alert color="primary" %}}

**尝试在线**

你可以试试这个功能与我们 [免费在线删除注释](https://products.aspose.app/words/annotation)。 。 。 。

{{% /alert %}}

Aspose.Words 允许用户在文档中与注释 - 注释合作 。 Aspose.Words 代表大会 [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) 课。 还要用 [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) 和 [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) 分类以指定与注释相关的文本区域。

## 添加注释

Aspose.Words 允许您以多个方式添加注释:

一、导 言 使用 [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) 类
2. 国家 使用 [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) 和 [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) 类

以下代码示例显示如何使用 **Comment** 类:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

以下代码示例显示如何使用文本区域对段落添加注释 **CommentRangeStart** 和 **CommentRangeEnd** 类:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## 提取或删除注释

在Word文档中使用评论(除了音轨变化)是审查文件时的一种常见做法,特别是在有多个审查者的情况下. 在某些情况下,文档中你需要的只是注释。 说你想生成一个审查结论列表,或者也许你已经从文件中收集了所有有用的信息,你只是想删除不必要的评论. 您可能想要查看或删除特定审查者的评论 。

在这个样本中,我们将研究一些简单的方法,既从文件的评论中收集信息,又从文件中删除评论。 具体地说,我们将研究如何:

- 从某一文件或只从某一作者提出的文件中摘录所有评论。
- 从文档中删除所有评论,或只从特定作者中删除。

### 如何提取或删除注释

这个样本中的代码相当简单,所有的方法都基于同一方法. Word 文档中的评论由 `Comment` 对象 Aspose.Words 文档对象模型。 要收集文档中的所有评论,请使用 [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) 第一个参数集为 `NodeType.Comment`。 。 。 。 确定第二个参数 **获取儿童节点** 方法设定为 true: 这迫使 **获取儿童节点** 从所有的儿童节点中连续选择,而不是仅仅收集直接的子女。

为了说明如何从文件中提取和删除评论意见,我们将采取以下步骤:

一、导 言 使用 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 类
一、导 言 将文档中的所有注释输入收藏
一、导 言 要提取评论:
   1. 使用操作员的收集方式完成收集
   1. 摘录和列出所有评论的作者姓名、日期和时间及文本
   1. 摘录和列出作者姓名、日期和时间以及具体作者撰写的评论文本,在本案中,作者`ks '
一、导 言 删除注释:
   1. 使用运算符向后通过收集
   1. 删除注释
一、导 言 省变换.

我们将在这项工作中使用以下文字文件:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

可以看出,它载有两位作者的一些评论,首字母为"pm"和"ks"。

### 如何提取所有注释

那个 [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) 方法非常有用,每次需要获得任意类型的文档节点列表时都可以使用。 由此产生的收藏不会产生即时的间接费用,因为节点只有在您列举或访问其中的项目时才会被选中到此收藏中.

以下代码示例显示如何提取文档中所有注释的作者名称,日期和时间及文本:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### 如何提取指定的作者的评论

在您将注释节点选入集合后, 您只需提取您需要的信息 。 在这个样本中,作者的首字母,日期,时间和评论的纯文本被合并为一个字符串;你可以选择以其他方式存储它.

从某个作者身上提取评论的超载方法几乎相同,它只是在将信息添加到数组之前检查作者的名字.

以下代码示例说明如何提取作者名称,日期和时间以及指定作者评论的文本: 1

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### 如何删除注释

如果您要删除所有批注, 无需逐个删除批注; 您可以通过调用删除它们 。 [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) 有关评论集。

以下代码示例显示如何删除文档中的所有注释:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

当你需要有选择地删除注释时,这个过程会变得更类似于我们用于注释提取的代码.

以下代码示例显示如何删除指定作者的评论:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

这里要强调的要点是操作员的用法. 与简单的提取不同, 您想要删除一个注释 。 一个合适的技巧是将收藏从最后的注释向后排列到第一个注释. 如果从尾部开始向后移动,则前项的索引保持不变,可以工作回集的第一个项.

以下代码示例显示了注释提取和删除的方法:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的样本文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc)。 。 。 。

{{% /alert %}}

发射时,样本显示以下结果. 首先,它列出所有作者的所有评论,然后只列出选定的作者的评论。 最后,代码删除所有评论.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

输出 Word 文档现已删除其中的评论:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### 如何删除注释朗格启动和注释朗格结束之间的文字

使用 Aspose.Words 也可以删除注释朗格启动和注释朗格结束节点之间的注释。

以下代码示例显示如何在 CommentRangeStart 和 CommentRangEnd 之间删除文本:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## 添加或删除注释回复

那个 [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) 方法增加了对这一评论的答复。 请注意,由于人力厅现有的限制,文件中只允许一(1)级的答复。 如果此方法被调用到现有的回复注释中, 将会提出无效操作例外的例外 。

你可以用这个 [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) 方法删除对本注释的指定回复。

以下代码示例显示如何对评论添加回复,并删除评论的回复:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## 读取注释回复

Aspose.Words 支持阅读评论意见的答复。 那个 [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) 属性返回收藏 [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) 指定注释的直接子对象。

以下代码示例显示如何通过评论的回复进行排列并解析:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}