---
title: 使用 `DocumentBuilder` 修改文档
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 使用 `DocumentBuilder` 修改文档
linktitle: 使用 `DocumentBuilder` 修改文档
type: docs
description: "使用文档构建器轻松修改文档 Java。 。 。 。"
weight: 20
url: /zh/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## 指定格式

### 字体格式

当前字体格式用一个 `Font` 对象返回 `DocumentBuilder.Font` 属性。 那个 `Font` 类中包含多种字体属性 Microsoft Word。 。 。 。

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
以下代码示例显示如何设置字体格式.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### 单元格格式

表格的构建过程中使用单元格格式。 委员会由一名代表组成。 `CellFormat` 对象返回 `DocumentBuilder.CellFormat` 属性。 CellFormat 封装宽度或垂直对齐等各种表格单元格属性.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
以下代码示例显示如何创建包含单一格式化单元格的表格.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### 行格式化

当前行格式化由下列决定: `RowFormat` 对象返回 `DocumentBuilder.RowFormat` 属性。 对象封装所有表格行格式化的信息。

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
那个low code 示例说明如何创建包含单个单元格并应用行格式的表格。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### 列表格式

Aspose.Words 允许通过应用列表格式来方便地创建列表。 文档构建器提供 `DocumentBuilder.ListFormat` 返回的属性 a `ListFormat` 对象。 此对象有几种方法可以开始和结束列表并增加/减少缩进.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
清单有两种一般类型: Microsoft Word:子弹和编号。

- 要启动一个中弹列表,打电话 [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault) 。 。 。 。
- 要开始一个编号列表,呼叫 [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault) 。 。 。 。

在当前段落和所有其他段落中添加项目符号和格式。 **DocumentBuilder** 直至 [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) 被调用以停止中弹列表格式化。

在Word文档中,列表可能包含最多9个级别. 每个关卡的列表格式指定了使用什么项目符号或数字,左缩进,项目符号与文本之间的空格等.

- 怎么样? 将当前段落的列表级别增加一个级别,呼叫 [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)。 。 。 。
- 怎么样? 将当前段落的清单水平减少一个级别,呼叫 [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)。 。 。 。

方法改变列表级别,并应用新级别的格式属性.

{{% alert color="primary" %}}

你也可以使用这个 [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) 属性以获取或设置段落的列表级别。 列表级别为0至8级.

{{% /alert %}}

以下代码示例显示如何构建多级列表.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### 页面设置和段落格式

页面设置和分区属性封装在 `PageSetup` 对象返回 `DocumentBuilder.PageSetup` 属性。 对象包含一个区域的所有页面设置属性(左边边,底边,纸张大小等)作为属性.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
以下代码示例显示如何设置当前部分的页面大小和方向等属性.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### 应用样式

一些格式化对象如Font或Format支持样式. 单个内置或用户定义的样式由 `Style` 对象包含相应的样式属性,如名称、基样式、样式的字体和段落格式等。

此外,a **Style** 对象提供 [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) 属性,该属性返回一个以一个 **Style.StyleIdentifier** 计数值. 关键是,内置样式的名称在 Microsoft Word 用于不同语言的地方化。 使用样式标识符,无论文档语言如何,都可以找到正确的样式. 计数值对应 Microsoft Word 内置样式, 如 Normal , 标题 1 , 标题 2 等 。 指定所有自定义样式 **样式识别符 。 用户值**。 。 。 。

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
以下代码示例显示如何应用段落样式.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### 边框和阴影

边界由边界控制区代表。 这是通过索引或边框类型访问的边框对象的集合. 边框类型由 `BorderType` 计数. 列举的一些数值适用于几个或只有一个文档要素。 举例来说, `BorderType.Bottom` 适用于段落或表格单元格,而 `BorderType.DiagonalDown` 在表格单元格中指定对角边框。

边框收藏和每个单独的边框都有相似的属性,如颜色,行样式,行宽,与文字的距离,以及可选的阴影. 他们由同名财产代表。 您可以通过组合属性值实现不同的边框类型. 此外,两者均 **BorderCollection** 和 **Border** 对象允许您通过调用 [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) 方法。 注意当边框属性重置为默认值时,边框是看不见的.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
那个 [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) 类包含文档元素的阴影属性。 您可以设定想要的阴影纹理和应用于元素背景和前景的颜色。

阴影纹理设置为 [缩写](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) 允许将各种图案应用到 **Shading** 对象。 例如,要设置文档元素的背景颜色,请使用 [======================================== =================================================================================================================================================================================================](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) 值,并酌情设置前景阴影颜色。

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
下面的例子说明如何对某一段使用边框和阴影。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### 与网格对齐

Aspose.Words 提供两个属性 `ParagraphFormat.SnapToGrid` 和 `Font.SnapToGrid` 以获取段落属性并设置为网格。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### 移动光标

### 检测当前光标位置

您可以在任何时间获得构建者的光标位置 。 那个 [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) 属性返回当前在此构建器中选择的节点。 节点是一个段落的直接的孩子. 您使用的插入操作 `DocumentBuilder` 将在 `DocumentBuilder.CurrentNode`。 。 。 当当前段落是空的,或者光标就在段落结尾之前的位置, `DocumentBuilder.CurrentNode` 返回为无效。

