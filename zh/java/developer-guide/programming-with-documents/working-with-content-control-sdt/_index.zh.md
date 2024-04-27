---
title: 与内容控制司合作 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 与内容控制司合作
linktitle: 与内容控制司合作
type: docs
description: "高级文档内容管理, 如何使用创建和操作内容控制( Structured Document Tags) Java。 。 。 。"
weight: 390
url: /zh/java/working-with-content-control-sdt/
---

内 Microsoft Word, 您可以从模板开始创建窗体,并添加内容控件,包括复选框、文本框、摘取日期和下拉列表。 内 <span notrans="<span notrans=" Aspose.Words"=""></span>",> a 结构化文档标签或任何装入的文档的内容控制 Aspose.Words 以结构文件标签节点导入。 结构化的文档标记(SDT或内容控制)可以将客户定义的语义及其行为和外观嵌入到文档中.

结构文件 标记可以在以下位置的文档中发生:

- 块级 - 在段落和表格中,作为身体的孩子,标题Footer,注释,脚注或形状节点.
- 在表格中的行中,作为一个表格节点的孩子。
- 细胞层 - 在表列中的细胞中,作为一个列节点的孩子.
- 内在层面 - 在内在内容中,作为一个段落的孩子。
- 在另一个结构文件塔里

## 在文档中插入内容控制

在这个版本中 Aspose.Words, 可以创建以下类型的特殊和差别待遇或内容控制:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

以下代码示例显示如何创建类型复选框的内容控制:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

以下代码示例显示如何创建类型丰富的文本框的内容控制:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

以下代码示例显示如何创建类型组合框的内容控制:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## 如何更新内容控制

本节解释如何在程序上更新特殊和差别待遇或内容控制值。

以下代码示例显示如何设置复选框的当前状态:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

以下代码示例显示如何修改类型纯文本框,下拉列表和图片的内容控制:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx)。 。 。 。

{{% /alert %}}

## 绑定自定义 XML 部件的内容控制

您可以在Word文档中用 XML 数据(*custom XML part *)绑定内容控制

以下代码示例显示如何将内容控制绑定为自定义的 XML 部件:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## 内容控制的清晰内容

您可以通过显示占位符来清除内容控制的内容 。 **结构文件 Tag.clear ()** 方法清除此结构化文档标记的内容,如果定义了占位符,则显示占位符。 不过 如果内容控制有修订,则无法澄清内容控制的内容。 如果一个内容控件没有占位符,则会像MS Word一样插入5个空格(重复的章节,重复的段落项,分组,复选框,引用). 如果将内容控制映射到自定义 XML,则引用的 XML 节点将被清除 。

以下代码示例显示如何清除内容控制的内容: 1

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## 更改内容控制背景和边框颜色

那个 `StructuredDocumentTag.Color` 属性允许您获得或设置内容控制的颜色。 颜色在两种情况下影响内容控制:

一、导 言 MS Word在鼠标移动到内容控制之上时突出内容控制的背景. 这有助于识别内容控制. 突出显示的颜色比 *Color*。 。 。 例如,MS Word用粉红色突出背景,当 *Color* 红色。
2. 国家 当您与内容控制交互(编辑、采样等)时,内容控制边界与内容控制边界的颜色为: *Color*。 。 。 。

以下代码示例显示如何改变内容控制的颜色:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## 如何设置样式以格式化输入内容控制

如果您想要设置内容控件的样式, 您可以使用 `StructuredDocumentTag.Style` 或 `StructuredDocumentTag.StyleName` 属性。 当在输出文档中将文本输入内容控制时,输入的文本将具有"引文"的样式.

{{% alert color="primary" %}}

注意只有链接和字符样式可以应用于内容控制. 当一个存在但没有链接的样式或字符样式被应用时,会丢弃一个无效的操作例外( "不能将这个样式应用到 SSDT " ) 。

{{% /alert %}}

以下代码示例显示如何设置内容控制样式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## 使用重复部分的内容控制

重复的部分内容控制允许重复其中包含的内容. 使用 Aspose.Words, 可创建重复部分和重复部分项目类型的结构化文档标记节点,并为此目的, [师曰](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) 提供补充成员。

以下代码示例显示如何将重复的段落内容控制绑定到表格中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

