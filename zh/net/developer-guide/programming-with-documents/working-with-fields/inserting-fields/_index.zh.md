---
title: 在 C# 中插入字段
second_title: .NET 格式的 Aspose.Words
articleTitle: 插入字段
linktitle: 插入字段
description: "如何使用 C# 将字段插入文档 - 通过代码示例了解不同的方法。"
type: docs
weight: 20
url: /zh/net/inserting-fields/
---

有几种不同的方法可以将字段插入到文档中：

* 使用[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)
* 使用[FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/)
* 使用[Aspose.Words Document Object Model (DOM)](/words/zh/net/aspose-words-document-object-model/)

在本文中，我们将更详细地了解每种方式，并分析如何使用这些选项插入某些字段。

## 使用 DocumentBuilder 将字段插入文档

在 Aspose.Words 中，[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) 方法用于将新字段插入到文档中。第一个参数接受要插入的字段的完整字段代码。第二个参数是可选的，允许手动设置字段的字段结果。如果未提供此字段，则该字段会自动更新。您可以将 null 或empty 传递给此参数以插入具有空字段值的字段。如果您不确定特定的字段代码语法，请先在 Microsoft Word 中创建字段，然后切换以查看其字段代码。

{{% alert color="primary" %}}

如果您的字段代码有一个包含空格的参数，则必须将其括在语音标记内。否则，Microsoft Word 和 Aspose.Words 中的字段可能无法按预期工作，因为两者都将参数视为被截断。

{{% /alert %}}

以下代码示例演示如何使用 **DocumentBuilder** 将合并字段插入到文档中：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

使用相同的技术来插入嵌套在其他字段中的字段。

以下代码示例演示如何使用 **DocumentBuilder** 插入嵌套在另一个字段中的字段：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### 在字段级别指定区域设置

