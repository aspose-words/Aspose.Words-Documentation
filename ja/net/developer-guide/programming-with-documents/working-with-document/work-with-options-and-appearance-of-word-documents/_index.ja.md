---
title: Word ドキュメントのオプションと外観
second_title: .NET用Aspose.Words
articleTitle: Word 文書のオプションと外観を操作する
linktitle: Word 文書のオプションと外観を操作する
description: "C# を使用して、さまざまな Microsoft Word バージョン間の違いを考慮して Word 文書の外観を制御します。"
type: docs
weight: 40
url: /ja/net/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

場合によっては、言語設定やページごとの行数の設定など、ドキュメントの外観を変更する必要がある場合があります。Aspose.Words には、ドキュメントの表示方法を制御する機能といくつかの追加オプションが用意されています。この記事ではそのような可能性について説明します。

## ドキュメント表示オプションの設定

[ViewOptions](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/) クラスを使用して、Microsoft Word でのドキュメントの表示方法を制御できます。たとえば、[ZoomPercent](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/zoompercent/) プロパティを使用してドキュメントのズーム値を設定したり、[ViewType](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/viewtype/) プロパティを使用して表示モードを設定したりできます。

次のコード例は、Microsoft Word でドキュメントを開いたときにドキュメントが 50% で表示されるようにする方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) からダウンロードできます。

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 はドキュメントにズーム倍率を書き込まず、ドキュメントに書き込まれた値からデフォルトのズームを設定することはなくなり、代わりに最後に開いたドキュメントのズーム倍率を使用するようです。

{{% /alert %}}

## ページ表示オプションの設定

1 行あたりの文字数を設定する場合は、[CharactersPerLine](https://reference.aspose.com/words/net/aspose.words/pagesetup/charactersperline/) プロパティを使用します。 Word 文書のページごとの行数を設定することもできます。[LinesPerPage](https://reference.aspose.com/words/net/aspose.words/pagesetup/linesperpage/) プロパティを使用して、文書グリッドのページごとの行数を取得または設定します。

{{% alert color="primary" %}}

Microsoft Word では、アジア言語サポートがインストールされている場合にのみ、[ページ設定] ダイアログ ボックスの [ドキュメント グリッド] タブを使用して同じパラメータを設定できます。

{{% /alert %}}

次のコード例は、Microsoft Word ドキュメントの 1 行あたりの文字数と 1 ページあたりの行数を設定する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## 言語設定を行う

Microsoft Word でのドキュメントの表示は、このドキュメントのデフォルトとして設定されている言語によって異なります。デフォルトで言語が設定されていない場合、Microsoft Word は [Office の言語設定] ダイアログ ボックスから情報を取得します。このダイアログ ボックスは、たとえば、Microsoft Word 2019 の [ファイル → オプション → 言語] にあります。

Aspose.Words では、[LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) クラスを使用して言語設定をセットアップすることもできます。また、ドキュメントを正しく表示するには、ドキュメントの読み込みプロセスに一致する Microsoft Word バージョンを設定する必要があることにも注意してください。これは、[MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) プロパティを使用して行うことができます。

{{% alert color="primary" %}}

Aspose.Words で生成されたドキュメントが期待どおりに表示されない場合は、**LanguagePreferences** 値と **MswVersion** 値を確認し、必要に応じて Microsoft Word バージョンの設定と一致するように調整します。

{{% /alert %}}

次のコード例は、編集言語に日本語を追加する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

次のコード例は、ロシア語をデフォルトの編集言語として設定する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## 特定の Word バージョンに合わせて文書を最適化する

[OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) メソッドを使用すると、ドキュメントのコンテンツだけでなく、特定のバージョンの Microsoft Word のデフォルトの Aspose.Words 動作も最適化できます。このメソッドを使用すると、Microsoft Word がドキュメントの読み込み時に「互換モード」リボンを表示しないようにすることができます。 `Compliance` プロパティを Iso29500_2008_Transitional 以上に設定する必要がある場合もあります。

次のコード例は、Microsoft Word 2016 用にドキュメント コンテンツを最適化する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
