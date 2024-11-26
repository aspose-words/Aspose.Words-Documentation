---
title: 使用DocumentBuilder轻松修改文档
second_title: Aspose.Words对于C++
articleTitle: 使用DocumentBuilder轻松修改文档
linktitle: 使用DocumentBuilder轻松修改文档
type: docs
description: "使用文档生成器可以轻松地在C++中修改文档。"
weight: 190
url: /zh/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## 指定格式

### 字体格式

当前字体格式由`DocumentBuilder.Font`属性返回的`Font`对象表示。 `Font`类包含Microsoft Word中可能的多种字体属性。 下面的示例演示如何设置字体格式。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### 段落格式

当前段落格式由`DocumentBuilder.ParagraphFormat`属性返回的`ParagraphFormat`对象表示。 此对象封装了Microsoft Word中可用的各种段落格式属性。 您可以通过调用`ParagraphFormat.ClearFormatting`轻松地将段落格式重置为默认为正常样式，左对齐，无缩进，无间距，无边框和无阴影。 下面的示例演示如何设置段落格式。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### 与亚洲印刷术合作

#### 自动调整亚洲和拉丁文字，数字之间的空间

如果您正在设计一个同时包含东亚和拉丁文本的模板，并且希望通过控制这两种类型的文本之间的空格来增强表单模板的外观，则可以将表单模板配置为自动调整这两种类型的文本之间的空格。 您可以使用ParagraphFormat类的AddSpaceBetweenFarEastAndAlpha和AddSpaceBetweenFarEastAndDigit属性来实现这一点。

下面的代码示例演示如何使用`ParagraphFormat.AddSpaceBetweenFarEastAndAlpha`和`ParagraphFormat.AddSpaceBetweenFarEastAndDigit`属性。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### 更改亚洲段落间距和缩进

下面的代码示例演示如何更改亚洲段落间距和缩进。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### 设置换行选项

MSWord中的`Paragraph`属性对话框的"排版"选项卡具有换行符组。 该组的选项可以使用FarEastLineBreakControl, WordWrap, HangingPunctuation ParagraphFormat类的属性。 Below code示例演示如何使用这些属性。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### 单元格格式

单元格格式在生成表期间使用。 它由`DocumentBuilder.CellFormat`属性返回的`CellFormat`对象表示。 CellFormat封装了各种表格单元格属性，如宽度或垂直对齐。 下面的示例演示如何创建包含单个格式化单元格的表。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### 行格式设置

当前行格式由`DocumentBuilder.RowFormat`属性返回的`RowFormat`对象确定。 该对象封装了有关所有表行格式的信息。 下面的示例演示如何创建包含单个单元格的表并应用行格式。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### 列表格式

Aspose.Words允许通过应用列表格式轻松创建列表。 DocumentBuilder提供返回`ListFormat`对象的`DocumentBuilder.ListFormat`属性。 此对象有几种方法来开始和结束列表以及增加/减少缩进。 Microsoft Word中有两种一般类型的列表：项目符号和编号。

- 要启动项目符号列表，请调用`ListFormat.ApplyBulletDefault`。
- 要开始编号列表，请调用`ListFormat.ApplyNumberDefault`。

项目符号或数字和格式将添加到当前段落以及使用**DocumentBuilder**创建的所有其他段落，直到调用`ListFormat.RemoveNumbers`停止项目符号列表格式。 在Word文档中，列表最多可包含九个级别。 每个级别的列表格式指定使用的项目符号或数字，左缩进，项目符号和文本之间的空格等。

- 要将当前段落的列表级别增加一个级别，请调用`ListFormat.ListIndent`。
- 要将当前段落的列表级别降低一个级别，请调用`ListFormat.ListOutdent`。

这些方法更改列表级别并应用新级别的格式属性。

{{% alert color="primary" %}}

您还可以使用`ListFormat.ListLevelNumber`属性来获取或设置段落的列表级别。 列表级别编号为0到8。

{{% /alert %}}

下面的示例演示如何构建多级列表。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### 页面设置和节格式