语言标识符是一个国家或地理区域的语言的标准国际数字缩写。使用 Aspose.Words，您可以使用 [LocaleId](https://reference.aspose.com/words/net/aspose.words.fields/field/localeid/) 属性在字段级别指定区域设置，该属性获取或设置字段的区域设置 ID。

以下代码示例展示了如何使用此选项：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### 插入无类型/空字段

如果您想像 Microsoft Word 允许的那样插入非类型化/空字段 ({})，您可以使用带有 [FieldType.FieldNone](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) 参数的 [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) 方法。要在 Word 文档中插入字段，可以按"Ctrl + F9"组合键。

以下代码示例展示了如何将空字段插入到文档中：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## 使用 FieldBuilder 将字段插入文档
在 Aspose.Words 中插入字段的另一种方法是 [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/) 类。它提供流畅的界面来指定字段开关和参数值作为文本、节点甚至嵌套字段。

以下代码示例演示如何使用 **FieldBuilder** 将字段插入到文档中：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## 使用 DOM 插入字段

您还可以使用 [Aspose.Words Document Object Model (DOM)](/words/zh/net/aspose-words-document-object-model/) 插入各种类型的字段。在本节中，我们将看一些示例。

### 使用 DOM 将合并字段插入到文档中

Word文档中的`MERGEFIELD`字段可以用[FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/)类来表示。您可以使用 **FieldMergeField** 类执行以下操作：

- 指定合并字段的名称
- 指定合并字段的格式
- 指定合并字段的字段分隔符和字段结尾之间的文本
- 如果字段不为空，则指定要在合并字段后插入的文本
- 如果字段不为空，则指定要在合并字段之前插入的文本

{{% alert color="primary" %}}

有关更多详细信息，请参阅 [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) 类 API。

{{% /alert %}}

以下代码示例演示如何使用 DOM 将 `MERGE` 字段添加到文档中的段落：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### 使用 DOM 将 Mail Merge `ADDRESSBLOCK` 字段插入文档中

`ADDRESSBLOCK`字段用于在Word文档中插入mail merge地址块。 Word文档中的`ADDRESSBLOCK`字段可以用[FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/)类来表示。您可以使用 **FieldAddressBlock** 类执行以下操作：

- 指定字段中是否包含国家/地区名称
- 指定是否根据 POST*CODE 定义的收件人国家/地区来格式化地址（Universal Postal Union 2006）
- 指定排除的国家/地区名称
- 指定姓名和地址格式
- 指定用于格式化地址的语言ID

{{% alert color="primary" %}}

有关更多详细信息，请参阅 [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) 类 API。

{{% /alert %}}

以下代码示例演示如何使用 DOM 将 Mail Merge `ADDRESSBLOCK` 字段添加到文档中的段落：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### 在不使用 DocumentBuilder 的情况下将 `ADVANCE` 字段插入到文档中

`ADVANCE` 字段用于将行中的后续文本向左、向右、向上或向下偏移。 Word文档中的`ADVANCE`字段可以用[FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/)类来表示。您可以使用 **FieldAdvance** 类执行以下操作：

- 指定字段后面的文本应从页面顶部边缘垂直移动的点数
- 指定字段后面的文本应从列、框架或文本框的左边缘水平移动的点数
- 指定字段后面的文本应向左、向右、向上或向下移动的点数

{{% alert color="primary" %}}

有关更多详细信息，请参阅 [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) 类 API。

{{% /alert %}}

以下代码示例演示如何使用 DOM 将 `ADVANCE` 字段添加到文档中的段落：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### 在不使用 DocumentBuilder 的情况下将 `ASK` 字段插入到文档中

`ASK` 字段用于提示用户输入要分配给 Word 文档中的书签的文本。 Word文档中的`ASK`字段可以用[FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/)类来表示。您可以使用 **FieldAsk** 类执行以下操作：

- 指定书签的名称
- 指定默认用户响应（提示窗口中包含的初始值）
- 指定每个 mail merge 操作是否应接收一次用户响应
- 指定提示文本（提示窗口的标题）

{{% alert color="primary" %}}

有关更多详细信息，请参阅 [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) 类 API。

{{% /alert %}}

以下代码示例演示如何使用 DOM 将 `ASK` 字段添加到文档中的段落：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### 在不使用 DocumentBuilder 的情况下将 `AUTHOR` 字段插入到文档中

`AUTHOR` 字段用于指定 `Document` 属性中文档作者的姓名。 Word文档中的`AUTHOR`字段可以用[FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/)类来表示。您可以使用 **FieldAuthor** 类执行以下操作：

- 指定文档作者的姓名

{{% alert color="primary" %}}

有关更多详细信息，请参阅 [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) 类 API。

{{% /alert %}}

以下代码示例演示如何使用 DOM 将 `AUTHOR` 字段添加到文档中的段落：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### 在不使用 DocumentBuilder 的情况下将 `INCLUDETEXT` 字段插入到文档中

`INCLUDETEXT` 字段插入字段代码中指定的文档中包含的文本和图形。您可以插入整个文档或书签引用的文档的一部分。 Word文档中的该字段由INCLUDETEXT表示。您可以使用 [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) 类执行以下操作：

- 指定所包含文档的书签名称
- 指定文档的位置

{{% alert color="primary" %}}

有关更多详细信息，请参阅 [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) 类 API。

{{% /alert %}}

以下代码示例演示如何使用 DOM 将 `INCLUDETEXT` 字段添加到文档中的段落：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### 在不使用 DocumentBuilder 的情况下将 `TOA` 字段插入到文档中

`TOA`（*权威表*）字段构建并插入权威表。 `TOA` 字段收集由 `TA`（*权限表条目*）字段标记的条目。当您在 **References** 选项卡上的 **权限表** 组中单击"插入权限表"时，Microsoft Office Word 会插入 `TOA` 字段。当您查看文档中的 `TOA` 字段时，语法如下所示：

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

有关更多详细信息，请参阅 [FieldToa](https://reference.aspose.com/words/net/aspose.words.fields/fieldtoa/) 类 API。

{{% /alert %}}

以下代码示例演示如何使用 DOM 将 `TOA` 字段添加到文档中的段落：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}
