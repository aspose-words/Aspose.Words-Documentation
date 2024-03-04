---
title: C# 中的字段概述
second_title: .NET 格式的 Aspose.Words
articleTitle: 领域概述
linktitle: 领域概述
description: "字段的详细信息、字段代码和字段结果在 Aspose.Words for .NET 中进行了解释。"
type: docs
weight: 10
url: /zh/net/fields-overview/
---

Aspose.Words是一个为Microsoft Word文档的服务器端处理而设计的类库，支持以下方式的字段：

- 在打开/保存和转换期间保留文档中的所有字段
- 可以更新大多数字段的结果

在本文中，我们将详细了解字段结构、Aspose.Words 支持的字段以及使用这些字段的详细信息。

## 字段结构

一个字段由以下部分组成：

- 字段开始和分隔符节点用于包含构成字段代码的内容（通常为纯文本）。
- 字段分隔符和字段结束包含字段结果。它可以由各种类型的内容组成，从文本到段落再到表格。
- 某些字段可能没有分隔符，这意味着整个内容组成了字段代码。
- 字段代码定义字段的行为，由字段标识符和通常其他参数（例如字段名称和开关）组成。
- 现场结果包含该领域的最新评估。该值存储在字段结果中，并向用户显示。某些字段可能没有任何字段结果，因此不会在文档中显示任何内容。同样，某些字段可能尚未更新，因此也没有字段结果。

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

