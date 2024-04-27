---
title: 協力して Markdown 特徴 で Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: "協力して Markdown 特徴:"
linktitle: "協力して Markdown 特徴:"
description: "実装方法 Markdown 機能の使用 Javaお問い合わせ すべての機能は、対応するスタイルまたは直接フォーマットとして表されます。"
type: docs
weight: 420
url: /ja/java/working-with-markdown-features/
---

このトピックでは、実装方法について説明します Markdown 機能の使用 Aspose.Wordsお問い合わせ Markdown HTMLに簡単に変換できるプレーンテキストをフォーマットする簡単な方法です。 Aspose.Words 以下のサポート Markdown 機能:

- 見出し
- ブロッククォート
- 水平ルール
- 金強調
- イタリック強調

ザ・オブ・ザ・ Markdown 主に次の機能実装 `CommonMark` 仕様書 Aspose.Words API そして、すべての機能は、対応するスタイルまたは直接フォーマットとして表されます。 つまり、

- ボルドおよびイタリックはとして表現されます `Font.Bold` そして、 `Font.Italic`お問い合わせ
- 見出しは見出し1で段落です - 6スタイルを見出します。
- 引用はスタイル名の「引用」で段落です。
- VerticalRuleは、 `HorizontalRule` 形状。

{{% alert color="primary" %}}

翻訳のニュアンスがあります Markdown お問い合わせ Aspose.Words Document Object Model ( )DOM)、記事に記載されている [ログイン Markdown お問い合わせ Document Object Model ( )DOM)](/words/ja/java/translate-markdown-to-document-object-model/)お問い合わせ

{{% /alert %}}


## Markdown Emphases のドキュメント

このセクションでは、どのように生成するかを説明します markdown emphases を以下のように記述します。

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

次のコードスニペットは、上記ジベンを生成するために使用することができます markdown ドキュメント。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown 見出し付きの文書

このセクションでは、どのように生成するかを説明します markdown 次のように見出し付きの文書:

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

次のコードスニペットは、与えられた上記の生成に使用することができます markdown ドキュメント。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown ブロック引用でドキュメント

このセクションでは、どのように生成するかを説明します markdown 以下に示すように、ブロックの引用を含む文書:

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

次のコードスニペットは、与えられた上記の生成に使用することができます markdown ドキュメント。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown 横の規則が付いている文書

このセクションでは、どのように生成するかを説明します markdown 横の文書 以下に示すルール:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

次のコードスニペットは、上記ジベンを生成するために使用することができます markdown ドキュメント。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## 読む Markdown ドキュメント

次のコードスニペットは、読み方を示しています markdown ドキュメント。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## リクエスト Markdown オプションを保存

Aspose.Words API オファー [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) ドキュメントを保存しながら追加のオプションを指定するクラス Markdown フォーマット。

以下のコード例では、様々な指定方法が示されています。 Markdown オプションを保存します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## エクスポート中にテーブル内のコンテンツを配置する方法 Markdown

Aspose.Words API オファー [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) 列の方向を定義する列挙は、テーブル内の内容を整列し、エクスポート中に Markdown ドキュメント。 以下のコード例では、テーブル内のコンテンツの整列方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
