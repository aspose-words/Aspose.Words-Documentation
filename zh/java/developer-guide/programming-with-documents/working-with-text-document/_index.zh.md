---
title: 使用文本文档 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 使用文本文档
linktitle: 使用文本文档
description: "高级 TXT 文档处理、列表、 BiDi、 页眉/页脚, 使用 Java。 。 。 。"
type: docs
weight: 430
url: /zh/java/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

在本条中,我们将了解哪些备选办法有助于通过下列途径处理文本文件: Aspose.Words。 。 。 请注意,这不是一份完整的现有备选方案清单,而只是与其中一些备选方案合作的例子。

## 添加双方向 标记

你可以用这个 [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) 属性以指定是否在每个 BiDi 运行前以纯文本格式导出时添加双向标记。 Aspose.Words 在每个双向文本运行之前插入 Unicode 字符" RIGHT-TO-LEFT MARK"(U+200F)。 此选项对应 MS Word 文件转换对话框中的" 添加双向标记" 选项, 当您导出到纯文本格式时。 请注意,只有在MS Word中添加任何阿拉伯语或希伯来语编辑语言时才会出现在对话框中.

以下代码示例显示如何使用 `TxtSaveOptions.AddBidiMarks` 属性。 此属性的默认值为 *true*编号:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## 装入 TXT 时识别列表项目

Aspose.Words 可以在文档对象模型中将文本文件的列表项目导入为列表编号或纯文本。 那个 [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) 属性可以指定从纯文本格式导入文档时如何识别编号列表项:

* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 如果设置为 *true*, 白空也用作列表编号分隔符:阿拉伯风格编号的列表识别算法(1.,1.1.2)同时使用白空和点符号(").
* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 如果设置为 *false*, 列表识别算法检测列表段落,当列表数字以点、右括号或弹头符号(如"-"、"*"、"-"或"o")结尾时。

以下代码示例显示如何使用此属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## 装入 TXT 时处理引导和拖曳空间

您可以在装入 TXT 文件时控制处理引导和跟踪空格的方式. 主要的空间可以修剪、保存或转换为缩进,后面的空间可以修剪或保存。

下面给出的代码示例显示在导入 TXT 文件时如何修剪引导和跟踪空格:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## 检测文档 文本方向

Aspose.Words 提供 [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) 属性在 [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) 分类以检测文档中的文本方向(RTL / LTR)。 此属性设置或获得文档文本方向 [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) 计数. 默认值是左到右。

以下代码示例显示在导入 TXT 文件时如何检测文档的文本方向:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## 输出 TXT 文件导出页眉和页脚

如果您要在输出的 TXT 文档中导出页眉和页脚, 您可以使用 [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) 属性。 此属性指定了向纯文本格式导出页眉和页脚的方式 。

以下代码示例显示如何将标题和页脚导出为纯文本格式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## 导出输出 TXT 中的列表缩进

Aspose.Words 介绍 [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) 类,允许在导出纯文本格式时指定列表级别缩进。 在与 [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), 联合国 [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) 属性用于指定用于缩进列表关卡的字符,并指定每个列表关卡使用多少个字符作为缩进。

字符属性的默认值为"\0"表示没有缩进 。 对于计数属性,默认值为0,表示没有缩进.

### 使用标签字符

以下代码示例显示如何使用标签字符导出列表级别:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### 使用空间字符

以下代码示例显示如何使用空格字符导出列表级别:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### 使用默认缩进

以下代码示例显示如何使用默认缩进来导出列表级别:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
