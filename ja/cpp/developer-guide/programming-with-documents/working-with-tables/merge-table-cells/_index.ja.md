---
title: C++でテーブルセルをマージする
second_title: C++の場合Aspose.Words
articleTitle: テーブルセルの結合
linktitle: テーブルセルの結合
description: "C++でテーブルセルをマージする方法。 テーブル内のセルがC++を使用してマージされているかどうかを確認します。"
type: docs
weight: 40
url: /ja/cpp/merge-table-cells/
---

テーブル内の特定の行には、テーブルの全幅を占める見出しまたは大きなテキストブロックが必要な場合があります。 テーブルを適切に設計するために、ユーザーは複数のテーブルセルを1つにマージできます。 Aspose.Wordsは、HTMLコンテンツのインポートを含むすべての入力形式で作業するときに、マージされたセルをサポートします。

## テーブルセルをマージする方法

Aspose.Wordsでは、マージされたセルは[CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/)クラスの次のプロパティで表されます:

- [HorizontalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_horizontalmerge/)セルがセルの水平方向のマージの一部であるかどうかを説明します
- [VerticalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_verticalmerge/)は、セルがセルの垂直マージの一部であるかどうかを表します

これらのプロパティの値によって、セルのマージ動作が決まります:

- マージされたセルのシーケンスの最初のセルには[CellMerge.First](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)があります
- その後にマージされたセルは[CellMerge.Previous](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)になります
- マージされていないセルには[CellMerge.None](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)があります

{{% alert color="primary" %}}

場合によっては、テーブルに既存のドキュメントセルをロードするときに、それらがマージされて表示されます。 ただし、実際には1つの長いセルになる可能性があります。Microsoft Wordはマージされたセルをこの方法でエクスポートすることがあります。 これは、個々のセルを操作しようとすると混乱する可能性がありますが、これがいつ発生するかについての特定のパターンはないようです。

{{% /alert %}}

## セルがマージされているかどうかを確認する

セルがマージされたセルのシーケンスの一部であるかどうかを確認するには、**HorizontalMerge**と**VerticalMerge**プロパティを確認するだけです。

次のコード例は、水平方向と垂直方向のセルのマージの種類を印刷する方法を示しています:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "check-cells-merged.h" >}}

## テーブル{#merge-cells-in-a-table}内のマージされたセル

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)で作成されたテーブル内のセルをマージするには、マージが期待される各セルに適切なマージタイプを設定する必要があります–最初に**CellMerge.First**、次に**CellMerge.Previous**。

また、マージが必要ないセルのマージ設定をクリアすることを忘れないでください–これは、最初の非マージセルを**CellMerge.None**に設定することで実行できます。 これを行わないと、テーブル内のすべてのセルがマージされます。

次のコード例は、最初の行のセルが水平方向にマージされる2つの行を持つテーブルを作成する方法を示しています:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-merge.h" >}}

次のコード例は、最初の列のセルが垂直方向にマージされる2列のテーブルを作成する方法を示しています:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "vertical-merge.h" >}}

## それ以外の場合のテーブルセルのマージ

既存のテーブルなど、**DocumentBuilder**が使用されていない他の状況では、前の方法でセルをマージするのはそれほど簡単ではない場合があります。 代わりに、マージプロパティをセルに適用するための基本的な操作を、タスクをはるかに簡単にするメソッドでラップできます。 このメソッドは、テーブル内のセルの範囲をマージするために呼び出されるマージ自動化メソッドに似ています。

以下のコードは、指定されたセルから開始し、終了セルで終了する、指定された範囲のテーブルセルをマージします。 この場合、範囲は複数の行または列にまたがることができます:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cells.h" >}}

次のコード例は、指定した2つのセルの間でセルの範囲をマージする方法を示しています:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cell-range.h" >}}

使用しているフレームワークのバージョンによっては、このメソッドを拡張メソッドに変換して、このメソッドを改良することができます。 この場合、セルに対してこのメソッドを直接呼び出して、`cell1.Merge(cell2)`などのセル範囲をマージできます。

## テーブル{#vertical-and-Horizontal-merged-cells-in-the-table}内の縦と横のマージされたセル

前の記事で述べたように、Microsoft Wordのテーブルは独立した行のセットです。 各行には、他の行のセルから独立したセルのセットがあります。 したがって、Microsoft Wordテーブルには「列」のようなオブジェクトはなく、「1st列」は「テーブル内の各行の1stセルのセット」のようなものです。 これにより、ユーザーは、たとえば、1番目の行が2つのセル（2cmと1cm）で構成され、2番目の行が2つの異なるセル（1cmと2cm幅）で構成されるテーブルを持つこ そしてAspose.Wordsはこのテーブルの概念をサポートしています。

各行には同じ数のセルがあり、（タスクにとって重要です）各セルには対応する列の幅があり、1つの列のすべてのセルで同じです。 したがって、**HorizontalMerge**と**VerticalMerge**が誤った値を返す場合は、次のコード例を使用します:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "print-horizontal-and-vertical-merged.h" >}}

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-and-vertical-merge-helper-classes.h" >}}

## 水平方向にマージされたセルに変換{#convert-to-horizontally-merged-cells}

一部の新しいバージョンのMicrosoft Wordでは、セルが水平方向にマージされるときにマージフラグが使用されなくなったため、マージされたセルを検出できない場合が しかし、マージフラグを使用してセルが横方向にセルにマージされる状況では、Aspose.Wordsはセルを変換する`ConvertToHorizontallyMergedCells`メソッドを提供します。 このメソッドは、単純にテーブルを変換し、必要に応じて新しいセルを追加します。

次のコード例は、上記のメソッドの動作を示しています:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "convert-to-horizontally-merged-cells.h" >}}