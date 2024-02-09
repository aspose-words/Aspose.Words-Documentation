---
title: 使用 Python 中的表单字段
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用表单字段
linktitle: 使用表单字段
description: "使用 Python 在文档中插入、获取或格式化表单字段。"
type: docs
weight: 380
url: /zh/python-net/working-with-form-fields/
---

包含填写空白（字段）的文档称为表单。例如，您可以在 Microsoft Word 中创建一个使用下拉列表的注册表单，用户可以从中选择条目。 `Form` 字段是存储特定类型数据（例如姓名或地址）的位置。 Microsoft Word 中的表单字段包括文本输入、组合框和复选框。

您可以在项目中使用表单字段与用户"交流"。例如，您创建一个文档，其内容受到保护，但只有表单字段可以编辑。用户可以在表单字段中输入数据并提交文档。使用 Aspose.Words 的应用程序可以从表单字段检索数据并对其进行处理。

通过代码将表单字段放入文档中很容易。 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 有特殊的插入方法，每种表单字段类型都有一种插入方法。每个方法都接受一个表示表单字段名称的字符串参数。该名称可以是空字符串。但是，如果您为表单字段指定名称，则会自动创建具有相同名称的书签。

## 插入表单字段

表单字段是 Word 字段的特例，允许与用户"交互"。 Microsoft Word 中的表单字段包括文本框、组合框和复选框。

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 提供了将每种类型的表单字段插入到文档中的特殊方法：[insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/)、[insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) 和 [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/)。请注意，如果您为表单字段指定名称，则会自动创建同名的书签。

以下代码示例演示如何将组合框表单字段插入到文档中：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### 插入文本输入

使用 [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) 方法将文本框插入文档中。

以下代码示例演示如何将文本输入表单字段插入到文档中：

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### 插入复选框

调用 [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) 将复选框插入到文档中。

以下代码示例演示如何将复选框表单字段插入到文档中：

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### 插入组合框

调用 [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) 将组合框插入文档中。

以下代码示例演示如何将组合框表单字段插入到文档中：

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## 获取表单字段

表单字段的集合由 [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) 类表示，可以使用 [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/) 属性检索该类。这意味着您可以获得任何文档节点（包括文档本身）中包含的表单字段。

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx) 下载以下示例的示例文件。

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

您可以通过索引或名称获取特定的表单字段。

以下代码示例展示了如何访问表单字段：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

[FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) 属性允许您使用表单字段名称、类型和结果。

以下代码示例演示如何使用表单字段名称、类型和结果：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## 设置表单字段格式

[FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) 的 [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) 属性允许将字体格式应用于整个 [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/)（包括字段值）。

以下代码示例显示如何将字体格式应用于 **FormField**：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
