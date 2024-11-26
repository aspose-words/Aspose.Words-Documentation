---
title: C++中的字段概述
second_title: Aspose.Words对于C++
articleTitle: 字段概述
linktitle: 字段概述
description: "字段功能在详细信息，字段代码和字段结果中解释 Aspose.Words对于C++."
type: docs
weight: 10
url: /zh/cpp/fields-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words是一个为服务器端处理Microsoft Word文档而设计的类库，支持以下方式的字段:

- 在打开/保存和转换期间，文档中的所有字段都将保留
- 可以更新大多数字段的结果

在本文中，我们将详细了解字段结构、Aspose.Words中支持的字段以及使用此类字段的详细信息。

## 字段结构

一个字段由:

- 字段开始和分隔符节点用于包含构成字段代码的内容（通常为纯文本）。
- 字段分隔符和字段结束包含字段结果。 这可以由各种类型的内容组成，从文本到段落到表格。
- 某些字段可能没有分隔符，这意味着整个内容构成字段代码。
- 字段代码定义字段的行为，并由字段标识符和通常其他参数（如字段名称和开关）组成。
- 字段结果包含字段的最新评估。 此值存储在字段结果中，并显示给用户。 某些字段可能没有任何字段结果，因此不会在文档中显示任何内容。 同样，某些字段可能尚未更新，因此也没有字段结果。

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

