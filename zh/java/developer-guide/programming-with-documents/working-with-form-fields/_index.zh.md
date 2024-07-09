---
title: 在窗体领域工作 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 使用窗体字段工作
linktitle: 使用窗体字段工作
description: "理解窗体字段特性,使用窗体字段工作 Java。 。 。 。"
type: docs
weight: 380
url: /zh/java/working-with-form-fields/
---

包含填充空白(字段)的文档称为表格。 例如,您可以在 Microsoft Word 使用下拉列表,用户可以从中选择条目。 那个 `Form` 字段是存储特定类型数据,例如名称或地址的地点。 格式字段在 Microsoft Word 包括文本输入、组合框和复选框。

您可以在您的项目中使用窗体字段来与您的用户"通信". 例如,您创建了一个其内容受到保护的文档,但只有窗体字段可以编辑. 用户可以在窗体字段输入数据并提交文档. 您使用的应用程序 Aspose.Words 可以从窗体字段获取数据并对其进行处理。

通过代码将窗体字段设置到文档中很容易. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 有特殊的方法来插入它们,每个窗体字段类型一个。 每个方法都接受代表窗体字段名称的字符串参数. 名称可以是空字符串. 但是,如果您指定了窗体字段的名称,则自动创建同名书签。

## 插入窗体字段

窗体字段是Word字段的特例,允许与用户"交互". 格式字段在 Microsoft Word 包括文本框、组合框和复选框。

**DocumentBuilder** 提供在文档中插入每一种形式字段的特殊方法: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) 或 [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int)。 。 。 。

以下代码示例显示如何在文档中插入组合框窗体字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### 插入文本输入

使用 **插入 文本输入** 在文档中插入文本框的方法。

以下代码示例显示如何在文档中插入文本输入窗体字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### 插入一个复选框

调用 **插入检查框** 在文档中插入复选框。

以下代码示例显示如何在文档中插入复选框窗体字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### 插入一个组合框

调用 **插入ComboBox** 在文档中插入组合框。

以下代码示例显示如何在文档中插入Combobox窗体字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## 获取窗体字段

表格字段的集合由 [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) 类,可以使用 [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) 属性。 这意味着您可以得到包括文档本身在内的任何文档节点中包含的形式字段。

以下代码示例显示如何获得窗体字段的集合:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

您可以下载以下示例的样本文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx)。 。 。 。

{{% /alert %}}

您可以通过索引或名称获得特定的窗体字段。

以下代码示例显示如何访问窗体字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

那个 **FormField** 属性允许您使用窗体字段名称、类型和结果。

以下代码示例显示如何与窗体字段名称,类型,和结果一起工作: 1

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
