---
title: C# でのチャートの操作
second_title: .NET用Aspose.Words
articleTitle: チャートの操作
linktitle: チャートの操作
description: "チャート機能の概要、C# を使用してチャートを作成および操作する方法。"
type: docs
weight: 310
url: /ja/net/working-with-charts/
---

新しい [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) メソッドが [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) クラスに追加されました。それでは、[InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) メソッドを使用して文書に単純な縦棒グラフを挿入する方法を見てみましょう。

## グラフを挿入する方法

このセクションでは、ドキュメントにグラフを挿入する方法を学びます。

### 縦棒グラフの挿入

次のコード例は、縦棒グラフを挿入する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

このコードは次の結果を生成します。

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


シリーズの Add メソッドには 4 つの異なるオーバーロードがあり、すべてのグラフ タイプのデータ ソースの可能なすべてのバリアントをカバーするために公開されました。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

このコードは次の結果を生成します。

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### 散布図の挿入

次のコード例は、散布図を挿入する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

このコードは次の結果を生成します。

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### 面グラフの挿入

次のコード例は、面グラフを挿入する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

このコードは次の結果を生成します。

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### バブル チャートの挿入

次のコード例は、バブル チャートを挿入する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

このコードは次の結果を生成します。

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## `Shape.Chart` オブジェクトを使用したチャートの操作

グラフを挿入してデータを入力したら、その外観を変更できます。 `Shape.Chart` プロパティには、パブリック API を通じて使用できるすべてのチャート関連のオプションが含まれています。

たとえば、グラフのタイトルまたは凡例の動作を変更してみましょう。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

このコードは次の結果を生成します。

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## ChartSeries のチャートのコレクションの操作方法

[ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) コレクションを見てみましょう。すべてのグラフ シリーズは、**IEnumerable** である [chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/) コレクションを通じて利用できます。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

シリーズを 1 つずつ削除したり、すべてをクリアしたり、必要に応じて新しいシリーズを追加したりできます。新しく挿入されたグラフには、このコレクションにいくつかのデフォルト シリーズが追加されています。それらを削除するには、**chart.Series.Clear()** メソッドを呼び出す必要があります。

## 単一の ChartSeries クラスの操作

特定のシリーズを操作する方法は次のとおりです。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

以下の結果をご覧ください。

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


すべての単一 [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) にはデフォルトの [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) オプションがあります。次のコードを使用してそれらを変更してみてください。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

以下の結果をご覧ください。

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## `ChartSeries` の単一の ChartDataPoint を操作する方法

[ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) を使用すると、グラフ シリーズの単一のデータ ポイントの書式設定をカスタマイズできます。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

以下の結果をご覧ください。

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## 単一の ChartSeries の ChartDataLabel を操作する方法

[ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) を使用すると、LegendKey、CategoryName、SeriesName、Value などの表示/非表示など、グラフ シリーズの単一のデータ ラベルの書式設定を指定できます。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

以下の結果をご覧ください。

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## ChartSeries の ChartDataLabels のデフォルト オプションを定義する方法

[ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) クラスは、チャート **Series** の **ChartDataLabels** のデフォルト オプションを設定するために使用できるプロパティを定義します。これらのプロパティには、ShowCategoryName、ShowBubbleSize、ShowPercentage、ShowSeriesName、ShowValue などが含まれます。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

以下の結果をご覧ください。

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## チャートデータラベルの番号をフォーマットする方法

[NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) を使用すると、グラフの単一のデータ ラベルの数値書式設定を指定できます。

次のコード例は、データ ラベルの数値をフォーマットする方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## グラフ軸のプロパティを設定する方法

グラフの軸、スケーリング、値軸の表示単位を操作する場合は、[ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/)、[AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/)、および [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/) クラスを使用してください。

次のコード例は、X 軸と Y 軸のプロパティを定義する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### 軸のDate時間値の設定方法

次のコード例は、日付/時刻値を軸プロパティに設定する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### 軸の数値をフォーマットする方法

次のコード例は、値軸の数値の形式を変更する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### 軸の境界を設定する方法

`AxisBound` クラスは、軸値の最小値または最大値の境界を表します。 Bound は、数値、日時、または特別な「自動」値として指定できます。

次のコード例は、軸の境界を設定する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### ラベル間の間隔単位の設定方法

次のコード例は、軸上のラベル間の間隔単位を設定する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### グラフの軸を非表示にする方法

グラフの軸を表示または非表示にしたい場合は、`ChartAxis.Hidden` プロパティの値を設定するだけでこれを実現できます。

次のコード例は、グラフの Y 軸を非表示にする方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### グラフのラベルを揃える方法

複数行ラベルのテキスト配置を設定したい場合は、[TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.配置** プロパティの値を設定するだけでこれを実現できます。

次のコード例は、ラベルの配置をチェックする方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word は、デフォルトでグラフ ラベルを中央に配置します。

{{% /alert %}}

## 塗りつぶしとストロークの書式設定を設定する方法

塗りつぶしとストロークの書式設定は、グラフ シリーズ、データ ポイント、マーカーに設定できます。これを行うには、**ChartSeries**、**ChartDataPoint**、および **ChartMarker** クラスの **ChartFormat** タイプのプロパティを使用するだけでなく、`Stroke` クラスの ForeColor、BackColor、Visible、Transparency などの一部のプロパティのエイリアスを使用する必要があります。

次のコード例は、シリーズの色を設定する方法を示しています。

{{< highlight csharp >}}

Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

Shape shape = builder.InsertChart(ChartType.Column, 432, 252);

Chart chart = shape.Chart;
ChartSeriesCollection seriesColl = chart.Series;

// Delete default generated series.
seriesColl.Clear();

// Create category names array.
string[] categories = new string[] { "AW Category 1", "AW Category 2" };

// Adding new series. Value and category arrays must be the same size.
ChartSeries series1 = seriesColl.Add("AW Series 1", categories, new double[] { 1, 2 });
ChartSeries series2 = seriesColl.Add("AW Series 2", categories, new double[] { 3, 4 });
ChartSeries series3 = seriesColl.Add("AW Series 3", categories, new double[] { 5, 6 });

// Set series color.
series1.Format.Fill.ForeColor = Color.Red;
series2.Format.Fill.ForeColor = Color.Yellow;
series3.Format.Fill.ForeColor = Color.Blue;

doc.Save(dir + "ColumnColor.docx");
{{< /highlight >}}

次のコード例は、線の色と太さを設定する方法を示しています。

{{< highlight csharp >}}

Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

Shape shape = builder.InsertChart(ChartType.Line, 432, 252);

Chart chart = shape.Chart;
ChartSeriesCollection seriesColl = chart.Series;

// Delete default generated series.
seriesColl.Clear();

// Adding new series.
ChartSeries series1 = seriesColl.Add("AW Series 1", new double[] { 0.7, 1.8, 2.6 },
	new double[] { 2.7, 3.2, 0.8 });
ChartSeries series2 = seriesColl.Add("AW Series 2", new double[] { 0.5, 1.5, 2.5 },
	new double[] { 3, 1, 2 });

// Set series color.
series1.Format.Stroke.ForeColor = Color.Red;
series1.Format.Stroke.Weight = 5;
series2.Format.Stroke.ForeColor = Color.LightGreen;
series2.Format.Stroke.Weight = 5;

doc.Save(dir + "LineColorAndWeight.docx");
{{< /highlight >}}
