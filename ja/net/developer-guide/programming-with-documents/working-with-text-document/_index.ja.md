---
title: C# でのテキスト ドキュメントの操作
second_title: .NET用Aspose.Words
articleTitle: テキストドキュメントの操作
linktitle: テキストドキュメントの操作
description: "C# を使用した高度な TXT ドキュメント処理、リスト、BiDi、ヘッダー/フッター。"
type: docs
weight: 430
url: /ja/net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

この記事では、Aspose.Words を介してテキスト ドキュメントを操作する場合に役立つオプションを学びます。これは利用可能なオプションの完全なリストではなく、それらの一部を使用した例にすぎないことに注意してください。

## 双方向マークの追加

[AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/) プロパティを使用して、プレーン テキスト形式でエクスポートするときに各 BiDi を実行する前に双方向マークを追加するかどうかを指定できます。 Aspose.Words は、テキスト内の各双方向 Run の前に Unicode 文字「RIGHT-TO-LEFT MARK」(U+200F) を挿入します。このオプションは、プレーン テキスト形式にエクスポートする場合の MS Word ファイル変換ダイアログの [双方向マークを追加] オプションに対応します。 MS Word にアラビア語またはヘブライ語の編集言語が追加されている場合にのみ、ダイアログに表示されることに注意してください。

次のコード例は、**AddBidiMarks** プロパティの使用方法を示しています。このプロパティのデフォルト値は *false* です。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## TXTのロード中にリスト項目を認識する

Aspose.Words は、テキスト ファイルのリスト項目をリスト番号またはプレーン テキストとしてドキュメント オブジェクト モデルにインポートできます。 [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) プロパティを使用すると、ドキュメントをプレーン テキスト形式からインポートするときに番号付きリスト項目をどのように認識するかを指定できます。

* このオプションが *true* に設定されている場合、空白もリスト番号の区切り文字として使用されます。アラビア語形式の番号付け (1.、1.1.2.) のリスト認識アルゴリズムでは、空白とドット (「.」) 記号の両方が使用されます。

* このオプションが *false* に設定されている場合、リスト認識アルゴリズムは、リスト番号がドット、右括弧、または箇条書き記号 (「•」、「*」、「-」、または「o」など) で終わる場合にリストの段落を検出します。

次のコード例は、このプロパティの使用方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## TXTのロード中に先頭と末尾のスペースを処理する

TXT ファイルのロード中に先頭と末尾のスペースを処理する方法を制御できます。先頭のスペースはトリミング、保存、またはインデントに変換でき、末尾のスペースはトリミングまたは保存できます。

次のコード例は、TXT ファイルのインポート中に先頭と末尾のスペースをトリミングする方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## ドキュメントのテキスト方向の検出

Aspose.Words は、ドキュメント内のテキストの方向 (RTL / LTR) を検出するために、[TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) クラスに [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) プロパティを提供します。このプロパティは、[DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/) 列挙で提供されるドキュメント テキストの方向を設定または取得します。デフォルト値は *right* のままです。

次のコード例は、TXT ファイルのインポート中にドキュメントのテキストの方向を検出する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## 出力TXTでヘッダーとフッターをエクスポート

出力 TXT ドキュメントのヘッダーとフッターをエクスポートする場合は、[ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/) プロパティを使用できます。このプロパティは、ヘッダーとフッターをプレーン テキスト形式にエクスポートする方法を指定します。

次のコード例は、ヘッダーとフッターをプレーン テキスト形式にエクスポートする方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## 出力 TXT のエクスポート リストのインデント

Aspose.Words では、プレーン テキスト形式にエクスポートする際にリスト レベルのインデント方法を指定できる [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/) クラスが導入されました。 [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/) を操作する場合、リスト レベルのインデントに使用する文字を指定するための [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/) プロパティと、1 つのリスト レベルごとにインデントとして使用する文字数を指定する count が提供されます。

文字プロパティのデフォルト値は「\0」で、インデントがないことを示します。 count プロパティのデフォルト値は 0 で、インデントなしを意味します。

### タブ文字の使用

次のコード例は、タブ文字を使用してリスト レベルをエクスポートする方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### スペース文字の使用

次のコード例は、スペース文字を使用してリスト レベルをエクスポートする方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### デフォルトのインデントの使用

次のコード例は、デフォルトのインデントを使用してリスト レベルをエクスポートする方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
