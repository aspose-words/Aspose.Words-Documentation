---
title: C++でのMarkdown機能の使用
second_title: C++の場合Aspose.Words
articleTitle: Markdown機能の操作
linktitle: Markdown機能の操作
description: "C++を使用してMarkdown機能を実装する方法。 すべての機能は、対応するスタイルまたは直接書式設定として表されます。"
type: docs
weight: 420
url: /ja/cpp/working-with-markdown-features/
---

このトピックでは、Aspose.Wordsを使用してMarkdown機能を実装する方法について説明します。 Markdownは、HTMLに簡単に変換できるプレーンテキストを書式設定する簡単な方法です。 Aspose.Wordsは次のMarkdown機能をサポートします:

- 見出し
- Blockquotes
- 水平ルール
- 大胆な強調
- 斜体強調

Markdown機能の実装は主にAspose.WordsAPIの`CommonMark`仕様に従い、すべての機能は対応するスタイルまたは直接書式設定として表されます。 つまり

- 太字と斜体は`Font.Bold`と`Font.Italic`として表されます。
- 見出しは、見出し1-見出し6スタイルの段落です。
- 引用符は、スタイル名に「引用符」が付いた段落です。
- HorizontalRuleはHorizontalRuleの形をした段落です。

{{% alert color="primary" %}}

この記事で説明されているMarkdownをAspose.Wordsドキュメントオブジェクトモデル(DOM)に翻訳するニュアンスがあります [Markdownをドキュメントオブジェクトモデル(DOM)に変換する](/words/cpp/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown強調のある文書

このセクションでは、以下に示すように強調してmarkdown文書を生成する方法を示します:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

次のコードスニペットは、上記のmarkdownドキュメントを生成するために使用できます。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cpp" >}}


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

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cpp" >}}

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

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cpp" >}}

## Markdown水平ルールを持つ文書

このセクションでは、以下に示すように水平ルールを持つmarkdown文書を生成する方法を示します:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

次のコードスニペットは、上記のmarkdownドキュメントを生成するために使用できます。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.cpp" >}}

## Markdown文書の読み取り

次のコードスニペットは、markdownドキュメントの読み取り方法を示しています。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cpp" >}}

## Markdown保存オプションの指定

Aspose.WordsAPIは、ドキュメントをMarkdown形式で保存する際に追加のオプションを指定する[MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/)クラスを提供します。

次のコード例では、さまざまなMarkdown保存オプションを指定する方法を示しました。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cpp" >}}

## Markdownにエクスポート中にテーブル内のコンテンツを整列させる方法

Aspose.WordsAPIはTableContentAlignment列挙体を提供し、Markdownドキュメントへのエクスポート中にテーブル内のコンテンツを整列させる整列方向を定義します。 次のコード例は、テーブル内のコンテンツを整列する方法を示しています。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cpp" >}}
