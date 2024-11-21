---
title: C# でのレイアウト オプションの指定
second_title: .NET用Aspose.Words
articleTitle: レイアウトオプションの指定
linktitle: レイアウトオプションの指定
description: "C# を使用して、さまざまなドキュメント レイアウトのレイアウト オプションを指定します。"
type: docs
weight: 10
url: /ja/net/specify-layout-options/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words を使用すると、[LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) クラスのプロパティで指定されたパラメーターに応じて、さまざまなレイアウトで出力ドキュメントを作成できます。これらのプロパティの一部は、Microsoft Word ユーザー インターフェイス メニュー オプションの一部に似ています。これらについては、この記事で説明します。

ページ番号付けを再開する連続セクション内のページ番号を計算する [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) や、[ドキュメントのレイアウトにプリンター メトリックを使用する] 互換性オプションを無視する [IgnorePrinterMetrics](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) などのパラメーターの完全なリストについては、[LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) クラス ページを参照してください。

## フォーマットマーク

Aspose.Words では、次のプロパティを使用して書式設定マークを管理できます。

- [ShowHiddenText](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showhiddentext/) – 隠しテキストを表示するかどうかを指定する `Boolean` 値。
- [ShowParagraphMarks](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showparagraphmarks/) – 段落記号文字をレンダリングするかどうかを指定する `Boolean` 値。

以下の例に示されているページには 3 つの段落が含まれています。 2枚目は隠れてます。ユーザーは **ShowHiddenText** オプションを変更して、ページ上にこの隠しテキストを表示できます。また、各段落の最後には段落記号が付いています。段落記号は、**ShowParagraphMarks** プロパティがそれを表示するように設定されていない限り、通常は表示されません。

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

Microsoft Word では、これらのパラメータは、「ファイル → オプション → 表示」ダイアログ ボックスを使用して次のように設定します。

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## コメントと改訂

Aspose.Words を使用すると、Microsoft Word と同じように見えるドキュメント コメントをレンダリングできます。コメントを表示するかどうかを指定するには、[CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) プロパティを使用します。

Microsoft Word では、このパラメータは、次に示すように、[変更の追跡オプション] ダイアログ ボックスを使用して設定します。

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

また、Aspose.Words を使用すると、ドキュメント内のリビジョンを表示できます。 **LayoutOptions** クラスの [RevisionOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/revisionoptions/) プロパティを使用して、ドキュメントのリビジョンを表示するかどうかを定義します。外観 (リビジョンの強調表示の色、リビジョン バーの色など) を制御するには、[RevisonOptions](https://reference.aspose.com/words/net/aspose.words.layout/revisionoptions/) クラスを使用します。

リビジョンをコンテンツへのコメントとして表示することもできます。この目的のために、[CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) プロパティと [ShowInBalloons](https://reference.aspose.com/words/net/aspose.words.layout/commentdisplaymode/) 値を使用します。

次のコード例は、リビジョン表示をカスタマイズする方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

以下の画像は、Aspose.Words がコメントと削除リビジョンをレンダリングする方法を示しています。

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## 高度なタイポグラフィ レンダリングのためのテキスト シェイパー

[TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) プロパティを使用すると、テキスト整形機能と `OpenType` 機能のサポートを設定できます。

以下の主な場合に、文書処理にテキスト整形を使用します。

- 文書でカーニング、数字の整形、数字のフォーム、または合字が使用されています。
- 文書でアラビア語、クメール語、タイ語などの複雑な文字が使用されています。

{{% alert color="primary" %}}

テキスト整形は、ドキュメントを PDF または XPS にエクスポートする場合にのみ有効になります。

{{% /alert %}}
