---
title: 球场简介 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 球场简介
linktitle: 球场简介
description: "详细情况、实地代码和实地结果 Aspose.Words (单位:千美元) Java。 。 。 。"
type: docs
weight: 10
url: /zh/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words 是一个类库,用于服务器侧处理 Microsoft Word 文档并通过以下方式支持字段:

- 文档中的所有字段在打开/保存和转换时保留
- 有可能更新大多数领域的成果

在本篇文章中,我们将更多地了解实地结构,即支持的实地结构。 Aspose.Words, 和与这些领域合作的细节。

## 外地结构

一个领域包括:

- 怎么样? 字段起始和分隔节点用于包含构成字段代码的内容(通常为纯文本).
- 外地分隔符和外地端包含外地结果。 这可以由从文本到段落到表格的各种内容组成。
- 有些字段可能没有分隔符,这意味着整个内容构成字段代码.
- 怎么样? 字段代码定义了字段的行为,由字段标识符和往往由诸如字段名称和开关等其他参数组成.
- 怎么样? 外地结果载有对外地的最新评价。 此值存储在字段结果中, 并且是显示给用户的内容 。 一些字段可能没有任何字段结果,因此不会在文档中显示任何东西。 同样,有些领域可能没有更新,因此也不会产生实地结果。

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

构成字段代码的内容为 [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) 节点之间 [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) 和 [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/)。 。 。 。 字段结果存储在 **FieldSeparator** 和 [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) 节点和可以由各类内容组成. 通常,字段结果包含由Run节点构成的纯文本,然而,将字段结尾点定位在一个完全不同的段落中是可能的,从而使得字段结果包括: [文档中节点的逻辑级别](/words/zh/java/logical-levels-of-nodes-in-a-document/) 例如, **Table** 和 **Paragraph** 节点也一样。

以下是一个字段如何存储在 Aspose.Words 使用"*Documentexplorer" * 实例,可在 [吉图布](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer)。 。 。 。

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## 域数 Aspose.Words Document Object Model (单位:千美元)DOM页:1

当文档装入时 Aspose.Words 文档的字段被装入 Aspose.Words Document Object Model 作为一组单独的组件(节点)。 单字段作为集合装入 **FieldStart**, **FieldSeparator** 和 **FieldEnd** 节点与这些节点之间的内容。 如果一个字段没有字段结果,则不会有 **FieldSeparator** 节点. 所有这些节点都是内在的(作为儿童) [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) 或 [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)。 。 。 。

内 Aspose.Words 每一个 **FieldXXX** 节点来自 [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/)。 。 。 此类提供了属性, 用于通过 [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) 属性。 比如说 `FieldType.FieldMergeField` 代表文档中的合并字段。

{{% alert color="primary" %}}

Word 文档中有一些特定的字段没有导入 Aspose.Words 作为集合 **FieldXXX** 节点。 比如说, `LINK` 字段和 `INCLUDEPICTURE` 字段导入到 Aspose.Words 作为 [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 对象。 这个对象提供属性来与通常存储在这些字段的图像数据配合工作. 要导入 `INCLUDEPICTURE` 字段为 **FieldXXX** 节点 [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) 选项必须指定为 **true**。 。 。 。

窗体字段也被导入到 Aspose.Words 作为他们自己的特殊阶层。 那个 [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) 类代表 Word 文档中的窗体字段,并提供了窗体字段特有的其他方法。

{{% /alert %}}

## 支助领域

以下字段的计算支持在当前的版本中 Aspose.Words编号:

- = (公式) (单位:千美元)
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
- 怎么样? `TOC` (包括TOT和TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## 精密的字段解析

Aspose.Words 跟着路走 Microsoft Word 处理字段,并因此正确处理:

- 筑巢田:
  `IF { =OR({ `COM价调汇率` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- 田间争吵可能是筑巢田的结果
- 田园可以在田园代码内以及田园结果中筑巢
- 空格/无空格,引文/无引文,字段中的逃脱字符等:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- 跨越多个段落的字段

### 公式字段

Aspose.Words 使公式引擎得到非常认真的实施,并支持以下方面:

- 算术和逻辑运算符:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- 函数:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- 参考书签:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- 数字格式化开关:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

支持表达式中的下列功能: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE。 。 。 。

### `IF` 和 `COMPARE` 字段

只是一些东西 `IF` 表示 Aspose.Words 可以轻松计算,应该让你知道这个特性有多强大:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` 和 `TIME` 字段

Aspose.Words 支持可用的所有日期和时间格式化开关 Microsoft Word, 例如:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge 字段

Aspose.Words 不限制复杂程度 Mail Merge 字段,并支持嵌入 `IF` 和公式字段,甚至可以使用公式计算合并字段的名称。

一些实例包括: Mail Merge 字段 Aspose.Words 支持:

- 怎么样? Mail merge 字段开关:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- 在公式中嵌入合并字段:
  `IF { `比利时` Value1 } >= { `比利时` Value2 } True False`
- 在运行时计算合并字段的名称:
  `MERGEFIELD { `若为` { `比利时` Value1 } >= { `比利时` Value2 } FirstName"LastName" }`
- 有条件移动到数据源的下一个记录:
  `NEXTIF { `比利时` Value1 } <= { =IF(-2.45 >= 6*{ `比利时` Value2 }, 2, -.45) }`

### 格式化开关

文档中的字段可以有格式化开关,指定如何格式化所产生的值。 Aspose.Words 支持下列格式开关:

- @ 日期和时间格式
- QQ - 数字格式化
- \\\\\\\\* 标签
- 第一队长
- \\\\\\\\* 下调
- \\\\\\\\* 上层
- QQ CHARFORMAT - 根据字段代码的第一个字符的格式结果
- - - - - 根据旧结果格式化的格式结果

### Date 和字段的数字格式

何时 Aspose.Words 计算一个字段结果,它往往需要将字符串分析成数字或日期值,并把它格式化为字符串。 默认 Aspose.Words 在计算字段值时,使用当前线程文化进行解析和格式化 mail merge。 。 。 。 还有一些备选办法,形式是: [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) 分类,允许在字段更新时进一步控制使用哪一种文化

* 默认情况 [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) 属性设定为 [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) 使用当前线程构造格式化字段
* 此属性可设定为 [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) 因此,字段代码中的语言集用于格式化

### 使用当前线索的文化格式

要控制字段计算中使用的培养,只需设置 **CurrentCulture** 属性到您选择的文化,然后引用字段计算。

以下代码示例显示在更新时如何改变格式化字段中使用的构造:

EXAMPLE( 使用公共包装器 CurseThreadSettings. get Locale () 并设置 Locale () 而非私有 `Thread.CurrentThread`. 近代文化 (中文(简体) )

使用当前文库格式化字段,可以让一个系统轻松而一致地控制文档中的所有字段在字段更新时如何格式化.

### 在文档中使用"文化"格式化

另一方面, Microsoft Word 格式化每个基于字段中文本语言的单个字段(具体地说,从字段代码中运行)。 有时在字段更新时,这可能是人们所希望的行为,例如,如果您有包含由许多不同语言组成的内容的全球化文件,并且希望每个字段都尊重文本中使用的语言。 Aspose.Words 也支持此功能.

那个 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 类提供 a [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) 属性,其中包含可用于控制文档中字段更新的元件。

以下的代码示例显示, 如何指定在 字段更新和 Mail Merge 选自:

实例
