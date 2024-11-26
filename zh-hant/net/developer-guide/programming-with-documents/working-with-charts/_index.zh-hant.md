---
title: 在C#中與圖表一起工作
second_title: Aspose.Words for .NET
articleTitle: 在圖表上工作
linktitle: 在圖表上工作
description: "圖表功能簡介，如何使用C#來建立及操作圖表。"
type: docs
weight: 310
url: /zh-hant/net/working-with-charts/
timestamp: 2024-02-05-15-07-18
---

新 [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) 方法被加入到 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 類別中。 所以，讓我們看看如何透過 [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) 方法將簡單的柱狀圖插入到文件中。

## 如何插入圖表

在本節中，我們將學習如何將一張圖表插入到文件中。

### 插入列圖表

以下範例顯示如何插入 cột biểu đồ：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

程式碼會產生以下結果：

![create-column-chart-aspose-words-net](working-with-charts-1.png)


Add 圖表的方法有四個不同的過載，被公開以涵蓋所有可能資料來源的各種圖表類型：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

程式碼會產生以下結果。

![create-column-chart-from-datasource-aspose-words-net](working-with-charts-2.png)

### 插入散點圖

以下示例程式碼說明了如何插入散布圖：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

程式碼會產生以下結果：

![scatter-chart-aspose-words-net](working-with-charts-3.png)

### 插入區域圖表

接下來的程式碼範例說明如何插入面積圖：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

程式碼會產生以下結果：

![area-chart-aspose-words-net](working-with-charts-4.png)

### 插入氣泡圖表

下面的程式碼範例示範了如何插入一個氣泡圖表：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

程式碼會產生以下結果：

![bubble-chart-aspose-words-net](working-with-charts-5.png)

## 透過 `Shape.Chart` 物件使用圖表

一旦圖表插入並填入資料，您就可以改變它的外觀。`Shape.Chart`屬性包含所有可透過公開的API選用的圖表相關選項。

例如，讓我們改變圖表標題或圖例行為：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

程式碼產生以下結果：

![line-chart-aspose-words-net](working-with-charts-6.png)

## 如何在圖表中操作 ChartSeriesCollection

讓我們看一下 [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) 的收藏。 所有圖表系列都透過[chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/)集合可用，是**IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

您可以逐一移除第一系列，或清除全部，以及如果需要的話，再增加新的。 新插入的圖表新增了一些預設的系列到此集合中。 要移除它們你需要呼叫 **chart.Series.Clear()** 這個方法。

## 使用 Single ChartSeries 類別

以下是如何與特定系列一起工作的方式：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

請見下面的結果：

![line-chart-chartseries-aspose-words-net](working-with-charts-7.png)


所有單項 [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) 都有預設 [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) 選項，請試著使用以下程式碼來改變它們：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

請見下面的結果：

![line-chart-chartdatapoint-aspose-words-net](working-with-charts-8.png)

## 如何使用 `ChartSeries` 的單個 ChartDataPoint

使用 [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/)，您可以自訂圖表系列中的單一數據點格式：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

請看結果如下：

![line-chart-datapoint-aspose-words-net](working-with-charts-9.png)

## 如何使用圖表數據標籤來處理單一圖表系列

使用 [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/)，您可以指定圖列中單個資料標籤的格式，例如顯示/隱藏LegendKey、CategoryName、SeriesName、Value 等。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

請看以下結果。

![bar-chart-aspose-words-net](working-with-charts-10.png)

## 如何在 ChartSeries 中為 ChartDataLabels 定義預設選項？

[ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) 類別定義了可用來設定圖表 **ChartDataLabels** 的預設選項的屬性，用於 **Series**。 這些屬性包括 ShowCategoryName、ShowBubbleSize、ShowPercentage、ShowSeriesName、ShowValue 等。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

請看下面的結果：

![pie-chart-aspose-words-net](working-with-charts-11.png)

## 如何格式化圖表資料標籤

使用 [NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) 您可以指定圖表中單一資料標籤的格式。

以下範例程式碼示範了如何格式化資料標籤上的數值：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## 如何設定圖表軸屬性

如果您要工作於圖表軸，尺度和顯示單位為值軸，請使用 [ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/)、[AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/) 和 [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/) 類別。

接下來的程式碼範例示範了如何定義 X 和 Y 軸屬性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### 如何設定軸的 Date 秒數值

以下範例顯示如何將日期/時間值設定為軸屬性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### 如何格式化軸上的數字值

以下範例顯示如何改變值軸上的數字格式：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### 如何設定軸的範圍

`AxisBound`類別代表了軸值最小或最大界限。 Bound可以指定為數值、日期時間或特殊之auto值。

以下程式碼示例範示了如何設定軸的範圍：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### 如何設定標籤之間的間隔單位

接下來這段程式碼範例示範了如何在軸上設定標籤之間的間隔單位：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### 如何隱藏圖表軸線

若您想要顯示或隱藏圖表軸，您可以簡單地透過設定 `ChartAxis.Hidden` 屬性的值來達成此目的。

以下程式碼示例說明了如何將圖表的Y軸隱藏：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### 如何對齊圖表標籤

若您希望設定多行標籤的文字對齊，您可以透過設定 [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.對齊方式** 屬性的值來簡單地達成此目標。

接下來的程式碼示例顯示如何調整標籤對齊方式：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word 預設會將圖表標籤對齊到中心。

{{% /alert %}}

## 如何設定填充和筆劃格式化

您可以為圖表系列、資料點及標記設定填充和筆劃格式。 要做到這一點，您需要在 **ChartFormat** 類別中使用類型的特性、在 **ChartSeries**、**ChartDataPoint** 和 **ChartMarker** 類別使用類別特性，以及使用一些屬性的別名，例如 `Stroke` 類別中的 ForeColor、BackColor、Visible 和 Transparency。

以下範例說明如何設定系列顏色：

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

以下範例說明如何設定線條的顏色與寬度：

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
