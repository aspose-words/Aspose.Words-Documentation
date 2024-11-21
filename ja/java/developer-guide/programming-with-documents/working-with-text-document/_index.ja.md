---
title: テキスト文書での作業 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: テキスト文書を扱う
linktitle: テキスト文書を扱う
description: "高度なTXT文書処理、リスト、BiDi、ヘッダ/フッター、使用 Javaお問い合わせ"
type: docs
weight: 430
url: /ja/java/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

この記事では、テキスト文書を経由して作業するのにどのようなオプションが役立つかを学びます Aspose.Wordsお問い合わせ 利用可能なオプションの完全なリストではありませんが、一部のオプションで動作する例のみです。

## Bi-Directionalを追加 マークス

使うことができます。 [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) プレーンテキスト形式でエクスポートする際に、各バイディが実行される前に双方向マークを追加するかどうかを指定するプロパティ。 Aspose.Words テキストの各双方向実行の前にUnicode文字'RIGHT-TO-LEFT MARK' (U+200F) を差し込みます。 このオプションは、プレーンテキスト形式にエクスポートする際に、MS Wordファイル変換ダイアログの「双方向マークの追加」オプションに対応しています。 アラビア語またはヘブライ語のいずれかがMS Wordに追加されている場合のみ、ダイアログに表示されます。

以下のコード例では、使い方を示します。 `TxtSaveOptions.AddBidiMarks` プロパティ. このプロパティのデフォルト値は *true*:::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## TXT の読み込み中にリストアイテムを認識

Aspose.Words テキストファイルのリスト項目をドキュメントオブジェクトモデルにリスト番号またはプレーンテキストとしてインポートできます。 ザ・オブ・ザ・ [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) プロパティは、ドキュメントがプレーンテキスト形式からインポートされると、番号付きリスト項目が認識されるかを指定できます。

* 必須 このオプションが設定されている場合 *true*, ホワイトスペースはリスト番号の区切り文字として使用されます: アラビアスタイルの番号付け(1., 1.1.2.)のリスト認識アルゴリズムは、空白とドット(」)の両方のシンボルを使用します。
* 必須 このオプションが設定されている場合 *false*, リスト認識アルゴリズムは、リスト番号がドット、右ブラケット、または箇条書き記号(「•」、「*」、「-」、または「o」など)で終了したときにリスト段落を検出します。

以下のコードの例では、このプロパティを使用する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## ローディングTXTの間のハンドルの鉛および配線スペース

TXT ファイルをロードする際に、先頭の処理とスペースの追跡方法を制御できます。 主要なスペースは、インデントと追跡スペースにトリミング、保存、または変換することができ、トリミングまたは保存することができます。

以下に示すコードの例では、TXT ファイルのインポート時に、先頭と末尾のスペースをトリムする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## ドキュメントの検出 テキストの方向

Aspose.Words オファー [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) プロパティ [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) 文書内のテキストの方向(RTL / LTR)を検出するクラス。 このプロパティは、提供された文書のテキストの指示をセットまたは取得します [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) パンフレット デフォルト値は右に残されます。

次のコードの例では、TXT ファイルのインポート中にドキュメントのテキストの方向を検出する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## 出力TXTファイルでヘッダーとフッターをエクスポート

出力 TXT ドキュメントでヘッダーとフッターをエクスポートしたい場合、 [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) 宿泊施設 このプロパティは、ヘッダとフッターがプレーンテキスト形式にエクスポートされる方法を指定します。

次のコードの例では、ヘッダとフッターをプレーンテキスト形式にエクスポートする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## 出力TXTのエクスポートリストインデント

Aspose.Words 導入事例 [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) プレーンテキスト形式へのエクスポート中にリストレベルがインデントされるかを指定するクラス。 協力しながら [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), お問い合わせ [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) プロパティは、リストレベルをインデントし、リストレベルごとにインデントとして使用する文字数を指定するために提供されます。

文字プロパティのデフォルト値は '\0' で、インデントがないことを示します。 count プロパティでは、デフォルト値は 0 で、インデントなしです。

### タブキャラクターの利用

次のコードの例では、タブ文字を使用してリストレベルをエクスポートする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### スペースキャラクターの使用

次のコードの例では、スペース文字を使用してリストレベルをエクスポートする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### デフォルトインデントを使用する

次のコードの例では、デフォルトインデントを使用してリストレベルをエクスポートする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
