---
title: C# での範囲の操作
second_title: .NET用Aspose.Words
articleTitle: 範囲の操作
linktitle: 範囲の操作
description: "Aspose.Words for .NET の範囲機能の紹介。"
type: docs
weight: 130
url: /ja/net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Aspose.Words では、Range はドキュメントのツリー状モデルへの「フラット ウィンドウ」です。

{{% /alert %}}

Microsoft Word オートメーションを使用したことがある場合は、ドキュメントのコンテンツを調べて変更するための主要なツールの 1 つが **Range** オブジェクトであることをご存知でしょう。 **Range** は、ドキュメントのコンテンツと書式設定への「窓」のようなものです。

Aspose.Words には [Range](https://reference.aspose.com/words/net/aspose.words/range/) クラスもあり、Microsoft Word の **Range** と同様に見え、同様に動作するように設計されています。 **Range** はドキュメントの任意の部分をカバーできず、**Start** や **End** もありませんが、[Document](https://reference.aspose.com/words/net/aspose.words/document/) 自体を含む任意のドキュメント ノードがカバーする範囲にアクセスできます。言い換えれば、各ノードには独自の範囲があります。 **Range** オブジェクトを使用すると、範囲内のテキスト、ブックマーク、フォーム フィールドにアクセスして変更できます。

## プレーンテキストの取得

[Text](https://reference.aspose.com/words/net/aspose.words/range/text/) プロパティを使用して、範囲の書式設定されていないプレーン テキストを取得します。

次のコード例は、範囲の書式設定されていないプレーン テキストを取得する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) からダウンロードできます。

{{% /alert %}}

## テキストの削除

Range を使用すると、[Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/) を呼び出すことで範囲内のすべての文字を削除できます。

次のコード例は、範囲内のすべての文字を削除する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) からダウンロードできます。

{{% /alert %}}
