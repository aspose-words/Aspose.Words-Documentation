---
title: Python でのチャートの操作
second_title: Python via .NET用Aspose.Words
articleTitle: チャートの操作
linktitle: チャートの操作
description: "Python を使用して、ドキュメント内のさまざまなタイプのグラフを作成および変更します。"
type: docs
weight: 310
url: /ja/python-net/working-with-charts/
---

新しい [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) メソッドが [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) クラスに追加されました。それでは、[DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) メソッドを使用して単純な縦棒グラフをドキュメントに挿入する方法を見てみましょう。

### グラフを挿入する方法

このセクションでは、ドキュメントにグラフを挿入する方法を学習します。

### 縦棒グラフの挿入

次のコード例は、縦棒グラフを挿入する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

このコードは次の結果を生成します。

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


[add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/)、[add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/)、および [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/) メソッドがあり、すべてのチャート タイプのデータ ソースの可能なすべてのバリアントをカバーするために公開されました。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

このコードは次の結果を生成します。

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### 散布図の挿入

以下の例は、散布図を挿入する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

このコードは次の結果を生成します。

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### 面グラフの挿入

次のコード例は、面グラフを挿入する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

このコードは次の結果を生成します。

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### バブル チャートの挿入

次のコード例は、バブル チャートを挿入する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

このコードは次の結果を生成します。

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## Shape.chart オブジェクトを使用したグラフの操作

グラフを挿入してデータを入力したら、その外観を変更できます。 [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) プロパティには、パブリック API を通じて使用できるすべてのチャート関連のオプションが含まれています。

たとえば、[Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/) タイトルまたは凡例の動作を変更してみましょう。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

このコードは次の結果を生成します。

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## ChartSeries のチャートのコレクションの操作方法

[ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) コレクションを見てみましょう。すべてのチャート シリーズは [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/) コレクションを通じて利用できます。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

シリーズを 1 つずつ削除したり、すべてをクリアしたり、必要に応じて新しいシリーズを追加したりできます。新しく挿入されたグラフには、このコレクションにいくつかのデフォルト シリーズが追加されています。それらを削除するには、[chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/) メソッドを呼び出す必要があります。

## 単一の ChartSeries クラスの操作

特定のシリーズを操作する方法は次のとおりです。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

以下の結果をご覧ください。

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


すべての単一 [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) にはデフォルトの [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) オプションがあります。次のコードを使用してそれらを変更してみてください。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

以下の結果をご覧ください。

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## `ChartSeries` の単一の ChartDataPoint を操作する方法

[ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) を使用すると、グラフ シリーズの単一のデータ ポイントの書式設定をカスタマイズできます。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

以下の結果をご覧ください。

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## 単一の ChartSeries の ChartDataLabel を操作する方法

[ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) を使用すると、LegendKey、CategoryName、SeriesName、Value などの表示/非表示など、グラフ シリーズの単一のデータ ラベルの書式設定を指定できます。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

以下の結果をご覧ください。

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## ChartSeries の ChartDataLabels のデフォルト オプションを定義する方法

[ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) クラスは、チャート シリーズの [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) のデフォルト オプションを設定するために使用できるプロパティを定義します。これらのプロパティには、[show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/)、[show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/)、[show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/)、[show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/)、[show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) などが含まれます。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

以下の結果をご覧ください。

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## チャートデータラベルの番号をフォーマットする方法

[ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/) を使用すると、グラフの単一のデータ ラベルの数値書式設定を指定できます。

次のコード例は、データ ラベルの数値をフォーマットする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## グラフ軸のプロパティを設定する方法

グラフの軸、スケーリング、値軸の表示単位を操作する場合は、[ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/)、[AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/)、および [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/) クラスを使用してください。

次のコード例は、X 軸と Y 軸のプロパティを定義する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### 軸のDate時間値の設定方法

次のコード例は、日付/時刻値を軸プロパティに設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### 軸の数値をフォーマットする方法

次のコード例は、値軸の数値の形式を変更する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### 軸の境界を設定する方法

[AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) クラスは、軸値の最小値または最大値の境界を表します。 Bound は、数値、日時、または特別な「自動」値として指定できます。

次のコード例は、軸の境界を設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### ラベル間の間隔単位の設定方法

次のコード例は、軸上のラベル間の間隔単位を設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### グラフの軸を非表示にする方法

グラフの軸を表示または非表示にしたい場合は、[ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/) プロパティの値を設定するだけでこれを実現できます。

次のコード例は、グラフの Y 軸を非表示にする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### グラフのラベルを揃える方法

複数行ラベルのテキスト配置を設定したい場合は、[ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/) プロパティの値を設定するだけでこれを実現できます。

次のコード例は、ラベルの配置をチェックする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word は、デフォルトでグラフのラベルを中央に揃えます。

{{% /alert %}}

## 塗りつぶしとストロークの書式設定を設定する方法

塗りつぶしとストロークの書式設定は、グラフ シリーズ、データ ポイント、マーカーに設定できます。これを行うには、[ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/)、[ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/)、および [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/) クラスの [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) タイプのプロパティを使用するだけでなく、[Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) クラスの [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/)、[back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/)、[visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/)、[transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) などの一部のプロパティのエイリアスを使用する必要があります。

次のコード例は、シリーズの色を設定する方法を示しています。

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_chart(aw.drawing.charts.ChartType.COLUMN, 432, 252)

chart = shape.chart
seriesColl = chart.series

# Delete default generated series.
seriesColl.clear()

# Create category names array.
categories = [ "AW Category 1", "AW Category 2" ]

# Adding new series. Value and category arrays must be the same size.
series1 = seriesColl.add("AW Series 1", categories, [ 1, 2 ])
series2 = seriesColl.add("AW Series 2", categories, [ 3, 4 ])
series3 = seriesColl.add("AW Series 3", categories, [ 5, 6 ])

# Set series color.
series1.format.fill.fore_color = drawing.Color.red
series2.format.fill.fore_color = drawing.Color.yellow
series3.format.fill.fore_color = drawing.Color.blue

doc.save(docs_base.artifacts_dir + "WorkingWithCharts.set_series_color.docx")
{{< /highlight >}}

次のコード例は、線の色と太さを設定する方法を示しています。

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_chart(aw.drawing.charts.ChartType.LINE, 432, 252)

chart = shape.chart
seriesColl = chart.series

# Delete default generated series.
seriesColl.clear()

# Adding new series.
series1 = seriesColl.add_double("AW Series 1", [ 0.7, 1.8, 2.6 ], [ 2.7, 3.2, 0.8 ])
series2 = seriesColl.add_double("AW Series 2", [ 0.5, 1.5, 2.5 ], [ 3, 1, 2 ])

# Set series color.
series1.format.stroke.fore_color = drawing.Color.red
series1.format.stroke.weight = 5
series2.format.stroke.fore_color = drawing.Color.light_green
series2.format.stroke.weight = 5

doc.save(docs_base.artifacts_dir + "WorkingWithCharts.line_color_and_weight.docx")
{{< /highlight >}}
