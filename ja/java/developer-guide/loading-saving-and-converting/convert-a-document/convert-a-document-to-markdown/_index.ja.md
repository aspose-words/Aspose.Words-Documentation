---
title: ドキュメントをJavaのMarkdownに変換する
second_title: Aspose.WordsのためのJava
articleTitle: 文書をMarkdownに変換する
linktitle: 文書をMarkdownに変換する
type: docs
description: "サポートされている任意のロード形式のドキュメントをMarkdownに変換し、Javaを使用してその逆に変換します。"
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /ja/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdownはテキストをマークアップするために使用される一般的な形式であり、さらに次のように変換されますHTML, PDF, DOCX, または他のフォーマット。 多くの開発者は、ドキュメントの作成、ブログへの公開のための記事の準備、プロジェクトの説明などのためにこの形式を選択します。

Markdownは、この形式で作業するのが簡単であるだけでなく、他の形式に簡単に変換できるため、非常に人気があります。 このため、Aspose.Wordsは[サポートされているロード形式](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)の文書をMarkdownに、またその逆に変換する機能を提供します–Aspose.Wordsは最も人気のある[形式の保存](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)もサポートします。

現在、Markdown形式で作業するための機能が積極的に開発されており、文書を便利で快適に作業する機会が増えています。

## 文書をMarkdownに変換する

ドキュメントをMarkdownに変換するには、サポートされている任意の形式でドキュメントを読み込むか、プログラムで新しい形式を作成するだけです。 次に、文書をMarkdown形式で保存する必要があります。

次のコード例は、DOCXをMarkdownに変換する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Markdownに変換するときに保存オプションを指定します

Aspose.Wordsは、文書をMarkdown形式で保存するときに、高度なオプションを操作するために[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)クラスを使用する機能を提供します。 他の継承またはオーバーロードのプロパティに加えて、Markdown形式に固有のいくつかのプロパティも追加されました。 たとえば、テーブル内のコンテンツの配置を制御する[TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/)プロパティや、文書をMarkdown形式に変換する際に画像を保存する方法を制御する[ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback)と[ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder)プロパティ

## サポートされているMarkdown機能

Aspose.Wordsは現在、次のMarkdown機能をサポートしていますが、主にAspose.WordsAPIの`CommonMark`仕様に従い、適切なスタイルまたは直接書式設定として表されます:

* 見出しはHeading 1–Heading 6スタイルの段落です
* Blockquotesは、スタイル名に"Quote"が付いた段落です
* IndentedCodeはスタイル名に"IndentedCode"を含む段落です
* FencedCodeはスタイル名に"FencedCode"を含む段落です
* InlineCodeは、`Font`スタイル名に"InlineCode"が付いた実行です
* 水平ルールは`HorizontalRule`の形をした段落です
* 大胆な強調
* 斜体強調
* StrikeThrough書式設定
* リストには番号または箇条書きの段落が付いています
* テーブルは`Table`クラスで表されます
* リンクは`FieldHyperlink`クラスとして表されます

次の例は、いくつかのスタイルを持つドキュメントを作成してMarkdownに保存する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

このコード例の結果を以下に示します。

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## 便利なヒント

いくつかのニュアンスと興味深いケースがあり、Markdownファイルをより柔軟かつ便利に扱うことができることを学びました。 たとえば、次を使用する機能があります:

* SetextHeadingはMarkdownに複数行の見出しを作成することができますが、Markdownの通常の見出しは単一行のみにすることができます。 SetextHeadingは"見出しN"スタイルに基づいており、そのレベルは1または2のみです。 "見出しN"のNが2以上の場合、対応するSetextHeadingは"Heading 2"に基づいており、そうでない場合は"Heading 1"に基づいています。
* 箇条書きリストの最初のレベル("-"、"+"、または"*")の異なるマーカーは、デフォルトのマーカーは"-"です。("."または")"の場合、デフォルトのマーカーは"."です)。
