---
title: C++でのレイアウトオプションの指定
second_title: C++の場合Aspose.Words
articleTitle: レイアウトオプションの指定
linktitle: レイアウトオプションの指定
description: "さまざまなドキュメントレイアウトのレイアウトオプションを指定します。"
type: docs
weight: 20
url: /ja/cpp/specify-layout-options/
---

Aspose.Wordsを使用すると、**Document**の[LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options)プロパティで指定されたパラメータに応じて、さまざまなレイアウトで出力ドキュメントを作成できます。 このプロパティは、この資料で説明されているMicrosoft Wordユーザーインターフェイスメニューオプションの一部に似ています。

ページ番号付けを再開する連続セクション内のページ番号を計算する [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/) や、「プリンター メトリックを使用してドキュメントをレイアウトする」互換性オプションを無視する [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/) などのパラメーターの完全なリストについては、[LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) クラス ページを参照してください。

## マークの書式設定

Aspose.Words次のプロパティを使用して書式設定マークを管理できます:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/)-非表示テキストをレンダリングするかどうかを指定する`Boolean`値。
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/)-段落記号文字を表示するかどうかを指定する`Boolean`値。

以下の例に示されているページには、3つの段落が含まれています。 二つ目は隠されています。 ユーザーは**ShowHiddenText**オプションを変更して、この非表示のテキストをページに表示できます。 また、各段落の末尾には段落記号があります。 段落記号は通常、**ShowParagraphMarks**プロパティがレンダリングに設定されていない限り表示されません。

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

Microsoft Wordでは、次のように"ファイル→オプション→表示"ダイアログボックスを使用してこれらのパラメータを設定します:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## コメントと改訂

Aspose.Wordsを使用すると、Microsoft Wordと同じように見えるドキュメントコメントをレンダリングできます。 コメントを表示するかどうかを指定するには、[CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/)プロパティを使用します。

Microsoft Wordでは、このパラメータは、以下に示すように、"変更の追跡オプション"ダイアログボックスを使用して設定されます:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

また、Aspose.Wordsを使用すると、文書内のリビジョンを表示できます。 ドキュメントリビジョンを表示するかどうかを定義するには、**LayoutOptions**クラスの[RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/)プロパティを使用します。 それらの外観を制御するには（リビジョンの強調表示色、リビジョンバーの色など）。)、[RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/)クラスを使用します。

コンテンツへのコメントとしてリビジョンを表示することもできます。 この目的のために、[CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/)プロパティと[ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/)値を使用します。

リビジョンの表示をカスタマイズする方法を次のコード例に示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

下の画像は、Aspose.Wordsがコメントと削除リビジョンをどのようにレンダリングするかを示しています:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## 高度なタイポグラフィレンダリングのためのテキストシェイパー

[TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/)プロパティを使用すると、テキスト整形機能と`OpenType`機能のサポートを設定できます。

次の主なケースでは、文書処理にテキストシェーピングを使用します:

- ドキュメントでは、カーニング、数字の整形、数字の形式、または合字を使用します。
- 文書は、アラビア語、クメール語、タイ語などの複雑なスクリプトを使用します。

{{% alert color="primary" %}}

テキスト整形は、文書をPDFまたはXPSにエクスポートする場合にのみ有効になります。

{{% /alert %}}
