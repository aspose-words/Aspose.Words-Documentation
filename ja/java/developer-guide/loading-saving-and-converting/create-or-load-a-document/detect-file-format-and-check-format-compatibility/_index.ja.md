---
title: ファイル形式の検出
second_title: Aspose.WordsのためのJava
articleTitle: ファイル形式の検出と形式の互換性の確認
linktitle: ファイル形式の検出と形式の互換性の確認
description: "ファイルの実際の内容がJavaを使用しているかどうかわからない場合に例外を回避するために、開く前に文書形式に関する情報を取得します。"
type: docs
weight: 20
url: /ja/java/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

ファイル拡張子がファイルの内容が適切であることを保証するものではないため、開く前に文書の形式を決定する必要がある場合があります。 例えば、Crystal ReportsはしばしばRTF形式で文書を出力することが知られていますが、それらを与えます。doc拡張子。

Aspose.Wordsは、ファイルの実際の内容がわからない場合に例外を回避するために、ファイルの種類に関する情報を取得する機能を提供します。

## 例外なくファイル形式を検出する

さまざまなファイル形式の複数のドキュメントを扱う場合は、Aspose.Wordsで処理できるファイルと処理できないファイルを分離する必要があります。 また、一部のドキュメントを処理できない理由も知りたい場合があります。

ファイルを[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)オブジェクトにロードしようとしたときにAspose.Wordsがファイル形式を認識できないか、形式がサポートされていない場合、Aspose.Wordsは例外をスローします。Aspose.Wordsは、[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)オブジェクトにファイルをロードしようとしたときにファイル形式を認識できません。 これらの例外をキャッチして分析することができますが、Aspose.Wordsは[DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String)メソッドも提供しており、可能な例外を含む文書をロードすることなくファイル形式を迅速に判断できます。 このメソッドは、ファイルの種類に関する検出された情報を含む[FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/)オブジェクトを返します。

{{% alert color="primary" %}}

DetectFileFormatはファイル形式のみをチェックしますが、ファイル形式は検証しません。 **DetectFileFormat**がサポートされている形式のいずれかであることを返しても、ファイルが正常に開かれるという保証はありません。 これは、**DetectFileFormat**メソッドが部分的なファイル形式データのみを読み取り、ファイル形式を確認するのに十分ですが、完全な検証には十分ではないためです。

{{% /alert %}}

## ファイル形式の互換性を確認する

選択したフォルダ内のすべてのファイルの形式の互換性を確認し、対応するサブフォルダに形式で並べ替えることができます。

フォルダ内のコンテンツを扱っているので、最初に行う必要があるのは、`Directory`クラスの**GetFiles**メソッド（`System.IO`名前空間から）を使用して、このフォルダ内のすべてのフ

次のコード例は、フォルダー内のすべてのファイルの一覧を取得する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

すべてのファイルが収集されると、残りの作業はファイル形式をチェックする**DetectFileFormat**メソッドによって行われます。

次のコード例は、収集されたファイルのリストを反復処理し、各ファイルの形式を確認し、各ファイルを適切なフォルダーに移動する方法を示してい:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

ファイルは、`File`クラスの`Move`メソッドを使用して、同じ`System.IO`名前空間から適切なサブフォルダに移動されます。

上記の例では、次のファイルが使用されています。 ファイル名は左側にあり、その説明は右側にあります:

| ファイルのグループ | 入力文書 | タイプ |
| :- | :- | :- |
| サポートされているファイル形式 | Test File (Doc).doc | Microsoft Word95/6.0またはMicrosoft Word97–2003文書。 |
|  | Test File (Dot).dot | Microsoft Word95/6.0またはMicrosoft Word97–2003テンプレート。 |
|  | Test File (Docx).docx | OfficeマクロなしでXMLWordprocessingMLドキュメントを開きます。 |
|  | Test File (Docm).docm | Officeマクロを使用してXMLWordprocessingMLドキュメントを開きます。 |
|  | Test File (Dotx).dotx | オフィスXMLWordprocessingMLテンプレートを開きます。 |
|  | Test File (Dotm).dotm | Officeマクロを使用してXMLWordprocessingMLテンプレートを開きます。 |
|  | Test File (XML).xml | FlatOPCOOXMLドキュメント。 |
|  | Test File (RTF).rtf | リッチテキスト形式の文書。 |
|  | Test File (WordML).xml | Microsoft Word2003WordprocessingML文書。 |
|  | Test File (HTML).html | HTMLドキュメント。 |
|  | Test File (MHTML).mhtml | MHTML(Webアーカイブ)ドキュメント。 |
|  | Test File (Odt).odt | OpenDocumentテキスト(OpenOfficeライター)。 |
|  | Test File (Ott).ott | OpenDocumentドキュメントテンプレート。 |
|  | Test File (DocPreWord60).doc | Microsoft Word2.0文書。 |
| 暗号化された文書 | Test File (Enc).doc | 暗号化されたMicrosoft Word95/6.0またはMicrosoft Word97–2003文書。 |
|  | Test File (Enc).docx | 暗号化されたOfficeXMLWordprocessingMLドキュメントを開きます。 |
| サポートされていないファイル形式 | Test File (JPG).jpg | JPEGイメージファイル。 |

