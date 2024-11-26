---
title: テーブル内のテキストを操作する
second_title: Aspose.WordsのためのJava
articleTitle: テーブル内のテキストを操作する
linktitle: テーブル内のテキストを操作する
description: "Java内のテーブル内のテキストを置き換えます。 Javaを使用してテーブルまたはセルからプレーンテキストを抽出します。"
type: docs
weight: 60
url: /ja/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

以前の記事で述べたように、テーブルには通常プレーンテキストが含まれますが、画像や他のテーブルなどの他のコンテンツはテーブルセルに配置できま

テーブルへのテキストまたはその他のコンテンツの追加は、[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)クラスの適切なメソッドを使用して実行され、**"Create a Table"**の記事で説明されています。 この記事では、既存のテーブルのテキストを操作する方法について説明します。

## テーブル内のテキストを置換する

テーブルはAspose.Words内の他のノードと同様に、[Range](https://reference.aspose.com/words/java/com.aspose.words/range/)オブジェクトにアクセスできます。 Table rangeオブジェクトを使用すると、テーブル内のテキストを置き換えることができます。

置換時に特殊文字を使用する機能は現在サポートされているため、既存のテキストを複数段落のテキストに置き換えることができます。 これを行うには、対応する[Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String)メソッドで説明されている特別なメタ文字を使用する必要があります。

{{% alert color="primary" %}}

通常、テキストの置換は、セルレベル（セルごと）または段落レベルで行う必要があります。

{{% /alert %}}

次のコード例は、テーブル全体のセル内のテキスト文字列のすべてのインスタンスを置き換える方法を示しています:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## 表からプレーンテキストを抽出する

**Range**オブジェクトを使用すると、テーブル範囲全体のメソッドを呼び出して、テーブルをプレーンテキストとして抽出することもできます。 これを行うには、[Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text)プロパティを使用します。

次のコード例は、テーブルのテキスト範囲を印刷する方法を示しています:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

同じ手法は、個々のテーブルセルからのみコンテンツを抽出するために使用されます。

次のコード例は、行要素とテーブル要素のテキスト範囲を印刷する方法を示しています:

{{% /alert %}}

次のコード例は、行要素とテーブル要素のテキスト範囲を印刷する方法を示しています。

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## 代替表テキストの操作

Microsoft Wordテーブルには、テーブルに含まれる情報の代替テキスト表現を提供する`table title`と`table description`があります。

Aspose.Wordsでは、[Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle)プロパティと[Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription)プロパティを使用してテーブルのタイトルと説明を追加することもできます。 これらのプロパティはISO/IEC29500に準拠するDOCX文書にとって意味があります。 ISO/IEC29500より前の形式で保存する場合、これらのプロパティは無視されます。

テーブルのtitleプロパティとdescriptionプロパティを設定する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
