---
title: テーブルのセルをJavaにマージします
second_title: Aspose.WordsのためのJava
articleTitle: テーブルセルの結合
linktitle: テーブルセルの結合
description: "テーブルセルをJavaにマージする方法。 テーブル内のセルがJavaを使用してマージされているかどうかを確認します。"
type: docs
weight: 40
url: /ja/java/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

テーブル内の特定の行には、テーブルの全幅を占める見出しまたは大きなテキストブロックが必要な場合があります。 テーブルを適切に設計するために、ユーザーは複数のテーブルセルを1つにマージできます。 Aspose.Wordsは、HTMLコンテンツのインポートを含むすべての入力形式を操作するときに、マージされたセルをサポートします。

## テーブルセルをマージする方法

Aspose.Wordsでは、マージされたセルは[CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/)クラスの次のプロパティで表されます:

- [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge)セルがセルの水平方向のマージの一部であるかどうかを説明します
- [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge)は、セルがセルの垂直マージの一部であるかどうかを表します

これらのプロパティの値によって、セルのマージ動作が決まります:

- マージされたセルのシーケンスの最初のセルには[CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)があります
- その後にマージされたセルは[CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)になります
- マージされていないセルには[CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)があります

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

場合によっては、テーブルに既存のドキュメントセルをロードするときに、それらがマージされて表示されます。 ただし、実際には1つの長いセルになる可能性があります。Microsoft Wordはマージされたセルをこの方法でエクスポートすることがあります。 これは、個々のセルを操作しようとすると混乱する可能性がありますが、これがいつ発生するかについての特定のパターンはないようです。

{{% /alert %}}

## セルがマージされているかどうかの確認

セルがマージされたセルのシーケンスの一部であるかどうかを確認するには、**HorizontalMerge**と**VerticalMerge**プロパティを確認するだけです。

次のコード例は、水平方向と垂直方向のセルのマージの種類を印刷する方法を示しています:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## DocumentBuilderを使用した場合のテーブルセルのマージ

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)で作成されたテーブル内のセルをマージするには、マージが期待される各セルに適切なマージタイプを設定する必要があります。**CellMerge.First**、次に**CellMerge.Previous**です。

また、マージが必要ないセルのマージ設定をクリアすることを忘れないでください–これは、最初の非マージセルを**CellMerge.None**に設定することで実行できます。 これを行わないと、テーブル内のすべてのセルがマージされます。

次のコード例は、最初の行のセルが水平方向にマージされる2つの行を持つテーブルを作成する方法を示しています:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

次のコード例は、最初の列のセルが垂直方向にマージされる2列のテーブルを作成する方法を示しています:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## それ以外の場合のテーブルセルのマージ

既存のテーブルなど、**DocumentBuilder**が使用されていない他の状況では、前の方法でセルをマージするのはそれほど簡単ではない場合があります。 代わりに、マージプロパティをセルに適用するための基本的な操作を、タスクをはるかに簡単にするメソッドでラップできます。 このメソッドは、テーブル内のセルの範囲をマージするために呼び出されるマージ自動化メソッドに似ています。

以下のコードは、指定されたセルから開始し、終了セルで終了する、指定された範囲のテーブルセルをマージします。 この場合、範囲は複数の行または列にまたがることができます:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

次のコード例は、指定した2つのセルの間でセルの範囲をマージする方法を示しています:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## HTMLテーブル内の縦と横のマージされたセル

前の記事で述べたように、Microsoft Wordのテーブルは独立した行のセットです。 各行には、他の行のセルから独立したセルのセットがあります。 したがって、Microsoft Wordテーブルには「列」のようなオブジェクトはなく、「1番目の列」は「テーブルの各行の1番目のセルのセット」のようなものです。 これにより、ユーザーは、たとえば、1行目が2cmと1cmの2つのセルで構成され、2行目が1cmと2cmの幅の2つの異なるセルで構成されるテーブルを持つ そしてAspose.Wordsはこのテーブルの概念をサポートしています。

HTML のテーブルは本質的に異なる構造を持ちます。各行には同じ数のセルがあり、(タスクにとって重要なことですが) 各セルの幅は対応する列の幅で、1 つの列内のすべてのセルの幅は同じです。したがって、**HorizontalMerge** と **VerticalMerge** が誤った値を返す場合は、次のコード例を使用します。

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## 水平方向に結合されたセルに変換する

一部の新しいバージョンのMicrosoft Wordでは、セルが水平方向にマージされるときにマージフラグが使用されなくなったため、マージされたセルを検出できない場合が しかし、マージフラグを使用してセルが横方向にセルにマージされる状況では、Aspose.Wordsはセルを変換する`ConvertToHorizontallyMergedCells`メソッドを提供します。 このメソッドは、単純にテーブルを変換し、必要に応じて新しいセルを追加します。

次のコード例は、上記のメソッドの動作を示しています:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
