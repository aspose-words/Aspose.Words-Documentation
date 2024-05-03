---
title: 与图表一起工作 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 使用图表
linktitle: 使用图表
description: "图表特性介绍,如何使用 Java。 。 。 。"
type: docs
weight: 310
url: /zh/java/working-with-charts/
---

新的 [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) 方法被添加到 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 课。 因此,让我们看看如何在文档中插入一个简单的列图。 **插入 图表** 方法。


## 如何使用刷新插入图表 Aspose.Words

在本节中,我们将学会如何在文件中插入图表。

###  插入列图

以下代码示例显示如何插入列图:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

代码产生以下结果:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

这个系列有四个不同的超载 添加方法,该方法将覆盖所有图表类型数据源的所有可能的变体:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

代码产生以下结果:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### 插入散点 图表

以下代码示例显示如何插入散射图:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

代码产生以下结果:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### 插入区域 图表

以下代码示例显示如何插入一个区域图:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

代码产生以下结果:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### 插入泡泡图

以下代码示例显示如何插入气泡图:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

代码产生以下结果:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## 与图表一起工作通过 `Shape.Chart` 对象

一旦图表被插入并充满数据,您就可以改变其外观。 [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) 属性包含所有通过公众提供的图表相关选项 API。 。 。 。

比如,让我们改变 图表标题或传说行为:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

代码生成以下结果:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## 如何使用图表集

让我们看看 [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) 藏书。 所有图表系列均可通过 [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) 收藏,即 **Iterable**编号:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

您可以逐个删除系列或清除全部内容, 并在需要时添加一个新的序列。 新插入的图表中添加了一些默认序列到此收藏中. 要清除它们,你需要呼叫 **图表. getSeries (). clear ()** 方法。

## 使用单一图表序列

这是如何与特定系列合作。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

请见以下结果:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

所有单身 [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) 有默认 [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) 选项,请尝试使用以下代码来修改它们:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## 如何使用一个单图数据点 `ChartSeries`

使用 [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) 您可以自定义图表序列中单个数据点的格式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

请见以下结果:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## 如何使用单一图表的图表数据标签

使用 [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) 您可以指定图表序列中单个数据标签的格式, 如显示/ 隐藏图例Key, CategoryName, SeriesName 数值等:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

请见以下结果:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## 如何定义图集的默认选项

那个 [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) 类定义属性,用于设置默认选项 **ChartDataLabels** 图表 **Series**。 。 。 这些属性包括设置ShowCategoryName, setShowBubbbleSize, setShow 百分比, setShowSeriesName, setShow 数值等:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

请见以下结果:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## 如何格式化图表数据标签的数目

使用 [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) 属性,您可以指定图表中单个数据标签的数字格式。

以下代码示例显示如何格式化一些数据标签:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## 如何设置图轴属性

如果您想要对数值轴使用图表轴、缩放和显示单位,请使用 [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), 和 [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) 课程。

以下代码示例显示如何定义 X 和 Y 轴属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### 如何设置 Date轴时值

以下代码示例显示如何将日期/时间值设定为轴属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### 如何格式化轴数值

以下代码示例显示如何改变值轴上的数字格式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### 如何设置轴线

那个 `AxisBound` 类代表轴值的最小或最大约束。 捆绑可以指定为数值,日期时间或特殊的"自动"值.

以下代码示例显示如何设置轴的界限:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### 如何在标签之间设置间隔单位

以下代码示例显示如何将标签之间的间隔单位设置在一个轴上:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### 如何隐藏图表轴

要显示或隐藏图表轴,只需设置值即可实现 `ChartAxis.Hidden` 属性。

以下代码示例显示如何隐藏图的Y轴:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### 如何对齐图表标签

如果您想要设置多行标签的文本对齐, 您可以简单地通过设置 [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) 属性。

下列代码示例显示如何勾选标签对齐:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word 校对 默认情况下, 图表标签为中心 。

{{% /alert %}}

## 如何设置填充和划线格式

填充和中风格式可以设置图表序列,数据点,以及标记. 要做到这一点,就必须使用 `ChartFormat` 在图表序列、图表数据点和图表马克类中,以及一些属性的别名,如ForeColor、后彩、可见和透明 `Stroke` 课。

以下代码示例显示如何设置序列颜色:

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

以下代码示例显示如何设置行色和重量:

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
