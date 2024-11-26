---
title: Javaでのチャートの操作
second_title: Aspose.WordsのためのJava
articleTitle: チャートの操作
linktitle: チャートの操作
description: "チャート機能の紹介、Javaを使用してチャートを作成および操作する方法。"
type: docs
weight: 310
url: /ja/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

新しい[insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double)メソッドが[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)クラスに追加されました。 それでは、**insertChart**メソッドを使用して簡単な縦棒グラフを文書に挿入する方法を見てみましょう。


## Aspose.Wordsを使用してグラフを最初から挿入する方法

このセクションでは、ドキュメントにチャートを挿入する方法を学習します。

###  縦棒グラフの挿入

縦棒グラフを挿入する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

このコードでは、次の結果が生成されます:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

これらのオーバーロードは、すべてのグラフタイプのデータソースのすべての可能なバリアントをカバーするために公開されていました:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

このコードでは、次の結果が生成されます:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### 散布図の挿入

散布図を挿入する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

このコードでは、次の結果が生成されます:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### 面グラフの挿入

面グラフを挿入する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

このコードでは、次の結果が生成されます:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### バブルチャートの挿入

バブルチャートを挿入する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

このコードでは、次の結果が生成されます:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## `Shape.Chart`オブジェクトを使用したチャートの操作

グラフが挿入されてデータが入力されると、その外観を変更することができます。 [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart)プロパティには、パブリックAPIを通じて利用可能なすべてのチャート関連オプションが含まれています。

たとえば、グラフのタイトルや凡例の動作を変更しましょう:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

このコードは、次の結果を生成します:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## チャートのChartSeriesCollectionを操作する方法

[ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/)コレクションを見てみましょう。 すべてのチャートシリーズは[chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries)コレクション(**Iterable**)を通じて利用できます:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

シリーズを1つずつ削除したり、すべてをクリアしたり、必要に応じて新しいシリーズを追加したりできます。 新しく挿入されたグラフには、このコレクションにいくつかの既定の系列が追加されています。 それらを削除するには、**chart.getSeries().clear()**メソッドを呼び出す必要があります。

## 単一のChartSeriesクラスの操作

特定のシリーズを操作する方法は次のとおりです。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

以下の結果をご覧ください:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

すべての単一の[ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/)にはデフォルトの[ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/)オプションがあります。:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## `ChartSeries`の単一のChartDataPointで作業する方法

[ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/)を使用すると、グラフ系列の単一のデータポイントの書式をカスタマイズできます:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

以下の結果をご覧ください:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## 単一のChartDataLabelのChartSeriesを操作する方法

[ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/)を使用すると、表示/非表示のように、グラフシリーズの単一のデータラベルの書式を指定できますLegendKey, CategoryName, SeriesName, 値など:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

以下の結果をご覧ください:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## ChartDataLabelsのChartSeriesのデフォルトオプションを定義する方法

[ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/)クラスは、チャート**Series**の**ChartDataLabels**のデフォルトオプションを設定するために使用できるプロパティを定義します。 これらのプロパティは次のとおりです。setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue 等:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

以下の結果をご覧ください:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## チャートデータラベルの数を書式設定する方法

[NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat)プロパティを使用すると、グラフの単一のデータラベルの数値書式を指定できます。

次のコード例は、データラベルの番号を書式設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## グラフ軸のプロパティを設定する方法

グラフ軸、スケーリング、および値軸の表示単位を操作する場合は、[ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/)、[AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/)、および[AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/)クラスを使用してください。

次のコード例は、X軸とY軸のプロパティを定義する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### 軸のDateTime値を設定する方法

次のコード例は、日付/時刻の値を軸のプロパティに設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### 軸の数値をフォーマットする方法

次のコード例は、値軸の数値の形式を変更する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### 軸の境界を設定する方法

`AxisBound`クラスは、軸値の最小または最大の境界を表します。 Boundは、数値、日付/時刻、または特別な"auto"値として指定できます。

次のコード例は、軸の境界を設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### ラベル間の間隔単位を設定する方法

次のコード例は、軸上のラベル間の間隔単位を設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### グラフの軸を非表示にする方法

グラフ軸を表示または非表示にする場合は、`ChartAxis.Hidden`プロパティの値を設定するだけでこれを実現できます。

次のコード例は、グラフのY軸を非表示にする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### グラフのラベルを揃える方法

複数行ラベルのテキスト配置を設定する場合は、[setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int)プロパティの値を設定するだけでこれを実現できます。

次のコード例は、ラベルの配置をチェックする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word既定では、グラフのラベルを中央に揃えます。

{{% /alert %}}

## 塗りと線の書式設定を設定する方法

塗りつぶしと線の書式設定は、グラフシリーズ、データポイント、およびマーカーに設定できます。 これを行うには、ChartSeries、ChartDataPoint、ChartMarkerクラスの`ChartFormat`型のプロパティと、`Stroke`クラスのForeColor、BackColor、Visible、Transparencyなどの一部のプロパティのエイリアスを使用する必要があります。

次のコード例は、シリーズの色を設定する方法を示しています:

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

doc.Save("ColumnColor.docx");
{{< /highlight >}}

次のコード例は、線の色と太さを設定する方法を示しています:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

Shape shape = builder.InsertChart(ChartType.Line, 432, 252);

Chart chart = shape.Chart;
ChartSeriesCollection seriesColl = chart.Series;

// Delete default generated series.
seriesColl.Clear();

// Adding new series.
ChartSeries series1 = seriesColl.Add("AW Series 1", new double[] { 0.7, 1.8, 2.6 }, new double[] { 2.7, 3.2, 0.8 });
ChartSeries series2 = seriesColl.Add("AW Series 2", new double[] { 0.5, 1.5, 2.5 }, new double[] { 3, 1, 2 });

// Set series color.
series1.Format.Stroke.ForeColor = Color.Red;
series1.Format.Stroke.Weight = 5;
series2.Format.Stroke.ForeColor = Color.LightGreen;
series2.Format.Stroke.Weight = 5;

doc.Save("LineColorAndWeight.docx");
{{< /highlight >}}
