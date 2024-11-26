---
title: Javaの範囲の操作
second_title: Aspose.WordsのためのJava
articleTitle: 範囲の操作
linktitle: 範囲の操作
description: "JavaのAspose.Wordsの範囲機能の紹介。"
type: docs
weight: 130
url: /ja/java/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Aspose.Wordsでは、範囲は文書のツリーのようなモデルへの"フラットウィンドウ"です。

{{% /alert %}}

Microsoft Word自動化を使用したことがある場合は、ドキュメントの内容を調べて変更するための主要なツールの1つが`Range`オブジェクトであることを知ってい範囲は、文書の内容と書式設定への「ウィンドウ」のようなものです。

Aspose.Wordsには[Range](https://reference.aspose.com/words/java/com.aspose.words/range/)クラスもあり、Microsoft Wordの**Range**と同様に見え、動作するように設計されています。 **Range**は文書の任意の部分をカバーすることはできず、**Start**と**End**はありませんが、[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)自体を含む任意の文書ノードによってカバーされる範囲にアクセスできます。 つまり、各ノードには独自の範囲があります。 **Range**オブジェクトを使用すると、範囲内のテキスト、ブックマーク、フォームフィールドにアクセスして変更できます。

## プレーンテキストの取得

範囲の書式設定されていないプレーンテキストを取得するには、[Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText)プロパティを使用します。

次のコード例は、範囲のプレーンで書式設定されていないテキストを取得する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## テキストの削除

`Range`クラスでは、[delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete)を呼び出すことによって範囲のすべての文字を削除できます。

次のコード例は、範囲のすべての文字を削除する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


