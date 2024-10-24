---
title: ファイル形式の検出と形式の互換性の確認
second_title: C++の場合Aspose.Words
articleTitle: ファイル形式の検出と形式の互換性の確認
linktitle: ファイル形式の検出と形式の互換性の確認
description: "ファイルの実際の内容がわからない場合、または形式の互換性を確認する場合は、C++でファイル形式を決定します。"
type: docs
weight: 20
url: /ja/cpp/detect-file-format-and-check-format-compatibility/
---

ファイル拡張子がファイルの内容が適切であることを保証するものではないため、開く前に文書の形式を決定する必要がある場合があります。 例えば、Crystal ReportsはしばしばRTF形式で文書を出力することが知られていますが、それらを与えます。doc拡張子。

Aspose.Wordsは、ファイルの実際の内容がわからない場合に例外を回避するために、ファイルの種類に関する情報を取得する機能を提供します。

## 例外なくファイル形式を検出する

さまざまなファイル形式の複数のドキュメントを扱う場合は、Aspose.Wordsで処理できるファイルと処理できないファイルを分離する必要があります。 また、一部のドキュメントを処理できない理由も知りたい場合があります。

ファイルを[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)オブジェクトにロードしようとしたときにAspose.Wordsがファイル形式を認識できないか、形式がサポートされていない場合、Aspose.Wordsは例外をスローします。Aspose.Wordsは、[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)オブジェクトにファイルをロードしようとしたときにファイル形式を認識できません。 これらの例外をキャッチして分析することができますが、Aspose.Wordsは[DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/)メソッドも提供しており、可能な例外を含む文書をロードすることなくファイル形式を迅速に判断できます。 このメソッドは、ファイルの種類に関する検出された情報を含む[FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/)オブジェクトを返します。

{{% alert color="primary" %}}

DetectFileFormatはファイル形式のみをチェックしますが、ファイル形式は検証しません。 **DetectFileFormat**がサポートされている形式のいずれかであることを返しても、ファイルが正常に開かれるという保証はありません。 これは、**DetectFileFormat**メソッドが部分的なファイル形式データのみを読み取り、ファイル形式を確認するのに十分ですが、完全な検証には十分ではないためです。

{{% /alert %}}

## ファイル形式の互換性を確認する

選択したフォルダ内のすべてのファイルの形式の互換性を確認し、対応するサブフォルダに形式で並べ替えることができます。

フォルダ内のコンテンツを扱っているので、最初に行う必要があるのは、`Directory`クラスの**GetFiles**メソッド（`System.IO`名前空間から）を使用して、このフォルダ内のすべてのフ

次のコード例は、フォルダー内のすべてのファイルの一覧を取得する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

すべてのファイルが収集されると、残りの作業はファイル形式をチェックする**DetectFileFormat**メソッドによって行われます。

次のコード例は、収集されたファイルのリストを反復処理し、各ファイルの形式を確認し、各ファイルを適切なフォルダーに移動する方法を示してい:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

ファイルは、`File`クラスの`Move`メソッドを使用して、同じ`System.IO`名前空間から適切なサブフォルダに移動されます。

上記の例では、次のファイルが使用されています。 ファイル名は左側にあり、その説明は右側にあります:

| ファイルのグループ | 入力文書 | タイプ |
| :- | :- | :- |
| サポートされているファイル形式 | Test File (DOC).doc | Microsoft Word95/6.0またはMicrosoft Word97–2003文書。 |
|  | Test File (DOT).dot | Microsoft Word95/6.0またはMicrosoft Word97–2003テンプレート。 |
|  | Test File (DOCX).docx | マクロなしのOffice Open XML WordprocessingMLドキュメント。 |
|  | Test File (DOCM).docm | マクロを持つOffice Open XML WordprocessingMLドキュメント。 |
|  | Test File (DOTX).dotx | OfficeオープンXML WordprocessingMLテンプレート。 |
|  | Test File (DOTM).dotm | マクロを持つOfficeオープンXML WordprocessingMLテンプレート。 |
|  | Test File (XML).xml | FlatOPC OOXMLドキュメント。 |
|  | Test File (RTF).rtf | リッチテキスト形式の文書。 |
|  | Test File (WordML).xml | Microsoft Word2003WordprocessingMLドキュメント。 |
|  | Test File (HTML).html | HTML文書。 |
|  | Test File (MHTML).mhtml | MHTML（ウェブアーカイブ）ドキュメント。 |
|  | Test File (ODT).odt | OpenDocumentテキスト(OpenOfficeライター)。 |
|  | Test File (OTT).ott | OpenDocumentドキュメントテンプレート。 |
|  | テストファイル(DocPreWord60)。ドク | Microsoft Word2.0文書。 |
| 暗号化された文書 | Test File (Enc).doc | 暗号化されたMicrosoft Word95/6.0またはMicrosoft Word97–2003文書。 |
|  | Test File (Enc).docx | 暗号化されたOffice Open XML WordprocessingMLドキュメント。 |
| サポートされていないファイル形式 | Test File (JPG).jpg | JPEG画像ファイル。 |

