---
title: C++で文書をMarkdownに変換する
second_title: C++の場合Aspose.Words
articleTitle: 文書をMarkdownに変換する
linktitle: 文書をMarkdownに変換する
type: docs
description: "C++を使用して、サポートされている任意のロード形式のドキュメントをMarkdownに変換し、その逆も同様です。"
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /ja/cpp/convert-a-document-to-markdown/
timestamp: 2024-10-21-08-52-03
---

Markdownは、テキストをマークアップし、HTML、PDF、DOCX、または他の形式にさらに変換するために使用される一般的な形式です。 多くの開発者は、ドキュメントの作成、ブログへの公開のための記事の準備、プロジェクトの説明などのためにこの形式を選択します。

Markdownは、この形式で作業するのが簡単であるだけでなく、他の形式に簡単に変換できるため、非常に人気があります。 このため、Aspose.Wordsは[any supported load format](https://reference.aspose.com/words/cpp/aspose.words/)の文書をMarkdownに、またその逆に変換する機能を提供します–Aspose.Wordsは最も人気のある[save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/)もサポートします。

現在、Markdown形式で作業するための機能が積極的に開発されており、文書を便利で快適に作業する機会が増えています。

## 文書を変換する

ドキュメントをMarkdownに変換するには、サポートされている任意の形式でドキュメントを読み込むか、プログラムで新しい形式を作成するだけです。 次に、文書をMarkdown形式で保存する必要があります。

次のコード例は、DOCXをMarkdownに変換する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

また、ドキュメントをMarkdown形式でエクスポートするときに画像を保存する物理フォルダを指定することもできます。 既定では、Aspose.Wordsはドキュメントファイルが保存されているのと同じフォルダーに画像を保存しますが、[ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/)プロパティを使用してこの動作を上書きできま

**ImagesFolder**でフォルダを指定することは、ドキュメントをストリームに保存し、Aspose.Wordsに画像を保存するためのフォルダがない場合にも便利です。

指定された**ImagesFolder**が存在しない場合は、自動的に作成されます。

次のコード例は、ドキュメントをストリームに保存するときに画像のフォルダーを指定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## Markdownに変換するときに保存オプションを指定します

Aspose.Wordsは、文書をMarkdown形式で保存するときに、高度なオプションを操作するために[MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/)クラスを使用する機能を提供します。Aspose.Wordsは、Markdown形式で保存するときに、[MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/)ク ほとんどのプロパティは、他の[Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/)名前空間クラス内に既に存在するプロパティを継承またはオーバーロードしています。 これらに加えて、Markdown形式に固有のいくつかのプロパティも追加されました。 たとえば、テーブル内のコンテンツの配置を制御するには[TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/)プロパティ、文書をMarkdown形式に変換する際の画像の保存方法を制御するには[ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/)と[ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/)プロパティ

## サポートされているMarkdown機能

Aspose.Words は現在、次の Markdown 機能をサポートしています。これらの機能は主に Aspose.Words API の `CommonMark` 仕様に準拠しており、適切なスタイルまたは直接の書式として表されます。

* 見出しは、見出し1-見出し6スタイルの段落です
* Blockquotesは、スタイル名に"Quote"が付いた段落です
* IndentedCodeはスタイル名に"IndentedCode"を含む段落です
* FencedCodeはスタイル名に"FencedCode"を含む段落です
* InlineCodeは、`Font`スタイル名に"InlineCode"を含む実行です
* 水平ルールは`HorizontalRule`の形をした段落です
* 大胆な強調
* 斜体強調
* StrikeThrough書式設定
* リストには番号または箇条書きの段落が付いています
* テーブルは`Table`クラスで表されます
* リンクは`FieldHyperlink`クラスとして表されます

次の例は、いくつかのスタイルを持つドキュメントを作成してMarkdownに保存する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

このコード例の結果を以下に示します。

![markdown-example-aspose-words-cpp](markdown-example.png)

## 便利なヒント

いくつかのニュアンスと興味深いケースがあり、Markdownファイルをより柔軟かつ便利に扱うことができることを学びました。 たとえば、次を使用する機能があります:

* SetextHeadingはMarkdownに複数行の見出しを作成することができますが、Markdownの通常の見出しは単一行のみにすることができます。 SetextHeadingは"見出しN"スタイルに基づいており、そのレベルは1または2のみです。 "見出しN"のNが2以上の場合、対応するSetextHeadingは"見出し2"に基づいており、そうでない場合は"見出し1"に基づいています。
* 箇条書きリストの最初のレベル("-"、"+"、または"*")の異なるマーカーは、デフォルトのマーカーは"-"です。("."または")"の場合、デフォルトのマーカーは"."です)。
