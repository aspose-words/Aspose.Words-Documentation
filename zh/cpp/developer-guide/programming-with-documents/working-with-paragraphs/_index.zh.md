---
title: 使用C++中的段落
second_title: Aspose.Words对于C++
articleTitle: 处理段落
linktitle: 处理段落
description: "使用C++的段落节点操作实践。"
type: docs
weight: 210
url: /zh/cpp/working-with-paragraphs/
---

段落是一组字符组合成一个逻辑块，并以一个特殊字符–a*paragraph break*结尾。 在Aspose.Words中，段落由[Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/)类表示。

## 插入一段

要在文档中插入一个新的段落，实际上，您需要在其中插入一个段落中断字符。 [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/)不仅在文档中插入一串文本，而且还添加一个段落中断。

当前字体格式也由[Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/)属性指定，当前段落格式由[ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/)属性确定。 在下一节中，我们将详细介绍段落格式。

下面的代码示例演示如何将段落插入到文档中:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## 格式段落

当前段落格式由**ParagraphFormat**属性返回的**ParagraphFormat**对象表示。 此对象封装了Microsoft Word中可用的各种段落格式属性。 您可以通过调用[ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/)轻松地将段落格式重置为默认为正常样式，左对齐无缩进，无间距，无边框和无阴影。

下面的代码示例演示如何设置段落格式:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## 应用段落样式

一些格式化对象（如Font或ParagraphFormat）支持样式。 单个内置或用户定义的样式由`Style`对象表示，该对象包含相应的样式属性，如样式的名称、基本样式、字体和段落格式等。

此外，**Style**对象提供[StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/)属性，该属性返回由**StyleIdentifier**枚举值表示的与区域设置无关的样式标识符。 重点是Microsoft Word中内置样式的名称是针对不同语言进行本地化的。 使用样式标识符，无论文档语言如何，都可以找到正确的样式。 枚举值对应于Microsoft Word内置样式，例如*Normal*, *Heading 1*, *Heading 2* 等。 所有用户定义的样式都分配**StyleIdentifier.User**值。

下面的代码示例演示如何应用段落样式:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## 插入样式分隔符以放置不同的段落样式

可以使用Ctrl+Alt+Enter键盘快捷键将样式分隔符添加到段落的末尾MS字。 此功能允许在一个逻辑打印段落中使用两种不同的段落样式。 如果您希望某个特定标题开头的某些文本出现在内容列表中，但不希望整个标题出现在内容列表中，则可以使用此功能。

下面的代码示例演示如何插入样式分隔符以适应不同的段落样式:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## 识别段落样式分隔符

` `Aspose.Words在`Paragraph`类中提供了一个公共属性[BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/)，允许标识样式分隔符段落，如下面的示例所示:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## 对段落应用边框和阴影

Aspose.Words中的边框由[BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/)类表示-这是通过索引或边框类型访问的[Border](https://reference.aspose.com/words/cpp/aspose.words/border/)对象的集合。 边框类型由`BorderType`枚举表示。 枚举的某些值适用于多个或仅一个文档元素。 例如，**BorderType.Bottom**适用于段落或表格单元格，而**BorderType.DiagonalDown**仅指定表格单元格中的对角线边框。

边框集合和每个单独的边框都具有类似的属性，如颜色，线条样式，线条宽度，与文本的距离和可选阴影。 它们由同名属性表示。 您可以通过组合属性值来实现不同的边框类型。 此外，**BorderCollection**和**Border**对象都允许您通过调用[ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/)方法将这些值重置为默认值。

{{% alert color="primary" %}}

请注意，当边框属性重置为其默认值时，边框将不可见。

{{% /alert %}}

Aspose.Words也有[Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/)类包含文档元素的着色属性。 您可以设置所需的着色纹理以及应用于元素背景和前景的颜色。

着色纹理使用[TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/)枚举值设置，该值允许将各种模式应用于**Shading**对象。 例如，要为文档元素设置背景颜色，请使用[TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/)值并根据需要设置前景阴影颜色。

下面的代码示例演示如何将边框和底纹应用于段落:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
