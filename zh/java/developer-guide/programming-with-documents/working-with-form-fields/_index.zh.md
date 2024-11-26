---
title: 使用Java中的表单字段
second_title: Aspose.Words为Java
articleTitle: 使用表单字段
linktitle: 使用表单字段
description: "了解表单字段功能，使用Java处理表单字段。"
type: docs
weight: 380
url: /zh/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

包含填空（字段）的文档称为表单。 例如，您可以在Microsoft Word中创建一个注册表单，该注册表单使用用户可以从中选择条目的下拉列表。 `Form`字段是存储特定类型数据（如名称或地址）的位置。 Microsoft Word中的表单字段包括文本输入，combobox和checkbox。

您可以在项目中使用表单字段与用户"沟通"。 例如，您创建一个文档，其内容受保护，但只有表单字段可编辑。 用户可以在表单字段中输入数据并提交文档。 使用Aspose.Words的应用程序可以从表单字段中检索数据并进行处理。

通过代码将表单字段放入文档很容易。 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)有特殊的方法来插入它们，每个表单字段类型一个。 每个方法都接受一个表示表单字段名称的字符串参数。 名称可以是空字符串。 但是，如果您为表单字段指定了名称，则会自动创建具有相同名称的书签。

## 插入表单字段

表单字段是Word字段的一个特殊情况，它允许与用户进行"交互"。 Microsoft Word中的表单字段包括文本框，组合框和checkbox。

**DocumentBuilder**

下面的代码示例演示如何将combobox表单字段插入到文档中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### 插入文本输入

使用**insertTextInput**方法将文本框插入到文档中。

下面的代码示例演示如何将文本输入表单字段插入到文档中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### 插入复选框

调用**insertCheckBox**将checkbox插入到文档中。

下面的代码示例演示如何将checkbox表单字段插入到文档中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### 插入组合框

调用**insertComboBox**将combobox插入到文档中。

下面的代码示例演示如何将Combobox表单字段插入到文档中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## 获取表单字段

表单字段的集合由可以使用[Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields)属性检索的[FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/)类表示。 这意味着您可以获取包含在包括文档本身的任何文档节点中的表单字段。

下面的代码示例演示如何获取表单字段的集合:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载以下示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

您可以通过其索引或名称获取特定表单字段。

下面的代码示例演示如何访问表单字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

**FormField**属性允许您使用表单字段名称、类型和结果。

下面的代码示例演示如何使用表单字段名称、类型和结果:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
