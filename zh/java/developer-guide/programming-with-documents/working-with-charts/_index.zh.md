---
title: 使用Java中的图表
second_title: Aspose.Words为Java
articleTitle: 使用图表
linktitle: 使用图表
description: "图表功能简介,如何使用Java创建和操作图表."
type: docs
weight: 310
url: /zh/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

新的[insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double)方法被添加到[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)类中。 所以，让我们看看如何使用**insertChart**方法将简单的柱形图插入到文档中。


## 如何使用Aspose.Words从头开始插入图表

在本节中，我们将学习如何将图表插入到文档中。

###  插入柱形图

下面的代码示例演示如何插入柱形图:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

代码产生以下结果:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Series Add方法有四种不同的重载，这些重载被公开以涵盖所有图表类型的数据源的所有可能变体:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

代码产生以下结果:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### 插入散点图

下面的代码示例演示如何插入散点图:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

代码产生以下结果:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### 插入面积图

下面的代码示例演示如何插入面积图:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

代码产生以下结果:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### 插入气泡图

下面的代码示例演示如何插入气泡图:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

代码产生以下结果:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## 通过`Shape.Chart`对象处理图表

一旦图表被插入并填充了数据，您就可以改变它的外观。 [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart)属性包含通过公共API提供的所有图表相关选项。

例如，让我们更改图表标题或图例行为:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

代码生成如下结果:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## 如何使用图表的ChartSeriesCollection

让我们来看看[ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/)集合。 所有图表系列都可以通过[chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries)集合获得，即**Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

您可以逐个删除系列或清除所有系列，并在需要时添加新系列。 新插入的图表有一些默认序列添加到此集合中。 要删除它们，您需要调用**chart.getSeries().clear()**方法。

## 使用单个ChartSeries类

以下是如何使用特定系列。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

请参阅下面的结果:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

所有单个[ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/)都有默认的[ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/)选项，请尝试使用以下代码更改它们:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## 如何使用`ChartSeries`的单个ChartDataPoint

使用[ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/)，您可以自定义图表系列的单个数据点的格式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

请参阅下面的结果:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## 如何使用单个ChartSeries的ChartDataLabel

使用[ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/)，您可以指定图表系列的单个数据标签的格式，如显示/隐藏LegendKey, CategoryName, SeriesName, 价值等:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

请参阅下面的结果:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## 如何为ChartSeries的ChartDataLabels定义默认选项

[ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/)类定义可用于为图表**Series**设置**ChartDataLabels**的默认选项的属性。 这些属性包括setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue 等:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

请参阅下面的结果:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## 如何格式化图表数据标签的数量

使用[NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat)属性，可以指定图表的单个数据标签的数字格式。

下面的代码示例演示如何格式化数据标签的数字:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## 如何设置图表轴属性

如果要为值轴处理图表轴、缩放和显示单位，请使用[ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/)、[AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/)和[AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/)类。

下面的代码示例演示如何定义X和Y轴属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### 如何设置轴的DateTime值

下面的代码示例演示如何将日期/时间值设置为轴属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### 如何格式化轴的数值

下面的代码示例演示如何更改值轴上的数字格式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### 如何设置轴的边界

`AxisBound`类表示轴值的最小值或最大值。 绑定可以指定为数字，日期时间或特殊的"自动"值。

下面的代码示例演示如何设置轴的边界:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### 如何设置标签之间的间隔单位

下面的代码示例演示如何设置轴上标签之间的间隔单位:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### 如何隐藏图表轴

如果要显示或隐藏图表轴，只需通过设置`ChartAxis.Hidden`属性的值即可实现此目的。

下面的代码示例演示如何隐藏图表的Y轴:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### 如何对齐图表标签

如果要为多行标签设置文本对齐方式，可以通过设置[setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int)属性的值来简单地实现这一点。

下面的代码示例演示如何勾选标签对齐:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word默认情况下将图表标签对齐到中心。

{{% /alert %}}

## 如何设置填充和笔画格式

可以为图表系列、数据点和标记设置填充和笔画格式。 为此，您需要在ChartSeries，ChartDataPoint和ChartMarker类中使用`ChartFormat`类型的属性，以及某些属性的别名，例如ForeColor，BackColor，可见和`Stroke`类中的透明度。

下面的代码示例演示如何设置系列颜色:

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

下面的代码示例演示如何设置线条颜色和权重:

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
