---
title: 使用DocumentBuilder修改文档
second_title: Aspose.Words为Java
articleTitle: 使用DocumentBuilder修改文档
linktitle: 使用DocumentBuilder修改文档
type: docs
description: "使用文档生成器在Java中轻松修改文档。"
weight: 20
url: /zh/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## 指定格式

### 字体格式

当前字体格式由`DocumentBuilder.Font`属性返回的`Font`对象表示。 `Font`类包含在Microsoft Word中可能的各种字体属性。

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
| :- |
下面的代码示例演示如何设置字体格式。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### 单元格格式

单元格格式在生成表期间使用。 它由`DocumentBuilder.CellFormat`属性返回的`CellFormat`对象表示。 CellFormat封装了各种表格单元格属性，如宽度或垂直对齐。

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
| :- |
下面的代码示例演示如何创建包含单个格式化单元格的表。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### 行格式设置

当前行格式由`DocumentBuilder.RowFormat`属性返回的`RowFormat`对象确定。 该对象封装了有关所有表行格式的信息。

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
| :- |
Below code示例演示如何创建包含单个单元格的表并应用行格式。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### 列表格式

Aspose.Words允许通过应用列表格式轻松创建列表。 DocumentBuilder提供返回`ListFormat`对象的`DocumentBuilder.ListFormat`属性。 此对象有几种方法来开始和结束列表以及增加/减少缩进。

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
| :- |
Microsoft Word中有两种一般类型的列表：项目符号和编号。

- 要启动项目符号列表，请调用[ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)。
- 要开始编号列表，请调用[ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)。

项目符号或数字和格式将添加到当前段落以及使用**DocumentBuilder**创建的所有其他段落，直到调用[ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers)停止项目符号列表格式。

在Word文档中，列表最多可包含九个级别。 每个级别的列表格式指定使用的项目符号或数字，左缩进，项目符号和文本之间的空格等。

- 要将当前段落的列表级别增加一个级别，请调用[ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)。
- 若要将当前段落的列表级别降低一个级别，请调用[ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)。

这些方法更改列表级别并应用新级别的格式属性。

{{% alert color="primary" %}}

您还可以使用[ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int)属性来获取或设置段落的列表级别。 列表级别编号为0到8。

{{% /alert %}}

下面的代码示例演示如何构建多级列表。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### 页面设置和节格式

页面设置和节属性封装在`DocumentBuilder.PageSetup`属性返回的`PageSetup`对象中。 该对象包含部分的所有页面设置属性（左边距、下边距、纸张大小等）作为属性。

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
| :- |
下面的代码示例演示如何为当前部分设置页面大小和方向等属性。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### 应用样式

一些格式化对象（如Font或ParagraphFormat）支持样式。 单个内置或用户定义的样式由`Style`对象表示，该对象包含相应的样式属性，如样式的名称、基本样式、字体和段落格式等。

此外，**Style**对象提供[Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier)属性，该属性返回由**Style.StyleIdentifier**枚举值表示的与区域设置无关的样式标识符。 重点是Microsoft Word中内置样式的名称是针对不同语言进行本地化的。 使用样式标识符，无论文档语言如何，都可以找到正确的样式。 枚举值对应于Microsoft Word内置样式，如Normal，Heading 1，Heading 2等。 所有用户定义的样式都分配**StyleIdentifier.User value**。

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
| :- |
下面的代码示例演示如何应用段落样式。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### 边框和阴影

边框由BorderCollection表示。 这是按索引或按边框类型访问的边框对象的集合。 边框类型由`BorderType`枚举表示。 枚举的某些值适用于多个或仅一个文档元素。 例如，`BorderType.Bottom`适用于段落或表格单元格，而`BorderType.DiagonalDown`仅指定表格单元格中的对角线边框。

边框集合和每个单独的边框都具有类似的属性，如颜色，线条样式，线条宽度，与文本的距离和可选阴影。 它们由同名属性表示。 您可以通过组合属性值来实现不同的边框类型。 此外，**BorderCollection**和**Border**对象都允许您通过调用[Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting)方法将这些值重置为默认值。 请注意，当边框属性重置为默认值时，边框不可见。

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
| :- |
[Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/)类包含文档元素的着色属性。 您可以设置所需的着色纹理以及应用于元素背景和前景的颜色。

阴影纹理设置有 [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) 允许将各种模式应用于**Shading**对象的枚举值。 例如，要为文档元素设置背景颜色，请使用 [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) 值并视情况设置前景底纹颜色。

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
| :- |
下面的示例演示如何对段落应用边框和阴影。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### 捕捉到网格

Aspose.Words提供了两个属性`ParagraphFormat.SnapToGrid`和`Font.SnapToGrid`来获取和设置段落属性snap到网格。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### 移动光标

### 检测当前光标位置

您可以随时获取构建器光标当前的位置。 [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode)属性返回当前在此构建器中选择的节点。 节点是段落的直接子节点。 您使用`DocumentBuilder`执行的任何插入操作都将在`DocumentBuilder.CurrentNode`之前插入。 当当前段落为空或光标位于段落末尾之前时，`DocumentBuilder.CurrentNode`返回null。

