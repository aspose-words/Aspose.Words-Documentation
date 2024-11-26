---
title: Javaでのレイアウトオプションの指定
second_title: Aspose.WordsのためのJava
articleTitle: レイアウトオプションの指定
linktitle: レイアウトオプションの指定
description: "Javaを使用して、文書で指定されたパラメータに応じて、さまざまなレイアウトで出力文書を作成します。"
type: docs
weight: 10
url: /ja/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsを使用すると、**Document**の[LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/)プロパティで指定されたパラメータに応じて、さまざまなレイアウトで出力ドキュメントを作成できます。 このプロパティは、この資料で説明されているMicrosoft Wordユーザーインターフェイスメニューオプションの一部に似ています。

ページ番号付けを再開する連続セクション内のページ番号を計算する [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) や、「プリンター メトリックを使用してドキュメントをレイアウトする」互換性オプションを無視する [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) などのパラメーターの完全なリストについては、[LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) クラス ページを参照してください。

## マークの書式設定

Aspose.Words次のプロパティを使用して書式設定マークを管理できます:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText)-非表示テキストをレンダリングするかどうかを指定する`Boolean`値。
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks)-段落記号文字を表示するかどうかを指定する`Boolean`値。

以下の例に示されているページには、3つの段落が含まれています。 二つ目は隠されています。 ユーザーは**ShowHiddenText**オプションを変更して、この非表示のテキストをページに表示できます。 また、各段落の末尾には段落記号があります。 段落記号は通常、**ShowParagraphMarks**プロパティがレンダリングに設定されていない限り表示されません。

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

Microsoft Wordでは、次のように"ファイル→オプション→表示"ダイアログボックスを使用してこれらのパラメータを設定します:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## コメントと改訂

Aspose.Wordsを使用すると、Microsoft Wordと同じように見えるドキュメントコメントをレンダリングできます。 コメントを表示するかどうかを指定するには、[ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/)プロパティを使用します。

Microsoft Wordでは、このパラメータは、以下に示すように、"変更の追跡オプション"ダイアログボックスを使用して設定されます:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

また、Aspose.Wordsを使用すると、文書内のリビジョンを表示できます。 ドキュメントリビジョンを表示するかどうかを定義するには、**LayoutOptions**クラスの[RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions)プロパティを使用します。 それらの外観を制御するには（リビジョンの強調表示色、リビジョンバーの色など）。)、[RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/)クラスを使用します。

コンテンツへのコメントとしてリビジョンを表示することもできます。 この目的のために、[CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode)プロパティと[ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/)値を使用します。

リビジョンの表示をカスタマイズする方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

下の画像は、Aspose.Wordsがコメントと削除リビジョンをどのようにレンダリングするかを示しています:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## 高度なタイポグラフィレンダリングのためのテキストシェイパー

[TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/)プロパティを使用すると、テキスト整形機能と`OpenType`機能のサポートを設定できます。

次の主なケースでは、文書処理にテキストシェーピングを使用します:

- ドキュメントでは、カーニング、数字の整形、数字の形式、または合字を使用します。
- 文書は、アラビア語、クメール語、タイ語などの複雑なスクリプトを使用します。

{{% alert color="primary" %}}

テキスト整形は、文書をPDFまたはXPSにエクスポートする場合にのみ有効になります。

{{% /alert %}}
