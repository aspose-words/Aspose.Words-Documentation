---
title: C++での画像の操作
second_title: C++の場合Aspose.Words
articleTitle: 画像の操作
linktitle: 画像の操作
type: docs
description: "イメージ機能の紹介、C++を使用してイメージを作成および操作する方法。"
weight: 300
url: /ja/cpp/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsを使用すると、ユーザーは非常に柔軟な方法で画像を操作できます。 この記事では、画像を操作する可能性のいくつかのみを探索できます。

## 文書から画像を抽出する方法

すべての画像は[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)の**Shape**ノード内に格納されます。 すべての画像または特定の種類の画像をドキュメントから抽出するには、次の手順を実行します:

- すべての**Shape**ノードを選択するには、[GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/)メソッドを使用します。
- 結果のノードコレクションを反復処理します。
- ブールプロパティ[HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/)を確認します。
- [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/)プロパティを使用してイメージデータを抽出します。
- 画像データをファイルに保存します。

次のコード例は、ドキュメントから画像を抽出してファイルとして保存する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## WMFとしての画像の保存

Aspose.Wordsは、ドキュメント内の使用可能なすべての画像を保存する機能を提供します。 [WMF ](https://docs.fileformat.com/image/wmf/)DOCXをRTFに変換している間にフォーマットします。

次のコード例は、RTF保存オプションを使用して画像をWMFとして保存する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
