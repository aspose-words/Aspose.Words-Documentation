---
title: JavaのMarkdown機能の操作
second_title: Aspose.WordsのためのJava
articleTitle: Markdown機能の操作
linktitle: Markdown機能の操作
description: "Javaを使用してMarkdown機能を実装する方法。 すべての機能は、対応するスタイルまたは直接書式設定として表されます。"
type: docs
weight: 420
url: /ja/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

このトピックでは、Aspose.Wordsを使用してMarkdown機能を実装する方法について説明します。 Markdownは、HTMLに簡単に変換できるプレーンテキストを書式設定する簡単な方法です。 Aspose.Wordsは次のMarkdown機能をサポートします:

- 見出し
- Blockquotes
- 水平ルール
- 大胆な強調
- 斜体強調

Markdown機能の実装は主にAspose.WordsAPIの`CommonMark`仕様に従い、すべての機能は対応するスタイルまたは直接書式設定として表されます。 つまり

- 太字と斜体は`Font.Bold`と`Font.Italic`として表されます。
- 見出しはHeading 1-Heading 6スタイルの段落です。
- 引用符は、スタイル名に「引用符」が付いた段落です。
- HorizontalRuleは`HorizontalRule`の形をした段落です。

{{% alert color="primary" %}}

この記事で説明しているMarkdownをAspose.Wordsドキュメントオブジェクトモデル(DOM)に翻訳する際のニュアンスがあります [Markdownをドキュメントオブジェクトモデルに変換(DOM)](/words/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown強調のある文書

このセクションでは、以下に示すように強調してmarkdown文書を生成する方法を示します:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

次のコードスニペットは、上記のmarkdownドキュメントを生成するために使用できます。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown見出し付き文書

このセクションでは、以下に示すように見出しを持つmarkdown文書を作成する方法を示します:

{{< highlight csharp >}}
The following produces headings:
# Heading1
## Heading2
### Heading3
#### Heading4
##### Heading5
###### Heading6
# **Bold Heading1**
{{< /highlight >}}

次のコードスニペットは、上記のmarkdownドキュメントを生成するために使用できます。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdownブロック引用符付き文書

このセクションでは、以下に示すように、ブロック引用符でmarkdown文書を生成する方法を示します:

{{< highlight csharp >}}
We support blockquotes in Markdown:
>*Lorem*
>*ipsum*
>The quotes can be of any level and can be nested:
>>>Quote level 3
>>>
>>>>Nested quote level 4
>
>*Back to first level*
>### Headings are allowed inside Quotes
>{{< /highlight >}}

次のコードスニペットは、上記のmarkdownドキュメントを生成するために使用できます。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown水平ルールを持つ文書

このセクションでは、以下に示すように水平ルールを持つmarkdown文書を生成する方法を示します:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

次のコードスニペットは、上記のmarkdownドキュメントを生成するために使用できます。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Markdown文書の読み取り

次のコードスニペットは、markdownドキュメントの読み取り方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Markdown保存オプションの指定

Aspose.WordsAPIは、文書をMarkdown形式で保存する際に追加のオプションを指定する[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)クラスを提供します。Aspose.WordsAPIは[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)クラスを提供します。

次のコード例では、さまざまなMarkdown保存オプションを指定する方法を示しました。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Markdownにエクスポート中にテーブル内のコンテンツを整列させる方法

Aspose.WordsAPIは[TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/)列挙体を提供し、Markdown文書へのエクスポート中にテーブル内の内容を整列させる整列方向を定義します。 次のコード例は、テーブル内のコンテンツを整列する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
