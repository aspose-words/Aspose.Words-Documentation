---
title: 在C++中插入字段
second_title: Aspose.Words对于C++
articleTitle: 插入字段
linktitle: 插入字段
description: "使用C++将字段插入文档的不同方法。"
type: docs
weight: 20
url: /zh/cpp/inserting-fields/
---

有几种不同的方法可以将字段插入到文档中:

- 使用[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)
- 使用[FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)
- 使用 [Aspose.Words文档对象模型(DOM)](/words/cpp/aspose-words-document-object-model/)

在本文中，我们将更详细地了解每种方式，并分析如何使用这些选项插入某些字段。

## 使用DocumentBuilder将字段插入文档

在Aspose.Words中，[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/)方法用于在文档中插入新字段。 第一个参数接受要插入的字段的完整字段代码。 第二个参数是可选的，允许手动设置字段的字段结果。 如果没有提供，则该字段会自动更新。 您可以将null或empty传递给此参数以插入具有空字段值的字段。 如果您不确定特定的字段代码语法，请先在Microsoft Word中创建字段，然后切换以查看其字段代码。

{{% alert color="primary" %}}

如果您的字段代码有一个包含空格的参数，那么它必须包含在语音标记中。 否则，Microsoft Word和Aspose.Words中的字段可能无法按预期工作，因为参数被两者视为被截断

{{% /alert %}}

下面的代码示例演示如何使用**DocumentBuilder**将合并字段插入到文档中:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

相同的技术用于插入嵌套在其他字段中的字段。

下面的代码示例演示如何使用**DocumentBuilder**插入嵌套在另一个字段中的字段:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### 在字段级别指定区域设置

语言标识符是国家或地理区域语言的标准国际数字缩写。 使用Aspose.Words，您可以使用[LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/)属性在字段级别指定区域设置，该属性获取或设置字段的区域设置ID。

下面的代码示例演示如何使用此选项:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### 插入无类型/空字段

如果您想像Microsoft Word允许的那样插入无类型/空字段（{}），则可以将[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield)方法与[FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/)参数一起使用。 要将字段插入Word文档，您可以按"Ctrl+F9"组合键。

下面的代码示例演示如何将空字段插入到文档中:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## 使用FieldBuilder将字段插入文档

在Aspose.Words中插入字段的替代方法是[FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)类。 它提供了流畅的接口来指定字段开关和参数值作为文本，节点甚至嵌套字段。

下面的代码示例演示如何使用**FieldBuilder**将字段插入到文档中:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## 使用DOM插入字段

您还可以使用以下方法插入各种类型的字段 [Aspose.Words文档对象模型(DOM)](/words/cpp/aspose-words-document-object-model/). 在本节中，我们将看几个例子。

### 使用DOM将合并字段插入文档

Word文档中的`MERGEFIELD`字段可以由[FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/)类表示。 可以使用**FieldMergeField**类执行以下操作:

- 指定合并字段的名称
- 指定合并字段的格式
- 指定合并字段的字段分隔符和字段结尾之间的文本
- 如果合并字段不为空，则指定要在合并字段后插入的文本
- 如果合并字段不是空白，则指定要插入到合并字段之前的文本

{{% alert color="primary" %}}

有关更多详细信息，请参阅[FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/)类API。

{{% /alert %}}

下面的代码示例演示如何使用DOM将`MERGE`字段添加到文档中的段落:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### 使用DOM将Mail Merge地址块字段插入文档

`ADDRESSBLOCK`字段用于在Word文档中插入mail merge地址块。 Word文档中的`ADDRESSBLOCK`字段可以由[FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/)类表示。 可以使用**FieldAddressBlock**类执行以下操作:

- 指定是否在字段中包含国家/地区的名称
- 指定是否按照POST*CODE所定义的收件人的国家/地区设置地址格式(Universal Postal Union2006)
- 指定排除的国家/地区名称
- 指定名称和地址格式
- 指定用于格式化地址的语言ID

{{% alert color="primary" %}}

有关更多详细信息，请参阅[FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/)类API。

{{% /alert %}}

下面的代码示例演示如何使用DOM将Mail Merge`ADDRESSBLOCK`字段添加到文档中的段落:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### 在不使用DocumentBuilder的情况下将字段插入文档

`ADVANCE`字段用于将一行内的后续文本向左、向右、向上或向下偏移。 Word文档中的`ADVANCE`字段可以由[FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/)类表示。 您可以使用FieldAdvance类执行以下操作:

- 指定字段后面的文本应从页面顶部边缘垂直移动的点数
- 指定字段后面的文本应从列、框架或文本框的左边缘水平移动的点数
- 指定字段后面的文本应向左、向右、向上或向下移动的点数

{{% alert color="primary" %}}

有关更多详细信息，请参阅[FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/)类API。

{{% /alert %}}

下面的代码示例演示如何使用DOM将`ADVANCE`字段添加到文档中的段落:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### 在不使用DocumentBuilder的情况下将`ASK`字段插入文档

`ASK`字段用于提示用户将文本分配给Word文档中的书签。 Word文档中的`ASK`字段可以由[FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/)类表示。 可以使用**FieldAsk**类执行以下操作:

- 指定书签的名称
- 指定默认用户响应（提示窗口中包含的初始值）
- 指定是否应每个mail merge操作接收一次用户响应
- 指定提示文本（提示窗口的标题）

{{% alert color="primary" %}}

有关更多详细信息，请参阅[FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask)类API。

{{% /alert %}}

下面的代码示例演示如何使用DOM将`ASK`字段添加到文档中的段落:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### 在不使用DocumentBuilder的情况下将`AUTHOR`字段插入文档

`AUTHOR`字段用于从`Document`属性中指定文档作者的名称。 Word文档中的`AUTHOR`字段可以由[FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/)类表示。 可以使用**FieldAuthor**类执行以下操作:

- 指定文档作者的姓名

{{% alert color="primary" %}}

有关更多详细信息，请参阅[FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/)类API。

{{% /alert %}}

下面的代码示例演示如何使用DOM将`AUTHOR`字段添加到文档中的段落:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### 在不使用DocumentBuilder的情况下将`INCLUDETEXT`字段插入文档

`INCLUDETEXT`字段插入字段代码中命名的文档中包含的文本和图形。 您可以插入整个文档或书签引用的文档的一部分。 Word文档中的此字段由INCLUDETEXT表示。 可以使用[FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/)类执行以下操作:

- 指定包含文档的书签名称
- 指定文档的位置

{{% alert color="primary" %}}

有关更多详细信息，请参阅[FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/)类API。

{{% /alert %}}

下面的代码示例演示如何使用DOM将`INCLUDETEXT`字段添加到文档中的段落:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### 在不使用DocumentBuilder的情况下将`TOA`字段插入文档

`TOA`(*Table of Authorities*)字段构建并插入权限表。 `TOA`字段收集由`TA`(*Table of Authorities Entry*)字段标记的条目。 当您在**References**选项卡上的**Table of Authorities**组中单击*Insert Table of Authorities*时，Microsoft Office Word将插入`TOA`字段。 当您查看文档中的`TOA`字段时，语法如下所示:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

有关更多详细信息，请参阅[FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/)类API。

{{% /alert %}}

下面的代码示例演示如何使用DOM将`TOA`字段添加到文档中的段落:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/
