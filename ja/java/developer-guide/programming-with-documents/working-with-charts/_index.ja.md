---
title: チャートでの作業 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: チャートと連携
linktitle: チャートと連携
description: "チャート機能の紹介、チャートの作成と操作方法 Javaお問い合わせ"
type: docs
weight: 310
url: /ja/java/working-with-charts/
---

新着記事 [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) メソッドを追加 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) クラス。 なので、簡単な列チャートをドキュメントに貼り付ける方法を見てみましょう。 **インサート チャート** メソッド。


## Scratchからチャートをインサートする方法 Aspose.Words

このセクションでは、チャートをドキュメントに差し込む方法を学びます。

###  インサート列チャート

以下のコード例では、カラムチャートをインサートする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

このコードでは、次の結果が生成されます。

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

シリーズの4つの異なる積み過ぎがあります Addメソッドは、すべてのチャートタイプのデータソースのすべての可能な variant をカバーするために公開されました。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

このコードでは、次の結果が生成されます。

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### インサートスキャッター チャート

次のコードの例では、スキャッターチャートをインサートする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

このコードでは、次の結果が生成されます。

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### インサートエリア チャート

次のコードの例では、エリアチャートをインサートする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

このコードでは、次の結果が生成されます。

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### インサートバブルチャート

次のコードの例では、バブルチャートをインサートする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

このコードでは、次の結果が生成されます。

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## チャートと連携 `Shape.Chart` オブジェクト

グラフを挿し込んだり、データを埋め込んだら、その外観を変更することができます。 [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) プロパティには、パブリックを通じて利用可能なすべてのチャート関連のオプションが含まれています APIお問い合わせ

例えば、変更してみましょう タイトルまたは凡例の行動をチャートに表示:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

以下の結果が生成されます。

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## チャートで働く方法シリーズチャートのコレクション

お問い合わせ [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) コレクション。 すべてのチャートシリーズは、 [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) コレクション、 **Iterable**:::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

必要に応じて、シリーズを1つずつ削除したり、全てをクリアしたり、新しいものを追加したりできます。 新しくインサートされたチャートには、このコレクションにデフォルトのシリーズが追加されています。 それらを削除するには、電話する必要があります **chart.getSeries().clear() () は、** メソッド。

## シングルチャートで作業するシリーズクラス

特定のシリーズを扱う方法は次のとおりです。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

下記の結果をご覧ください。

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

すべてのシングル [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) デフォルト [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) オプションは、次のコードを使って変更してください。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## シングルチャートで作業する方法データポイント `ChartSeries`

使用方法 [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) チャートシリーズの単一のデータポイントのフォーマットをカスタマイズできます。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

下記の結果をご覧ください。

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## シングルチャートのChartDataLabelと連携する方法

使用方法 [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) show/hide LegendKey、カテゴリ名、シリーズ名などのチャートシリーズの単一のデータラベルのフォーマットを指定できます。 価値等:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

下記の結果をご覧ください。

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## ChartSeriesのChartDataLabelのデフォルトオプションを定義する方法

ザ・オブ・ザ・ [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) class はデフォルトオプションを設定するために使用できるプロパティを定義します。 **ChartDataLabels** チャート **Series**お問い合わせ これらのプロパティには setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShow 価値等:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

下記の結果をご覧ください。

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## チャートデータラベルの数をフォーマットする方法

使い方 [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) プロパティは、チャートの単一のデータラベルの数値フォーマットを指定できます。

次のコードの例では、データラベルの数をフォーマットする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## チャートの軸線のプロパティを設定する方法

チャートの軸線、スケーリング、値軸のディスプレイユニットと連携したい場合は、是非ご利用ください。 [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), そして、 [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) クラス。

次のコードの例では、X と Y 軸のプロパティを定義する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### 設定方法 Date軸線の時間価値

次のコードの例では、日付/時刻値を軸プロパティに設定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### 軸の数値値をフォーマットする方法

次のコードの例では、値軸の数値の形式を変更する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### 軸の境界を設定する方法

ザ・オブ・ザ・ `AxisBound` クラスは、軸値の最小値または最大値を表します。 境界は数値、日付、または特別な「自動」値として指定できます。

次のコードの例では、軸の境界を設定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### ラベル間のインターバルユニットを設定する方法

次のコードの例では、ラベル間の間隔単位を軸にセットする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### チャート軸を隠す方法

チャートの軸線を表示または非表示にしたい場合は、単に値を設定することでこれを達成することができます `ChartAxis.Hidden` プロパティ.

次のコードの例では、チャートのY軸を隠す方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### チャートラベルをアライメントする方法

複数行ラベルのテキストアライメントを設定したい場合は、値を設定することでこれを実現できます。 [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) プロパティ.

次のコードの例では、ラベルのアライメントをティックする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word アライメント デフォルトでは、ラベルを中央に表示します。

{{% /alert %}}

## 充填とストロークのフォーマットを設定する方法

チャートシリーズ、データポイント、マーカーの設定ができます。 これを行うには、のプロパティを使用する必要があります。 `ChartFormat` ChartSeries、ChartDataPoint、ChartMarkerクラス、およびForeColor、BackColor、Visible、Transparencyなどのプロパティのエイリアス `Stroke` クラス。

次のコードの例では、シリーズの色を設定する方法を示します。

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

次のコードの例では、線の色と重量を設定する方法を示します。

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
