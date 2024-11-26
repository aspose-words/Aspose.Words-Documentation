---
title: 处理列表 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 处理列表
linktitle: 处理列表
description: "编号格式特性介绍 Aspose.Words (单位:千美元) Java。 。 。 。"
type: docs
weight: 200
url: /zh/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

列表 a Microsoft Word 文档是一组列表格式化属性。 列表可以在文档中用于格式化、安排和强调文本。 列表是将数据组织在文档中的一个大方法,它们使读者更容易理解关键点.

每个列表最多可以有9个级别,格式化属性,例如数字样式,起始值,缩进,制表位,其他的则为每个级别分别定义.

本条说明在程序上利用 Aspose.Words。 。 。 。

## 通过应用列表格式创建列表

Aspose.Words 允许通过应用列表格式来方便地创建列表。 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 提供 [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) 返回的属性 a **ListFormat** 对象。 此对象有几种方法可以开始和结束列表并增加/减少缩进. 清单有两种一般类型: Microsoft Word: 中弹并编号:

- 要启动一个中弹列表,打电话 [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- 要开始一个编号列表,呼叫 [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

在当前段落和所有其他段落中添加项目符号和格式。 **DocumentBuilder** 直至 [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) 被调用以停止中弹列表格式化。

在Word文档中,列表可能包含最多9个级别. 每个关卡的列表格式指定了使用什么项目符号或数字,左缩进,项目符号与文本之间的空格等. 以下方法改变列表级别,并应用新级别的格式属性: 1

- 怎么样? 将当前段落的列表级别增加一个级别,呼叫 [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- 怎么样? 将当前段落的清单水平减少一个级别,呼叫 [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

方法改变列表级别,并应用新级别的格式属性.

{{% alert color="primary" %}}

你也可以使用这个 [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) 属性以获取或设置段落的列表级别。 列表级别为0至8级.

{{% /alert %}}

以下代码示例显示如何构建多层次列表:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## 指定列表级别的格式

列表级别对象在创建列表时自动创建. 使用 [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) 分类来控制列表中各个级别的格式。

## 每个区域重新激活列表

您可以使用 [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) 属性。 注意此选项仅在RTF,DOC和DOCX文档格式中支持. 只有OoxmlConference更高,然后Ecma376,此选项才会写入DOCX.

以下代码示例显示如何创建列表并重新启动每个部分:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

