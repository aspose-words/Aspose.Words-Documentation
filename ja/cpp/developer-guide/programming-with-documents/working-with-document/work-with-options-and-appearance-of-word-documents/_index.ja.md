---
title: Word文書のオプションと外観
second_title: C++の場合Aspose.Words
articleTitle: Word文書のオプションと外観を操作する
linktitle: Word文書のオプションと外観を操作する
description: "さまざまなMicrosoft Wordバージョン間の違いを考慮して、Word文書の外観を制御します。"
type: docs
weight: 40
url: /ja/cpp/work-with-word-document-options-and-appearance/
---

場合によっては、言語設定やページあたりの行数の設定など、文書の外観を変更する必要がある場合があります。Aspose.Wordsは、ドキュメントの表示方法を制御する機能と、いくつかの追加オプションを提供します。 この記事では、そのような可能性について説明します。

## 文書表示オプションの設定

[ViewOptions](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/)クラスを使用して、Microsoft Wordで文書をどのように表示するかを制御できます。 たとえば、[ZoomPercent](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_zoompercent/)プロパティを使用してドキュメントのズーム値を設定したり、[ViewType](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_viewtype/)プロパティを使用してビューモードを設定したりできます。

次のコード例は、Microsoft Wordで開いたときに文書が50%で表示されるようにする方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetViewOption-SetViewOption.cpp" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word2013はドキュメントにズーム係数を書き込まず、ドキュメントに書き込まれた値からデフォルトのズームを設定しなくなりました。

{{% /alert %}}

## ページ表示オプションの設定

1行あたりの文字数を設定する場合は、[CharactersPerLine](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_charactersperline/)プロパティを使用します。 Word文書のページあたりの行数を設定することもできます–[LinesPerPage](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_linesperpage/)プロパティを使用して、文書グリッド内のページあたりの行数を取得または設定します。

{{% alert color="primary" %}}

Microsoft Wordでは、アジア言語サポートがインストールされている場合にのみ、"ページ設定"ダイアログボックスの"ドキュメントグリッド"タブを使用して同じパラメータ

{{% /alert %}}

次のコード例は、Microsoft Wordドキュメントの1行あたりの文字数と1ページあたりの行数を設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cpp" >}}

## 言語設定の設定

Microsoft Wordで文書を表示する言語は、この文書のデフォルトとして設定されている言語によって異なります。 既定で言語が設定されていない場合、Microsoft Wordは、2019年Microsoft Wordの[ファイル]→[オプション]→[言語]の下にある[Office言語設定の設定]ダイアログボックスから情報を取得します。

Aspose.Wordsを使用すると、[LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/languagepreferences/)クラスを使用して言語設定を設定することもできます。 また、ドキュメントを正しく表示するには、ドキュメントの読み込みプロセスが一致するMicrosoft Wordバージョンを設定する必要があることに注意してください。[MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/)プロパティを使用してこれを行うことができます。

{{% alert color="primary" %}}

Aspose.Words生成されたドキュメントが期待どおりに表示されない場合は、**LanguagePreferences**と**MswVersion**の値を確認し、必要に応じてMicrosoft Wordバージョンの設定と一致するように調整します。

{{% /alert %}}

次のコード例は、編集言語に日本語を追加する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

次のコード例は、ロシア語を既定の編集言語として設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cpp" >}}

## 特定のWordバージョン用に文書を最適化する

[OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/)メソッドを使用すると、ドキュメントの内容を最適化することができ、Microsoft Wordの特定のバージョンのデフォルトのAspose.Words動作も可能になります。 このメソッドを使用すると、文書の読み込み時にMicrosoft Wordが"互換モード"リボンを表示しないようにすることができます。 また、`Compliance`プロパティをIso29500_2008_Transitional以上に設定する必要がある場合もあります。

次のコード例は、Microsoft Word2016のドキュメントコンテンツを最適化する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cpp" >}}
