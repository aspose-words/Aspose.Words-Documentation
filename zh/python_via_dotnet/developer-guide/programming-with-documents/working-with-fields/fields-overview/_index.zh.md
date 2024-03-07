---
title: Python 中的字段概述
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 领域概述
linktitle: 领域概述
description: "您可以使用 Python 访问字段修改。文档的字段被加载到 Aspose.Words Document Object Model (DOM) 中。"
type: docs
weight: 10
url: /zh/python-net/fields-overview/
---


通常，当插入到 Microsoft Word 中时，字段已经包含最新值。例如，如果该字段是公式或页码，它将包含给定文档版本的正确计算值。但是，如果您有一个应用程序生成或修改带有字段的文档（例如组合两个文档或填充数据），那么为了使文档有用，最好更新所有字段。

一个字段由以下部分组成：

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- 字段开始和分隔符节点用于包含构成字段代码的内容（通常为纯文本）
- 字段分隔符和字段结束包含字段结果。它可以由各种类型的内容组成，从文本到段落再到表格。
- 某些字段可能没有分隔符，这意味着整个内容组成了字段代码。
- 字段代码定义字段的行为，由字段标识符和通常其他参数（例如字段名称和开关）组成。
- 现场结果包含该领域的最新评估。该值存储在字段结果中，并向用户显示。某些字段可能没有任何字段结果，因此不会在文档中显示任何内容。同样，某些字段可能尚未更新，因此也没有字段结果。

以下是如何使用"*DocumentExplorer"* 示例（可在 [吉图布](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer) 上找到）在 Aspose.Words 中存储字段的视图。

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words是一个为Microsoft Word文档的服务器端处理而设计的类库，支持以下方式的字段：

- 在打开/保存和转换期间保留文档中的所有字段。
- 可以更新一些最热门字段的结果。

## Microsoft Word 中的字段

Microsoft Word 文档中的字段很复杂。有超过 50 种字段类型（每种类型都需要自己的结果计算过程）、公式和表达式、书签和引用、函数和各种开关。字段也可以嵌套。通常，当打开文档时，会显示文档中所有字段的字段结果（字段的值）。您可以通过按 **ALT+F9** 切换所有字段的 Microsoft Word 中字段结果或字段代码的显示。

| 字段代码 | 现场结果 |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### 在 Microsoft Word 中插入字段

要在 Microsoft Word 中插入字段：

1. 单击 **Insert** 菜单。
1. 单击 **Quick Parts** 下拉菜单
1. 选择**Field**
1. 您将看到一个屏幕，允许您输入字段的详细信息。左侧是可能字段的列表，右侧是用于直观编辑字段属性的屏幕。<br>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. 另外，您可以按 **Field Codes** 按钮，直接写出域代码。<br>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. 也可以使用 **Options** 按钮插入开关<br>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. 使用任一方法，在所需字段中填写适当的信息，然后按 **Ok**。
1. 该字段被插入到文档中当前光标位置。<br>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### 更新 Microsoft Word 中的字段

要更新 Microsoft Word 中的单个字段：

1. 将插入符号移动到要更新的字段中。
1. 按 **F9** 更新字段。

要更新 Microsoft Word 中的所有字段：

1. 按**Ctrl+A** 选择文档中的全部内容。
1. 按 **F9** 更新所选内容中找到的所有字段。

### 切换字段代码和字段结果的显示

要切换 Microsoft Word 中单个字段的字段代码：

1. 将插入符号移至所需字段。
1. 按 **SHIFT+F9** 切换该字段的字段代码。

要切换 Microsoft Word 中所有字段的字段代码：

1.按**ALT+F9**

### 将字段转换为 Microsoft Word 中的静态文本

要将动态字段转换为 Microsoft Word 中的静态文本：

1. 将插入符号移至要转换的字段中。
1. 按 **Ctrl+Shift+F9** 将字段转换为静态文本。

### 删除 Microsoft Word 中的字段

要删除 Microsoft Word 中的字段：

1. 选择构成该字段的全部内容。如果显示域代码，则还需要选择左大括号和右大括号。
1. 按 **Delete** 删除整个字段。

## Aspose.Words 中的字段

当文档加载到 Aspose.Words 中时，文档的字段将作为一组单独的组件（节点）加载到 Aspose.Words Document Object Model 中。单个字段作为 [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/)、[FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) 和 [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) 节点以及这些节点之间的内容的集合加载。如果字段没有字段结果，则不会有 [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) 节点。所有这些节点始终是内联的（作为 [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) 或 [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) 的子节点）。

组成字段代码的内容作为 [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) 节点存储在 [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) 和 [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) 之间。字段结果存储在 [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) 和 [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) 节点之间，并且可以由各种类型的内容组成。通常，字段结果仅包含由 [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) 节点组成的文本，但是 [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) 节点可能位于完全不同的段落中，从而使字段结果也由块级节点（例如 [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) 和 [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) 节点）组成。

