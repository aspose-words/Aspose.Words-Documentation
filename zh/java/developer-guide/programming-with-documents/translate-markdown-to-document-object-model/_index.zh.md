---
title: 翻译 Markdown 改为 DOM
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: "翻译 Markdown 改为 Document Object Model (单位:千美元)DOM页:1"
linktitle: "翻译 Markdown 改为 Document Object Model (单位:千美元)DOM页:1"
type: docs
description: "粉碎一个 Markdown 文档到 Document Object Model 回来 所以,你可以工作 复杂的现有 Markdown 在方案上建立一个 Markdown 使用 Java。 。 。 。"
weight: 20
url: /zh/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

要在程序上读取、操纵和修改文件的内容和格式,需要将其翻译为 Aspose.Words Document Object Model (单位:千美元)DOM) (中文(简体) ).

与Word文档相对, Markdown 不符合 DOM 说明 [Aspose.Words Document Object Model (DOM)](/words/zh/java/aspose-words-document-object-model/) 第3条。 不过 Aspose.Words 提供自己的翻译机制 Markdown 文档到 DOM ,然后返回,这样我们就可以成功地使用它们的元素,例如文本格式化、表格、标题等。

这篇文章解释了如何将不同种族、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、族裔、 markdown 特性可以翻译成 Aspose.Words DOM 返回到 Markdown 格式。

## 翻译的复杂性 Markdown - 说吧 DOM - 说吧 Markdown

这种机制的主要困难不仅仅是翻译 Markdown 改为 DOM, 并进行反向转换 – 将文档保存到 Markdown 格式,最小损失。 有一些元素,如多层引文,对于这些元素,反向转化并不是微不足道的.

我们的翻译引擎使用户不仅能够与现有的复杂要素合作。 Markdown 文档中创建自己的文档 Markdown 从零开始使用原始结构的格式。 要创建各种元素,您需要根据本文后面描述的某些规则使用带有特定名称的样式. 这种风格可以在方案上产生.

## 通用翻译 原则

我们用 [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) 内含区块的格式。 当没有直接通信时 Markdown 特性在 Aspose.Words DOM, 我们使用一种角色风格 名字从一些特殊词开始

对于容器区块,我们使用风格继承来表示巢穴 Markdown 特性。 在这种情况下,即使没有巢状特征,我们也使用带有名字的段落样式,这个名称起源于一些特殊的单词.

装有子弹和订购清单的集装箱区块 Markdown 也一样。 它们的巢穴在 DOM 和所有其他使用风格继承的容器块一样。 但是,除此之外,还有: DOM 已使用列表样式或段落格式的对应数字格式。

## 内置块

我们用 [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) 翻译时的格式 **Bold**, *Italic* 或 QQ 内插 markdown 特性。

|  Markdown 特性 |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  |  |

我们使用一个字符风格,名字从词开始 `InlineCode`,> 然后是可选点 `(.)` 和一些反键 ```(`)``` 联 合 国 `InlineCode` 特性。 如果缺少一些回击,则默认会使用一个回击.

|  Markdown 特性 |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  那个 [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) 课。 |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  那个 [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) 课。 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  那个 [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 课。 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  |  |

## 集装箱区块

文件是诸如标题、段落、列表、引文等容器块的序列。 集装箱区块可分为两个类别: 叶片块和复杂的容器。 叶片块只能包含内含内容. 复杂的容器反过来可以包含其他的容器块,包括叶片块.

### 叶片块

下表显示使用 Markdown 叶块在 Aspose.Words编号:

|  Markdown 特性 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  这是一个简单的段落,具有相应的水平规则形状:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, 地点(1<=N<=9).<br/>这被翻译为内置样式,应该与指定的模式完全一致(不允许后缀或前缀).<br/>否则,它将只是具有相应风格的普通段落 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (如果标题1),<br/>`---` (如果标题2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, 基于 `“Heading N”` 样式。<br/>如果(N >= 2),则 `“Heading 2”` 将被使用,否则 `“Heading 1”`。 。 。 。<br/>任何后缀都是允许的 但是 Aspose.Words 进口商分别使用"1"号和"2"号。 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>那个 `[.]` 和 `[info string]` 是可选的。 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### 复杂集装箱

下表显示使用 Markdown 复杂集装箱 Aspose.Words编号:

|  Markdown 特性 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>样式名称的后缀是可选的,但是 Aspose.Words 进口商使用订货编号1,2,3...,以备输入。<br/>巢穴通过继承的样式来定义 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  以段落编号表示项目清单:<br/>`ListFormat.ApplyBulletDefault()`<br/>可以有三种类型的子弹列表. 它们仅以第一层的编号格式显示。 它们是: `‘-’`, `‘+’` 或 `‘*’` 页:1 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  按顺序排列的清单使用段落编号表示:<br/>`ListFormat.ApplyNumberDefault()`<br/>可以有两个数字格式标记:`. ' 和`'。 默认标记是 `.' 。 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### 表格

Aspose.Words 还允许将表格翻译为 DOM, 如下所示:

|  Markdown 特性 |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>`a 问: | 3个P-4`<br />`- 怎么样? | - 怎么样?`<br />`(c) 联合国 | D. 国家 ` |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) 和 [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) 课程。 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## 另见

* [与 Markdown 特征](/words/zh/java/working-with-markdown-features/)

