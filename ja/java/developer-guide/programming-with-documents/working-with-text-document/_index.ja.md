---
title: Javaでのテキスト文書の操作
second_title: Aspose.WordsのためのJava
articleTitle: テキスト文書の操作
linktitle: テキスト文書の操作
description: "高度なTXT文書処理、リスト、BiDi、ヘッダー/フッター、Javaを使用します。"
type: docs
weight: 430
url: /ja/java/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

この記事では、Aspose.Wordsを介してテキスト文書を操作するためにどのようなオプションが役立つかを学びます。 これは利用可能なオプションの完全なリストではなく、それらのいくつかを操作する例にすぎないことに注意してください。

## 双方向マークの追加

[AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks)プロパティを使用して、プレーンテキスト形式でエクスポートするときに、各BiDiを実行する前に双方向マークを追加するかどうかを指定できます。 Aspose.WordsUnicode文字を挿入します'RIGHT-TO-LEFT MARK' (U+200F）テキストの各二方向の操業の前に。 このオプションは、プレーンテキスト形式にエクスポートするときのMSWordファイル変換ダイアログの"双方向マークの追加"オプションに対応します。 アラビア語またはヘブライ語の編集言語のいずれかがMSWordに追加されている場合にのみ、ダイアログに表示されることに注意してください。

次のコード例は、`TxtSaveOptions.AddBidiMarks`プロパティを使用する方法を示しています。 このプロパティのデフォルト値は*true*です:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## TXTの読み込み中にリスト項目を認識する

Aspose.Wordsは、テキストファイルのリスト項目をリスト番号またはプレーンテキストとしてドキュメントオブジェクトモデルにインポートできます。 [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces)プロパティを使用すると、文書をプレーンテキスト形式からインポートするときに番号付きリスト項目を認識する方法を指定できます:

* このオプションが*true*に設定されている場合、空白はリスト番号の区切り文字としても使用されます。アラビア語スタイルの番号付けのリスト認識アルゴリズム(1., 1.1.2.)空白とドット(".")記号の両方を使用します。
* このオプションが*false*に設定されている場合、リスト認識アルゴリズムは、リスト番号がドット、右括弧、または箇条書き記号(次のような)で終わっている"•", "*", "-" または"o"）。

次のコード例は、このプロパティを使用する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## TXTの読み込み中に先頭と末尾のスペースを処理する

TXTファイルの読み込み中に先頭と末尾のスペースを処理する方法を制御できます。 先頭のスペースはトリミング、保持、またはインデントに変換でき、末尾のスペースはトリミングまたは保持できます。

以下のコード例は、TXTファイルのインポート中に先頭と末尾のスペースをトリミングする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## 文書のテキストの方向を検出する

Aspose.Wordsは、文書内のテキストの方向(RTL/LTR)を検出するために、[TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/)クラスの[DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection)プロパティを提供します。 このプロパティは、[DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/)列挙体で提供されるドキュメントテキストの方向を設定または取得します。 デフォルト値は左から右です。

次のコード例は、TXTファイルのインポート中にドキュメントのテキスト方向を検出する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## 出力TXTファイルのヘッダーとフッターをエクスポートする

出力TXTドキュメントのヘッダーとフッターをエクスポートする場合は、[ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode)プロパティを使用できます。 このプロパティは、ヘッダーとフッターをプレーンテキスト形式にエクスポートする方法を指定します。

ヘッダーとフッターをプレーンテキスト形式にエクスポートする方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## 出力TXTのリストインデントをエクスポートする

Aspose.Wordsプレーンテキスト形式にエクスポートする際にリストレベルをインデントする方法を指定できる[TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/)クラスを導入しました。 [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/)を使用している間、[ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation)プロパティは、リストレベルのインデントに使用する文字を指定し、一つのリストレベルごとにインデントとして使用する文字数を指定するために提供されます。

Characterプロパティのデフォルト値は'\0'で、インデントがないことを示します。 Countプロパティのデフォルト値は0で、インデントがないことを意味します。

### タブ文字を使用する

次のコード例は、タブ文字を使用してリストレベルをエクスポートする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### スペース文字を使用する

次のコード例は、スペース文字を使用してリストレベルをエクスポートする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### デフォルトのインデントを使用する

既定のインデントを使用してリストレベルをエクスポートする方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