构成字段代码的内容存储为[FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/)和[FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/)之间的[Run](https://reference.aspose.com/words/cpp/class/aspose.words.run)节点。 字段结果存储在**FieldSeparator**和[FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/)节点之间，可以由各种类型的内容组成。 通常，字段结果只包含由**Run**节点组成的文本，但是**FieldEnd**节点可能位于完全不同的段落中，从而使字段结果由 [块级节点](/words/cpp/logical-levels-of-nodes-in-a-document/) 如**Table**和**Paragraph**节点为好。

下面是一个如何使用"*DocumentExplorer"*示例将字段存储在Aspose.Words中的视图。

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## Aspose.Words文档对象模型中的字段(DOM)

当文档被加载到Aspose.Words时，文档的字段被加载到 [Aspose.Words文档对象模型](/words/cpp/aspose-words-document-object-model/) 作为一组单独的组件（节点）。 单个字段作为**FieldStart**，**FieldSeparator**和**FieldEnd**节点的集合以及这些节点之间的内容加载。 如果字段没有字段结果，则不会有**FieldSeparator**节点。 所有这些节点总是内联找到（作为[Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph)或[SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)的子节点）。

在Aspose.Words中，每个**FieldXXX**节点都来自[FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/)。 此类提供了一个属性，用于通过[FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/)属性检查指定节点表示的字段类型。 例如**FieldType.FieldMergeField**表示文档中的合并字段。

{{% alert color="primary" %}}

Word文档中存在一些特定字段，这些字段未作为**FieldXXX**节点的集合导入到Aspose.Words中。 例如，`LINK`字段和`INCLUDEPICTURE`字段作为`Shape`对象导入到Aspose.Words中。 此对象提供用于处理通常存储在这些字段中的图像数据的属性。 要将`INCLUDEPICTURE`字段导入为**FieldXXX**节点，必须将[PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/)选项指定为**true**。

表单字段也作为它们自己的特殊类导入到Aspose.Words中。 [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/)类表示Word文档中的表单字段，并提供特定于表单字段的其他方法。

{{% /alert %}}

## 支持的字段

当前版本的Aspose.Words支持计算以下字段:

- =(公式)
`ADDRESSBLOCK`
`ASK`
`AUTHOR`
`AUTONUM`
`AUTONUMLGL`
`AUTONUMOUT`
`AUTOTEXT`
`BARCODE`
`COMMENTS`
`COMPARE`
`CREATEDATE`
`DATABASE`
`DATE`
`DISPLAYBARCODE`
`DOCPROPERTY`
`DOCVARIABLE`
`EDITTIME`
`EQ`
`FILENAME`
`FILESIZE`
`FILLIN`
`FORMCHECKBOX`
`FORMDROPDOWN`
`FORMTEXT`
`GLOSSARY`
`GOTOBUTTON`
`GREETINGLINE`
`HYPERLINK`
`IF`
`IMPORT`
`INCLUDE`
`INCLUDEPICTURE`
`INCLUDETEXT`
`INDEX`
`INFO`
`KEYWORDS`
`LASTSAVEDBY`
`LISTNUM`
`MACROBUTTON`
`MERGEBARCODE`
`MERGEFIELD`
`MERGEREC`
`MERGESEQ`
`NEXT`
`NEXTIF`
`NOTEREF`
`NUMCHARS`
`NUMPAGES`
`NUMWORDS`
`PAGE`
`PAGEREF`
`PRINTDATE`
`QUOTE`
`REF`
`REVNUM`
`SAVEDATE`
`SECTION`
`SECTIONPAGES`
`SEQ`
`SET`
`SHAPE`
`SKIPIF`
`STYLEREF`
`SUBJECT`
`SYMBOL`
`TEMPLATE`
`TIME`
`TITLE`
`TOA`
`TOC`
`USERADDRESS`
`USERINITIALS`
`USERNAME`

## 复杂的字段解析

Aspose.Words遵循Microsoft Word处理字段的方式，因此它正确处理:

- 嵌套字段:
`IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- 字段参数可以是嵌套字段的结果
- 字段可以嵌套在字段代码中，也可以嵌套在字段结果中
- 空格/无空格，引号/无引号，字段中的转义字符等。:
`MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- 跨多个段落的字段

### 公式字段

Aspose.Words提供了公式引擎的非常严肃的实现，并支持以下内容:

- 算术和逻辑运算符:
`=(54+4*(6-77)-(5))+(-6-5)/4/5`
- 功能:
`=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- 对书签的引用:
`=IF(C>4, 5,ABS(A)*.76) +3.85`
- 数字格式化开关:
`=00000000 \\\# "$#,##0.00;($#,##0.00)"`

支持表达式中的以下函数: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

只是Aspose.Words可以轻松计算的一些`IF`表达式应该让您了解此功能的强大程度:

`IF 3 > 5.7^4+MAX(4,3) True False`
`IF "abcd" > "abc" True False`
`IF "?ab*" = "1abdsg" True False`
`IF 4 = "2*2" True False`
`COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words支持Microsoft Word中可用的所有日期和时间格式化开关，一些示例如下:

`DATE @ "d-MMM-yy"`
`DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge字段

Aspose.Words不限制文档中mail merge字段的复杂性，并支持嵌套`IF`和公式字段，甚至可以使用公式计算合并字段的名称。

Aspose.Words支持的mail merge字段的一些示例:

- Mail merge字段开关:
`MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- 公式中的嵌套合并字段:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- 在运行时计算合并字段的名称:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- 有条件移动到数据源中的下一个记录:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### 格式开关

文档中的字段可以具有格式设置开关，用于指定应如何设置结果值的格式。 Aspose.Words支持以下格式切换:

- @-日期和时间格式
- \\\#-数字格式
- \\\\\\\\*帽
- \\\\\\\\* FirstCap
- \\\\\\\\*下
- \\\\\\\\*上
- \\\\\\\\*CHARFORMAT-根据字段代码的第一个字符格式化结果
- \\\\\\\\*MERGEFORMAT-根据旧结果的格式设置结果

### 字段中的日期和数字格式

当Aspose.Words计算字段结果时，它通常需要将字符串解析为数字或日期值，并将其格式化为string.By 默认Aspose.Words在字段更新和mail merge期间计算字段值时使用当前线程区域性执行解析和格式化。 还有以[FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/)类形式提供的选项，它允许进一步控制在字段更新期间使用哪种区域性。

- 默认情况下，[FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/)属性设置为[CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/)，使用当前线程区域性格式化字段
- 此属性可以设置为[FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/)，以便从字段的字段代码中设置的语言用于格式化

### 使用当前线程的区域性进行格式化

要控制字段计算期间使用的区域性，只需在调用字段计算之前将**CurrentCulture**属性设置为您选择的区域性即可。

下面的代码示例演示如何在更新期间更改格式化字段中使用的区域性:

EXAMPLE

使用当前区域性设置字段格式允许系统轻松一致地控制字段更新期间文档中所有字段的格式设置。

### 使用文档中的区域性进行格式设置

另一方面，Microsoft Word根据字段中找到的文本的语言（特别是从字段代码中运行的文本）对每个单独的字段进行格式化。 有时，在字段更新期间，这可能是所需的行为，例如，如果您有包含由许多不同语言组成的内容的全球化文档，并且希望每个字段都遵守文本中使用的区域 Aspose.Words也支持此功能。

[Document](https://reference.aspose.com/words/cpp/class/aspose.words.document)类提供了一个[FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/)属性，该属性包含可用于控制文档中字段的更新方式的成员。

下面的代码示例演示如何指定字段更新和mail merge期间用于日期格式设置的区域性的选择位置:

EXAMPLE