页面设置和节属性封装在`DocumentBuilder.PageSetup`属性返回的`PageSetup`对象中。 该对象包含部分的所有页面设置属性（左边距、下边距、纸张大小等）作为属性。 下面的示例演示如何为当前部分设置页面大小和方向等属性。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### 应用样式

一些格式化对象（如Font或ParagraphFormat）支持样式。 单个内置或用户定义的样式由`Style`对象表示，该对象包含相应的样式属性，如样式的名称、基本样式、字体和段落格式等。

此外，**Style**对象提供`Style.StyleIdentifier`属性，该属性返回由**Style.StyleIdentifier**枚举值表示的与区域设置无关的样式标识符。 重点是Microsoft Word中内置样式的名称是针对不同语言进行本地化的。 使用样式标识符，无论文档语言如何，都可以找到正确的样式。 枚举值对应于Microsoft Word内置样式，如Normal，Heading1，Heading2等。 所有用户定义的样式都分配**StyleIdentifier.User value**。 下面的示例演示如何应用段落样式。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### 边框和阴影

边框由BorderCollection表示。 这是按索引或按边框类型访问的边框对象的集合。 边框类型由`BorderType`枚举表示。 枚举的某些值适用于多个或仅一个文档元素。 例如，`BorderType.Bottom`适用于段落或表格单元格，而`BorderType.DiagonalDown`仅指定表格单元格中的对角线边框。

边框集合和每个单独的边框都具有类似的属性，如颜色，线条样式，线条宽度，与文本的距离和可选阴影。 它们由同名属性表示。 您可以通过组合属性值来实现不同的边框类型。 此外，**BorderCollection**和**Border**对象都允许您通过调用`Border.ClearFormatting`方法将这些值重置为默认值。 请注意，当边框属性重置为默认值时，边框不可见。 `Shading`类包含文档元素的着色属性。 您可以设置所需的着色纹理以及应用于元素背景和前景的颜色。

着色纹理使用`TextureIndex`枚举值设置，该值允许将各种模式应用于**Shading**对象。 例如，要为文档元素设置背景颜色，请使用`TextureIndex.TextureSolid`值并根据需要设置前景阴影颜色。 下面的示例演示如何对段落应用边框和阴影。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### 捕捉到网格

Aspose.Words提供了两个属性`ParagraphFormat.SnapToGrid`和`Font.SnapToGrid`来获取和设置段落属性snap到网格。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## 移动光标

### 检测当前光标位置

您可以随时获取构建器光标当前的位置。 `DocumentBuilder.CurrentNode`属性返回当前在此构建器中选择的节点。 节点是段落的直接子节点。 您使用`DocumentBuilder`执行的任何插入操作都将在`DocumentBuilder.CurrentNode`之前插入。 当当前段落为空或光标位于段落末尾之前时，`DocumentBuilder.CurrentNode`返回null。

此外，您可以使用`DocumentBuilder.CurrentParagraph`属性，它获取当前在此**DocumentBuilder**中选择的段落。 下面的示例演示如何访问文档生成器中的当前节点。 您可以从这里下载此示例的模板文件。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### 移动到任何节点（段落及其子节点）

如果您有一个文档对象节点（即段落或段落的直接子节点），则可以将构建器的光标指向此节点。 使用`DocumentBuilder.MoveTo`方法执行此操作。 下面的示例演示如何将光标位置移动到指定节点。 您可以从这里下载此示例的模板文件。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### 移动到文档开始/结束

如果需要移动到文档的开头，请调用`DocumentBuilder.MoveToDocumentStart`。 如果您需要移动到文档的末尾，请调用`DocumentBuilder.MoveToDocumentEnd`。 下面的示例演示如何将光标位置移动到文档的开头或结尾。 您可以从这里下载此示例的模板文件。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### 移动到一个部分

如果您正在处理包含多个部分的文档，则可以使用`DocumentBuilder.MoveToSection`移动到所需的部分。 此方法将光标移动到指定节的开头，并接受所需节的索引。 当节索引大于或等于0时，它指定从文档开头的索引，0是第一个节。 当节索引小于0时，它指定从文档末尾开始的索引，-1是最后一个节。 下面的示例演示如何将光标位置移动到指定的部分。 您可以从这里下载此示例的模板文件。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### 移动到页眉/页脚