此外，您可以使用[DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph)属性，它获取当前在此**DocumentBuilder**中选择的段落。 Below code示例演示如何访问文档生成器中的当前节点。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### 移动到任何节点（段落及其子节点）

如果您有一个文档对象节点（即段落或段落的直接子节点），则可以将构建器的光标指向此节点。 使用[DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node)方法执行此操作。
下面的代码示例演示如何将光标位置移动到指定节点。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### 移动到文档开始/结束

如果需要移动到文档的开头，请调用[DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart)。 如果您需要移动到文档的末尾，请调用[DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd)。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### 移动到一个部分

如果您正在处理包含多个部分的文档，则可以使用[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int)移动到所需的部分。 此方法将光标移动到指定节的开头，并接受所需节的索引。 当节索引大于或等于0时，它指定从文档开头开始的索引，0是第一个节。 当节索引小于0时，它指定从文档末尾开始的索引，-1是最后一个节。 Below code示例演示如何将光标位置移动到指定的部分。 您可以从以下位置下载此示例的模板文件 [这里](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### 移动到页眉/页脚

当您需要将一些数据放入页眉或页脚时，您应该首先使用[DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int)移动到那里。该方法接受一个HeaderFooterType枚举值，该值标识应将光标移动到的页眉或页脚的类型。

如果要为第一页创建不同的页眉和页脚，则需要将[PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter)属性设置为**true**。 如果要为偶数页和奇数页创建不同的页眉和页脚，则需要将[PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter)设置为**true**。

如果您需要回到主要故事，请使用[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int)移出页眉或页脚。 下面的示例使用DocumentBuilder在文档中创建页眉和页脚。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### 移动到段落

使用[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int)将光标移动到当前部分中所需的段落。 您应该向此方法传递两个参数：paragraphIndex（要移动到的段落的索引）和characterIndex（段落内字符的索引）。

导航是在当前部分的当前故事中执行的。 也就是说，如果将光标移动到第一节的主标题，则paragraphIndex指定该节标题内段落的索引。

当paragraphIndex大于或等于0时，它指定从节的开头开始的索引，0是第一段。 当paragraphIndex小于0时，它指定从节末尾开始的索引，-1是最后一段。 字符索引当前只能指定为0以移动到段落的开头或-1以移动到段落的结尾。 下面的代码示例演示如何将光标位置移动到指定的段落。 您可以从以下位置下载此示例的模板文件 [这里](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### 移动到表格单元格

如果需要将光标移动到当前节中的表格单元格，请使用[DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int)。 此方法接受四个参数:

- tableIndex-要移动到的表的索引。
- rowIndex-表中行的索引。
- columnIndex-表中列的索引。
- characterIndex-单元格内字符的索引。

导航是在当前部分的当前故事中执行的。

对于索引参数，当索引大于或等于0时，它从开头指定一个索引，0是第一个元素。 当索引小于0时，它指定从末尾开始的索引，-1是最后一个元素。

另外，请注意，characterIndex当前只能指定0移动到单元格的开头或-1移动到单元格的末尾。 下面的代码示例演示如何将光标位置移动到指定的表格单元格。 您可以从以下位置下载此示例的模板文件 [这里](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### 移动到书签

书签经常用于标记文档中要插入新元素的特定位置。 要移动到书签，请使用[DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String)。 此方法有两个重载。 最简单的一个只接受要移动光标的书签的名称。 下面的代码示例演示如何将光标位置移动到书签。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

此重载将光标移动到具有指定名称的书签开始后的位置。 另一个重载[DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean)以更高的精度将光标移动到书签。 它接受两个额外的布尔参数:

- isStart确定是将光标移动到书签的开头还是结尾。
- isAfter确定是将光标移动到书签开始或结束位置之后，还是将光标移动到书签开始或结束位置之前。

下面的代码示例演示如何将光标位置移动到书签结束后。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

以这种方式插入新文本不会替换书签的现有文本。 请注意，文档中的某些书签被分配给表单字段。 移动到这样的书签并在那里插入文本将文本插入表单字段代码中。 虽然这不会使表单字段无效，但插入的文本将不可见，因为它成为字段代码的一部分。

### 移动到`Merge`字段

有时您可能需要使用`DocumentBuilder`执行"手动"Mail Merge或在Mail Merge事件处理程序中以特殊方式填充合并字段。 这就是[DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String)可能有用的时候。 该方法接受合并字段的名称。 它将光标移动到刚好超出指定合并字段的位置，并删除合并字段。 下面的代码示例演示如何将光标移动到指定合并字段之外的位置。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## 如何在测量单位之间转换

Aspose.WordsAPI中提供的大多数表示某些测量值（宽度/高度，边距和各种距离）的对象属性都接受以点为单位的值（1英寸等于72点）。 有时这不方便，所以有`ConvertUtil`类提供帮助函数在各种测量单位之间进行转换。 它允许将英寸转换为点，点转换为英寸，像素转换为点，点转换为像素。 当像素转换为点时，反之亦然，它可以在96dpi（每英寸点数）分辨率或指定的dpi分辨率下执行。

**ConvertUtil**

下面的代码示例演示如何以英寸为单位指定页面属性。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
