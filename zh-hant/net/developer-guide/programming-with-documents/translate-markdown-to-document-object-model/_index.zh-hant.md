---
title: 將 Markdown 翻譯成 DOM
second_title:  Aspose.Words for .NET
articleTitle: 翻譯 Markdown 到 Document Object Model (DOM)
linktitle: 翻譯 Markdown 到 Document Object Model (DOM)
type: docs
description: "翻譯一個 Markdown 文檔到 Document Object Model 並回來使用 C#。 這樣你就可以與複雜的現有 Markdown 合作，或從頭建立 Markdown 文檔。"
weight: 20
url: /zh-hant/net/translate-markdown-to-document-object-model/
---

要以程式方式讀取、處理和修改文件的內容和格式，您需要將其翻譯成 Aspose.Words Document Object Model (DOM）。

與 Word 文檔不同，Markdown 不符合DOM於該[Aspose.Words Document Object Model (DOM)](/words/net/aspose-words-document-object-model/)篇文章所述的描述。 不過，Aspose.Words 提供自己的機制來翻譯Markdown 文檔到DOM並回來，所以我們可以成功地與他們的元素如文字格式化、表格、標題和其他的元素合作。

這篇文章說明了各種 markdown 功能如何翻譯成 Aspose.Words DOM 格式，以及反向轉為 Markdown 格式。

## 翻譯的複雜度 Markdown – DOM – Markdown

這機制的主要困難，不僅是將 Markdown 翻譯成 DOM ，而且也要進行反向轉換 – 以最少的損失將文件儲存回 Markdown 格式。 有些元素，例如多層引號，其逆轉換並不簡單。

我們的翻譯引擎除了允許使用者可以在一個現有的 Markdown 文檔中操作複雜元素外，也讓使用者可以從原始結構開始，以 Markdown 格式創建自己的文檔。 要創作各種元素，你必須根據本篇文章稍後描述的特定規則，使用具特定名稱的樣式。 這樣的風格可以程式方式來創造。

## 常見的翻譯原則

我們使用 [Font](https://reference.aspose.com/words/net/aspose.words/font/) 格式化內聯方塊。 當 Markdown 功能沒有直接對應於 Aspose.Words 的 DOM 時，我們使用以一些特殊詞語開始的字符格式。

對容器塊，我們使用風格繼承來表示嵌套的 Markdown 特徵。 在這種情況下，即使沒有嵌套特徵，我們也會使用以特定字詞開頭的段落樣式。

項目標記和有序列表是 Markdown 中的容器塊。 他們的嵌套方式，以 DOM 的方式來表示，與所有其他容器塊使用風格傳承的方式相同。 然而，此外，在 DOM 中的清單有對應的數字格式化，無論是清單格式或段落格式。

## 內聯塊

我們在翻譯**Bold**、*Italic*或~~Strikethrough~~內嵌 [Font](https://reference.aspose.com/words/net/aspose.words/font/)功能時使用markdown格式。

| Markdown功能 | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br /> `{1}` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}} |  |
| **Italic**<br /> `*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} |  |

我們使用一個以字元 `InlineCode` 開始，並接著可選點 `(.)` 和任意數量的反引號 ```(`)``` 來命名之字元風格，用於 `InlineCode` 特徵。 如果遺漏了幾個反引號，則一個反引號將默認使用。

| Markdown 功能 | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode** <br /> `{1}` | `Font.StyleName = “InlineCode[.][N]”` |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` |  [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) 類別。 |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}} |  |
| **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` | [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) 類別。 |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}} |  |
| **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` | [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 類別。 |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}} |  |

## 容器塊

文件是由標頭、段落、清單、引文等容器塊組成的序列。 容器塊可以分為 2 類：葉片塊與複雜容器。 葉塊只能包含內嵌內容。 複雜容器可以包含其他容器的塊，包括葉塊。

### 葉塊

下表列出了在 Aspose.Words 中使用 Markdown Leaf 塊的範例：

| Markdown功能 | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | 這是個簡單的段落，其對應的HorizontalRule形狀：<br /> `DocumentBuilder.InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = “Heading N”`，其中 1 <= N <= 9。<br />這被翻譯成內建样式，且應完全符合指定模式（不允許有後綴或前綴）。<br />否則，它只是一個普通段落，具有相應的样式。 |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}} |  |
| **Setext Heading**<br />`===`（若為第1級標題），<br />`---`（若為第2級標題） | `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`，以 `“Heading N”` 樣式為基礎。<br />若 (N >= 2)，則使用 `“Heading 2”`，否則使用 `“Heading 1”`。<br />允許任何尾數，但 Aspose.Words 進口器分別使用數字"1"和"2"。 |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
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
| **Indented Code** | `ParagraphFormat.StyleName = “IndentedCode[some suffix]”` |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-IndentedCode.cs" >}} |  |
| **Fenced Code** <br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `ParagraphFormat.StyleName = “FencedCode[.][info string]”` <br /> `[.]` 和 `[info string]` 是可選的。 |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}} |  |

### 複雜容器

下面的表格顯示了 Markdown 複雜容器在 Aspose.Words 中的使用範例：

| Markdown功能 | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br /> `> quote,`<br /> `>> nested quote` | `ParagraphFormat.StyleName = “Quote[some suffix]”`<br />在風格名稱中使用的後綴是可選的，Aspose.Words匯入器使用嵌套引號中的有序數字（1、2、3...）。<br />嵌套定義透過遺傳風格來定義。 |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// By default a document stores blockquote style for the first level.
builder.ParagraphFormat.StyleName = "Quote";
builder.Writeln("Blockquote");

// Create styles for nested levels through style inheritance.
Style quoteLevel2 = builder.Document.Styles.Add(StyleType.Paragraph, "Quote1");
builder.ParagraphFormat.Style = quoteLevel2;
builder.Document.Styles["Quote1"].BaseStyleName = "Quote";
builder.Writeln("1. Nested blockquote");{{< /highlight >}} |
| **BulletedList** <br /> `- Item 1` <br /> `- Item 2` <br /> `   - Item 2a` <br /> `   - Item 2b` | 無序清單是以段落計數的方式來表示：<br /> `ListFormat.ApplyBulletDefault()`<br /> 無序清單有 3 種类型。 他們只是在第一層的數字格式上有所不同。 這些是：`‘-’`、`‘+’` 或 `‘*’`。 |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}} |  |
| **OrderedList** <br /> `1. Item 1` <br /> `2. Item 2` <br /> `1) Item 2a` <br /> `2) Item 2b` | 有序清單是使用段落計數來表示：<br />`ListFormat.ApplyNumberDefault()`<br />可有 2 個數字格式記號：`.` 和 `)'。 預設的標記是. |
| {{< highlight csharp >}}Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.ListFormat.ApplyBulletDefault();
builder.ListFormat.List.ListLevels[0].NumberFormat = $"{(char) 0}.";
builder.ListFormat.List.ListLevels[1].NumberFormat = $"{(char) 1}.";

builder.Writeln("Item 1");
builder.Writeln("Item 2");

builder.ListFormat.ListIndent();

builder.Writeln("Item 2a");
builder.Writeln("Item 2b");{{< /highlight >}} |  |

### 表

Aspose.Words 也讓您將表格翻譯成 DOM，如下所示：

| Markdown 功能 | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d' | [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)、[Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) 和 [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) 課程。 |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
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
builder.Writeln("d");{{< /highlight >}} |  |

## 另見：

* [Working with Markdown Features](/words/net/working-with-markdown-features/)

