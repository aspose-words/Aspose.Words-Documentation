---
title: ファイルフォーマットの検出
second_title: Aspose.Words お問い合わせ Java
articleTitle: ファイル形式の検出とフォーマットの互換性の確認
linktitle: ファイル形式の検出とフォーマットの互換性の確認
description: "ファイルの実際のコンテンツが使用しているかわからない場合は、例外を回避するために開く前に、ドキュメントフォーマットに関する情報を入手してください Javaお問い合わせ"
type: docs
weight: 20
url: /ja/java/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

ファイル拡張子がファイルの内容が適切であることを保証するものではありませんので、ファイルを開く前に文書の形式を決定する必要がある場合があります。 たとえば、Crystal Reportsは RTF 形式で文書を出力することが多いが、 .doc 拡張子を与えることが知られています。

Aspose.Words ファイルの実際の内容がわからない場合は例外を回避するために、ファイルタイプに関する情報を取得する機能を提供します。

## 例外なくファイルフォーマットを検出する

さまざまなファイル形式で複数の文書を扱う場合は、処理できるファイルを分離する必要があります Aspose.Words できないものから。 文書の処理ができない理由も知りたいかもしれません。

ファイルにファイルをロードしようとすると [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) オブジェクトとオブジェクト Aspose.Words ファイル形式やフォーマットがサポートされていないことを認識できません。 Aspose.Words 例外を投げます。 これらの例外をキャッチして分析することができますが、 Aspose.Words また提供します [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) 可能な限り例外で文書をロードすることなく、ファイルフォーマットを迅速に決定できるようにする方法。 このメソッドは、 [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) ファイルの種類に関する検出された情報を含むオブジェクト。

{{% alert color="primary" %}}

検出ファイル フォーマットはファイル形式のみをチェックしますが、ファイル形式を検証しません。 ファイルが正常に開くことを保証するものではありません。 **DetectFileFormat** サポートされているフォーマットの1つであることを返します。 これは、 **DetectFileFormat** メソッドは、部分的なファイル形式のデータのみを読みます。ファイルフォーマットをチェックするのに十分ですが、完全な検証には十分ではありません。

{{% /alert %}}

## ファイルフォーマットの互換性をチェックする

選択したフォルダ内のすべてのファイルの形式互換性を確認し、対応するサブフォルダにフォーマットでソートすることができます。

フォルダ内のコンテンツを扱うので、まず最初に必要なことは、このフォルダ内のすべてのファイルのコレクションをこのフォルダから取得することです。 **GetFiles** のメソッド `Directory` クラス(から) `System.IO` 名前空間)。

次のコードの例では、フォルダー内のすべてのファイルの一覧を取得する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

すべてのファイルが収集されると、残りの作業は、 **DetectFileFormat** ファイルフォーマットをチェックするメソッド。

次のコードの例では、収集したファイルのリストを反復する方法、各ファイルの形式をチェックし、各ファイルを適切なフォルダに移動する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

ファイルが適切なサブフォルダに移動します。 `Move` のメソッド `File` 同じクラスから、 `System.IO` 名前空間。

上記の例では、以下のファイルを使用します。 ファイル名は左にあり、その記述は右にあります。

| Group ファイルの | 入力文書 | タイプ: |
|  :-  |  :-  |  :-  |
| サポートされているファイル形式 | テストファイル(Doc).doc | Microsoft Word 95/6.0 または Microsoft Word 97 – 2003 ドキュメント。 |
|  | 試験ファイル(ドット).dot | Microsoft Word 95/6.0 または Microsoft Word 97 – 2003 テンプレート。 |
|  | テストファイル(Docx).docx | オフィスオープンXML Wordの処理 マクロのないML文書。 |
|  | テストファイル(Docm).docm | オフィスオープンXML Wordの処理 マクロのML文書。 |
|  | ファイルをテストして下さい(Dotx).dotx | オフィスオープンXML Wordの処理 MLテンプレート。 |
|  | ファイルをテストして下さい(Dotm).dotm | オフィスオープンXML Wordの処理 マクロの ML テンプレート。 |
|  | ファイルをテストして下さい(XML).xml | FlatOPC OOXML文書。 |
|  | ファイルをテストして下さい(RTF).rtf | 豊富なテキストフォーマット文書。 |
|  | テストファイル(WordML).xml | Microsoft Word 2003 単語処理 ML文書。 |
|  | テストファイル(HTML).html | HTMLドキュメント。 |
|  | テストファイル(MHTML).mhtml | MHTML(Webアーカイブ)ドキュメント。 |
|  | ファイルをテストして下さい(Odt).odt | OpenDocument テキスト(OpenOffice Writer) |
|  | テストファイル(Ott).ott | OpenDocument文書テンプレート。 |
|  | テストファイル (DocPreWord60).doc | Microsoft Word 2.0ドキュメント。 |
| 暗号化された文書 | 試験ファイル(Enc).doc | 暗号化された Microsoft Word 95/6.0 または Microsoft Word 97 – 2003 ドキュメント。 |
|  | 試験ファイル(Enc).docx | 暗号化されたオフィスの開いたXML Wordの処理 ML文書。 |
| サポートされていないファイル形式 | ファイル(JPG)をテストして下さい。 トピックス | JPEGイメージファイル。 |

