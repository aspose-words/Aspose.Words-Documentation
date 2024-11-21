---
title: MarkdownからDOMへの変換
second_title: .NET用Aspose.Words
articleTitle: Markdown から Document Object Model (DOM) への変換
linktitle: Markdown から Document Object Model (DOM) への変換
type: docs
description: "C# を使用して、Markdown ドキュメントを Document Object Model に変換し、逆に変換します。したがって、複雑な既存の Markdown を操作し、プログラムによって Markdown ドキュメントを最初から作成できます。"
weight: 20
url: /ja/net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

ドキュメントのコンテンツと書式設定をプログラムで読み取り、操作、変更するには、ドキュメントを Aspose.Words Document Object Model (DOM) に変換する必要があります。

Word 文書とは対照的に、Markdown は [Aspose.Words Document Object Model (DOM)](/words/ja/net/aspose-words-document-object-model/) 記事で説明されている DOM に準拠していません。ただし、Aspose.Words は、Markdown ドキュメントを DOM に変換したり逆に変換したりするための独自のメカニズムを提供しているため、テキストの書式設定、テーブル、ヘッダーなどの要素を正常に操作できます。

この記事では、さまざまな markdown 機能を Aspose.Words DOM に変換し、Markdown 形式に戻す方法について説明します。

## 翻訳の複雑さ Markdown – DOM – Markdown

このメカニズムの主な困難は、Markdown を DOM に変換することだけでなく、逆変換を行うこと、つまり損失を最小限に抑えてドキュメントを Markdown 形式に保存し直すことです。複数レベルの引用符など、逆変換が簡単ではない要素があります。

当社の翻訳エンジンを使用すると、ユーザーは既存の Markdown ドキュメント内の複雑な要素を操作できるだけでなく、元の構造を使用して Markdown 形式で独自のドキュメントを最初から作成することもできます。さまざまな要素を作成するには、この記事で後述する特定のルールに従って、特定の名前を持つスタイルを使用する必要があります。このようなスタイルはプログラムで作成できます。

## 共通の翻訳原則

インラインブロックには[Font](https://reference.aspose.com/words/net/aspose.words/font/)フォーマットを使用します。 Aspose.Words DOM の Markdown 機能に直接の対応がない場合は、特殊な単語で始まる名前の文字スタイルが使用されます。

コンテナ ブロックの場合、スタイルの継承を使用して、ネストされた Markdown 機能を示します。この場合、ネストされた機能がない場合でも、いくつかの特殊な単語で始まる名前の段落スタイルも使用します。

箇条書きリストと順序付きリストも Markdown のコンテナ ブロックです。それらのネストは、スタイルの継承を使用する他のすべてのコンテナ ブロックと同じ方法で DOM で表されます。ただし、さらに、DOM のリストには、リスト スタイルまたは段落書式のいずれかで対応する数値書式設定があります。

## インラインブロック

**Bold**、*Italic*、または ~~取り消し線~~ インライン markdown 機能を翻訳するときは、[Font](https://reference.aspose.com/words/net/aspose.words/font/) 形式を使用します。

|  Markdown機能 |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}}  |  |
|  **Italic**<br /> `*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}}  |  |
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} |  |

`InlineCode` 機能には、単語 `InlineCode` で始まり、その後にオプションのドット `(.)` と多数のバッククォート ```(`)``` が続く名前の文字スタイルを使用します。多数のバッククォートが欠落している場合は、デフォルトで 1 つのバッククォートが使用されます。

|  Markdown機能 |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  |  |
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/)クラス。 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  |  |
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/)クラス。 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  |  |
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/)クラス。 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  |  |

## コンテナブロック

ドキュメントは、見出し、段落、リスト、引用符などの一連のコンテナー ブロックです。コンテナ ブロックは、リーフ ブロックと複合コンテナの 2 つのクラスに分類できます。リーフ ブロックにはインライン コンテンツのみを含めることができます。複雑なコンテナには、リーフ ブロックを含む他のコンテナ ブロックを含めることができます。

### リーフブロック

以下の表は、Aspose.Words での Markdown Leaf ブロックの使用例を示しています。

|  Markdown機能 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  これは、対応する horizontalRule 形状を備えた単純な段落です。<br /> `DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`、ここで (1&lt;= N &lt;= 9)。<br />これは組み込みスタイルに変換され、指定されたパターンと正確に一致する必要があります (接尾辞や接頭辞は許可されません)。<br />それ以外の場合は、対応するスタイルを持つ単なる通常の段落になります。 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (見出しレベル 1 の場合)、<br /> `---` (見出しレベル 2 の場合) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`、`“Heading N”` スタイルに基づく。<br /> (N &gt;= 2) の場合は `“Heading 2”` が使用され、それ以外の場合は `“Heading 1”` が使用されます。<br />任意のサフィックスを使用できますが、Aspose.Words インポーターはそれぞれ番号「1」と「2」を使用します。 |
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
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br /> `[.]` と `[info string]` はオプションです。 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### 複雑なコンテナ

次の表は、Aspose.Words での Markdown Complex Containers の使用例を示しています。

|  Markdown機能 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br />スタイル名の接尾辞はオプションですが、Aspose.Words インポーターは順序付きの番号 1、2、3、… を使用します。ネストされた引用符の場合。<br />ネストは継承されたスタイルによって定義されます。 |
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
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  箇条書きリストは段落番号を使用して表されます。<br /> `ListFormat.ApplyBulletDefault()`<br />箇条書きリストには 3 種類あります。これらは、最初のレベルの番号付け形式の差分であるだけです。これらはそれぞれ、`‘-’`、`‘+’`、または `‘*’` です。 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  順序付きリストは段落番号を使用して表されます。<br /> `ListFormat.ApplyNumberDefault()`<br /> 2 つの数値形式マーカー「.」を使用できます。そして '）'。デフォルトのマーカーは「.」です。 |
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

### テーブル

Aspose.Words では、以下に示すようにテーブルを DOM に変換することもできます。

|  Markdown機能 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> 「あ」 | b`<br />`-|-`<br />`c|d` |  [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)、[Row](https://reference.aspose.com/words/net/aspose.words.tables/row/)、および [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) クラス。 |
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

## 関連項目

* [Markdown 機能の使用](/words/ja/net/working-with-markdown-features/)

