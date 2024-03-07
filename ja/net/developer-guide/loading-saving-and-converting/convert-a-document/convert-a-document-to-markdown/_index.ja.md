---
title: ドキュメントをC#のMarkdownに変換する
second_title: .NET用Aspose.Words
articleTitle: ドキュメントをMarkdownに変換する
linktitle: ドキュメントをMarkdownに変換する
type: docs
description: "C# を使用して、サポートされているロード形式のドキュメントを Markdown に変換したり、その逆に変換したりできます。"
keywords: how to convert a document to markdown c#
weight: 40
url: /ja/net/convert-a-document-to-markdown/
---

Markdown は、テキストをマークアップし、さらに HTML、PDF、DOCX、またはその他の形式に変換するために使用される一般的な形式です。多くの開発者は、ドキュメントの作成、ブログで公開する記事の準備、プロジェクトの説明などにこの形式を選択します。

Markdown が非常に人気があるのは、この形式での作業が簡単であり、他の形式に非常に簡単に変換できるためです。このため、Aspose.Words は [サポートされているロード形式](https://reference.aspose.com/words/net/aspose.words/loadformat/) のドキュメントを Markdown に、またはその逆に変換する機能を提供します。Aspose.Words は最も一般的な [保存形式](https://reference.aspose.com/words/net/aspose.words/saveformat/) もサポートしています。

現在、ドキュメントを便利かつ快適に操作できる機会をさらに提供するために、Markdown 形式を操作するための機能が積極的に開発されています。

## ドキュメントを変換する

ドキュメントを Markdown に変換するには、サポートされている形式でドキュメントをロードするか、プログラムで新しいドキュメントを作成するだけです。次に、ドキュメントを Markdown 形式で保存する必要があります。

次のコード例は、DOCX を Markdown に変換する方法を示しています。

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cs" >}}

ドキュメントを Markdown 形式にエクスポートするときに、画像を保存する物理フォルダーを指定することもできます。デフォルトでは、Aspose.Words はドキュメント ファイルが保存されているのと同じフォルダーに画像を保存しますが、[ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) プロパティを使用してこの動作をオーバーライドできます。

ドキュメントをストリームに保存するときに、Aspose.Words に画像を保存するためのフォルダーがない場合にも、**ImagesFolder** 経由でフォルダーを指定すると便利です。

指定した **ImagesFolder** が存在しない場合は、自動的に作成されます。

次のコード例は、ドキュメントをストリームに保存するときに画像のフォルダーを指定する方法を示しています。

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cs" >}}

## Markdown への変換時に保存オプションを指定する

Aspose.Words は、ドキュメントを Markdown 形式で保存するときに [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) クラスを使用して高度なオプションを操作する機能を提供します。ほとんどのプロパティは、他の [Aspose.Words.Saving](https://reference.aspose.com/words/net/aspose.words.saving/) 名前空間クラス内にすでに存在するプロパティを継承またはオーバーロードしています。これらに加えて、Markdown 形式に固有の多数のプロパティも追加されました。たとえば、表内のコンテンツの配置を制御する [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) プロパティや、ドキュメントを Markdown 形式に変換する際の画像の保存方法を制御する [ImageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) および [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) などです。

## サポートされているMarkdown機能

Aspose.Words は現在、次の Markdown 機能をサポートしています。これらの機能は主に Aspose.Words API の `CommonMark` 仕様に従っており、適切なスタイルまたは直接フォーマットとして表されます。

* 見出しは、見出し 1 ～ 見出し 6 のスタイルを持つ段落です。
※ブロッククオートとは、スタイル名に「Quote」が含まれる段落のことです
※ IndentedCode はスタイル名に「IndentedCode」が含まれる段落です
※FencedCodeはスタイル名に「FencedCode」が含まれる段落です
* InlineCode は `Font` スタイル名に「InlineCode」を付けて実行されます
※横罫とは`HorizontalRule`形状の段落です。
* 太字で強調
* 斜体強調
* 取り消し線の書式設定
* リストは番号付きまたは箇条書きの段落です
* テーブルは `Table` クラスで表現されます
* リンクは `FieldHyperlink` クラスとして表現されます

次の例は、いくつかのスタイルを含むドキュメントを作成し、Markdown に保存する方法を示しています。

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cs" >}}

このコード例の結果を以下に示します。

![markdown-example-aspose-words-net](/words/net/convert-a-document-to-markdown/markdown-example.png)

## 役立つヒント

Markdownファイルをより柔軟かつ便利に操作できることを学んだので、いくつかのニュアンスと興味深いケースがあります。たとえば、次のような機能があります。

* SettextHeading を使用すると、Markdown で複数行の見出しを作成できますが、Markdown では通常の見出しは 1 行しか作成できません。 SettextHeading は「見出し N」スタイルに基づいており、そのレベルは 1 または 2 のみです。「見出し N」の N が 2 以上の場合、対応する SettextHeading は「見出し 2」に基づき、それ以外の場合は 2 に基づきます。 「見出し1」。
* 箇条書きリストの最初のレベルの異なるマーカー (「-」、「+」、または「*」、デフォルトのマーカーは「-」です。) および順序付きリストの異なるタイプの番号付け (「.」または「)」、デフォルトのマーカーは「.」です）。