当您需要将一些数据放入页眉或页脚时，您应该首先使用`DocumentBuilder.MoveToHeaderFooter`移动到那里。 该方法接受一个HeaderFooterType枚举值，该值标识应将光标移动到的页眉或页脚的类型。 如果要为第一页创建不同的页眉和页脚，则需要将`PageSetup.DifferentFirstPageHeaderFooter`属性设置为**true**。 如果要为偶数页和奇数页创建不同的页眉和页脚，则需要将`PageSetup.OddAndEvenPagesHeaderFooter`设置为**true**。

如果您需要回到主要故事，请使用**DocumentBuilder.MoveToSection**移出页眉或页脚。 下面的示例使用DocumentBuilder在文档中创建页眉和页脚。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### 移动到段落

使用`DocumentBuilder.MoveToParagraph`将光标移动到当前部分中所需的段落。 您应该向此方法传递两个参数：paragraphIndex（要移动到的段落的索引）和characterIndex（段落内字符的索引）。

导航是在当前部分的当前故事中执行的。 也就是说，如果将光标移动到第一节的主标题，则paragraphIndex指定该节标题内段落的索引。

当paragraphIndex大于或等于0时，它指定从节的开头开始的索引，0是第一段。 当paragraphIndex小于0时，它指定从节末尾开始的索引，-1是最后一段。

字符索引当前只能指定为0移动到段落的开头或-1移动到段落的结尾。 下面的示例演示如何将光标位置移动到指定的段落。 您可以从这里下载此示例的模板文件。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### 移动到表格单元格

如果需要将光标移动到当前节中的表格单元格，请使用`DocumentBuilder.MoveToCell`。 此方法接受四个参数:

- tableIndex-要移动到的表的索引。
- rowIndex-表中行的索引。
- columnIndex-表中列的索引。
- characterIndex-单元格内字符的索引。

导航是在当前部分的当前故事中执行的。 对于索引参数，当索引大于或等于0时，它指定从第一个元素0开始的索引。 当index小于0时，它指定从末尾开始的索引，-1是最后一个元素。

另外，请注意，characterIndex当前只能指定0移动到单元格的开头或-1移动到单元格的末尾。 下面的示例演示如何将光标位置移动到指定的表格单元格。 您可以从这里下载此示例的模板文件。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### 移动到书签

书签经常用于标记文档中要插入新元素的特定位置。 要移动到书签，请使用`DocumentBuilder.MoveToBookmark`。 此方法有两个重载。 最简单的一个只接受要移动光标的书签的名称。 下面的示例演示如何将光标位置移动到书签。 您可以从这里下载此示例的模板文件。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

此重载将光标移动到具有指定名称的书签开始后的位置。 另一个重载`DocumentBuilder.MoveToBookmark`以更高的精度将光标移动到书签。 它接受两个额外的布尔参数:

- isStart确定是将光标移动到书签的开头还是结尾。
- isAfter确定是将光标移动到书签开始或结束位置之后，还是将光标移动到书签开始或结束位置之前。

下面的示例演示如何将光标位置移动到书签结束后。

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

两种方法的比较不区分大小写。

以这种方式插入新文本不会替换书签的现有文本。 请注意，文档中的某些书签被分配给表单字段。 移动到这样的书签并在那里插入文本将文本插入表单字段代码中。 虽然这不会使表单字段无效，但插入的文本将不可见，因为它成为字段代码的一部分。

## 如何在测量单位之间转换

Aspose.WordsAPI中提供的大多数表示某些测量（宽度/高度，边距和各种距离）的对象属性都接受以点为单位的值（1英寸等于72点）。 有时这不方便，所以有`ConvertUtil`类提供帮助函数在各种测量单位之间进行转换。 它允许将英寸转换为点，点转换为英寸，像素转换为点，点转换为像素。 当像素转换为点时，反之亦然，它可以在96dpi（每英寸点数）分辨率或指定的dpi分辨率下执行。
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
