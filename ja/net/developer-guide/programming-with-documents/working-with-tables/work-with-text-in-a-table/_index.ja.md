---
title: 表内のテキストを操作する
second_title: .NET用Aspose.Words
articleTitle: 表内のテキストを操作する
linktitle: 表内のテキストを操作する
description: "C# の表内のテキストを置換します。 C# を使用してテーブルまたはセルからプレーン テキストを抽出します。"
type: docs
weight: 60
url: /ja/net/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

以前の記事で述べたように、表には通常プレーン テキストが含まれますが、画像や他の表などの他のコンテンツを表のセルに配置することもできます。

テーブルへのテキストまたはその他のコンテンツの追加は、[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) クラスの適切なメソッドを使用して実行されます。これについては、**「テーブルを作成する」** の記事で説明されています。この記事では、既存の表内のテキストを操作する方法について説明します。

## 表内のテキストを置換する

テーブルは、Aspose.Words の他のノードと同様に、[Range](https://reference.aspose.com/words/net/aspose.words/range/) オブジェクトにアクセスできます。テーブル範囲オブジェクトを使用すると、テーブル内のテキストを置換できます。

置換時に特殊文字を使用する機能は現在サポートされているため、既存のテキストを複数段落のテキストに置き換えることができます。これを行うには、対応する [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) メソッドで説明されている特別なメタキャラクタを使用する必要があります。

{{% alert color="primary" %}}

通常、テキストの置換はセル レベル (セルごと) または段落レベルで行う必要があります。

{{% /alert %}}

次のコード例は、テーブル全体のセル内のテキスト文字列のすべてのインスタンスを置換する方法を示しています。

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "replace-text.cs" >}}

## テーブルまたはセルからプレーンテキストを抽出する

**Range** オブジェクトを使用すると、テーブル範囲全体でメソッドを呼び出し、テーブルをプレーン テキストとして抽出することもできます。これを行うには、[Text](https://reference.aspose.com/words/net/aspose.words/range/text/) プロパティを使用します。

次のコード例は、表のテキスト範囲を印刷する方法を示しています。

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "extract-text.cs" >}}

同じ手法を使用して、表の個々のセルのみからコンテンツを抽出します。

次のコード例は、行要素とテーブル要素のテキスト範囲を印刷する方法を示しています。

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "print-text-range-row-and-table.cs" >}}

## 代替テーブルテキストの操作

Microsoft Word テーブルには、テーブルに含まれる情報の代替テキスト表現を提供する `table title` と `table description` があります。

Aspose.Words では、[Title](https://reference.aspose.com/words/net/aspose.words.tables/table/title/) プロパティと [Description](https://reference.aspose.com/words/net/aspose.words.tables/table/description/) プロパティを使用してテーブルのタイトルと説明を追加することもできます。これらのプロパティは、ISO/IEC 29500 に準拠する DOCX ドキュメントにとって重要です。ISO/IEC 29500 より前の形式で保存する場合、これらのプロパティは無視されます。

次のコード例は、テーブルのタイトルと説明のプロパティを設定する方法を示しています。

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "table-title-and-description.cs" >}}
