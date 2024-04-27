---
title: 与段落一起工作 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 与段落合作
linktitle: 与段落合作
description: "段节点操纵做法 Java。 。 。 。"
type: docs
weight: 210
url: /zh/java/working-with-paragraphs/
---

一个段落是一组字符合并成逻辑块,并以一个特殊字符结尾--一个*段断*. 内 Aspose.Words, 一款由 [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) 课。

## 插入一个段落

要在文档中插入一个新段落,实际上,您需要在其中插入一个段落分解字符。 [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) 不仅在文档中插入一串文本,而且添加段落间隔。

当前字体格式也由 [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) 属性,当前段落格式由 [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) 属性。 在下一节,我们将更详细地介绍段落的格式。

以下代码示例显示如何在文档中插入一个段落:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## 格式段落

目前的段落格式由 [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) 对象返回 [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) 属性。 此对象将包含各种段落格式化属性 Microsoft Word。 。 。 您可以通过调用来轻松重置段落格式到默认的 – 正常样式、 左对齐、 无缩进、 无间隔、 无边框、 无阴影 – 。 [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting)。 。 。 。

以下代码示例显示如何设置段落格式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## 应用段落样式

一些格式化对象如Font或Format支持样式. 单个内置或用户定义的样式由 [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) 对象包含相应的样式属性,如名称、基样式、样式的字体和段落格式等。

此外,a **Style** 对象提供 [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) 属性,该属性返回一个以一个 **StyleIdentifier** 计数值. 关键是,内置样式的名称在 Microsoft Word 用于不同语言的地方化。 使用样式标识符,无论文档语言如何,都可以找到正确的样式. 计数值对应 Microsoft Word 内置样式, 如 *Normal*, *标题1*,*标题2*等. 指定所有自定义样式 **样式识别符 。 用户值**。 。 。 。

以下代码示例显示如何应用段落样式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## 插入样式分隔符以放置不同的段落样式

样式分隔符可以使用 Ctrl + Alt + 输入键盘快捷键加入 MS Word 在段落末尾添加. 这个特性允许在一个逻辑打印的段落中使用两种不同的段落样式. 如果您想要从特定标题开头的文字出现在目录中,但不希望在目录中出现整个标题,可以使用此特性.

以下代码示例显示如何插入样式分隔符以适应不同的段落样式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## 对段落应用边框和阴影

边框在 Aspose.Words 代表大会 [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) 类 - 这是一组 [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) 按索引或边框类型访问的对象。 那个 `Border` 类型由 [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) 计数. 列举的一些数值适用于几个或只有一个文档要素。 举例来说, **BorderType.Bottom** 适用于段落或表格单元格,而 **BorderType.DiagonalDown** 在表格单元格中指定对角边框。

边框收藏和每个单独的边框都有相似的属性,如颜色,行样式,行宽,与文字的距离,以及可选的阴影. 他们由同名财产代表。 您可以通过组合属性值实现不同的边框类型. 此外,两者均 **BorderCollection** 和 **Border** 对象允许您通过调用 [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) 方法。

{{% alert color="primary" %}}

注意当边框属性重置为默认值时,边框是看不见的.

{{% /alert %}}

Aspose.Words 也拥有 [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) 类包含文档元素的阴影属性。 您可以设定想要的阴影纹理和应用于元素背景和前景的颜色。

阴影纹理与 [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) 允许将各种图案应用到 **Shading** 对象。 例如,要设置文档元素的背景颜色,请使用 `TextureIndex.TextureSolid` 值,并酌情设置前景阴影颜色。 下文给出的代码示例说明了如何对某一段落应用边框和阴影。

以下代码示例显示如何对某一段落应用边框和阴影:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
