---
title: ログイン Markdown お問い合わせ DOM
second_title: Aspose.Words お問い合わせ Java
articleTitle: ログイン Markdown お問い合わせ Document Object Model ( )DOM)
linktitle: ログイン Markdown お問い合わせ Document Object Model ( )DOM)
type: docs
description: "タルスレート Markdown ドキュメントへ Document Object Model バック。 そのため、複雑な既存で作業することができます。 Markdown そしてプログラム的に作成して下さい Markdown ゼロからドキュメント Javaお問い合わせ"
weight: 20
url: /ja/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

文書の内容をプログラム的に読み、操作、変更するには、それを翻訳する必要があります Aspose.Words Document Object Model ( )DOM)。

ワード文書とは対照的に、 Markdown 適合しない DOM で記述される [Aspose.Words Document Object Model (DOM)](/words/ja/java/aspose-words-document-object-model/) 記事。 しかし、 Aspose.Words 翻訳のための独自のメカニズムを提供 Markdown ドキュメント DOM そして、テキストの書式、テーブル、ヘッダなど、その要素でうまく機能できるように戻ります。

この記事では、様々な方法について説明します markdown 特徴はに翻訳することができます Aspose.Words DOM 戻る Markdown フォーマット。

## 翻訳の複雑さ Markdown – – DOM – – Markdown

このメカニズムの主な難しさは、翻訳するだけでなく、 Markdown お問い合わせ DOM, しかし、逆変換を行うには – ドキュメントをバックに保存するために Markdown 最小限の損失でフォーマット。 リバーストランスフォーメーションがトバイアルされていないマルチレベルクォートなどの要素があります。

当社の翻訳エンジンにより、ユーザーは既存の複雑な要素で動作するだけでなく、 Markdown 文書だけでなく、独自の文書を作成する Markdown オリジナルの構造をゼロからフォーマットします。 様々な要素を作成するには、この記事の後に説明した特定の規則に従って特定の名前のスタイルを使用する必要があります。 このようなスタイルはプログラム的に作成できます。

## 共通翻訳 経営理念

お問い合わせ [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) インラインブロックのフォーマット 直接的な対応がない場合 Markdown 機能の Aspose.Words DOM, 特別な単語から始まる名前でキャラクタースタイルを使用します。

コンテナブロックでは、スタイル継承を使用してネストを記述します。 Markdown 機能。 この場合、ネストされた機能がない場合でも、特別な単語から始まる名前で段落スタイルも使用されます。

箇条書きと注文リストはコンテナブロックです Markdown お問い合わせ 彼らのネスティングは、 DOM スタイル継承を使用して、他のすべてのコンテナブロックと同じように。 ただし、追加でリスト DOM リストのスタイルまたは段落のフォーマットで対応する番号整形。

## インラインブロック

お問い合わせ [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) 翻訳するときのフォーマット **Bold**, *Italic* または ~~ 打突~~ インライン markdown 機能。

|  Markdown 特徴: |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  |  |

単語から始まる名前でキャラクタースタイルを使う `InlineCode`????? 続いてオプションのドット `(.)` バックティクスの数 ```(`)``` お問い合わせ `InlineCode` 機能。 バックティックの数が欠落した場合は、デフォルトでバックティックが使用されます。

|  Markdown 特徴: |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  ザ・オブ・ザ・ [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) クラス。 |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  ザ・オブ・ザ・ [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) クラス。 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  ザ・オブ・ザ・ [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) クラス。 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  |  |

## コンテナブロック

文書は見出し、段落、リスト、引用符などのコンテナブロックのシーケンスです。 コンテナブロックは2つのクラスに分けられます。 リーフブロックと複合コンテナ。 リーフブロックはインラインコンテンツのみを含むことができます。 複雑なコンテナはリーフブロックを含む他のコンテナブロックを含むことができます。

### リーフブロック

以下の表は、使用例を示します Markdown リーフブロック Aspose.Words:::

|  Markdown 特徴: |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  これは、対応する横列形状のシンプルな段落です。<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = "Heading N"`, ここで (1<= N <= 9)。<br/>これは組み込みのスタイルに翻訳され、指定されたパターン(接尾辞や接頭辞は許可されていません)の正確にする必要があります。<br/>それ以外の場合は、対応するスタイルで通常の段落になります。 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (ヘッディングレベル1の場合)<br/>`---` (ヘディングレベル2の場合) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, ベース 'Heading N' スタイル。<br/>(N >= 2) の場合、 'Heading 2' それ以外の場合は、 'Heading 1'お問い合わせ<br/>任意の接尾辞は許可されますが、 Aspose.Words それぞれ「1」と「2」の数字を使用します。 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>ザ・オブ・ザ・ `[.]` そして、 `[info string]` 任意です。 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### 複雑な容器

以下の表は、使用例を示します Markdown 複雑な容器に Aspose.Words:::

|  Markdown 特徴: |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>スタイル名のサフィックスはオプションですが、 Aspose.Words importer は、ネストされた引用符の場合には、注文番号 1、2、3 を使用します。<br/>継承されたスタイルでネスティングを定義します。 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  箇条書きリストは、段落番号を使用して表されます。<br/>`ListFormat.ApplyBulletDefault()`<br/>3種類の箇条書きリストがあります。 それらは非常に最初のレベルの数式のフォーマットでだけdiffです。 これらは: `‘-’`, `‘+’` または `‘*’` それぞれ。 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  注文リストは、段落番号を使用して表されます。<br/>`ListFormat.ApplyNumberDefault()`<br/>2つのナンバーフォーマットマーカー: ‘.’ と ‘)’ があります。 デフォルトマーカーは ‘.’ です。 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### テーブル

Aspose.Words また、テーブルを変換することができます DOM, 以下に示すように:

|  Markdown 特徴: |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>ログイン | ツイート`<br />`- - - | - - -`<br />`ツイート | ログイン ツイート |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) そして、 [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) クラス。 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## お問い合わせ

* [協力して Markdown 特徴:](/words/ja/java/working-with-markdown-features/)

