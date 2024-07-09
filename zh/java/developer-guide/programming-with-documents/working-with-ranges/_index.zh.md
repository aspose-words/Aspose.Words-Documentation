---
title: 与区域合作 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 工作范围
linktitle: 工作范围
description: "区域特性简介 Aspose.Words (单位:千美元) Java。 。 。 。"
type: docs
weight: 130
url: /zh/java/working-with-ranges/
---

{{% alert color="primary" %}}

内 Aspose.Words, a 范围是"平面窗口",可以输入文档中类似树的模型。

{{% /alert %}}

如果你已经工作过 Microsoft Word 自动化,你可能知道,检查和修改文档内容的主要工具之一是 `Range` 对象。 范围类似于文档内容和格式化中的"窗口".

Aspose.Words 也拥有 [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) 类,它的设计 外观和行为类似 **Range** 输入 Microsoft Word。 。 。 。 虽然 **Range** 无法覆盖文件的任意部分,且没有 **Start** 和 **End**, 您可以访问任何文档节点覆盖的范围,包括 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 它本身。 也就是说,每个节点都有自己的范围. 那个 **Range** 对象允许您访问和修改区域内的文本、书签和形成字段。

## 获取纯文本

使用 [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) 属性以获取区域中的非格式文本。

以下的代码示例显示如何获得一个范围的平面的,未格式化的文本:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的样本文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)。 。 。 。

{{% /alert %}}

## 删除文本

那个 `Range` 类允许通过调用删除此区域的所有字符 [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete)。 。 。 。

以下代码示例显示如何删除一个区域的所有字符:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的样本文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)。 。 。 。

{{% /alert %}}

## 