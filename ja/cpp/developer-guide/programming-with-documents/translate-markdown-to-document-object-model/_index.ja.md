---
title: Markdownをドキュメントオブジェクトモデル(DOM)に変換する
second_title: C++の場合Aspose.Words
articleTitle: Markdownをドキュメントオブジェクトモデル(DOM)に変換する
linktitle: Markdownをドキュメントオブジェクトモデル(DOM)に変換する
type: docs
description: "C++を使用してオブジェクトモデルを文書化し、戻すためにMarkdown文書をTarnslateします。 したがって、複雑な既存のMarkdownを操作し、プログラムでMarkdown文書を最初から作成することができます。"
weight: 20
url: /ja/cpp/translate-markdown-to-document-object-model/
---

文書の内容と書式をプログラムで読み取り、操作し、変更するには、それをAspose.Wordsドキュメントオブジェクトモデル(DOM)に変換する必要があります。

Word文書とは対照的に、Markdownは、Word文書で説明されているDOMに準拠していません。 [Aspose.Wordsドキュメントオブジェクトモデル(DOM)](/words/cpp/aspose-words-document-object-model/) 記事。 しかし、Aspose.Wordsは、MarkdownドキュメントをDOMに変換して戻すための独自のメカニズムを提供しているため、テキストの書式設定、テーブル、ヘッダーなどの要素を正常に処理できます。

この記事では、さまざまなmarkdown機能をAspose.WordsDOMに変換してMarkdown形式に戻す方法について説明します。

## 翻訳の複雑さMarkdown-DOM-Markdown

このメカニズムの主な難しさは、MarkdownをDOMに変換するだけでなく、逆変換を行うことです–文書を最小限の損失でMarkdown形式に保存し直すことです。 マルチレベル引用符などの要素がありますが、逆変換は簡単ではありません。

私たちの翻訳エンジンは、ユーザーが既存のMarkdown文書内の複雑な要素を操作するだけでなく、元の構造を持つMarkdown形式で独自の文書を最初から作成すること さまざまな要素を作成するには、この記事の後半で説明する特定の規則に従って、特定の名前のスタイルを使用する必要があります。 このようなスタイルはプログラムで作成できます。

## 一般的な翻訳の原則

インラインブロックには[Font](https://reference.aspose.com/words/cpp/aspose.words/font/)書式を使用します。 Aspose.WordsDOMにMarkdown機能に対する直接の対応がない場合、いくつかの特別な単語から始まる名前を持つ文字スタイルを使用します。

コンテナブロックでは、ネストされたMarkdownフィーチャを示すためにスタイル継承を使用します。 この場合、ネストされたフィーチャがない場合でも、いくつかの特別な単語から始まる名前を持つ段落スタイルも使用します。

箇条書きリストと順序付けられたリストはMarkdownのコンテナブロックでもあります。 それらのネストは、スタイル継承を使用する他のすべてのコンテナブロックと同じ方法でDOMで表されます。 ただし、さらに、DOM内のリストは、リストスタイルまたは段落書式のいずれかで数値書式設定に対応しています。

## インラインブロック

**Bold**、*Italic*、または~~Strikethrough~~インラインmarkdown機能を翻訳するときは、[Font](https://reference.aspose.com/words/cpp/aspose.words/font/)書式を使用します。

| Markdownの特徴 | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

`InlineCode`という単語から始まる名前の文字スタイルを使用し、その後にオプションのドット`(.)`と`InlineCode`機能のバッククォート```(`)```の数が続きます。 いくつかのバックティックが欠落している場合、デフォルトで1つのバックティックが使用されます。

| Markdownの特徴 | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/)クラス。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/)クラス。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)クラス。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## コンテナブロック

ドキュメントは、見出し、段落、リスト、引用符などの一連のコンテナブロックです。 コンテナブロックは2クラスに分けることができます:リーフブロックと複雑なコンテナです。 リーフブロックにはインラインコンテンツのみを含めることができます。 複雑なコンテナには、リーフブロックを含む他のコンテナブロックを含めることができます。

### 葉のブロック

次の表は、Aspose.WordsでMarkdownリーフブロックを使用した例を示しています:

| Markdownの特徴 | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | これは、対応するHorizontalRule図形を持つ単純な段落です:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`,ここで(1<=N <= 9).<br />これは組み込みのスタイルに変換され、指定されたパターンとまったく同じである必要があります（接尾辞や接頭辞は許可されません）。<br />それ以外の場合は、対応するスタイルを持つ通常の段落になります。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`、`"Heading N"`スタイルに基づいています。<br />(N>=2)の場合は`"Heading 2"`が使用され、そうでない場合は`"Heading 1"`が使用されます。<br />任意の接尾辞を使用できますが、Aspose.Wordsインポーターはそれぞれ数字"1"と"2"を使用します。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br />`[.]`と`[info string]`はオプションです。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### 複雑な容器

次の表は、Aspose.WordsでMarkdown複合コンテナを使用した例を示しています:

| Markdownの特徴 | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />スタイル名の接尾辞はオプションですが、Aspose.Wordsインポーターは順序付けられた番号を使用します1, 2, 3, .... ネストされた引用符の場合。<br />ネストは、継承されたスタイルを介して定義されます。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | 箇条書きリストは、段落番号を使用して表されます:<br />`get_ListFormat()->ApplyBulletDefault()`<br />箇条書きリストには3種類があります。 それらは、最初のレベルの番号付け形式でのみdiffです。 これらは、それぞれ`‘-’`、`‘+’`、または`‘*’`です。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | 順序付けられたリストは、段落番号を使用して表されます:<br />`get_ListFormat()->ApplyNumberDefault()`<br />2の数値書式マーカー‘.’と‘)’が存在することができます。 デフォルトのマーカーは‘.’です。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### テーブル

Aspose.Wordsでは、以下に示すように、テーブルをDOMに変換することもできます:

| Markdownの特徴 | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/)、[Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/)、[Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/)クラス。 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## また見て下さい

* [Markdown機能の操作](/words/cpp/working-with-markdown-features/)

