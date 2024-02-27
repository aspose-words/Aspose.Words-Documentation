---
title: 使用 C# 中的图表
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用图表
linktitle: 使用图表
description: "图表功能简介，如何使用 C# 创建和操作图表。"
type: docs
weight: 310
url: /zh/net/working-with-charts/
---

新的 [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) 方法已添加到 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 类中。那么，让我们看看如何使用 [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) 方法将简单的柱形图插入到文档中。

## 如何插入图表

在本节中，我们将学习如何将图表插入到文档中。

### 插入柱形图

以下代码示例展示了如何插入柱形图：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

该代码产生以下结果：

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


系列 Add 方法有四种不同的重载，该方法被公开以涵盖所有图表类型的数据源的所有可能变体：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

该代码产生以下结果：

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### 插入散点图

以下代码示例展示了如何插入散点图：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

该代码产生以下结果：

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### 插入面积图

以下代码示例展示了如何插入面积图：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

该代码产生以下结果：

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### 插入气泡图

以下代码示例展示了如何插入气泡图：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

该代码产生以下结果：

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## 通过 `Shape.Chart` 对象使用图表

插入图表并填充数据后，您就可以更改其外观。 `Shape.Chart` 属性包含通过公共 API 提供的所有图表相关选项。

例如，让我们更改图表标题或图例行为：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

该代码生成以下结果：

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## 如何使用 ChartSeries 图表集合

让我们看看 [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) 集合。所有图表系列均可通过 [chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/) 集合获取，该集合为 **IEnumerable**：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

您可以逐个删除系列或清除所有系列，也可以根据需要添加新系列。新插入的图表已添加到此集合中的一些默认系列。要删除它们，您需要调用 **图表.Series.Clear()** 方法。

## 使用单个 ChartSeries 类

以下是如何使用特定系列：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

请看下面的结果：

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


所有单个 [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) 都有默认的 [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) 选项，请尝试使用以下代码更改它们：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

请看下面的结果：

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## 如何使用 `ChartSeries` 的单个 ChartDataPoint

使用 [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/)，您可以自定义图表系列的单个数据点的格式：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

请看下面的结果：

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## 如何使用单个 ChartSeries 的 ChartDataLabel

使用 [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/)，您可以指定图表系列的单个数据标签的格式，例如显示/隐藏 LegendKey、CategoryName、SeriesName、Value 等：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

请看下面的结果：

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## 如何定义 ChartSeries 的 ChartDataLabels 的默认选项

[ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) 类定义可用于设置图表 **Series** 的 **ChartDataLabels** 默认选项的属性。这些属性包括 ShowCategoryName、ShowBubbleSize、ShowPercentage、ShowSeriesName、ShowValue 等：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

请看下面的结果：

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## 如何设置图表数据标签数量的格式

使用 [NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/)，您可以指定图表的单个数据标签的数字格式。

下面的代码示例展示了如何格式化多个数据标签：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## 如何设置图表轴属性

如果您想使用图表轴、缩放比例和值轴的显示单位，请使用 [ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/)、[AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/) 和 [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/) 类。

以下代码示例显示如何定义 X 轴和 Y 轴属性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### 如何设置轴的 Date 时间值

以下代码示例显示如何将日期/时间值设置为轴属性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### 如何格式化轴的数值

以下代码示例演示如何更改值轴上的数字格式：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### 如何设置轴的界限

`AxisBound` 类表示轴值的最小或最大界限。绑定可以指定为数字、日期时间或特殊的"自动"值。

以下代码示例展示了如何设置轴的边界：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### 如何设置标签之间的间隔单位

以下代码示例显示如何设置轴上标签之间的间隔单位：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### 如何隐藏图表轴

如果要显示或隐藏图表轴，只需设置 `ChartAxis.Hidden` 属性的值即可实现。

以下代码示例展示了如何隐藏图表的 Y 轴：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### 如何对齐图表标签

如果要设置多行标签的文本对齐方式，只需设置 [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**。结盟** 属性的值即可实现。

以下代码示例展示了如何勾选标签对齐：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word 默认将图表标签居中对齐。

{{% /alert %}}

## 如何设置填充和描边格式

可以为图表系列、数据点和标记设置填充和描边格式。为此，您需要使用 **ChartSeries**、**ChartDataPoint** 和 **ChartMarker** 类中 **ChartFormat** 类型的属性，以及 `Stroke` 类中某些属性的别名，例如 ForeColor、BackColor、Visible 和 Transparency。

以下代码示例展示了如何设置系列颜色：

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

以下代码示例展示了如何设置线条颜色和粗细：

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
