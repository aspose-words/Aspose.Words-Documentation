---
title: 在Java中使用内容控件SDT
second_title: Aspose.Words为Java
articleTitle: 使用内容控制SDT
linktitle: 使用内容控制SDT
type: docs
description: "高级文档内容管理，如何使用Java创建和操作内容控件（结构化文档标签）。"
weight: 390
url: /zh/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

在Microsoft Word中，您可以通过从模板开始并添加内容控件（包括checkboxes、文本框、日期选择器和下拉列表）来创建表单。 在Aspose.Words中，来自加载到Aspose.Words中的任何文档的结构化文档标记或内容控件作为StructuredDocumentTag节点导入。 结构化文档标签（SDT或内容控件）允许将客户定义的语义及其行为和外观嵌入到文档中。

StructuredDocumentTag可以在以下位置出现在文档中:

- 块级-在段落和表格中，作为正文、HeaderFooter、注释、脚注或形状节点的子级。
- 行级别-表中的行之间，作为表节点的子节点。
- 单元格级别-在表行中的单元格之间，作为行节点的子节点。
- 内联级别-内联内容之间，作为段落的子级。
- 嵌套在另一个StructuredDocumentTag内。

## 将内容控件插入到文档中

在此版本的Aspose.Words中，可以创建以下类型的SDT或内容控件:

- Checkbox
- DropDownList
- ComboBox
- 日期
- BuildingBlockGallery
- 团体
- `Picture`
- RichText
- PlainText

下面的代码示例演示如何创建类型为checkbox的内容控件:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

下面的代码示例演示如何创建富文本框类型的内容控件:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

下面的代码示例演示如何创建组合框类型的内容控件:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## 如何更新内容控件

本节介绍如何以编程方式更新SDT或内容控件的值。

下面的代码示例演示如何设置checkbox的当前状态:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

下面的代码示例演示如何修改纯文本框、下拉列表和图片类型的内容控件:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载这些示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## 将内容控件绑定到自定义XML部件

您可以将内容控件与Word文档中的XML数据(*custom XML part*)绑定。

下面的代码示例演示如何将内容控件绑定到自定义XML部件:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## 清除内容控件的内容

您可以通过显示占位符来清除内容控件的内容。 **StructuredDocumentTag.clear()**方法清除此结构化文档标记的内容，并在定义占位符时显示占位符。 但是，如果内容控件具有修订，则无法清除其内容控件的内容。 如果内容控件没有占位符，则会像MSWord中那样插入五个空格（重复部分、重复部分项、组、复选框、引用除外）。 如果内容控件映射到自定义XML，则引用的XML节点将被清除。

下面的代码示例演示如何清除内容控件的内容:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## 更改内容控制背景和边框颜色

`StructuredDocumentTag.Color`属性允许您获取或设置内容控件的颜色。 颜色在两种情况下影响内容控制:

1. MSWord当鼠标移到内容控件上时，突出显示内容控件的背景。 这有助于识别内容控制。 突出显示的颜色比*Color*有点"柔和"。 例如，当*Color*为红色时，MSWord以粉红色突出显示背景。
2. 当您与内容控件交互（编辑，选择等）时，内容控件的边框用*Color*着色。

下面的代码示例演示如何更改内容控件的颜色:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## 如何设置样式以格式化输入到内容控件中的文本

如果要设置内容控件的样式，可以使用`StructuredDocumentTag.Style`或`StructuredDocumentTag.StyleName`属性。 当您将文本键入输出文档中的内容控件时，键入的文本将具有样式"Quote"。

{{% alert color="primary" %}}

请注意，只有链接样式和字符样式才能应用于内容控件。 当存在但未链接的样式或正在应用字符样式时，会抛出InvalidOperationException（"无法将此样式应用于SDT"）。

{{% /alert %}}

下面的代码示例演示如何设置内容控件的样式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## 使用重复部分内容控制

重复部分内容控件允许重复其中包含的内容。 使用Aspose.Words，可以创建重复部分和重复部分项类型的结构化文档标记节点，为此，[SdtType枚举类型](https://reference.aspose.com/words/java/com.aspose.words/sdttype/)提供REPEATING_SECTION_ITEM成员。

下面的代码示例演示如何将重复部分内容控件绑定到表:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

