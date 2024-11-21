---
title: 将Markdown转换为文档对象模型(DOM)
second_title: Aspose.Words对于C++
articleTitle: 将Markdown转换为文档对象模型(DOM)
linktitle: 将Markdown转换为文档对象模型(DOM)
type: docs
description: "将Markdown文档转换为文档对象模型，然后使用C++返回。 因此，您可以使用复杂的现有Markdown，并以编程方式从头开始创建Markdown文档。"
weight: 20
url: /zh/cpp/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

要以编程方式读取、操作和修改文档的内容和格式，您需要将其转换为Aspose.Words文档对象模型(DOM)。

与Word文档相反，Markdown不符合 [Aspose.Words文档对象模型(DOM)](/words/cpp/aspose-words-document-object-model/) 文章。 但是，Aspose.Words提供了自己的机制，用于将Markdown文档转换为DOM并返回，以便我们可以成功地处理它们的元素，如文本格式，表格，标题等。

本文解释了如何将各种markdown特征转换为Aspose.WordsDOM并返回到Markdown格式。

## 翻译的复杂性Markdown – DOM – Markdown

这种机制的主要困难不仅是将Markdown转换为DOM，还要进行反向转换-以最小的损失将文档保存回Markdown格式。 有些元素，例如多级引号，对于这些元素，反向转换并不是微不足道的。

我们的翻译引擎不仅允许用户处理现有Markdown文档中的复杂元素，还允许用户从头开始创建具有原始结构的Markdown格式的文档。 要创建各种元素，您需要根据本文后面介绍的某些规则使用具有特定名称的样式。 可以通过编程方式创建此类样式。

## 常见翻译原则

我们对内联块使用[Font](https://reference.aspose.com/words/cpp/aspose.words/font/)格式。 当Aspose.WordsDOM中的Markdown特征没有直接对应时，我们使用一个字符样式，其名称从一些特殊单词开始。

对于容器块，我们使用样式继承来表示嵌套的Markdown特性。 在这种情况下，即使没有嵌套功能，我们也使用具有从一些特殊单词开始的名称的段落样式。

项目符号列表和有序列表也是Markdown中的容器块。 它们的嵌套在DOM中表示的方式与使用样式继承的所有其他容器块相同。 但是，此外，DOM中的列表在列表样式或段落格式中具有对应的数字格式。

## 内联块

我们在翻译**Bold**，*Italic*或~~Strikethrough~~内联markdown特征时使用[Font](https://reference.aspose.com/words/cpp/aspose.words/font/)格式。

| Markdown特征 | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

我们使用一个字符样式，其名称从单词`InlineCode`开始，后跟一个可选的点`(.)`和一些反引号```(`)```作为`InlineCode`特性。 如果错过了许多反引号，则默认情况下将使用一个反引号。

| Markdown特征 | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/)类。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/)类。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)类。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## 货柜大厦

文档是一系列容器块，如标题、段落、列表、引号等。 容器块可分为2类：叶块和复杂容器。 叶块只能包含内联内容。 复杂的容器，反过来，可以包含其他容器块，包括叶块。

### 叶块

下表显示了在Aspose.Words中使用Markdown叶块的示例:

| Markdown特征 | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | 这是一个简单的段落，具有相应的HorizontalRule形状:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`，其中（1<=N <= 9).<br />这被转换为内置样式，并且应该完全符合指定的模式（不允许使用后缀或前缀）。<br />否则，它将只是一个具有相应样式的常规段落。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`，基于`"Heading N"`样式。<br />如果（N>=2），则将使用`"Heading 2"`，否则使用`"Heading 1"`。<br />允许任何后缀，但Aspose.Words导入器分别使用数字"1"和"2"。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br />`[.]`和`[info string]`是可选的。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### 复杂容器

下表显示了在Aspose.Words中使用Markdown复杂容器的示例:

| Markdown特征 | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />样式名称中的后缀是可选的，但Aspose.Words导入器使用有序数字1, 2, 3, .... 在嵌套引号的情况下。<br />嵌套是通过继承的样式定义的。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | 项目符号列表使用段落编号表示:<br />`get_ListFormat()->ApplyBulletDefault()`<br />可以有3类型的项目符号列表。 它们只是第一级编号格式的差异。 它们分别是：`‘-’`，`‘+’`或`‘*’`。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | 有序列表使用段落编号表示:<br />`get_ListFormat()->ApplyNumberDefault()`<br />可以有2数字格式标记：‘.’和‘)’。 默认标记为‘.’。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### 表格

Aspose.Words还允许将表格转换为DOM，如下所示:

| Markdown特征 | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/)，[Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/)和[Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/)类。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## 请参阅

* [使用Markdown功能](/words/cpp/working-with-markdown-features/)

