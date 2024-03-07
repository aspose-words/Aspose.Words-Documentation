---
title: 将 Markdown 翻译为 DOM
second_title: .NET 格式的 Aspose.Words
articleTitle: 将 Markdown 翻译为 Document Object Model (DOM)
linktitle: 将 Markdown 翻译为 Document Object Model (DOM)
type: docs
description: "使用 C# 将 Markdown 文档转换为 Document Object Model 并返回。因此，您可以使用复杂的现有 Markdown 并以编程方式从头开始创建 Markdown 文档。"
weight: 20
url: /zh/net/translate-markdown-to-document-object-model/
---

要以编程方式读取、操作和修改文档的内容和格式，您需要将其转换为 Aspose.Words Document Object Model (DOM)。

与Word文档相比，Markdown不符合[Aspose.Words Document Object Model (DOM)](/words/zh/net/aspose-words-document-object-model/)文章中描述的DOM。然而，Aspose.Words 提供了自己的机制用于将 Markdown 文档转换为 DOM 并返回，以便我们可以成功地使用它们的元素，例如文本格式、表格、标题等。

本文介绍了如何将各种 markdown 功能转换为 Aspose.Words DOM 并转换回 Markdown 格式。

## 翻译 Markdown – DOM – Markdown 的复杂性

这种机制的主要难点不仅在于将Markdown翻译为DOM，还在于进行反向转换--以最小的损失将文档保存回Markdown格式。有些元素（例如多级引号）的反向转换并非易事。

我们的翻译引擎不仅允许用户处理现有 Markdown 文档中的复杂元素，还允许用户从头开始使用原始结构创建自己的 Markdown 格式文档。要创建各种元素，您需要根据本文稍后描述的某些规则使用具有特定名称的样式。可以通过编程方式创建此类样式。

## 通用翻译原则

