---
title: 使用Java中的范围
second_title: Aspose.Words为Java
articleTitle: 使用范围
linktitle: 使用范围
description: "介绍Aspose.Words中Java的范围特性."
type: docs
weight: 130
url: /zh/java/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

在Aspose.Words中，范围是文档的树状模型的"平面窗口"。

{{% /alert %}}

如果您使用过Microsoft WordAutomation，您可能知道检查和修改文档内容的主要工具之一是`Range`对象。范围就像文档内容和格式的"窗口"。

Aspose.Words也有[Range](https://reference.aspose.com/words/java/com.aspose.words/range/)类，它的外观和行为类似于Microsoft Word中的**Range**。 虽然**Range**不能复盖文档的任意部分并且没有**Start**和**End**，但您可以访问包括[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)本身在内的任何文档节点所复盖的范围。 换句话说，每个节点都有自己的范围。 **Range**对象允许您访问和修改范围内的文本、书签和表单字段。

## 检索纯文本

使用[Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText)属性检索范围的纯文本、无格式文本。

下面的代码示例演示如何获取范围的纯文本、无格式文本:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 删除文本

`Range`类允许通过调用[delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete)删除范围的所有字符。

下面的代码示例演示如何删除范围的所有字符:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


