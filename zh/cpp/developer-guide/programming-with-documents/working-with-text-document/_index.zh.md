---
title: 在C++中使用文本文档
second_title: Aspose.Words对于C++
articleTitle: 使用文本文档
linktitle: 使用文本文档
description: "高级TXT文档处理，列表，BiDi，页眉/页脚，使用C++。"
type: docs
weight: 430
url: /zh/cpp/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

在本文中，我们将了解哪些选项可用于通过Aspose.Words处理文本文档。 请注意，这不是可用选项的完整列表，而只是使用其中一些选项的示例。

## 添加双向标记

您可以使用[AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/)属性指定在以纯文本格式导出时是否在每次BiDi运行之前添加双向标记。 Aspose.Words插入Unicode字符'RIGHT-TO-LEFT MARK' (U+200F)在文本中的每个双向运行之前。 此选项对应于导出为纯文本格式时MSWord文件转换对话中的"添加双向标记"选项。 请注意，只有在MS字中添加了阿拉伯语或希伯来语编辑语言时，它才会出现在对话中。

下面的代码示例演示如何使用**AddBidiMarks**属性。 此属性的默认值为*false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## 在加载TXT期间识别列表项

Aspose.Words可以在其文档对象模型中将文本文件的列表项导入为列表编号或纯文本。 [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/)属性允许指定从纯文本格式导入文档时如何识别编号列表项:

* 如果此选项设置为*true*，则空格也用作列表编号分隔符：阿拉伯语样式编号的列表识别算法(1。, 1.1.2.)同时使用空格和点(".")符号。
* 如果此选项设置为*false*，列表识别算法会检测列表段落，当列表数字以点、右括号或项目符号结尾时（例如"•", "*", "-" 或"o")。

下面的代码示例演示如何使用此属性:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## 如何在加载TXT期间处理前导和尾随空格

您可以在加载TXT文件期间控制处理前导和尾随空格的方式。 前导空格可以被修剪、保留或转换为缩进，尾随空格可以被修剪或保留。

下面的代码示例演示如何在导入TXT文件时修剪前导和尾随空格:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## 在输出TXT中导出页眉和页脚

如果要在输出TXT文档中导出页眉和页脚，可以使用[ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/)属性。 此属性指定将页眉和页脚导出为纯文本格式的方式。

下面的代码示例演示如何将页眉和页脚导出为纯文本格式:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## 输出TXT中的导出列表缩进

Aspose.Words引入了[TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/)类，它允许指定在导出为纯文本格式时如何缩进列表级别。 使用[TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/)时，提供了[ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/)属性来指定用于缩进列表级别的字符，并计数指定每个列表级别使用多少个字符作为缩进。

Character属性的默认值是'\0'，表示没有缩进。 对于count属性，默认值为0，这意味着没有缩进。

### 使用制表符

下面的代码示例演示如何使用制表符导出列表级别:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### 使用空格字符

下面的代码示例演示如何使用空格字符导出列表级别:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### 使用默认缩进

下面的代码示例演示如何使用默认缩进导出列表级别:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
