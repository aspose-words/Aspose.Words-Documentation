---
title: Python での範囲の操作
second_title: Python via .NET用Aspose.Words
articleTitle: 範囲の操作
linktitle: 範囲の操作
description: "Python を使用してドキュメント内の範囲を操作します。"
type: docs
weight: 130
url: /ja/python-net/working-with-ranges/
---

{{% alert color="primary" %}}

Aspose.Words では、[Range](https://reference.aspose.com/words/python-net/aspose.words/range/) はドキュメントのツリー状モデルへの「フラット ウィンドウ」です。

{{% /alert %}}

Microsoft Word オートメーションを使用したことがある場合は、ドキュメントのコンテンツを調べて変更するための主要なツールの 1 つが [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) オブジェクトであることをご存知でしょう。 [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) は、ドキュメントのコンテンツと書式設定への「窓」のようなものです。 Aspose.Words にも [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) クラスがあり、Microsoft Word の **Range** と同様に見え、同様に動作するように設計されています。 **Range** はドキュメントの任意の部分をカバーすることはできず、**Start** や **End** もありませんが、[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 自体を含む任意のドキュメント ノードがカバーする範囲にアクセスできます。言い換えれば、各ノードには独自の範囲があります。 [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) オブジェクトを使用すると、範囲内のテキスト、ブックマーク、フォーム フィールドにアクセスして変更できます。

## プレーンテキストの取得

[text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) プロパティを使用して、範囲の書式設定されていないプレーン テキストを取得します。

次のコード例は、範囲の書式設定されていないプレーン テキストを取得する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) からダウンロードできます。

{{% /alert %}}

## テキストの削除

Range を使用すると、[delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/) を呼び出すことで範囲内のすべての文字を削除できます。

次のコード例は、範囲内のすべての文字を削除する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) からダウンロードできます。

{{% /alert %}}