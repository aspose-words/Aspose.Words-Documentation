---
title: レイアウトオプションを指定する Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: レイアウトオプションを指定する
linktitle: レイアウトオプションを指定する
description: "ドキュメントで使用するパラメータに応じて、さまざまなレイアウトで出力文書を作成します。 Javaお問い合わせ"
type: docs
weight: 10
url: /ja/java/specify-layout-options/
---

Aspose.Words さまざまなレイアウトで出力文書を作成することを可能にします。 [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) のプロパティ **Document**お問い合わせ このプロパティは一部に似ています Microsoft Word この記事に記載されているユーザーインターフェイスメニューオプション。

のようなパラメータの完全なリストのため [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) ページ番号を連続したセクションで計算するには、ページ番号を再起動するか、 [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) 「プリンタのメトリックを使用して文書をレイアウト」の互換性オプションを無視するには、 [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) クラスページ

## フォーマットマーク

Aspose.Words 次のプロパティを使用して、書式マークを管理することができます。

- - - [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) - A `Boolean` 隠しテキストがレンダリングされるかどうかを指定する値。
- - - [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) - A `Boolean` パラグラフマークの文字がレンダリングされているかどうかを指定する値。

以下に示す例で描かれたページには3つの段落が含まれています。 2つ目は隠されています。 ユーザは変更できます **ShowHiddenText** ページの隠しテキストを表示するオプション。 また、各段落には終端に段落マークがあります。 通常、段落マークは表示されません **ShowParagraphMarks** プロパティはそれをレンダリングするためにセットされます。

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

インスタグラム Microsoft Word, これらのパラメータは、次のように "File → Options → Display" ダイアログ ボックスを使用して設定されます。

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## コメントと修正

と Aspose.Words, 同じように見えるドキュメントコメントをレンダリングできます。 Microsoft Wordお問い合わせ コメントがレンダリングされているかどうかを指定するには、 [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) プロパティ.

インスタグラム Microsoft Word, このパラメータは、以下に示すように「Track Changes Options」ダイアログボックスを使用して設定されます。

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

また、 Aspose.Words ドキュメントにリビジョンを表示することができます。 利用する [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) のプロパティ **LayoutOptions** ドキュメントのリビジョンが表示されるかどうかを定義するクラス。 外観を制御する(色、リビジョンバーカラーなど)、 [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) クラス。

コンテンツへのコメントとしてリビジョンを表示することもできます。 そのためには、 [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) プロパティとプロパティ [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) 値。

次のコードの例では、リビジョンの表示をカスタマイズする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

下の画像はどのように表示されます Aspose.Words コメントをレンダリングし、リビジョンを削除:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## 高度なタイポグラフィレンダリングのためのテキストシェーダー

ザ・オブ・ザ・ [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) プロパティを使用すると、テキストシェーピング機能だけでなく、テキストシェーピング機能を設定することができます `OpenType` 機能サポート

次の例で文書処理のために形成するテキストを使用してください。

- 文書は、Kerning、Nummeral Shaping、Nummeral Forms、またはLigaturesを使用します。
- 文書は、アラビア語、クメール、タイなどの複雑なスクリプトを使用します。

{{% alert color="primary" %}}

文書をPDFに書き出すときや、 XPSお問い合わせ

{{% /alert %}}
