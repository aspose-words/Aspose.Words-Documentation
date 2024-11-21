---
title: MarkdownからDOMへの変換
second_title: Python via .NET用Aspose.Words
articleTitle: Markdown から Document Object Model (DOM) への変換
linktitle: Markdown から Document Object Model (DOM) への変換
type: docs
description: "Markdown ドキュメントを Document Object Model に変換し、Python を使用して戻します。そのため、複雑な既存の Markdown を操作し、プログラムによって Markdown ドキュメントを最初から作成できます。"
weight: 20
url: /ja/python-net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

ドキュメントのコンテンツと書式設定をプログラムで読み取り、操作、変更するには、ドキュメントを Aspose.Words Document Object Model (DOM) に変換する必要があります。

Word 文書とは対照的に、Markdown は [Aspose.Words Document Object Model (DOM)](/words/ja/python-net/aspose-words-document-object-model/) 記事で説明されている DOM に準拠していません。ただし、Aspose.Words は、Markdown ドキュメントを DOM に変換したり逆に変換したりするための独自のメカニズムを提供しているため、テキストの書式設定、テーブル、ヘッダーなどの要素を正常に操作できます。

この記事では、さまざまな markdown 機能を Aspose.Words DOM に変換し、Markdown 形式に戻す方法について説明します。

## 翻訳の複雑さ Markdown – DOM – Markdown

このメカニズムの主な困難は、Markdown を DOM に変換することだけでなく、逆変換を行うこと、つまり損失を最小限に抑えてドキュメントを Markdown 形式に保存し直すことです。複数レベルの引用符など、逆変換が簡単ではない要素があります。

当社の翻訳エンジンを使用すると、ユーザーは既存の Markdown ドキュメント内の複雑な要素を操作できるだけでなく、元の構造を使用して Markdown 形式で独自のドキュメントを最初から作成することもできます。さまざまな要素を作成するには、この記事で後述する特定のルールに従って、特定の名前を持つスタイルを使用する必要があります。このようなスタイルはプログラムで作成できます。

## 共通の翻訳原則