组成字段代码的内容作为 [Run](https://reference.aspose.com/words/zh/net/aspose.words/run/) 节点存储在 [FieldStart](https://reference.aspose.com/words/zh/net/aspose.words.fields/fieldstart/) 和 [FieldSeparator](https://reference.aspose.com/words/zh/net/aspose.words.fields/fieldseparator/) 之间。字段结果存储在 **FieldSeparator** 和 [FieldEnd](https://reference.aspose.com/words/zh/net/aspose.words.fields/fieldend/) 节点之间，可以由各种类型的内容组成。通常，字段结果仅包含由 **Run** 节点组成的文本，但 **FieldEnd** 节点可能位于完全不同的段落中，从而使字段结果也由 **Table** 等 [文档中节点的逻辑级别](/words/zh/net/logical-levels-of-nodes-in-a-document/) 和 **Paragraph** 节点组成。

以下是如何使用"*DocumentExplorer"* 示例（可在 [吉图布](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer) 上找到）在 Aspose.Words 中存储字段的视图。

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## Aspose.Words Document Object Model (DOM) 中的字段

当文档加载到 Aspose.Words 中时，文档的字段将作为一组单独的组件（节点）加载到 [Aspose.Words Document Object Model (DOM)](/words/zh/net/aspose-words-document-object-model/) 中。单个字段作为 **FieldStart**、**FieldSeparator** 和 **FieldEnd** 节点以及这些节点之间的内容的集合加载。如果字段没有字段结果，则不会有 **FieldSeparator** 节点。所有这些节点始终是内联的（作为 [Paragraph](https://reference.aspose.com/words/zh/net/aspose.words/paragraph/) 或 [SmartTag](https://reference.aspose.com/words/zh/net/aspose.words.markup/smarttag/) 的子节点）。

在 Aspose.Words 中，每个 **FieldXXX** 节点都源自 [FieldChar](https://reference.aspose.com/words/zh/net/aspose.words.fields/fieldchar/)。该类提供了一个属性，用于通过 [FieldType](https://reference.aspose.com/words/zh/net/aspose.words.fields/fieldtype/) 属性检查指定节点所表示的字段类型。例如，**FieldType.FieldMergeField** 表示文档中的合并字段。

{{% alert color="primary" %}}

Word 文档中存在一些特定字段，这些字段不会作为 **FieldXXX** 节点集合导入到 Aspose.Words 中。例如，`LINK` 字段和 `INCLUDEPICTURE` 字段作为 [Shape](https://reference.aspose.com/words/zh/net/aspose.words.drawing/shape/) 对象导入到 Aspose.Words 中。该对象提供了处理通常存储在这些字段中的图像数据的属性。要将 `INCLUDEPICTURE` 字段导入为 **FieldXXX** 节点，必须将 [PreserveIncludePictureField](https://reference.aspose.com/words/zh/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) 选项指定为 **true**。

表单字段也作为其自己的特殊类导入到 Aspose.Words 中。 [FormField](https://reference.aspose.com/words/zh/net/aspose.words.fields/formfield/) 类表示 Word 文档中的表单字段，并提供表单字段特有的其他方法。

{{% /alert %}}

## 支持的字段

当前版本的 Aspose.Words 支持以下字段的计算：

- =（公式）
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## 复杂的字段解析

Aspose.Words 遵循 Microsoft Word 处理字段的方式，因此它可以正确处理：

- 嵌套字段：
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- 字段参数可以是嵌套字段的结果
- 字段可以嵌套在字段代码以及字段结果中
- 空格/无空格、引号/无引号、字段中的转义字符等：
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- 跨越多个段落的字段

### 公式字段

Aspose.Words 提供了公式引擎的非常严格的实现并支持以下内容：

- 算术和逻辑运算符：
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- 功能：
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- 书签参考：
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- 数字格式开关：
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

支持表达式中的以下函数：`ABS`、`AND`、`AVERAGE`、`COUNT`、`DEFINED`、`FALSE`、`IF`、`INT`、`MAX`、`MIN`、`MOD`、`NOT`、`OR`、`PRODUCT`、`ROUND`、`SIGN`、`SUM`、TRUE。

### `IF` 和 `COMPARE` 字段

只需 Aspose.Words 可以轻松计算的一些 `IF` 表达式，您就可以了解此功能的强大之处：

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` 和 `TIME` 字段

Aspose.Words 支持 Microsoft Word 中提供的所有日期和时间格式开关，一些示例是：

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge 字段

Aspose.Words 对文档中 mail merge 字段的复杂性没有限制，支持嵌套 `IF` 和公式字段，甚至可以使用公式计算合并字段的名称。

Aspose.Words 支持的 mail merge 字段的一些示例：

- Mail merge 现场开关：
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- 公式中的嵌套合并字段：
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- 在运行时计算合并字段的名称：
  `MERGEFIELD { `IF` { `MergeField` Value1 } >= { `MergeField` Value2 } FirstName"LastName" }`
- 有条件移动到数据源中的下一条记录：
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### 格式开关

文档中的字段可以具有格式开关，用于指定结果值的格式。 Aspose.Words 支持以下格式切换：

- \\\@ – 日期和时间格式
- \\\# – 数字格式
- \\\* 大写字母
- \\\* FirstCap
- \\\* 降低
- \\\* 上部
- \\\* CHARFORMAT – 根据字段代码的第一个字符格式化结果
- \\\* MERGEFORMAT – 根据旧结果的格式化方式格式化结果

### 字段中的 Date 和数字格式

Aspose.Words计算字段结果时，经常需要将字符串解析为数字或日期值，并将其格式化回字符串。默认情况下，Aspose.Words在字段更新期间计算字段值时使用当前线程区域性来执行解析和格式化和mail merge。还有以 [FieldOptions](https://reference.aspose.com/words/zh/net/aspose.words.fields/fieldoptions/) 类的形式提供的选项，允许进一步控制字段更新期间使用的区域性。

- 默认情况下，[FieldUpdateCultureSource](https://reference.aspose.com/words/zh/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) 属性设置为 [CurrentThread](https://reference.aspose.com/words/zh/net/aspose.words.fields/fieldupdateculturesource/)，它使用当前线程区域性格式化字段
- 该属性可以设置为 [FieldCode](https://reference.aspose.com/words/zh/net/aspose.words.fields/fieldupdateculturesource/)，以便使用字段的字段代码设置的语言进行格式化

### 使用当前线程的文化进行格式化

要控制字段计算期间使用的区域性，只需在调用字段计算之前将 **Thread.CurrentThread.CurrentCulture** 属性设置为您选择的区域性即可。

以下代码示例演示如何在更新期间更改格式化字段中使用的区域性：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

使用当前区域性来格式化字段允许系统在字段更新期间轻松一致地控制文档中所有字段的格式化方式。

### 使用文档中的文化进行格式化

另一方面，Microsoft Word 根据字段中找到的文本语言（特别是字段代码中的运行）来格式化每个单独的字段。有时，在字段更新期间，这可能是所需的行为，例如，如果您有包含由多种不同语言组成的内容的全球化文档，并且希望每个字段遵循文本中使用的区域设置。 Aspose.Words 也支持此功能。

[Document](https://reference.aspose.com/words/zh/net/aspose.words/document/) 类提供了一个 [FieldOptions](https://reference.aspose.com/words/zh/net/aspose.words/document/fieldoptions/) 属性，其中包含可用于控制文档中字段更新方式的成员。

以下代码示例演示如何指定在字段更新和 mail merge 期间选择用于日期格式的区域性：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
