---
title: C++でのテキスト文書の操作
second_title: C++の場合Aspose.Words
articleTitle: テキスト文書の操作
linktitle: テキスト文書の操作
description: "高度なTXT文書処理、リスト、BiDi、ヘッダー/フッター、C++を使用して。"
type: docs
weight: 430
url: /ja/cpp/working-with-text-document/
---

この記事では、Aspose.Wordsを介してテキスト文書を操作するためにどのようなオプションが役立つかを学びます。 これは利用可能なオプションの完全なリストではなく、それらのいくつかを操作する例にすぎないことに注意してください。

## 双方向マークの追加

[AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/)プロパティを使用して、プレーンテキスト形式でエクスポートするときに、各BiDiを実行する前に双方向マークを追加するかどうかを指定できます。 Aspose.Wordsテキスト内の各双方向の実行の前に、Unicode文字'右から左へのマーク'(U+200F)を挿入します。 このオプションは、プレーンテキスト形式にエクスポートするときにMS Wordファイル変換ダイアログの"双方向マークを追加"オプションに対応します。 アラビア語またはヘブライ語の編集言語のいずれかがMS Wordで追加されている場合にのみ、対話に表示されることに注意してください。

次のコード例は、**AddBidiMarks**プロパティを使用する方法を示しています。 このプロパティのデフォルト値は*false*です:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## TXTの読み込み中にリスト項目を認識する

Aspose.Wordsは、テキストファイルのリスト項目をリスト番号またはプレーンテキストとしてドキュメントオブジェクトモデルにインポートできます。 [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/)プロパティを使用すると、文書をプレーンテキスト形式からインポートするときに番号付きリスト項目を認識する方法を指定できます:

* このオプションが*true*に設定されている場合、空白はリスト番号の区切り文字としても使用されます:アラビア語スタイル番号付けのリスト認識アルゴリズム(1。, 1.1.2.)空白とドット(".")記号の両方を使用します。
* このオプションが*false*に設定されている場合、リスト認識アルゴリズムは、リスト番号がドット、右括弧、または箇条書きの記号で終わるときに、リスト"•", "*", "-" または"o"）。

次のコード例は、このプロパティを使用する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## TXTの読み込み中に先頭と末尾のスペースを処理する方法

TXTファイルの読み込み中に先頭と末尾のスペースを処理する方法を制御できます。 先頭のスペースはトリミング、保持、またはインデントに変換でき、末尾のスペースはトリミングまたは保持できます。

次のコード例は、TXTファイルのインポート中に先頭と末尾のスペースをトリミングする方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## 出力TXTでヘッダーとフッターをエクスポートする

出力TXT文書のヘッダーとフッターをエクスポートする場合は、[ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/)プロパティを使用できます。 このプロパティは、ヘッダーとフッターをプレーンテキスト形式にエクスポートする方法を指定します。

ヘッダーとフッターをプレーンテキスト形式にエクスポートする方法を次のコード例に示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## 出力TXTでのリストインデントのエクスポート

Aspose.Wordsは、プレーンテキスト形式にエクスポートする際にリストレベルをインデントする方法を指定できる[TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/)クラスを導入しました。 [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/)を使用している間、[ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/)プロパティは、リストレベルのインデントに使用する文字を指定し、一つのリストレベルごとにインデントとして使用する文字数を指定するために提供されます。

Characterプロパティのデフォルト値は'\0'で、インデントがないことを示します。 Countプロパティのデフォルト値は0で、インデントはありません。

### タブ文字を使用する

次のコード例は、タブ文字を使用してリストレベルをエクスポートする方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### スペース文字を使用する

次のコード例は、スペース文字を使用してリストレベルをエクスポートする方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### デフォルトのインデントを使用する

既定のインデントを使用してリストレベルをエクスポートする方法を次のコード例に示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