インラインブロックには[Font](https://reference.aspose.com/words/python-net/aspose.words/font/)フォーマットを使用します。 Aspose.Words DOM の Markdown 機能に直接の対応がない場合は、特殊な単語で始まる名前の文字スタイルが使用されます。

コンテナ ブロックの場合、スタイルの継承を使用して、ネストされた Markdown 機能を示します。この場合、ネストされた機能がない場合でも、いくつかの特殊な単語で始まる名前の段落スタイルも使用します。

箇条書きリストと順序付きリストも Markdown のコンテナ ブロックです。それらのネストは、スタイルの継承を使用する他のすべてのコンテナ ブロックと同じ方法で DOM で表されます。ただし、さらに、DOM のリストには、リスト スタイルまたは段落書式のいずれかで対応する数値書式設定があります。

## インラインブロック

**Bold**、*Italic*、または ~~取り消し線~~ インライン markdown 機能を翻訳するときは、[Font](https://reference.aspose.com/words/python-net/aspose.words/font/) 形式を使用します。

|  Markdown機能 |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.bold = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Bold.
builder.font.bold = True
builder.writeln("This text will be Bold")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bold_text_example.md"){{< /highlight >}} |  |
|  **Italic**<br /> `*italic text*` |  `Font.italic = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Italic.
builder.font.italic = True
builder.writeln("This text will be Italic")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.italic_text_example.md"){{< /highlight >}} |  |
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.strike_through = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Strikethrough.
builder.font.strike_through = True
builder.writeln("This text will be Strikethrough")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.strikethrough_text_example.md"){{< /highlight >}} |  |

`InlineCode` 機能には、単語 `InlineCode` で始まり、その後にオプションのドット `(.)` と多数のバッククォート ```(`)``` が続く名前の文字スタイルを使用します。多数のバッククォートが欠落している場合は、デフォルトで 1 つのバッククォートが使用されます。

|  Markdown機能 |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.style_name = "InlineCode[.][N]"`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Number of backticks is missed, one backtick will be used by default.
inlineCode1BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode")
builder.font.style = inlineCode1BackTicks
builder.writeln("Text with InlineCode style with 1 backtick")

# There will be 3 backticks.
inlineCode3BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode.3")
builder.font.style = inlineCode3BackTicks
builder.writeln("Text with InlineCode style with 3 backtick")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.inline_code_example.md"){{< /highlight >}} |  |
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/)クラス。 |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} |  |
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} |  |
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)クラス。 |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## コンテナブロック

ドキュメントは、見出し、段落、リスト、引用符などの一連のコンテナー ブロックです。コンテナ ブロックは、リーフ ブロックと複合コンテナの 2 つのクラスに分類できます。リーフ ブロックにはインライン コンテンツのみを含めることができます。複雑なコンテナには、リーフ ブロックを含む他のコンテナ ブロックを含めることができます。

### リーフブロック

以下の表は、Aspose.Words での Markdown Leaf ブロックの使用例を示しています。

|  Markdown機能 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  これは、対応する horizontalRule 形状を備えた単純な段落です。<br /> [DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`、(1&lt;= N &lt;= 9)。<br />これは組み込みスタイルに変換され、指定されたパターンと正確に一致する必要があります (接尾辞や接頭辞は許可されません)。<br />それ以外の場合は、対応するスタイルを持つ単なる通常の段落になります。 |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (見出しレベル 1 の場合)、<br /> `---` (見出しレベル 2 の場合) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`、`"Heading N"` スタイルに基づく。<br /> (N &gt;= 2) の場合は `"Heading 2"` が使用され、それ以外の場合は `"Heading 1"` が使用されます。<br />任意のサフィックスを使用できますが、Aspose.Words インポーターはそれぞれ数値「1」と「2」を使用します。 |
|  {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.paragraph_format.style_name = "Heading 1"
builder.writeln("This is an H1 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading1 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading1")
builder.paragraph_format.style = setexHeading1
doc.styles.get_by_name("SetexHeading1").base_style_name = "Heading 1"
builder.writeln("Setex Heading level 1")

builder.paragraph_format.style = doc.styles.get_by_name("Heading 3")
builder.writeln("This is an H3 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading2 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading2")
builder.paragraph_format.style = setexHeading2
doc.styles.get_by_name("SetexHeading2").base_style_name = "Heading 3"

# Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.writeln("Setex Heading level 2")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.setext_heading_example.md"){{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.style_name = "IndentedCode[some suffix]"`     |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

indentedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "IndentedCode")
builder.paragraph_format.style = indentedCode
builder.writeln("This is an indented code")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.indented_code_example.md"){{< /highlight >}} |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br /> `[.]` と `[info string]` はオプションです。 |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### 複雑なコンテナ

次の表は、Aspose.Words での Markdown Complex Container の使用例を示しています。

|  Markdown機能 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br />スタイル名の接尾辞はオプションですが、Aspose.Words インポーターは順序付きの番号 1、2、3、… を使用します。ネストされた引用符の場合。<br />ネストは継承されたスタイルによって定義されます。 |
|  {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# By default a document stores blockquote style for the first level.
builder.paragraph_format.style_name = "Quote"
builder.writeln("Blockquote")

# Create styles for nested levels through style inheritance.
quoteLevel2 = doc.styles.add(aw.StyleType.PARAGRAPH, "Quote1")
builder.paragraph_format.style = quoteLevel2
doc.styles.get_by_name("Quote1").base_style_name = "Quote"
builder.writeln("1. Nested blockquote")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.quote_example.md"){{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  箇条書きリストは段落番号を使用して表されます。<br /> [ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br />箇条書きリストには 3 種類あります。これらは、最初のレベルの番号付け形式の差分であるだけです。これらはそれぞれ、`'-'`、`'+'`、または `'*'` です。 |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

builder.list_format.apply_bullet_default()
builder.list_format.list.list_levels[0].number_format = "-"

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.writeln("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bulleted_list_example.md"){{< /highlight >}} |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  順序付きリストは段落番号を使用して表されます。<br /> [ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br /> `'.'` と `')'` の 2 つの数値形式マーカーを使用できます。デフォルトのマーカーは`'.'`です。 |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### テーブル

Aspose.Words では、以下に示すようにテーブルを DOM に変換することもできます。

|  Markdown機能 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> 「あ」 | b`<br />`-\ | -`<br />`c\ | d` |  [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)、[Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)、および [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) クラス。 |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Add the first row.
builder.insert_cell()
builder.writeln("a")
builder.insert_cell()
builder.writeln("b")
builder.end_row()

# Add the second row.
builder.insert_cell()
builder.writeln("c")
builder.insert_cell()
builder.writeln("d")
builder.end_table()

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_table.md"){{< /highlight >}} |                                                                |

## 関連項目

* [Markdown 機能の使用](/words/ja/python-net/working-with-markdown-features/)

