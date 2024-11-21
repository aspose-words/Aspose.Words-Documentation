---
title: C# での Markdown 機能の操作
second_title: .NET用Aspose.Words
articleTitle: Markdown 機能の使用
linktitle: Markdown 機能の使用
description: "C# を使用して Markdown 機能を実装する方法。すべての機能は、対応するスタイルまたは直接書式設定として表されます。"
type: docs
weight: 420
url: /ja/net/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

このトピックでは、Aspose.Words を使用して Markdown 機能を実装する方法について説明します。 Markdown は、HTML に簡単に変換できるプレーン テキストをフォーマットする簡単な方法です。 Aspose.Words は次の Markdown 機能をサポートしています。

- 見出し
- ブロック引用符
- 横罫線
- 太字で強調
- イタリック体の強調

Markdown 機能の実装は、Aspose.Words API の `CommonMark` 仕様にほとんど準拠しており、すべての機能は対応するスタイルまたは直接書式設定として表されます。つまり、

- 太字と斜体は `Font.Bold` と `Font.Italic` として表されます。
- 見出しは、見出し 1 ～ 見出し 6 のスタイルを持つ段落です。
- 引用は、スタイル名に「引用」が含まれる段落です。
- 水平ルールは、水平ルール形状の段落です。

{{% alert color="primary" %}}

[Markdown から Document Object Model (DOM) への変換](/words/ja/net/translate-markdown-to-document-object-model/) の記事で説明されているように、Markdown から Aspose.Words Document Object Model (DOM) への変換には微妙な違いがあります。

{{% /alert %}}

## 強調を含む Markdown ドキュメント

このセクションでは、以下のような強調を使用して markdown ドキュメントを作成する方法を説明します。

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

次のコード スニペットを使用して、上記の markdown ドキュメントを作成できます。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

## 見出し付きの Markdown ドキュメント

このセクションでは、以下のような見出しを持つ markdown ドキュメントを作成する方法を説明します。

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

次のコード スニペットを使用して、上記の markdown ドキュメントを作成できます。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

## ブロック引用符を含む Markdown ドキュメント

このセクションでは、以下に示すブロック引用符を含む markdown ドキュメントを作成する方法を説明します。

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

次のコード スニペットを使用して、上記の markdown ドキュメントを作成できます。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## 横罫のMarkdownドキュメント

このセクションでは、以下に示す水平罫線を使用して markdown ドキュメントを作成する方法を説明します。

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

次のコード スニペットを使用して、上記の markdown ドキュメントを作成できます。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## Markdown ドキュメントを読む

次のコード スニペットは、markdown ドキュメントを読み取る方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## Markdown 保存オプションの指定

Aspose.Words API は、ドキュメントを Markdown 形式で保存する際に追加のオプションを指定するための [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) クラスを提供します。

次のコード例は、さまざまな Markdown 保存オプションを指定する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## Markdown へのエクスポート中にテーブル内のコンテンツを整列する方法

Aspose.Words API は、Markdown ドキュメントにエクスポートする際にテーブル内のコンテンツを整列させるための整列方向を定義する [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) 列挙を提供します。次のコード例は、テーブル内のコンテンツを整列する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
