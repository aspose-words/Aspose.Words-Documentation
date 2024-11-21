---
title: 使用 C# 中的表单字段
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用表单字段
linktitle: 使用表单字段
description: "了解表单字段功能，使用 C# 处理表单字段。"
type: docs
weight: 380
url: /zh/net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

包含填写空白（字段）的文档称为表单。例如，您可以在 Microsoft Word 中创建一个使用下拉列表的注册表单，用户可以从中选择条目。 `Form` 字段是存储特定类型数据（例如姓名或地址）的位置。 Microsoft Word 中的表单字段包括文本输入、组合框和复选框。

您可以在项目中使用表单字段与用户"交流"。例如，您创建一个文档，其内容受到保护，但只有表单字段可以编辑。用户可以在表单字段中输入数据并提交文档。使用 Aspose.Words 的应用程序可以从表单字段检索数据并对其进行处理。

通过代码将表单字段放入文档中很容易。 [DocumentBuilder](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/) 有特殊的插入方法，每种表单字段类型都有一种插入方法。每个方法都接受一个表示表单字段名称的字符串参数。该名称可以是空字符串。但是，如果您为表单字段指定名称，则会自动创建具有相同名称的书签。

## 插入表单字段

表单字段是 Word 字段的特例，允许与用户"交互"。 Microsoft Word 中的表单字段包括文本框、组合框和复选框。

**DocumentBuilder** 提供了将每种类型的表单字段插入到文档中的特殊方法：[InsertTextInput](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/inserttextinput/)、[InsertCheckBox](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertcheckbox/) 和 [InsertComboBox](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertcombobox/)。请注意，如果您为表单字段指定名称，则会自动创建同名的书签。

以下代码示例演示如何将组合框表单字段插入到文档中：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### 插入文本输入

使用 **InsertTextInput** 方法将文本框插入文档中。

以下代码示例演示如何将文本输入表单字段插入到文档中：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### 插入复选框

调用 **InsertCheckBox** 将复选框插入到文档中。

以下代码示例演示如何将复选框表单字段插入到文档中：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### 插入组合框

调用 **InsertComboBox** 将组合框插入文档中。

以下代码示例演示如何将组合框表单字段插入到文档中：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## 获取表单字段

表单字段的集合由 [FormFieldCollection](https://reference.aspose.com/words/zh/net/aspose.words.fields/formfieldcollection/) 类表示，可以使用 [FormFields](https://reference.aspose.com/words/zh/net/aspose.words/range/formfields/) 属性检索该类。这意味着您可以获得任何文档节点（包括文档本身）中包含的表单字段。

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx) 下载以下示例的示例文件。

{{% /alert %}}

以下代码示例展示了如何获取表单字段的集合：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

您可以通过索引或名称获取特定的表单字段。

以下代码示例展示了如何访问表单字段：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

**FormField** 属性允许您使用表单字段名称、类型和结果。

以下代码示例演示如何使用表单字段名称、类型和结果：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## 设置表单字段格式

[FormField](https://reference.aspose.com/words/zh/net/aspose.words.fields/formfield/) 的 [Font](https://reference.aspose.com/words/zh/net/aspose.words/inline/font/) 属性允许将字体格式应用于整个 **FormField**（包括字段值）。

以下代码示例显示如何将字体格式应用于 **FormField**：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
