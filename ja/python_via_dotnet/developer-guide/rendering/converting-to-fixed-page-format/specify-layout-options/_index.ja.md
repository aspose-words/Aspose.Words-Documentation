---
title: Python でのレイアウト オプションの指定
second_title: Python via .NET用Aspose.Words
articleTitle: レイアウトオプションの指定
linktitle: レイアウトオプションの指定
description: "Python を使用して、さまざまなドキュメント レイアウトのレイアウト オプションを指定します。"
type: docs
weight: 10
url: /ja/python-net/specify-layout-options/
---

Aspose.Words を使用すると、[LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) クラスのプロパティで指定されたパラメーターに応じて、さまざまなレイアウトで出力ドキュメントを作成できます。これらのプロパティの一部は、Microsoft Word ユーザー インターフェイス メニュー オプションの一部に似ています。これらについては、この記事で説明します。

ページ番号付けを再開する連続セクション内のページ番号を計算する [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) や、[ドキュメントのレイアウトにプリンター メトリックを使用する] 互換性オプションを無視する [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) などのパラメーターの完全なリストについては、[LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) クラス ページを参照してください。

## フォーマットマーク

Aspose.Words では、次のプロパティを使用して書式設定マークを管理できます。

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) – 隠しテキストを表示するかどうかを指定する `Boolean` 値。
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) – 段落記号文字をレンダリングするかどうかを指定する `Boolean` 値。

以下の例に示されているページには 3 つの段落が含まれています。 2枚目は隠れてます。ユーザーは [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) オプションを変更して、ページ上にこの隠しテキストを表示できます。また、各段落の最後には段落記号が付いています。段落記号は、[show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) プロパティがそれを表示するように設定されていない限り、通常は表示されません。

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

Microsoft Word では、これらのパラメータは、「ファイル → オプション → 表示」ダイアログ ボックスを使用して次のように設定します。

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## コメントと改訂

Aspose.Words を使用すると、Microsoft Word と同じように見えるドキュメント コメントをレンダリングできます。コメントを表示するかどうかを指定するには、[comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) プロパティを使用します。

Microsoft Word では、このパラメータは、次に示すように [変更の追跡オプション] ダイアログ ボックスを使用して設定します。

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

また、Aspose.Words を使用すると、ドキュメント内のリビジョンを表示できます。 [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) クラスの [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) プロパティを使用して、ドキュメントのリビジョンを表示するかどうかを定義します。外観 (リビジョンの強調表示の色、リビジョン バーの色など) を制御するには、[RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/) クラスを使用します。

リビジョンをコンテンツへのコメントとして表示することもできます。この目的のために、[comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) プロパティと [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons) 値を使用します。

次のコード例は、リビジョン表示をカスタマイズする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

以下の画像は、Aspose.Words がコメントと削除リビジョンをレンダリングする方法を示しています。

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>