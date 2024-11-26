---
title: MarkdownをDOMに変換する
second_title: Aspose.WordsのためのJava
articleTitle: Markdownをドキュメントオブジェクトモデルに変換(DOM)
linktitle: Markdownをドキュメントオブジェクトモデルに変換(DOM)
type: docs
description: "オブジェクトモデルを文書化して戻すMarkdown文書をTarnslateします。 したがって、複雑な既存のMarkdownを操作し、Javaを使用してプログラムでMarkdownドキュメントを最初から作成できます。"
weight: 20
url: /ja/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

文書の内容と書式をプログラムで読み取り、操作し、変更するには、文書オブジェクトモデルAspose.Words(DOM)に変換する必要があります。

Word文書とは対照的に、Markdownは、Word文書で説明されているDOMに準拠していません。 [Aspose.Wordsドキュメントオブジェクトモデル(DOM)](/words/java/aspose-words-document-object-model/) 記事。 しかし、Aspose.WordsはMarkdown文書をDOMに変換して元に戻すための独自のメカニズムを提供し、テキストの書式設定、表、ヘッダーなどの要素をうまく扱うことができます。

この記事では、さまざまなmarkdown機能をAspose.WordsDOMに変換してMarkdown形式に戻す方法について説明します。

## 翻訳の複雑さMarkdown – DOM – Markdown

このメカニズムの主な難しさは、MarkdownをDOMに変換するだけでなく、逆変換を行うことです–文書を最小限の損失でMarkdown形式に保存し直すことです。 マルチレベル引用符などの要素がありますが、逆変換は簡単ではありません。

私たちの翻訳エンジンは、ユーザーが既存のMarkdown文書内の複雑な要素を操作するだけでなく、元の構造を持つMarkdown形式で独自の文書を最初から作成すること さまざまな要素を作成するには、この記事の後半で説明する特定の規則に従って、特定の名前のスタイルを使用する必要があります。 このようなスタイルはプログラムで作成できます。

## 一般的な翻訳の原則

インラインブロックには[Font](https://reference.aspose.com/words/java/com.aspose.words/font/)書式を使用します。 Aspose.WordsDOMにMarkdown機能に対する直接の対応がない場合、いくつかの特別な単語から始まる名前を持つ文字スタイルを使用します。Aspose.WordsDOMにMarkdown機能に対する直接の対応がない場合、いくつかの特別な単語から始まる名前を使用します。

コンテナブロックでは、ネストされたMarkdownフィーチャを示すためにスタイル継承を使用します。 この場合、ネストされたフィーチャがない場合でも、いくつかの特別な単語から始まる名前を持つ段落スタイルも使用します。

箇条書きリストと順序付けられたリストはMarkdownのコンテナブロックでもあります。 それらのネストは、スタイルの継承を使用する他のすべてのコンテナブロックと同じ方法でDOMで表されます。 ただし、さらに、DOM内のリストは、リストスタイルまたは段落の書式設定のいずれかで数値書式設定に対応しています。

## インラインブロック

**Bold**、*Italic*、または~~Strikethrough~~インラインmarkdown機能を翻訳するときは、[Font](https://reference.aspose.com/words/java/com.aspose.words/font/)書式を使用します。

| Markdownの特徴 | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}} |  |
| **Italic**<br />`*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}} |  |

`InlineCode`という単語から始まる名前の文字スタイルを使用し、その後にオプションのドット`(.)`と`InlineCode`機能のバッククォート```(`)```が続きます。 いくつかのバックティックが欠落している場合、デフォルトで1つのバックティックが使用されます。

| Markdownの特徴 | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.StyleName = "InlineCode[.][N]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/)クラス。 |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}} |  |
| **Link**<br />`[リンクテキスト](url)`<br />`[リンクテキスト](<url>"title")`<br />`[リンクテキスト](url 'title')`<br />`[リンクテキスト](url (title))` | [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/)クラス。 |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}} |  |
| **Image**<br />`![](/words/java/translate-markdown-to-document-object-model/url)`<br />`![代替テキスト](/words/java/translate-markdown-to-document-object-model/<url>"title")`<br />`![代替テキスト](/words/java/translate-markdown-to-document-object-model/url ‘title’)`<br />`![代替テキスト](/words/java/translate-markdown-to-document-object-model/url (title))` | [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)クラス。 |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}} |  |

## コンテナブロック

ドキュメントは、見出し、段落、リスト、引用符などの一連のコンテナブロックです。 コンテナブロックは、リーフブロックと複雑なコンテナの2つのクラスに分けることができます。 リーフブロックにはインラインコンテンツのみを含めることができます。 複雑なコンテナには、リーフブロックを含む他のコンテナブロックを含めることができます。

### 葉のブロック

次の表は、Aspose.WordsでMarkdownリーフブロックを使用した例を示しています:

| Markdownの特徴 | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | これは、対応するHorizontalRule図形を持つ単純な段落です:<br />`DocumentBuilder.InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = "Heading N"`,ここで(1<=N <= 9).<br />これは組み込みのスタイルに変換され、指定されたパターンとまったく同じである必要があります（接尾辞や接頭辞は許可されません）。<br />それ以外の場合は、対応するスタイルを持つ通常の段落になります。 |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.StyleName = "SetextHeading[some suffix]"`、'見出しN'スタイルに基づいています。<br />(N>=2)の場合は'Heading 2'が使用され、そうでない場合は'Heading 1'が使用されます。<br />任意の接尾辞を使用できますが、Aspose.Wordsはそれぞれ"1"と"2"の数字を使用します。 |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}} |  |
| **Indented Code**<br>{{< highlight java >}}<br/>if ()<br/>then<br/>else<br/>```{{< /highlight >}} | `ParagraphFormat.StyleName = "IndentedCode[some suffix]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}} |  |
### 複雑な容器

次の表は、Aspose.WordsでMarkdown複合コンテナを使用した例を示しています:

| Markdownの特徴 | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.StyleName = "Quote[some suffix]"`<br />スタイル名の接尾辞はオプションですが、Aspose.Wordsインポーターは順序付けられた番号を使用します1, 2, 3, .... ネストされた引用符の場合。<br />ネストは、継承されたスタイルを介して定義されます。 |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | 箇条書きリストは、段落番号を使用して表されます:<br />`ListFormat.ApplyBulletDefault()`<br />箇条書きリストには3種類あります。 それらは、最初のレベルの番号付け形式でのみdiffです。 これらは、それぞれ`‘-’`、`‘+’`、または`‘*’`です。 |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | 順序付けられたリストは、段落番号を使用して表されます:<br />`ListFormat.ApplyNumberDefault()`<br />‘.’と‘)’の2つの数値書式マーカーがあります。 デフォルトのマーカーは‘.’です。 |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}} |  |

### テーブル

Aspose.Wordsでは、以下に示すように、テーブルをDOMに変換することもできます:

| Markdownの特徴 | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/java/com.aspose.words/table/)、[Row](https://reference.aspose.com/words/java/com.aspose.words/row/)、[Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/)クラス。 |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}} |  |

## また見て下さい

* [Markdown機能の操作](/words/java/working-with-markdown-features/)