还有,你可以使用 [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) 属性,它获得当前在此选中的段落 **DocumentBuilder**。 。 。 。 那个low code 示例显示如何在文档构建器中访问当前节点。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### 转到任何节点(分段及其子女)

如果文档对象节点是段落或段落直接子,可以将构建者的光标指向此节点. 使用 [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) 用于执行此操作的方法。
以下代码示例显示如何将光标位置移动到指定的节点.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### 移动到文档开始/结束

如果您需要移动到文档的开头,请打电话 [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart)。 。 。 。 如果您需要移动到文档的末尾,请拨 [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd)。 。 。 。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### 转到一个科

如果您正在使用包含多个段落的文档, 您可以使用 [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int)。 。 。 这种方法将光标移动到指定的一节开头,并接受所需的一节索引。 当段落索引大于或等于0时,它从文档开头指定一个索引,其中0为第一节. 当段落索引小于0时,它从文档的结尾指定一个索引,以 - 1 为最后一节. 那个low code 示例说明如何将光标位置移动到指定的区域。 您可以下载此示例的模板文件 [这里](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)。 。 。 。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### 移至页眉/页眉

当需要将一些数据放入页眉或页脚时,应首先使用 [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int)。 。 。 该方法接受一个HeaderFooterType的计数值,该值可以识别方向标或页脚的类型,以移动光标。

如果要创建首页不同的页眉和页脚,需要设置 [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) 属性改为 **true**。 。 。 如果您想要创建对偶数页和奇数页不同的页眉和页脚, 您需要设置 [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) 改为 **true**。 。 。 。

如果你需要回到主故事,请使用[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) 从页眉或页脚中移出。 以下示例使用文档构建器在文档中创建页眉和页脚。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### 移动到段落

使用[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) 将光标移到本节中想要的段落。 您应当将两个参数传递到这种方法:段落Index(要移动段落的索引)和字符Index(段落内字符的索引).

导航是在当前段的当前故事中进行. 也就是说,如果将光标移动到第一节的主页眉,则Index段在该节的页眉内指定了段落的索引。

当段落Index大于或等于0时,它从该节开头指定一个索引,其中0为第一段。 当段落Index小于0时,它指定了从该节结尾到最后一段的索引。 字符索引目前只能指定为 0 移动到段落开头,或者 -1 移动到段落结尾. 以下代码示例显示如何将光标位置移到指定的段落 。 您可以下载此示例的模板文件 [这里](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)。 。 。 。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### 移动到表格单元格

使用 [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) 如果您需要将光标移动到当前区域中的表格单元格。 这种方法接受四个参数:

- TableIndex - 要移动的表格索引 。
-行Index - 表格中行的索引.
- 栏Index - 表中列的索引。
-字符Index - 单元格内字符的索引.

导航是在当前段的当前故事中进行.

对于指数参数,当指数大于或等于0时,它从一开始就指定一个以0为第一元素的指数. 当索引小于 0 时, 它会指定从结尾到最后一个元素的索引 。

另外,注意字符Index目前只能指定 0 移动到单元格的开头,或者 - 1 移动到单元格的结尾. 以下代码示例显示如何将光标位置移动到指定的表格单元格。 您可以下载此示例的模板文件 [这里](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)。 。 。 。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### 移动到书签

书签经常用于标记文档中需要插入新元素的特定位置. 要移动到书签,请使用 [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String)。 。 。 这种方法有两个超载. 最简单的一个只接受要移动光标的书签名称. 以下代码示例显示如何将光标位置移动到书签上.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

此超载将光标移动到指定名称的书签开始后不久的位置 。 又超载了 [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) 将光标更精确地移动到书签上。 它接受两个额外的布尔参数:

- Is Start决定是将光标移动到书签的开头还是结尾。
- 在书签开始或结束位置之后移动光标,或者在书签开始或结束位置之前移动光标。

以下代码示例显示如何将光标位置移动到书签结束之后。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

以这种方式插入新文本并不取代书签的现有文本. 请注意,文档中的一些书签被指定组成字段. 移动到这样的书签并插入文字,将文字插入窗体字段代码。 虽然这不会使窗体字段无效,但插入的文本不会被可见,因为它成为字段代码的一部分.

### 移动到一个 `Merge` 外地

有时候你可能需要做一个"手动" Mail Merge 使用 `DocumentBuilder` 或以特殊方式在 a 内填入合并字段 Mail Merge 事件处理器。 这时候 [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) 可能会有用。 该方法接受合并字段的名称. 它将光标移动到刚刚超出指定合并字段的位置,并删除合并字段。 下面的代码示例显示如何将光标移动到刚刚超出指定合并字段的位置.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## 计量单位之间如何转换

大多数对象属性在 Aspose.Words API 表示一些测量值(宽度/高度、边距和各种距离),接受点值(1英寸等于72点)。 有时这不方便 所以有 `ConvertUtil` class 提供各种测量单位之间转换的辅助函数。 它允许将英寸转换成点,指向英寸,像素转换成点,指向像素. 当像素转换成点,反之亦然时,可以以96 dpi(dots每英寸)分辨率或指定的dpi分辨率进行.

**ConvertUtil** 在设置不同的页面属性时非常有用,因为比起点,英寸是更常用的测量单位。 以下示例说明如何以英寸设置页面属性.

以下代码示例显示如何用英寸指定页面属性 。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
