---
title: ロード時にファイル形式を検出
second_title: .NET用Aspose.Words
articleTitle: ファイル形式を検出し、形式の互換性をチェックする
linktitle: ファイル形式を検出し、形式の互換性をチェックする
description: "ファイルの実際の内容がわからない場合、または形式の互換性を確認する場合は、C# でファイル形式を確認します。"
type: docs
weight: 20
url: /ja/net/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

ファイル拡張子によってはファイルの内容が適切であることが保証されないため、ドキュメントを開く前に形式を決定する必要がある場合があります。たとえば、Crystal Reports はドキュメントを RTF 形式で出力することが多いですが、ドキュメントには .doc 拡張子が付いていることが知られています。

Aspose.Words は、ファイルの実際の内容が不明な場合に例外を回避するために、ファイル タイプに関する情報を取得する機能を提供します。

## 例外なくファイル形式を検出

さまざまなファイル形式の複数のドキュメントを扱う場合、Aspose.Words で処理できるファイルと処理できないファイルを分離する必要がある場合があります。一部のドキュメントが処理できない理由を知りたい場合もあります。

ファイルを [Document](https://reference.aspose.com/words/net/aspose.words/document/) オブジェクトにロードしようとしたときに、Aspose.Words がファイル形式を認識できないか、形式がサポートされていない場合、Aspose.Words は例外をスローします。これらの例外をキャッチして分析することもできますが、Aspose.Words は、例外の可能性があるドキュメントをロードせずにファイル形式を迅速に判断できる [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/) メソッドも提供します。このメソッドは、ファイルの種類について検出された情報を含む [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/) オブジェクトを返します。

{{% alert color="primary" %}}

DetectFileFormat はファイル形式をチェックするだけで、ファイル形式を検証しません。 **DetectFileFormat** がサポートされている形式の 1 つであると返したとしても、ファイルが正常に開かれるという保証はありません。これは、**DetectFileFormat** メソッドが部分的なファイル形式データのみを読み取るためであり、ファイル形式をチェックするには十分ですが、完全な検証には十分ではありません。

{{% /alert %}}

## ファイル形式の互換性を確認する

選択したフォルダー内のすべてのファイルの形式の互換性をチェックし、形式ごとに対応するサブフォルダーに分類できます。

フォルダー内のコンテンツを処理しているため、最初に行う必要があるのは、`Directory` クラスの **GetFiles** メソッドを (`System.IO` 名前空間から) 使用して、このフォルダー内のすべてのファイルのコレクションを取得することです。

次のコード例は、フォルダー内のすべてのファイルのリストを取得する方法を示しています。

{{< gist "aspose-words-gists" "3b6a8e49d800948f7d6ef7975f233fb3" "get-files-in-folder.cs" >}}

すべてのファイルが収集されると、残りの作業はファイル形式をチェックする **DetectFileFormat** メソッドによって実行されます。

次のコード例は、収集されたファイルのリストを反復処理し、各ファイルの形式を確認し、各ファイルを適切なフォルダーに移動する方法を示しています。

{{< gist "aspose-words-gists" "3b6a8e49d800948f7d6ef7975f233fb3" "check-format-compatibility.cs" >}}

ファイルは、`File` クラスの `Move` メソッドを使用して、同じ `System.IO` 名前空間から適切なサブフォルダーに移動されます。

上記の例では次のファイルが使用されています。ファイル名が左側にあり、その説明が右側にあります。

| ファイルのGroup | 入力ドキュメント | タイプ |
|  :-  |  :-  |  :-  |
| サポートされているファイル形式 | テスト ファイル (ドキュメント).doc | Microsoft Word 95/6.0 または Microsoft Word 97 – 2003 ドキュメント。 |
|  | テストファイル(`Dot`).dot | Microsoft Word 95/6.0 または Microsoft Word 97 – 2003 テンプレート。 |
|  | テスト ファイル (Docx).docx | Office Open XML WordprocessingML ドキュメント (マクロなし)。 |
|  | テスト ファイル (Docm).docm | Office Open XML WordprocessingML ドキュメントとマクロ。 |
|  | テスト ファイル (Dotx).dotx | Office Open XML WordprocessingML テンプレート。 |
|  | テストファイル (Dotm).dotm | マクロを備えた Office Open XML WordprocessingML テンプレート。 |
|  | テストファイル(XML).xml | FlatOPC OOXML ドキュメント。 |
|  | テストファイル(RTF).rtf | リッチテキスト形式のドキュメント。 |
|  | テストファイル(WordML).xml | Microsoft Word 2003 WordprocessingML ドキュメント。 |
|  | テストファイル(HTML).html | HTMLドキュメント。 |
|  | テストファイル(MHTML).mhtml | MHTML (Web アーカイブ) ドキュメント。 |
|  | テストファイル(Odt).odt | OpenDocument テキスト (OpenOffice Writer)。 |
|  | テストファイル(オット).ott | OpenDocument ドキュメント テンプレート。 |
|  | テスト ファイル (DocPreWord60).doc | Microsoft Word 2.0 ドキュメント。 |
| 暗号化された文書 | テスト ファイル (Enc).doc | 暗号化された Microsoft Word 95/6.0 または Microsoft Word 97 – 2003 ドキュメント。 |
|  | テストファイル(Enc).docx | 暗号化された Office Open XML WordprocessingML ドキュメント。 |
| サポートされていないファイル形式 | テストファイル(JPG).jpg | JPEG画像ファイル。 |

