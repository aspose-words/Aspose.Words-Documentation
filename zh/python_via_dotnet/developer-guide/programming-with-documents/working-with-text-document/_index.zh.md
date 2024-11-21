---
title: 处理文本文档
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 处理文本文档
linktitle: 处理文本文档
description: "使用 Python 处理文本文档并修改其对象。"
type: docs
weight: 430
url: /zh/python-net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

在本文中，我们将了解哪些选项可用于通过 Aspose.Words 处理文本文档。请注意，这不是可用选项的完整列表，而只是使用其中一些选项的示例。

## 添加双向标记

您可以使用 [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) 属性指定以纯文本格式导出时是否在每次 BiDi 运行之前添加双向标记。 Aspose.Words 在文本中的每个双向 [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) 之前插入 Unicode 字符"从右到左标记"(U+200F)。当导出为纯文本格式时，此选项对应于 MS Word 文件转换对话框中的"添加双向标记"选项。请注意，仅当 MS Word 中添加了任何阿拉伯语或希伯来语编辑语言时，它才会出现在对话中。

以下代码示例显示如何使用 [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) 属性。该属性的默认值为 `False`：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## 在加载 TXT 期间识别列表项

Aspose.Words 可以将文本文件的列表项作为列表编号或纯文本导入到其文档对象模型中。 [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) 属性允许指定从纯文本格式导入文档时如何识别编号列表项：

* 如果此选项设置为 `True`，空格也用作列表编号分隔符：阿拉伯样式编号 (1.、1.1.2.) 的列表识别算法同时使用空格和点 (".") 符号。
* 如果此选项设置为 `False`，当列表编号以点、右括号或项目符号（例如"•"、"*"、"-"或"o"）结尾时，列表识别算法会检测列表段落。

以下代码示例展示了如何使用此属性：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## 加载 TXT 期间处理前导和尾随空格

您可以控制加载 TXT 文件期间处理前导空格和尾随空格的方式。前导空格可以被修剪、保留或转换为缩进，尾随空格可以被修剪或保留。

以下代码示例演示如何在导入 TXT 文件时修剪前导和尾随空格：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## 检测文档文本方向

Aspose.Words 在 [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) 类中提供 [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) 属性来检测文档中的文本方向（RTL / LTR）。此属性设置或获取 [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/) 枚举中提供的文档文本方向。默认值是从左到右。

以下代码示例展示了如何在导入 TXT 文件时检测文档的文本方向：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## 导出输出 TXT 中的页眉和页脚

如果要导出输出 TXT 文档中的页眉和页脚，可以使用 [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/) 属性。此属性指定将页眉和页脚导出为纯文本格式的方式。

以下代码示例演示如何将页眉和页脚导出为纯文本格式：

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## 输出 TXT 中的导出列表缩进

Aspose.Words 引入了 [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) 类，允许指定在导出为纯文本格式时如何缩进列表级别。使用 [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/) 时，提供 [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) 属性来指定用于缩进列表级别的字符，并指定用于每一列表级别缩进的字符数。字符属性的默认值为"\0"，表示没有缩进。对于 count 属性，默认值为 0，表示不缩进。

### 使用制表符

以下代码示例演示如何使用制表符导出列表级别：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### 使用空格字符

以下代码示例演示如何使用空格字符导出列表级别：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