我们对内联块使用 [Font](https://reference.aspose.com/words/zh/net/aspose.words/font/) 格式。当 Aspose.Words DOM 中的 Markdown 特征没有直接对应时，我们使用名称以某些特殊单词开头的字符样式。

对于容器块，我们使用样式继承来表示嵌套的 Markdown 功能。在这种情况下，即使没有嵌套功能，我们也会使用名称以某些特殊单词开头的段落样式。

项目符号列表和有序列表也是 Markdown 中的容器块。它们的嵌套在 DOM 中的表示方式与使用样式继承的所有其他容器块相同。然而，此外，DOM 中的列表在列表样式或段落格式中具有相应的数字格式。

## 内联块

我们在翻译 **Bold**、*Italic* 或~~删除线~~内联 markdown 功能时使用 [Font](https://reference.aspose.com/words/zh/net/aspose.words/font/) 格式。

|  Markdown 功能 |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}}  ||
|  **Italic**<br /> `*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}}  ||
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} ||

我们使用的字符样式的名称以 `InlineCode` 一词开头，后跟可选的点 `(.)` 和用于 `InlineCode` 功能的多个反引号 ```(`)```。如果缺少多个反引号，则默认使用一个反引号。

|  Markdown 功能 |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  ||
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  [FieldHyperlink](https://reference.aspose.com/words/zh/net/aspose.words.fields/fieldhyperlink/) 类。 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  ||
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [FieldHyperlink](https://reference.aspose.com/words/zh/net/aspose.words.fields/fieldhyperlink/) 类。 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  ||
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [Shape](https://reference.aspose.com/words/zh/net/aspose.words.drawing/shape/) 类。 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  ||

## 集装箱块

文档是一系列容器块，例如标题、段落、列表、引用等。容器块可以分为两类：叶子块和复杂容器。叶块只能包含内联内容。复杂容器又可以包含其他容器块，包括叶块。

### 叶子块

下表显示了在 Aspose.Words 中使用 Markdown Leaf 块的示例：

|  Markdown 功能 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  这是一个简单的段落，具有相应的 HorizontalRule 形状：<br /> `DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`，其中 (1&lt;=N&lt;=9)。<br />这将被转换为内置样式，并且应该完全符合指定的模式（不允许使用后缀或前缀）。<br />否则，它只是一个具有相应样式的常规段落。 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br /> `===`（如果标题级别为 1），<br /> `---`（如果标题级别为 2） |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`，基于`“Heading N”`风格。<br />如果 (N &gt;= 2)，则将使用 `“Heading 2”`，否则使用 `“Heading 1”`。<br />允许任何后缀，但 Aspose.Words 导入器分别使用数字"1"和"2"。 |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

builder.ParagraphFormat.StyleName = "Heading 1";
builder.Writeln("This is an H1 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading1 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading1");
builder.ParagraphFormat.Style = setexHeading1;
builder.Document.Styles["SetextHeading1"].BaseStyleName = "Heading 1";
builder.Writeln("Setext Heading level 1");

builder.ParagraphFormat.Style = builder.Document.Styles["Heading 3"];
builder.Writeln("This is an H3 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading2 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading2");
builder.ParagraphFormat.Style = setexHeading2;
builder.Document.Styles["SetextHeading2"].BaseStyleName = "Heading 3";

// Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.Writeln("Setext Heading level 2");{{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-IndentedCode.cs" >}}  |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br /> `[.]` 和 `[info string]` 是可选的。 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### 复杂容器

下表显示了在 Aspose.Words 中使用 Markdown 复杂容器的示例：

|  Markdown 功能 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br />样式名称中的后缀是可选的，但 Aspose.Words 导入器使用有序数字 1、2、3、...。如果是嵌套引号。<br />嵌套是通过继承的样式定义的。 |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// By default a document stores blockquote style for the first level.
builder.ParagraphFormat.StyleName = "Quote";
builder.Writeln("Blockquote");

// Create styles for nested levels through style inheritance.
Style quoteLevel2 = builder.Document.Styles.Add(StyleType.Paragraph, "Quote1");
builder.ParagraphFormat.Style = quoteLevel2;
builder.Document.Styles["Quote1"].BaseStyleName = "Quote";
builder.Writeln("1. Nested blockquote");{{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  项目符号列表使用段落编号表示：<br /> `ListFormat.ApplyBulletDefault()`<br />可以有 3 种类型的项目符号列表。它们仅在第一级编号格式上有所不同。它们分别是：`‘-’`、`‘+’` 或 `‘*’`。 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  有序列表使用段落编号表示：<br /> `ListFormat.ApplyNumberDefault()`<br />可以有 2 个数字格式标记："."和 '）'。默认标记是"."。 |
|  {{< highlight csharp >}}Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.ListFormat.ApplyBulletDefault();
builder.ListFormat.List.ListLevels[0].NumberFormat = $"{(char) 0}.";
builder.ListFormat.List.ListLevels[1].NumberFormat = $"{(char) 1}.";

builder.Writeln("Item 1");
builder.Writeln("Item 2");

builder.ListFormat.ListIndent();

builder.Writeln("Item 2a");
builder.Writeln("Item 2b");{{< /highlight >}} |                                                                |

### 表格

Aspose.Words还允许将表格翻译成DOM，如下所示：

|  Markdown 功能 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `一个 | b`<br />`- | -`<br />`c | d` |  [Table](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/)、[Row](https://reference.aspose.com/words/zh/net/aspose.words.tables/row/) 和 [Cell](https://reference.aspose.com/words/zh/net/aspose.words.tables/cell/) 类。 |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Add the first row.
builder.InsertCell();
builder.Writeln("a");
builder.InsertCell();
builder.Writeln("b");

// Add the second row.
builder.InsertCell();
builder.Writeln("c");
builder.InsertCell();
builder.Writeln("d");{{< /highlight >}} |                                                                |

## 也可以看看

* [使用 Markdown 功能](/words/zh/net/working-with-markdown-features/)

