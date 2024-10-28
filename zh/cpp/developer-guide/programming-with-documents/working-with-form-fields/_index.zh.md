---
title: 使用C++中的表单字段
second_title: Aspose.Words对于C++
articleTitle: 使用表单字段
linktitle: 使用表单字段
description: "了解表单字段功能,使用C++处理表单字段."
type: docs
weight: 380
url: /zh/cpp/working-with-form-fields/
---

包含填空（字段）的文档称为表单。 例如，您可以在Microsoft Word中创建一个注册表单，该注册表单使用用户可以从中选择条目的下拉列表。 表单字段是存储特定类型数据（如名称或地址）的位置。 Microsoft Word中的表单字段包括文本输入，组合框和复选框。

您可以在项目中使用表单字段与用户"沟通"。 例如，您创建一个文档，其内容受保护，但只有表单字段可编辑。 用户可以在表单字段中输入数据并提交文档。 使用Aspose.Words的应用程序可以从表单字段中检索数据并进行处理。

通过代码将表单字段放入文档很容易。 [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)有特殊的方法来插入它们，每个表单字段类型一个。 每个方法都接受一个表示表单字段名称的字符串参数。 名称可以是空字符串。 但是，如果您为表单字段指定了名称，则会自动创建具有相同名称的书签。

## 插入表单字段

表单字段是允许与用户"交互"的Word字段的特定情况。 Microsoft Word中的表单字段包括文本框，组合框和复选框。

**DocumentBuilder**

下面的代码示例演示如何将组合框表单字段插入到文档中:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## 获取表单字段

表单字段的集合由可以使用[FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/)属性检索的[FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/)类表示。 这意味着您可以获取包含在包括文档本身的任何文档节点中的表单字段。

下面的代码示例演示如何获取表单字段的集合:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

您可以通过其索引或名称获取特定表单字段。

下面的代码示例演示如何访问表单字段:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

**FormField**属性允许您使用表单字段名称、类型和结果。

下面的代码示例演示如何使用表单字段名称、类型和结果:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
