---
title: C++での範囲の操作
second_title: C++の場合Aspose.Words
articleTitle: 範囲の操作
linktitle: 範囲の操作
description: "の範囲機能の紹介 C++の場合Aspose.Words."
type: docs
weight: 130
url: /ja/cpp/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Aspose.Wordsでは、範囲は文書のツリーのようなモデルへの"フラットウィンドウ"です。

{{% /alert %}}

Microsoft Word自動化を使用したことがある場合は、ドキュメントの内容を調べたり変更したりするための主要なツールの1つが**Range**オブジェクトであることを **Range**は、ドキュメントの内容と書式設定の"ウィンドウ"のようなものです。

Aspose.Words にも [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) クラスがあり、Microsoft Word の **Range** と同様に表示および動作するように設計されています。**Range** はドキュメントの任意の部分をカバーできず、**Start** と **End** もありませんが、[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) 自体を含む任意のドキュメント ノードによってカバーされる範囲にアクセスできます。つまり、各ノードには独自の範囲があります。**Range** オブジェクトを使用すると、範囲内のテキスト、ブックマーク、およびフォーム フィールドにアクセスして変更できます。

## プレーンテキストの取得

[Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/)プロパティを使用して、範囲の書式設定されていないプレーンテキストを取得します。

次のコード例は、範囲の書式設定されていないプレーンなテキストを取得する方法を示しています:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## テキストの削除

Rangeは[Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/)を呼び出すことにより、範囲のすべての文字を削除できます。

次のコード例は、範囲のすべての文字を削除する方法を示しています:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
