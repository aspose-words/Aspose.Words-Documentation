---
title: 处理 C# 中的文本文档
second_title: .NET 格式的 Aspose.Words
articleTitle: 处理文本文档
linktitle: 处理文本文档
description: "使用 C# 进行高级 TXT 文档处理、列表、BiDi、页眉/页脚。"
type: docs
weight: 430
url: /zh/net/working-with-text-document/
---

在本文中，我们将了解哪些选项可用于通过 Aspose.Words 处理文本文档。请注意，这不是可用选项的完整列表，而只是使用其中一些选项的示例。

## 添加双向标记

您可以使用 [AddBidiMarks](https://reference.aspose.com/words/zh/net/aspose.words.saving/txtsaveoptions/addbidimarks/) 属性指定以纯文本格式导出时是否在每次 BiDi 运行之前添加双向标记。 Aspose.Words 在文本中的每个双向运行之前插入 Unicode 字符"从右到左标记"(U+200F)。当导出为纯文本格式时，此选项对应于 MS Word 文件转换对话框中的"添加双向标记"选项。请注意，仅当 MS Word 中添加了任何阿拉伯语或希伯来语编辑语言时，它才会出现在对话中。

以下代码示例显示如何使用 **AddBidiMarks** 属性。该属性的默认值为 *false*：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## 在加载 TXT 期间识别列表项

Aspose.Words 可以将文本文件的列表项作为列表编号或纯文本导入到其文档对象模型中。 [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/zh/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) 属性允许指定从纯文本格式导入文档时如何识别编号列表项：

* 如果此选项设置为 *true*，空格也用作列表编号分隔符：阿拉伯样式编号 (1.、1.1.2.) 的列表识别算法同时使用空格和点 (".") 符号。

* 如果此选项设置为 *false*，当列表编号以点、右括号或项目符号（例如"•"、"*"、"-"或"o"）结尾时，列表识别算法会检测列表段落。

以下代码示例展示了如何使用此属性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## 加载 TXT 期间处理前导和尾随空格

您可以控制加载 TXT 文件期间处理前导空格和尾随空格的方式。前导空格可以被修剪、保留或转换为缩进，尾随空格可以被修剪或保留。

以下代码示例演示如何在导入 TXT 文件时修剪前导和尾随空格：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## 检测文档文本方向

Aspose.Words 在 [TxtLoadOptions](https://reference.aspose.com/words/zh/net/aspose.words.loading/txtloadoptions/) 类中提供了 [DocumentDirection](https://reference.aspose.com/words/zh/net/aspose.words.loading/txtloadoptions/documentdirection/) 属性来检测文档中的文本方向（RTL/LTR）。此属性设置或获取 [DocumentDirection](https://reference.aspose.com/words/zh/net/aspose.words.loading/documentdirection/) 枚举中提供的文档文本方向。默认值保留为 *right*。

以下代码示例展示了如何在导入 TXT 文件时检测文档的文本方向：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## 导出输出 TXT 中的页眉和页脚

如果要导出输出 TXT 文档中的页眉和页脚，可以使用 [ExportHeadersFootersMode](https://reference.aspose.com/words/zh/net/aspose.words.saving/exportheadersfootersmode/) 属性。此属性指定将页眉和页脚导出为纯文本格式的方式。

以下代码示例演示如何将页眉和页脚导出为纯文本格式：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## 输出 TXT 中的导出列表缩进

Aspose.Words 引入了 [TxtListIndentation](https://reference.aspose.com/words/zh/net/aspose.words.saving/txtlistindentation/) 类，该类允许指定在导出为纯文本格式时如何缩进列表级别。使用 [TxtSaveOption](https://reference.aspose.com/words/zh/net/aspose.words.saving/txtsaveoptions/) 时，提供 [ListIndentation](https://reference.aspose.com/words/zh/net/aspose.words.saving/txtsaveoptions/listindentation/) 属性来指定用于缩进列表级别的字符，并指定用于每一列表级别缩进的字符数。

字符属性的默认值为"\0"，表示没有缩进。对于 count 属性，默认值为 0，表示不缩进。

### 使用制表符

以下代码示例演示如何使用制表符导出列表级别：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### 使用空格字符

以下代码示例演示如何使用空格字符导出列表级别：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### 使用默认缩进

以下代码示例演示如何使用默认缩进导出列表级别：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