在 Aspose.Words 中，每个 **FieldXXX** 节点都源自 [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/)。该类提供了一个属性，用于通过 [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/) 属性检查指定节点所表示的字段类型。例如，[FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) 表示文档中的合并字段。

{{% alert color="primary" %}}

Word 文档中存在一些特定字段，这些字段不会作为 **FieldXXX** 节点集合导入到 Aspose.Words 中。例如，`LINK` 字段和 `INCLUDEPICTURE` 字段作为 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 对象导入到 Aspose.Words 中。该对象提供了处理通常存储在这些字段中的图像数据的属性。

表单字段也作为其自己的特殊类导入到 Aspose.Words 中。 [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) 类表示 Word 文档中的表单字段，并提供表单字段特有的其他方法。

{{% /alert %}}

### 更新期间支持的字段

当前版本的 Aspose.Words 支持以下字段的计算：

- =（公式字段）
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC`（包括TOT和TOF）
- TC

### 复杂的解析

Aspose.Words 遵循 Microsoft Word 处理字段的方式，因此它可以正确处理：

- 嵌套字段
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- 字段参数可以是嵌套字段的结果。
- 字段可以嵌套在字段代码以及字段结果中。
- 空格/无空格、引号/无引号、字段中的转义字符等：
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- 跨越多个段落的字段。

#### 公式字段

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

#### `IF` 和 `COMPARE` 字段

只需 Aspose.Words 可以轻松计算的一些 `IF` 表达式，您就可以了解此功能的强大之处：

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### `DATE` 和 `TIME` 字段

Aspose.Words 支持 Microsoft Word 中提供的所有日期和时间格式开关，一些示例是：

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Mail Merge 字段

Aspose.Words 对文档中 mail merge 字段的复杂性没有限制，支持嵌套 `IF` 和公式字段，甚至可以使用公式计算合并字段的名称。

Aspose.Words 支持的 mail merge 字段的一些示例：

- Mail merge 现场开关：
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- 公式中的嵌套合并字段：
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- 运行时计算合并字段的名称：
  `MERGEFIELD { `IF` { `MergeField` Value1 } >= { `MergeField` Value2 } FirstName"LastName" }`
- 有条件移动到数据源中的下一条记录：
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### 格式开关

文档中的字段可以具有格式开关，用于指定结果值的格式。 Aspose.Words 支持以下格式切换：

- @ - 日期和时间格式
- \\\# - 数字格式
- \\\\\\\\* 大写字母
- \\\\\\\\* FirstCap
- \\\\\\\\* 降低
- \\\\\\\\* 上部
- \\\\\\\\* CHARFORMAT – 根据字段代码的第一个字符格式化结果。
- \\\\\\\\* MERGEFORMAT – 根据旧结果的格式设置结果格式。

#### 字段中的 Date 和数字格式

Aspose.Words计算字段结果时，经常需要将字符串解析为数字或日期值，并将其格式化回字符串。默认情况下，Aspose.Words在字段更新期间计算字段值时使用当前线程区域性来执行解析和格式化和mail merge。还有以 [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) 类的形式提供的选项，允许进一步控制字段更新期间使用的区域性。

- 默认情况下，[FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) 属性设置为 [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread)，它使用当前线程区域性来格式化字段。
- 此属性可以设置为 [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code)，以便使用从字段的字段代码设置的语言进行格式化。

#### 使用当前线程的文化进行格式化

要控制字段计算期间使用的区域性，只需在调用字段计算之前使用 **语言环境.setlocale** 方法设置您选择的区域性。
下面的示例显示了如何在更新期间更改格式化字段中使用的区域性。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

使用当前区域性来格式化字段允许系统在字段更新期间轻松一致地控制文档中所有字段的格式化方式。

#### 使用文档中的文化进行格式化

另一方面，Microsoft Word 根据字段中找到的文本语言（特别是字段代码中的运行）来格式化每个单独的字段。有时，在字段更新期间，这可能是所需的行为，例如，如果您有包含由多种不同语言组成的内容的全球化文档，并且希望每个字段遵循文本中使用的区域设置。 Aspose.Words 也支持此功能。

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 类提供了一个 [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) 属性，其中包含可用于控制文档中字段更新方式的成员。下面的示例展示了如何指定在字段更新期间用于日期格式设置的区域性以及选择 mail merge 的位置。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## 查找字段代码和字段结果

使用 [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) 插入的字段返回 [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) 对象。这是一个外观类，它提供了有用的方法来快速查找字段的此类属性。请注意，如果您只想查找文档中合并字段的名称，那么您可以使用内置方法 [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/)。下面的示例展示了如何获取文档中所有合并字段的名称。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## 如何重命名合并字段

下面的示例展示了如何重命名 Word 文档中的合并字段。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
