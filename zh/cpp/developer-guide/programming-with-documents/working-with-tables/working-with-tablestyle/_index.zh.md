---
title: 更改Word文档中的表格样式
second_title: Aspose.Words对于C++
articleTitle: 应用表格样式
linktitle: 应用表格样式
description: "高级表格格式化C++。 使用C++创建表格样式。 应用表样式C++。"
type: docs
weight: 80
url: /zh/cpp/working-with-tablestyle/
---

表格样式定义了一组可轻松应用于表格的格式。 可以在表格样式中设置边框、阴影、对齐和字体等格式，并将其应用于许多表格以获得一致的外观。

Aspose.Words支持将表样式应用于表，也支持读取任何表样式的属性。 通过以下方式在加载和保存期间保留表样式:

- 加载和保存为这些格式时，将保留DOCX和WordML格式的表格样式
- 以DOC格式加载和保存时会保留表格样式（但不会保留为任何其他格式）
- 导出为其他格式、呈现或打印时，表格样式会扩展为表格中的直接格式，因此会保留所有格式

## 创建表格样式

用户可以创建新样式并将其添加到样式集合中。 [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/)方法用于创建新的表格样式。

下面的代码示例演示如何创建新的用户定义表样式:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## 复制现有表格样式

如有必要，您可以使用`AddCopy`方法将某个文档中已存在的表格样式复制到样式集合中。

重要的是要知道，通过这种复制，链接的样式也会被复制。

下面的代码示例演示如何将样式从一个文档导入到另一个文档:

EXAMPLE

## 应用现有表格样式

Aspose.Words提供从[Style](https://reference.aspose.com/words/cpp/aspose.words/style/)类继承的[TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/)。 **TableStyle**方便用户应用不同的样式选项，如阴影、填充、缩进、[CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/)和[Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/)等。

此外，Aspose.Words提供了[StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/)类和`Table`类的一些属性，以指定我们将使用哪种表样式: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), 和[StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/)。

Aspose.Words还提供[ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/)类，该类表示应用于具有指定表格样式的表格的某些区域的特殊格式，以及表示**ConditionalStyle**对象集合的[ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/)。 此集合包含一组永久项，表示[ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/)枚举类型的每个值的一个项。 **ConditionalStyleType**枚举定义了可以在表格样式中定义条件格式的所有可能的表格区域。

在这种情况下，可以为ConditionalStyleType枚举类型下定义的所有可能的表区域定义条件格式。

下面的代码示例演示如何为表的标题行定义条件格式:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

您还可以选择要应用样式的表部分，例如第一列、最后一列、带状行。 它们在[TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/)枚举中列出，并通过[StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/)属性应用。 **TableStyleOptions**枚举允许按位组合这些功能。

下面的代码示例演示如何创建应用了表样式的新表:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

下面的图片显示了Microsoft Word中的**Table Styles**及其在Aspose.Words中的相应属性的表示。

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## 从表格样式中获取格式并将其应用为直接格式

Aspose.Words还提供了[ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/)方法来获取表格样式上的格式，并将其作为直接格式扩展到表格的行和单元格中。 尝试将格式与表格样式和单元格样式相结合。

{{% alert color="primary" %}}

此方法不会复盖已通过行或单元格格式应用于表的任何其他格式。

{{% /alert %}}

下面的代码示例演示如何将格式从样式扩展到表行和单元格中，作为直接格式:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}