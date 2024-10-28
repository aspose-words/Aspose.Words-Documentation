---
title: 使用内容控制SDT
second_title: Aspose.Words对于C++
articleTitle: 使用内容控制SDT
linktitle: 使用内容控制SDT
type: docs
description: "高级文档内容管理，如何使用C++创建和操作内容控件（结构化文档标签）。"
weight: 390
url: /zh/cpp/structured-document-tags-or-content-control/
---

在Microsoft Word中，您可以通过从模板开始并添加内容控件（包括复选框、文本框、日期选取器和下拉列表）来创建表单。 在Aspose.Words中，来自加载到Aspose.Words中的任何文档的结构化文档标记或内容控件作为StructuredDocumentTag节点导入。 结构化文档标签（SDT或内容控件）允许将客户定义的语义及其行为和外观嵌入到文档中。 StructuredDocumentTag可以在以下位置出现在文档中:

- 块级-在段落和表格中，作为正文、HeaderFooter、注释、脚注或形状节点的子级
- 行级别-表中的行之间，作为表节点的子级
- 单元格级别-在表行中的单元格之间，作为行节点的子节点
- 内联级别-内联内容之间，作为段落的子级
- 嵌套在另一个StructuredDocumentTag内

## 如何设置样式以格式化输入到内容控件中的文本

如果要设置内容控件的样式，可以使用`StructuredDocumentTag.Style`或`StructuredDocumentTag.StyleName`属性。 当您在输出文档的内容控件中键入文本时，键入的文本将具有样式"Quote"。

{{% alert color="primary" %}}

请注意，只有链接样式和字符样式才能应用于内容控件。 当存在但未链接的样式或正在应用字符样式时，会抛出InvalidOperationException（"无法将此样式应用于SDT"）。

{{% /alert %}}

下面的代码示例演示如何设置内容控件的样式:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## 使用重复部分内容控制

重复部分内容控件允许重复其中包含的内容。 使用Aspose.Words，可以创建重复部分和重复部分项类型的结构化文档标记节点，为此，SdtType枚举类型提供**RepeatingSectionItem**属性。

下面的代码示例演示如何将重复部分内容控件绑定到表:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}
