---
title: C# でのテーブルセルの結合
second_title: .NET用Aspose.Words
articleTitle: 表のセルを結合する
linktitle: 表のセルを結合する
description: "C# で表のセルを結合する方法。表内のセルが C# を使用して結合されているかどうかを確認します。"
type: docs
weight: 40
url: /ja/net/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

表内の特定の行には、表の全幅を占める見出しまたは大きなテキスト ブロックが必要な場合があります。テーブルを適切に設計するために、ユーザーは複数のテーブル セルを 1 つにマージできます。 Aspose.Words は、HTML コンテンツのインポートを含むすべての入力形式を操作するときに、結合されたセルをサポートします。

## 表のセルを結合する方法

Aspose.Words では、結合されたセルは [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) クラスの次のプロパティによって表されます。

- セルがセルの水平結合の一部であるかどうかを説明する [HorizontalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/horizontalmerge/)
- セルがセルの垂直結合の一部であるかどうかを説明する [VerticalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/verticalmerge/)

これらのプロパティの値は、セルの結合動作を決定します。

- 結合された一連のセルの最初のセルには [CellMerge.First](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/) が含まれます。
- その後マージされたセルには [CellMerge.Previous](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/) が含まれます。
- マージされていないセルには [CellMerge.None](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/) が含まれます。

{{% alert color="primary" %}}

既存の文書セルを表にロードすると、セルが結合されて表示されることがあります。ただし、実際には 1 つの長いセルである可能性があり、Microsoft Word がこの方法で結合されたセルをエクスポートする場合があります。これは、個々のセルを操作しようとする場合に混乱を招く可能性がありますが、これがいつ起こるかについては、特定のパターンはないようです。

{{% /alert %}}

## セルが結合されているかどうかを確認する

セルが結合された一連のセルの一部であるかどうかを確認するには、**HorizontalMerge** プロパティと **VerticalMerge** プロパティを確認するだけです。

次のコード例は、水平セルと垂直セルの結合タイプを印刷する方法を示しています。

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "check-cells-merged.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx) からダウンロードできます。

{{% /alert %}}

## DocumentBuilder 使用時の表のセルの結合

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) で作成されたテーブル内のセルを結合するには、結合が予想されるセルごとに適切な結合タイプ (最初に **CellMerge.First**、次に **CellMerge.Previous**) を設定する必要があります。

また、マージが必要ないセルのマージ設定を忘れずにクリアする必要があります。これを行うには、最初の非マージ セルを **CellMerge.None** に設定します。これを行わないと、テーブル内のすべてのセルが結合されてしまいます。

次のコード例は、最初の行のセルが水平方向に結合された 2 行のテーブルを作成する方法を示しています。

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-merge.cs" >}}

次のコード例は、最初の列のセルが垂直方向に結合された 2 列のテーブルを作成する方法を示しています。

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "vertical-merge.cs" >}}

## 他のケースでの表のセルの結合

既存のテーブルなど、**DocumentBuilder** が使用されない他の状況では、前の方法でセルを結合するのはそれほど簡単ではない可能性があります。代わりに、結合プロパティをセルに適用する際の基本的な操作を、タスクをはるかに簡単にするメソッドでラップすることができます。このメソッドは、テーブル内のセル範囲を結合するために呼び出される Merge オートメーション メソッドに似ています。

以下のコードは、指定されたセルから開始して最後のセルで終了する、指定された範囲内の表のセルを結合します。この場合、範囲は複数の行または列にまたがることができます。

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cells.cs" >}}

次のコード例は、指定した 2 つのセル間のセル範囲を結合する方法を示しています。

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cell-range.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx) からダウンロードできます。

{{% /alert %}}

使用している .NET Framework のバージョンによっては、このメソッドを拡張メソッドに変換して改良することができます。この場合、セル上でこのメソッドを直接呼び出して、`cell1.Merge(cell2)` などのセル範囲を結合できます。

## HTML テーブル内の垂直セルと水平セルの結合

以前の記事で述べたように、Microsoft Word のテーブルは独立した行のセットです。各行には、他の行のセルから独立した一連のセルがあります。したがって、Microsoft Word テーブルには「列」などのオブジェクトは存在せず、「1 列目」は「テーブルの各行の最初のセルの集合」のようなものです。これにより、ユーザーは、たとえば、1 行目が幅 2cm と 1cm の 2 つのセルで構成され、2 行目が幅 1cm と 2cm の 2 つの異なるセルで構成される表を作成できるようになります。そして、Aspose.Words はこのテーブルの概念をサポートしています。

HTML のテーブルは本質的に異なる構造をしています。各行には同じ数のセルがあり、(タスクにとって重要です) 各セルは対応する列の幅を持ち、1 つの列内のすべてのセルで同じです。したがって、**HorizontalMerge** と **VerticalMerge** が間違った値を返す場合は、次のコード例を使用してください。

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "print-horizontal-and-vertical-merged.cs" >}}

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-and-vertical-merge-helper-classes.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx) からダウンロードできます。

{{% /alert %}}

## 水平方向に結合されたセルに変換

一部の新しいバージョンの Microsoft Word では、セルが水平方向に結合されるときに結合フラグが使用されなくなったため、どのセルが結合されたのかを検出できない場合があります。ただし、マージ フラグを使用してセルが幅ごとに水平方向に 1 つのセルにマージされる場合、Aspose.Words はセルを変換する `ConvertToHorizontallyMergedCells` メソッドを提供します。このメソッドは、テーブルを変換し、必要に応じて新しいセルを追加するだけです。

次のコード例は、上記のメソッドの動作を示しています。

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "convert-to-horizontally-merged-cells.cs" >}}
