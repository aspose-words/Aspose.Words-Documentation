---
title: 使用内容控制 SDT
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用内容控制 SDT
linktitle: 使用内容控制 SDT
description: "使用 python，您可以将客户定义的语义及其行为和外观嵌入到文档中。"
type: docs
weight: 390
url: /zh/python-net/working-with-content-control-sdt/
---

在 Microsoft Word 中，您可以通过从模板开始并添加内容控件（包括复选框、文本框、日期选择器和下拉列表）来创建表单。在 Aspose.Words 中，加载到 Aspose.Words 中的任何文档中的结构化文档标签或内容控件都会作为 [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) 节点导入。结构化文档标签（SDT 或内容控制）允许将客户定义的语义及其行为和外观嵌入到文档中。 [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) 可以出现在文档中的以下位置：

- 块级 - 在段落和表格中，作为 [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)、[HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)、[Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)、[Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) 或 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 节点的子节点
- 行级 - 在表中的行中，作为 [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) 节点的子节点
- 单元格级别 - 在表格行的单元格中，作为 [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) 节点的子节点
- 内联级别 - 在内联内容中，作为 [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) 的子级
- 嵌套在另一个 [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) 中

## 将内容控件插入文档

在此版本的 Aspose.Words 中，可以创建以下类型的 SDT 或内容控件：

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

下面的代码示例演示了如何创建复选框类型的内容控件。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

下面的代码示例演示了如何创建富文本框类型的内容控件。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

下面的代码示例演示了如何创建组合框类型的内容控件。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## 如何更新内容控件

本节介绍如何以编程方式更新 SDT 或内容控制的值。

以下代码示例显示如何设置复选框的当前状态：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

下面的代码示例展示了如何修改纯文本框、下拉列表和图片类型的内容控件：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx) 下载这些示例的示例文件。

{{% /alert %}}

## 将内容控制绑定到自定义 XML 部件

您可以将内容控件与 Word 文档中的 XML 数据（*自定义 XML 部分*）绑定。

以下代码示例演示如何将内容控件绑定到自定义 XML 部分：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## 结构化文档标记范围的 XMLMapping

您可以使用 [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/) 属性获取此结构化文档标记范围到当前文档的自定义 XML 部分中的 XML 数据的映射。然而，[set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) 方法可用于将结构化文档标记范围映射到 XML 数据。

以下代码示例展示了如何设置 XML 映射：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## 清除内容控件的内容

您可以通过显示占位符来清除内容控件的内容。 [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) 方法清除此结构化文档标记的内容并显示占位符（如果已定义）。但是，如果内容控件有修订，则无法清除该内容。如果内容控件没有占位符，则会像 MS Word 中一样插入五个空格（重复部分、重复部分项目、组、复选框、引文除外）。如果内容控件映射到自定义 XML，则引用的 XML 节点将被清除。

下面的代码示例展示了如何清除内容控件的内容：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## 更改内容控件背景和边框颜色

[StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) 属性允许您获取或设置内容控件的颜色。颜色在两种情况下影响内容控制：

1. 当鼠标移到内容控件上时，MS Word 会突出显示内容控件的背景。这有助于识别内容控件。突出显示的颜色比 *color* 稍微"柔和"一些。例如，当 *color* 为红色时，MS Word 用粉红色突出显示背景。
2. 当您与内容控件交互（编辑、选取等）时，内容控件的边框将使用 *color* 着色。

以下代码示例展示了如何更改内容控件的颜色：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## 如何设置样式以格式化在内容控件中键入的文本

如果要设置内容控件的样式，可以使用[StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/)或[StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/)属性。当您在输出文档的内容控件中键入文本时，键入的文本将具有"引用"样式。

{{% alert color="primary" %}}

请注意，只有链接样式和字符样式可以应用于内容控制。当应用存在但不是链接或字符样式的样式时，会引发异常（"无法将此样式应用于 SDT"）。

{{% /alert %}}

下面的代码示例展示了如何设置内容控件的样式：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## 使用重复部分内容控制

重复部分内容控件允许重复其中包含的内容。使用 Aspose.Words，可以创建重复节和重复节项类型的结构化文档标记节点，为此，[SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) 枚举类型提供了 [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item) 属性。

以下代码示例演示如何将重复节内容控件绑定到表：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
